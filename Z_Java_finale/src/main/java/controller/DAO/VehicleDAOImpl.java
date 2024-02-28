package controller.DAO;

import java.sql.Types;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import controller.POJO.Customer;
import controller.POJO.Vehicle;
import controller.rowmapper.CustomerRowMapper;
import controller.rowmapper.VehicleAppRowMapper;

@Repository
public class VehicleDAOImpl implements VehicleDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public List<Customer> loadCustomer() {

		String sql = "select * from customer_table;";

		List<Customer> customerList = jdbcTemplate.query(sql, new CustomerRowMapper());

		return customerList;
	}

	public List<Vehicle> loadVehicle() {

		String sql = "select * from vehicle_table;";

		List<Vehicle> vehicleList = jdbcTemplate.query(sql, new VehicleAppRowMapper());

		return vehicleList;
	}

	@Transactional
	public void insertRequest(String vehicleType, String customerName, String customerContact, String customerEmail,
			String address, String vehicleName, String registrationNumber, String service) {
		try {
			String procedureCall = "CALL InsertCustomerAndVehicle(?, ?, ?, ?, ?, ?, ?, ?)";

			// Set up the parameters for the stored procedure
			Object[] params = { customerName, customerContact, customerEmail, address, vehicleType, vehicleName,
					registrationNumber, service };
			int[] paramTypes = { Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
					Types.VARCHAR, Types.VARCHAR, Types.VARCHAR };

			// Call the stored procedure
			jdbcTemplate.update(procedureCall, params, paramTypes);
		} catch (DataIntegrityViolationException ex) {
			// Log and handle the exception
			ex.printStackTrace();
			// Handle the error appropriately (e.g., provide feedback to the user)
		}
	}

	public void updateCustomerStatus(int customerId, String newStatus) {
		String sql = "UPDATE customer_table SET status = ? WHERE customer_id = ?";
		jdbcTemplate.update(sql, newStatus, customerId);
	}

	public Customer getCustomerByName(String customerName) {
        String sql = "SELECT * FROM customer_table WHERE customer_name = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[] { customerName }, new CustomerRowMapper());
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public Vehicle getVehicleByRegistrationNumber(String registrationNumber) {
        String sql = "SELECT * FROM vehicle_table WHERE registration_number = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[] { registrationNumber }, new VehicleAppRowMapper());
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
	

    
    
    public boolean authenticate(String username, String password) {
        String query = "SELECT COUNT(*) FROM users WHERE username = ? AND password = ?";
        int count = jdbcTemplate.queryForObject(query, Integer.class, username, password);
        return count > 0;
    }

	public boolean registerUser(String username, String email, String password) {
        // Check if username already exists
        String query = "SELECT COUNT(*) FROM users WHERE username = ?";
        int count = jdbcTemplate.queryForObject(query, Integer.class, username);
        
        if (count > 0) {
            // Username already exists, registration failed
            return false;
        }

        // If username does not exist, insert new user into the database
        query = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
        int rowsAffected = jdbcTemplate.update(query, username, email, password);

        // Return true if registration was successful
        return rowsAffected > 0;
    }


}
