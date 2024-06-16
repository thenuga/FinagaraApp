import 'package:flutter/material.dart';

class Memberspage extends StatefulWidget {
  const Memberspage({super.key});

  @override
  State<Memberspage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<Memberspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 120, // Set the size of the profile icon
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/indoorcricket.png'), // Use your profile picture
            ),
          ),
          SizedBox(height: 120), // Space between profile icon and information
          Text(
            'Name: John Doe',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Phone Number: 123-456-7890',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Address: 123 Main St, City',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Status: Active',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}