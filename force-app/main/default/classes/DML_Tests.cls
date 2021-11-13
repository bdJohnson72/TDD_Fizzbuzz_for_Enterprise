/**
 * Created by Brooks Johnson on 11/13/2021.
 */

@IsTest
public with sharing class DML_Tests {

    @IsTest
    static void itShouldInsert(){
        //given
        Account account = new Account(Name = 'Test Acc');
        //when
        DML actual = new DML.Actual();
        actual.doInsert(account);
        //then
        Account insertedAcc = [SELECT Id
        FROM Account
        WHERE Name =: 'Test Acc'
        LIMIT 1];

        System.assert(insertedAcc.Id != null, 'It should be inserted with an Id');
    }

}