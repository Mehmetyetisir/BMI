public class operationsHelper {
    public decimal sumOfList(list<decimal>  Values) {
    decimal  sumValues =0;
    If (Values.size()>0){
        for (decimal eachList : Values) {
            sumValues = sumValues + eachList;
            
        }

    } else {
        system.debug('The list that you have send it is emty.please write your list');
    }
    return sumValues;

    }

    public decimal averageList(list<decimal> Values ) {
        decimal average;

        if (values.size()>0) {
            decimal sum = this.sumOfList(Values);
            average = sum/Values.size();
            system.debug('Average of the List=' + average);

        } else {
            system.debug('The list that you have send it is emty.please write your list');
        }
        return average;
    }
    public decimal highestNumber(List<decimal> values){
        decimal highest;
        if (values.size()>0){
            highest = values[0];

            for (decimal eachList : Values) {
                if (eachList>highest) {
                    highest = eachList;
                }

                
            }

        }else {
            system.debug('The list that you have send it is emty.please write your list');


        }
    }
    
}
