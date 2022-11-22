public class StringArrayTest {
    public static list<string> generateStringArray(integer NumeroEntrada){
        list<string> Result = new list<string>();
        for (integer i=0; i<NumeroEntrada;i++){
            Result.add('Test ' + i);
        }
        return Result;
     
    }
}