package com.speed.dating

import com.dating.Gender
import com.dating.InterestType
import com.speed.dating.domain.Participant
import grails.buildtestdata.mixin.Build
import grails.test.mixin.Mock
import grails.test.mixin.TestMixin
import grails.test.mixin.support.GrailsUnitTestMixin
import spock.lang.Specification
import com.speed.dating.domain.*
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestMixin(GrailsUnitTestMixin)
@Mock(FemaleParticipant)
//@Build(FemaleParticipant)
class FemaleParticipantSpec extends Specification {
    FemaleParticipant participant

	def setup() {
        participant = new FemaleParticipant(name: 'Angelica', speedDatingId: 1212, interestedIn: Gender.MALE)
//        participant = FemaleParticipant.build(name: 'Angelica')

        participant.interests.add(InterestType.VIDEO_GAMES)
        participant.interests.add(InterestType.PETS)

        participant.save(failOnError: true)
    }

    @Unroll
	void "get sexiness from a female participant where vital statistics is not defined"() {
        setup:
        participant.waistLine = waist
        participant.bustLine = bust
        participant.hipLine = hip
        participant.save()

        expect:
        participant.getSexiness() == result

        where:
        bust    |       hip     |   waist      ||   result
        null    |       null    |   null       ||   0
        null    |       null    |   24         ||   0
        null    |       34      |   null       ||   0
        36      |       null    |   null       ||   0
        36      |       34      |   24         ||   1
        38      |       34      |   24         ||   3
        36      |       34      |   20         ||   5
        36      |       36      |   24         ||   3


    }

    def "test date with"() {
        setup:
        Participant capturedParticipant
        Participant participant2 = new FemaleParticipant()
        boolean called = false
        Participant otherParticipant = Mock(Participant) {
            getProperty(_) >> { String propertyName ->
                if(propertyName == "name") {
                    return "douglas"
                }
            }
        }

        def actualResult

        when:
        actualResult = participant.dateWith(otherParticipant)

        then:
        1 * otherParticipant.getCompatibility(participant) >> {
            compatibility
        }

        then:
        actualResult == result
        kisses * otherParticipant.kissMe(participant)


        where:
        compatibility  | kisses |   result
        3              |  0     |   "Sorry, I'm busy at the moment. Try asking again next year, or when you get a better job."
        100            |  1     |   "Sure, douglas I'd love to go out with you! *blush* <3"
    }
}