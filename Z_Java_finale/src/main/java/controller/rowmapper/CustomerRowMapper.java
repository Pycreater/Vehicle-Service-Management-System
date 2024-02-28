package controller.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import controller.POJO.Customer;

public class CustomerRowMapper implements RowMapper<Customer> {

    public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
        Customer customer = new Customer();
        
        customer.setCustomerId(rs.getInt("customer_id"));
        customer.setCustomerName(rs.getString("customer_name"));
        customer.setCustomerContact(rs.getString("customer_contact"));
        customer.setCustomerEmail(rs.getString("customer_email"));
        customer.setAddress(rs.getString("address"));
        customer.setRequestDate(rs.getDate("request_date"));
        customer.setStatus(rs.getString("status"));
        
        return customer;
    }
}
