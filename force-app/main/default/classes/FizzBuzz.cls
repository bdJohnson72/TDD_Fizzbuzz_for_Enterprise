/**
 * Created by Brooks Johnson on .
 */

public with sharing class FizzBuzz {

    public List<FizzBuzz__c> recordsToProcess;

    public FizzBuzz(List<FizzBuzz__c> recordsToProcess) {
        this.recordsToProcess = recordsToProcess;
    }

    @TestVisible
    private Boolean isFizz(Integer numberToCheck) {
        if (Math.mod(numberToCheck, 3) == 0) {
            return true;
        }
        return false;
    }

    @TestVisible
    private Boolean isBuzz(Integer numberToCheck) {
        if (Math.mod(numberToCheck, 5) == 0){
            return true;
        }
        return false;
    }

    @TestVisible
    private Boolean isFizzBuzz(Integer numberToCheck) {
        if(isFizz(numberToCheck) && isBuzz(numberToCheck)) {
            return true;
        }
        return false;
    }

    public void run() {
        for (FizzBuzz__c fb : this.recordsToProcess) {
            if(isFizz((Integer)fb.Value_for_Analysis__c)){
                fb.Results__c = 'Fizz';
                continue;
            }
        }
    }
}