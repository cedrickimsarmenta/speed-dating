package com.speed.dating.domain

import com.dating.Gender
import com.dating.InterestType

abstract class Participant {
    String name
    Integer age
    Gender interestedIn
    Gender gender
    Integer speedDatingId

    public abstract int getCompatibility(Participant otherParticipant);

    static hasMany = [interests: InterestType]

    static constraints = {
        speedDatingId nullable: false, unique: true, blank: false
        age nullable: true, blank: true
        interestedIn nullable: true, blank: true
        name nullable: false, blank: false
        gender nullable: false
    }

    public Participant () {
        interests = []
    }

    String introduceSelf() {
        return "Hi I am ${name}!"
    }

    String dateWith(Participant participant) {
        if(participant.getCompatibility(participant) >= 10) {
            return "Sure, ${participant.name} I'd love to go out with you! *blush* <3"
        }

        return "Sorry, I'm busy at the moment. Try asking again next year, or when you get a better job."
    }

    Participant chooseDate(List<Participant> participants) {
        Participant myDate
        for(Participant dateCandidate: participants) {
            myDate = myDate ? getCompatibility(dateCandidate) > getCompatibility(myDate) ? dateCandidate : myDate : dateCandidate
        }
    }

    String dateWithById(Long participantId) {
        dateWith(Participant.get(participantId))
    }

    Participant chooseDateByIds(List<Long> participantIds) {
        for(Long id: participantIds) {

        }
    }
}
