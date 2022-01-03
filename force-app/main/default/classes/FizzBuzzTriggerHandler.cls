/**
 * Created by Brooks Johnson on 11/13/2021.
 */

public with sharing class FizzBuzzTriggerHandler extends TriggerHandler{


    protected override void beforeInsert() {
        FizzBuzz fizzBuzz = new FizzBuzz(Trigger.new);
        fizzBuzz.run();
    }

    protected override void beforeUpdate() {
        FizzBuzz fizzBuzz = new FizzBuzz(Trigger.new);
        fizzBuzz.run();
    }
}