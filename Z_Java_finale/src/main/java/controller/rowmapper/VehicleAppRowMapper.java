package controller.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import controller.POJO.Customer;
import controller.POJO.Vehicle;

public class VehicleAppRowMapper implements RowMapper<Vehicle> {

    public Vehicle mapRow(ResultSet rs, int rowNum) throws SQLException {
        Vehicle vehicle = new Vehicle();

        vehicle.setVehicleId(rs.getInt("vehicle_id"));
        vehicle.setVehicleType(rs.getString("vehicle_type"));

        Customer customer = new Customer();
        customer.setCustomerId(rs.getInt("customer_id")); // Assuming you have customer_id in the ResultSet
        // You can set other customer properties if needed
        vehicle.setCustomer(customer);

        vehicle.setVehicleName(rs.getString("vehicle_name"));
        vehicle.setRegistrationNumber(rs.getString("registration_number"));
        vehicle.setServices(rs.getString("services"));

        return vehicle;
    }
}
