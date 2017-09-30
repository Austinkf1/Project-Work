global with sharing class FarenhietConvert
{
    public static Double dataInput { set; get; }
    
    @RemoteAction
    global static Double farenhietToCelcius(Double dataInput)
     {
        Double conversion = (dataInput - 32) * 0.5556;
        return conversion;
    }
}