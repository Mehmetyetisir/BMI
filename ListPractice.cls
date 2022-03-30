public class ListPractice {
    Public static list<Planets> listOfPlanets = new list<Planets>();
    //Public static list<Car> listOfCars = new List<Car>();
    public static string addPlanet(string planetName, Integer planetNum, integer numOfMoons) {
        string message = '';
        if (planetName != '' && planetName != null) {
            Planets obj = new Planets();
            obj.name = planetName;
            obj.planetNumber = planetNum;
            obj.numberOfMoons = numOfMoons;
            listOfPlanets.add(obj);
            message = 'Planet added succesfully';
        } else {
            message = 'Planet without name cannot be added to the list';
        }
        return message;
    }
}



