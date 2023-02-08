void main() {
  contactApp my_contact_app = contactApp(companyName: "MyCompany");

  List<String> my_customers = ["abi", "embonor", "cocacola", "andina"];
  my_contact_app.display_customers();
  my_customers.forEach((element) {
    my_contact_app.add_new_contact(element);
  });

  my_contact_app.display_customers();
  my_contact_app.delete_customer("abi");
  my_contact_app.delete_customer("abiasdasd");
  my_contact_app.display_customers();
}

class contactApp {
  contactApp({required this.companyName});
  final String companyName;
  List<String> customers = [];

  void add_new_contact(String contact) {
    this.customers.add(contact);
  }

  void display_customers() {
    if (this.customers.isEmpty) {
      print("You have no customers. \n:(");
    } else {
      print("Your customers are: ${this.customers}");
    }
    ;
  }

  void delete_customer(String customer) {
    if (this.customers.isEmpty) {
      print("You have no customers to delete");
    } else if (this.customers.any((element) => element == customer)) {
      this.customers.remove(customer);
      print("Customer $customer removed");
    } else {
      print("Customer is not in the list");
    }
  }
}
