package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import controller.DAO.VehicleDAO;
import controller.POJO.Customer;
import controller.POJO.Vehicle;

@Controller
public class HomeController {

	@Autowired
	private VehicleDAO VehicleDAO;

	@GetMapping("/Home")
	public String showHomePage() {
		return "Home-Page"; // This will resolve to home.jsp in /WEB-INF/views/
	}

	@GetMapping("/aboutus")
	public String showAboutUsPage() {
		return "aboutus"; // This will resolve to aboutus.jsp in /WEB-INF/views/
	}

	@GetMapping("/SendRequest")
	public String sendRequest() {
		return "SendRequest";
	}

	@GetMapping("/Report")
	public String serviceReport(Model model) {

		List<Customer> customerList = VehicleDAO.loadCustomer();

		for (Customer tempCustomer : customerList) {
			System.out.println(customerList);
		}
		model.addAttribute("customers", customerList);

		List<Vehicle> vehicleList = VehicleDAO.loadVehicle();

		for (Vehicle tempvehicle : vehicleList) {
			System.out.println(vehicleList);
		}

		model.addAttribute("vehicles", vehicleList);
		return "Report"; // This will resolve to Report.jsp in /WEB-INF/views/
	}

	@PostMapping("/Request")
	public String processRequest(@RequestParam("vehicleType") String vehicleType,
			@RequestParam("customerName") String customerName, @RequestParam("customerContact") String customerContact,
			@RequestParam("customerEmail") String customerEmail, @RequestParam("address") String address,
			@RequestParam("vehicleName") String vehicleName,
			@RequestParam("registrationNumber") String registrationNumber, @RequestParam("services") String service) {

		System.out.println("Inserting");
		VehicleDAO.insertRequest(vehicleType, customerName, customerContact, customerEmail, address, vehicleName,
				registrationNumber, service);
		return "success";

	}

	@GetMapping("/UpdateCustomer")
	public String updateCustomer(Model model) {

		List<Customer> customerList = VehicleDAO.loadCustomer();
		model.addAttribute("customers", customerList);

		List<Vehicle> vehicleList = VehicleDAO.loadVehicle();
		model.addAttribute("vehicles", vehicleList);

		return "Update-Customers";
	}

	@GetMapping("/updateCustomerStatus")
    public String updateCustomerStatus(@RequestParam("customerId") int customerId ) {
        
        System.out.println("Looking For a Customer With customerId :" + customerId);
        
        return "update-status-list"; // Return appropriate view name
    }
	
	@PostMapping("/update_customer_status_handler")
	public String changeStatus(@RequestParam("customerId") int customerId, @RequestParam("new_status") String newStatus) {
	    // Call the DAO method to update the status of the customer
	    try {
	        // Call DAO method to update status
	        // Example: VehicleDAO.updateCustomerStatus(customerId, newStatus);
	        
	        // Redirect to the report page after successful update
	        return "redirect:/Report";
	    } catch (Exception e) {
	        // Handle exception
	        e.printStackTrace();
	        // Redirect to an error page or display an error message
	        return "error-page"; // Redirect to error page
	    }
	}

	
	

	
	@GetMapping("/CheckStatus")
	public String checkStatus() {

		return "Check-Status";
	}

	@PostMapping("/status")
    public String checkStatusPage(@RequestParam("customerName") String customerName, 
                                  @RequestParam("registrationNumber") String registrationNumber,
                                  Model model) {
        try {
            // Retrieve customer and vehicle details based on name and registration number
            Customer customer = VehicleDAO.getCustomerByName(customerName);
            Vehicle vehicle = VehicleDAO.getVehicleByRegistrationNumber(registrationNumber);
            
            // Add customer and vehicle details to the model
            model.addAttribute("customer", customer);
            model.addAttribute("vehicle", vehicle);
            
            return "Status-page";
        } catch (EmptyResultDataAccessException e) {
            // Handle case where no data is found
            model.addAttribute("errorMessage", "Customer or vehicle not found");
            return "Status-page";
        }
    }





	
	
	@GetMapping("/AdminPanel")
	public String showAdminPage() {
		return "AdminPanel"; // This will resolve to AdminPanel.jsp in /WEB-INF/views/
	}
	
	@GetMapping("/MyProfile")
	public String showMyProfile() {
		return "My-Profile"; // This will resolve to AdminPanel.jsp in /WEB-INF/views/
	}

	@GetMapping("/Success")
	public String showSuccessPage() {
		return "success"; // This will resolve to aboutus.jsp in /WEB-INF/views/
	}
	
	
	
	
	
	@GetMapping("/")
	public String showLoginPage() {
		return "index"; 
	}
	
	@GetMapping("/signup")
	public String signUpPage() {
		return "signup"; 
	}
	

	
	@PostMapping("/userLogin")
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, Model model) {
		System.out.println("Logging In..............");
        if (VehicleDAO.authenticate(username, password)) {
            return "redirect:/Home"; // Redirect to main page if login successful
        } else {
            model.addAttribute("error", "Login failed. Please check your username and password.");
            return "redirect:/login"; // Redirect to login page with error message
        }
    }
	
	
	@PostMapping("/signup")
    public String signUp(@RequestParam("username") String username,
                         @RequestParam("email") String email,
                         @RequestParam("password") String password,
                         Model model) {
		if (VehicleDAO.registerUser(username, email, password)) {
            return "redirect:/"; // Redirect to login page after successful registration
        } else {
            model.addAttribute("error", "Failed to register user. Please try again.");
            return "redirect:/signup"; // Redirect to sign-up page with error message
        }
    }
}
