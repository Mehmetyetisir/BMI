public class AirlineTicketsInfo {
    public string departureCties;
    public string arrivalCities;
    public string flightNumber;
    public String seatAssignment;
    public void printTicket(){
        system.debug('This ticket is for the jorney' + departureCties + ' to' + arrivalCities + 'with flight number' + flightNumber + 'with seat number' + seatAssignment );
    }
}

// Create a class that captures airline tickets information. Each ticket lists the departure and arrival
// cities, a flight number, and a seat assignment. A seat assignment has both row number and a
// letter for the seat within the row (such as 12F).
// Define a method named as printTicket. Inside this method give debug message as follows:
// 'This ticket is for the journey from [departure City] to [arrival City].’
// In anonymous apex, Make two examples of tickets. Print the object values in the debug
// messages and call the printTicket method as well.