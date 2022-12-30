void main(List<String> args) {
  Employee emp = Employee('Dipesh', 19, '8238965966', 'abdjdhw', 50000, 'CSE');
  emp.displayDetails();
  Manager mn = Manager('Uttam', 20, '6354829015', 'dghff', 50000, 'admin');
  mn.displayDetails();
}

class Mambers {
  String? Name, Address, PhoneNumber;
  int? Age;
  double? Salary;

  void printSalary() {
    print('Salary');
  }
}

class Employee extends Mambers {
  String? Specialization;

  Employee(String Name, int Age, String PhoneNumber, String Address,
      double Salary, String Specialization) {
    this.Name = Name;
    this.Age = Age;
    this.PhoneNumber = PhoneNumber;
    this.Address = Address;
    this.Salary = Salary;
    this.Specialization = Specialization;
  }

  void displayDetails() {
    print('Name : ${this.Name}');
    print('Age : ${this.Age}');
    print('Phone Number : ${this.PhoneNumber}');
    print('Address : ${this.Address}');
    print('Salary : ${this.Salary}');
    print('Specialization : ${this.Specialization}');
  }
}

class Manager extends Mambers {
  String? Department;

  Manager(String Name, int Age, String PhoneNumber, String Address,
      double Salary, String Department) {
    this.Name = Name;
    this.Age = Age;
    this.PhoneNumber = PhoneNumber;
    this.Address = Address;
    this.Salary = Salary;
    this.Department = Department;
  }

  void displayDetails() {
    print('Name : ${this.Name}');
    print('Age : ${this.Age}');
    print('Phone Number : ${this.PhoneNumber}');
    print('Address : ${this.Address}');
    print('Salary : ${this.Salary}');
    print('Department : ${this.Department}');
  }
}
