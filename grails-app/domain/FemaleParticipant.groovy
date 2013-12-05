import com.dating.Gender
import com.dating.InterestType

/**
 * Created with IntelliJ IDEA.
 * User: cedz
 * Date: 12/5/13
 * Time: 2:46 PM
 * To change this template use File | Settings | File Templates.
 */
class FemaleParticipant extends Participant{
    Integer bustLine
    Integer waistLine
    Integer hipLine

    private static final Integer IDEAL_BUSTLINE = 36
    private static final Integer IDEAL_WAISTLINE = 24
    private static final Integer IDEAL_HIP_LINE = 34

    static constraints = {
        bustLine nullable: true
        waistLine nullable: true
        hipLine nullable: true
        importFrom Participant
    }

    public FemaleParticipant() {
        gender = Gender.FEMALE
    }

    public int getCompatibility(Participant otherParticipant) {
        if(this.interestedIn && otherParticipant.gender != this.interestedIn) {
            return -1
        }

        int compatibility = 0

        if(otherParticipant.gender == Gender.FEMALE) {
            compatibility = compatibility + ((FemaleParticipant)otherParticipant).sexiness ? 1 : 0
        }

        for(InterestType interest : interests) {
            for(InterestType otherInterest : otherParticipant.interests) {
                if(interest == otherInterest ) {
                    compatibility ++
                }
            }
        }
    }

    Integer getSexiness() {
        if(!bustLine || !waistLine || !hipLine) {
            return 0
        }

        return 1 + ( bustLine - IDEAL_BUSTLINE ) + (IDEAL_WAISTLINE - waistLine) + (hipLine-IDEAL_HIP_LINE)
    }
}
