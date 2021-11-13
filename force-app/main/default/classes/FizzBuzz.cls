/**
 * Created by Brooks Johnson on .
 */

public with sharing class FizzBuzz {

    public Boolean isFizz(Integer numberToCheck) {
        if (Math.mod(numberToCheck, 3) == 0) {
            return true;
        }
        return false;
    }

    public Boolean isBuzz(Integer numberToCheck) {
        if (Math.mod(numberToCheck, 5) == 0){
            return true;
        }
        return false;
    }

    public Boolean isFizzBuzz(Integer numberToCheck) {
        if(isFizz(numberToCheck) && isBuzz(numberToCheck)) {
            return true;
        }
        return false;
    }
}