package controller.DAO;

import java.util.List;

import controller.POJO.Customer;
import controller.POJO.Vehicle;

public interface VehicleDAO {
	List<Customer> loadCustomer();

	List<Vehicle> loadVehicle();

	void insertRequest(String vehicleType, String customerName, String customerContact, String customerEmail,
			String address, String vehicleName, String registrationNumber, String service);

	void updateCustomerStatus(int customerId, String newStatus);

	Customer getCustomerByName(String customerName);

	Vehicle getVehicleByRegistrationNumber(String registrationNumber);

	boolean authenticate(String username, String password);

	boolean registerUser(String username, String email, String password);
}
