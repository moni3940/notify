import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: RegistrationForm(),
//     );
//   }
// }

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _enrollmentController = TextEditingController();
  String _selectedDepartment = 'Computer Science';
  String _selectedSemester = 'Semester 1';

  final List<String> _departments = [
    'Computer Science',
    'Electrical Engineering',
    'Mechanical Engineering',
    'Civil Engineering',
  ];

  final List<String> _semesters = [
    'Semester 1',
    'Semester 2',
    'Semester 3',
    'Semester 4',
    'Semester 5',
    'Semester 6',
    'Semester 7',
    'Semester 8',
  ];

  void _submitForm() {
    String firstName = _firstNameController.text;
    String lastName = _lastNameController.text;
    String enrollmentNumber = _enrollmentController.text;

    // Perform form submission logic here, e.g., send data to a server.

    // For this example, we'll print the form data.
    print('First Name: $firstName');
    print('Last Name: $lastName');
    print('Enrollment Number: $enrollmentNumber');
    print('Department: $_selectedDepartment');
    print('Semester: $_selectedSemester');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          title: Text('\n Registration Form'),
          backgroundColor:
          Colors.purple.shade200, // You can use any color you want
          centerTitle: true, // Center the title text
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            SizedBox(height: 17.0),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            SizedBox(height: 17.0),
            TextField(
              controller: _enrollmentController,
              decoration: InputDecoration(labelText: 'Enrollment Number'),
            ),
            SizedBox(height: 17.0),
            DropdownButtonFormField<String>(
              value: _selectedDepartment,
              items: _departments.map((department) {
                return DropdownMenuItem<String>(
                  value: department,
                  child: Text(department),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedDepartment = newValue!;
                });
              },
              decoration: InputDecoration(labelText: 'Department'),
            ),
            SizedBox(
              height: 17.40,
            ),
            DropdownButtonFormField<String>(
              value: _selectedSemester,
              items: _semesters.map((semester) {
                return DropdownMenuItem<String>(
                  value: semester,
                  child: Text(semester),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedSemester = newValue!;
                });
              },
              decoration: InputDecoration(labelText: 'Semester'),
            ),
            SizedBox(
              height: 30.8,
            ),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _enrollmentController.dispose();
    super.dispose();
  }
}