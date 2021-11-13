/**
 * Created by Brooks Johnson on 11/13/2021.
 */

public inherited sharing abstract class DML {

    public abstract List<SObject> doInsert(SObject objectToInsert);
    public abstract List<SObject> doUpdate(SObject objectToUpdate);

    public class Actual extends DML {


        public override List<SObject> doInsert(SObject objectToInsert) {
            return doInsert(new SObject[]{objectToInsert});
        }

        public List<SObject> doInsert(List<SObject> objectsToInsert) {
            Database.insert(objectsToInsert);
            return objectsToInsert;
        }

        public override List<SObject> doUpdate(SObject objectToUpdate) {
           return doUpdate(new SObject[]{objectToUpdate});
        }

        public List<SObject> doUpdate(List<SObject> objectsToUpdate){
            Database.update(objectsToUpdate);
            return objectsToUpdate;
        }
    }

    public class Mock extends DML {

        public override List<SObject> doInsert(SObject objectToInsert) {
            return doInsert(new SObject[]{objectToInsert});
        }

        public List<SObject> doInsert(List<SObject> objectsToInsert) {
            return objectsToInsert;
        }

        public override List<SObject> doUpdate(SObject objectToUpdate) {
            return doUpdate(new SObject[]{objectToUpdate});
        }

        public List<SObject> doUpdate(List<SObject> objectsToUpdate) {
            return objectsToUpdate;
        }
    }

}