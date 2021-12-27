/**
 * Created by Brooks Johnson on 11/13/2021.
 */


@IsTest
private class FizzBuzz_Tests {
    @IsTest
    static void itShouldReturnTrueFizz() {
        //given
        List<FizzBuzz__c> fizzBuzzes = new List<FizzBuzz__c>();
        FizzBuzz fizzbuzz = new FizzBuzz(fizzBuzzes);
        //when
        Boolean result = fizzbuzz.isFizz(3);
        //then
        System.assert(result == true, 'It should return true');
    }

    @IsTest
    static void itShouldNotReturnTrueForFizz(){
        //given
        List<FizzBuzz__c> fizzBuzzes = new List<FizzBuzz__c>();
        FizzBuzz fizzbuzz = new FizzBuzz(fizzBuzzes);
        //when
        Boolean result = fizzbuzz.isFizz(2);
        //then
        System.assert(result == false,'It should return false');
    }

    @IsTest
    static void itShouldReturnTrueBuzz(){
        //given
        List<FizzBuzz__c> fizzBuzzes = new List<FizzBuzz__c>();
        FizzBuzz fizzbuzz = new FizzBuzz(fizzBuzzes);
        //when
        Boolean result = fizzbuzz.isBuzz(5);
        //then
        System.assert(result == true, 'It should return true');
    }

    @IsTest
    static void itShouldReturnFalseBuzz(){
        //given
        List<FizzBuzz__c> fizzBuzzes = new List<FizzBuzz__c>();
        FizzBuzz fizzbuzz = new FizzBuzz(fizzBuzzes);
        //when
        Boolean result = fizzbuzz.isBuzz(6);
        //then
        System.assert(result == false, 'It should return false');
    }

    @IsTest
    static void itShouldReturnTrueFizzBuzz(){
        //given
        List<FizzBuzz__c> fizzBuzzes = new List<FizzBuzz__c>();
        FizzBuzz fizzbuzz = new FizzBuzz(fizzBuzzes);
        //when
        Boolean result = fizzbuzz.isFizzBuzz(15);
        //then
        System.assert(result == true, 'It should return true');
    }

    @IsTest
    static void itShouldReturnFalseFizzBuzz(){
        //given
        List<FizzBuzz__c> fizzBuzzes = new List<FizzBuzz__c>();
        FizzBuzz fizzbuzz = new FizzBuzz(fizzBuzzes);
        //when
        Boolean result = fizzbuzz.isFizzBuzz(12);
        //then
        System.assert(result == false, 'It should return true');
    }

    @IsTest
    static void testConstructor(){
        //given
        FizzBuzz__c fizz = new FizzBuzz__c(Value_for_Analysis__c = 3);
        List<FizzBuzz__c> fizzBuzzes = new List<FizzBuzz__c>{fizz};
        //when
        FizzBuzz fb = new FizzBuzz(fizzBuzzes);
        System.assert(fb.recordsToProcess[0].Value_for_Analysis__c == 3);
    }

    @isTest
    static void recordIsFizz(){
        //given
        FizzBuzz__c fizzer = new FizzBuzz__c(Value_for_Analysis__c = 3);
        List<FizzBuzz__c> fizzBuzzes = new List<FizzBuzz__c>{fizzer};
        FizzBuzz fizzbuzz = new FizzBuzz(fizzBuzzes);
        //when
        fizzbuzz.run();
        //then
        System.assert(fizzbuzz.recordsToProcess[0].Results__c == 'Fizz');

    }
}