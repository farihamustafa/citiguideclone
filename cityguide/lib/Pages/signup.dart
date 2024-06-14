import 'package:flutter/material.dart';
import 'package:cityguide/Pages/home.dart';
import 'package:cityguide/Pages/login.dart';
import 'package:cityguide/components/reusable/widgets.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  signupForm() {
    if (formKey.currentState!.validate()) {
      // Implement signup logic here
      print("Name: ${_nameController.text}");
      print("Last Name: ${_lastNameController.text}");
      print("Date of Birth: ${_dobController.text}");
      print("Email: ${_emailController.text}");
      print("Password: ${_passwordController.text}");
      print("Phone: ${_phoneController.text}");
      print("City: ${_cityController.text}");
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TouristDetailsPage(
              image:
                  "https://images.pexels.com/photos/188030/pexels-photo-188030.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
          ));
    }
  }

  navigateToLogin() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ));
  }

  @override
  void dispose() {
    _nameController.dispose();
    _lastNameController.dispose();
    _dobController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _cityController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 800,
          width: 350,
          color: Color.fromARGB(255, 156, 158, 158),
          child: Form(
            key: formKey,
            child: Card(
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo.jpg',
                        height: 100,
                        width: 200,
                      ),
                      SizedBox(height: 20),
                      textfield(
                          controller: _nameController,
                          label: "Name",
                          icon: Icons.person,
                          obs: false,
                          iconColor: Colors.blue),
                      SizedBox(height: 20),
                      textfield(
                          controller: _lastNameController,
                          label: "Last Name",
                          icon: Icons.person_outline,
                          obs: false,
                          iconColor: Colors.blue),
                      SizedBox(height: 20),
                      textfield(
                          controller: _dobController,
                          label: "Date of Birth",
                          icon: Icons.calendar_today,
                          obs: false,
                          iconColor: Colors.blue),
                      SizedBox(height: 20),
                      textfield(
                          controller: _emailController,
                          label: "Email",
                          icon: Icons.email,
                          obs: false,
                          iconColor: Colors.blue),
                      SizedBox(height: 20),
                      textfield(
                          controller: _passwordController,
                          label: "Password",
                          icon: Icons.password,
                          obs: true,
                          iconColor: Colors.blue),
                      SizedBox(height: 20),
                      textfield(
                          controller: _phoneController,
                          label: "Phone",
                          icon: Icons.phone,
                          obs: false,
                          iconColor: Colors.blue),
                      SizedBox(height: 20),
                      textfield(
                          controller: _cityController,
                          label: "City",
                          icon: Icons.location_city,
                          obs: false,
                          iconColor: Colors.blue),
                      SizedBox(height: 20),
                      materialbutton(
                          function: signupForm,
                          btnText: "Sign Up",
                          btnColor: Color.fromARGB(255, 12, 122, 247)),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account? "),
                          textbutton(text: "Login", function: navigateToLogin),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
