import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Full Name Example'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  String _fullName = '';

  void _submitNames() {
    setState(() {
      _fullName = '${_firstNameController.text} ${_lastNameController.text}';
      _firstNameController.clear();
      _lastNameController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
             Text('First Name:'),
              SizedBox(width: 10),  // Adjust horizontal space here
              Expanded(
                flex: 2,
                child: TextField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Text('Last Name:'),
              SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: TextField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _submitNames,
            child: Text('Submit'),
          ),
          SizedBox(height: 20),
          Text(
            _fullName,
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
