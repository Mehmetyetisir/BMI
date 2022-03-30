public class Car {
    public string carColor ='';
    public string carName ='';
    public static integer carRunningAtMaxSpeed=0;

    private integer maxSpeedKMperHour =150;
    public void switchOn(){
        Datetime switchOnTime = Datetime.now();
        system.debug('starting the car time:' + switchOnTime);
    }
    public void drive(){
        system.debug('driving' + carName);
    
    }
    public void driveAtMaxSpeed(){
        string drivingDescription = 'driving' + carName +'at' +maxSpeedKMperHour + 'km/h';
        carRunningAtMaxSpeed++;
        system.debug(drivingDescription);
    }




}