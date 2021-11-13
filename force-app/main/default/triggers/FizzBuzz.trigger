/**
 * Created by Brooks Johnson on 11/13/2021.
 */

trigger FizzBuzz on FizzBuzz__c (before insert, before update, before delete, after insert,
        after update, after delete, after undelete) {
    TriggerHandler handler = new FizzBuzzTriggerHandler();
    handler.run();
}