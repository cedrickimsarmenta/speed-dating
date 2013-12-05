import com.dating.Gender
import com.dating.InterestType

/**
 * Created with IntelliJ IDEA.
 * User: cedz
 * Date: 12/5/13
 * Time: 2:46 PM
 * To change this template use File | Settings | File Templates.
 */
class MaleParticipant extends Participant {

    public MaleParticipant() {
        gender = Gender.MALE
    }

    static constraints = {
        importFrom Participant
    }

    public int getCompatibility(Participant otherParticipant) {
        if(this.interestedIn && otherParticipant.gender != this.interestedIn) {
            return -1
        }

        System.out.println("Sexisness is ${((FemaleParticipant)otherParticipant).sexiness}")

        if(interests.contains(InterestType.FLING) && otherParticipant.gender == Gender.FEMALE) {
            return ((FemaleParticipant)otherParticipant).sexiness
        }

        int compatibility = 0

        if(otherParticipant.gender == Gender.FEMALE) {
            compatibility = compatibility + ((FemaleParticipant)otherParticipant).sexiness ? 1 : 0
        }

        for(InterestType interest : interests) {
            for(InterestType otherInterest : otherParticipant.interests) {
                if(interest == otherInterest) {
                    compatibility ++
                }
            }
        }


        return compatibility
    }
}
