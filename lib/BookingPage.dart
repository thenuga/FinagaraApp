import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Bookingpage extends StatefulWidget {
  const Bookingpage({super.key});

  @override
  State<Bookingpage> createState() => _BookingpageState();
}

class _BookingpageState extends State<Bookingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu '),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Welcome User', style: TextStyle(fontSize: 22, ), ),
            ),
            ListTile(
              title: Text('HomePage'),
              onTap: () {
                Navigator.pushNamed(context, 'homepage');
              },
            ),
            ListTile(
              title: Text('Booking'),
              onTap: () {
                Navigator.pushNamed(context, 'booking');
              },
            ),

            ListTile(
              title: Text('Membership'),
              onTap: () {
                Navigator.pushNamed(context, 'members');
              },
            ),
            ListTile(
              title: Text('Payment'),
              onTap: () {
                Navigator.pushNamed(context, 'payment');
              },
            ),
            ListTile(
              title: Text('Events'),
              onTap: () {
                Navigator.pushNamed(context, 'events');
              },
            ),
            ListTile(
              title: Text('Gallery'),
              onTap: () {
                Navigator.pushNamed(context, 'gallery');
              },
            ),
            ListTile(
              title: Text('News'),
              onTap: () {
                Navigator.pushNamed(context, 'news');
              },
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Booking',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildCategoryButton(context, 'assets/cricket.png', 'Cricket', CategoryPage1()),
                          SizedBox(width: 10), // Add space between buttons
                          _buildCategoryButton(context, 'assets/volleyball.png', 'Volleyball', CategoryPage2()),
                          SizedBox(width: 10),
                          _buildCategoryButton(context, 'assets/badminto.png', 'Badminton', CategoryPage3()),
                          SizedBox(width: 10),
                          _buildCategoryButton(context, 'assets/basketball.png', 'Basketball', CategoryPage4()),
                          SizedBox(width: 10),
                          _buildCategoryButton(context, 'assets/squash.png', 'Squash', CategoryPage5()),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                    SizedBox(height: 10), // Add space between the last button and the new text
                    _buildSportSection('Cricket', [
                      'assets/cricket1.jpeg',
                      'assets/cricket2.jpeg',
                      'assets/cricket3.jpeg',
                      'assets/cricket4.jpeg',
                    ]),
                    Text(
                      'Cricket is a popular bat-and-ball game played between two teams of eleven players each. It is '
                          'played on a large grass field with a rectangular 22-yard pitch at the center. The objective of the game is to score '
                          'runs by hitting the ball and running between the wickets, while the opposing team tries to dismiss the batsmen and'
                          ' limit the runs scored. Cricket is known for its strategic gameplay, rich history, and passionate fanbase, particularly in'
                          ' countries like India, England, Australia, and Pakistan',
                       style: TextStyle(fontSize: 18, ),

                    ),

                    _buildSportSection('Basketball', [
                      'assets/basketball1.jpeg',
                      'assets/basketball2.jpeg',
                      'assets/basketball3.jpeg',
                      'assets/basketball4.jpeg',
                    ]),
                    Text(
                      'basketball is a popular bat-and-ball game played between two teams of eleven players each. It is '
                          'played on a large grass field with a rectangular 22-yard pitch at the center. The objective of the game is to score '
                          'runs by hitting the ball and running between the wickets, while the opposing team tries to dismiss the batsmen and'
                          ' limit the runs scored. Cricket is known for its strategic gameplay, rich history, and passionate fanbase, particularly in'
                          ' countries like India, England, Australia, and Pakistan',
                      style: TextStyle(fontSize: 18, ),

                    ),

                    _buildSportSection('Badminton', [
                      'assets/badminton1.jpeg',
                      'assets/badminton2.jpeg',
                      'assets/badminton3.jpeg',
                      'assets/badminton4.jpeg',
                    ]),
                    Text(
                      'badminton is a popular bat-and-ball game played between two teams of eleven players each. It is '
                          'played on a large grass field with a rectangular 22-yard pitch at the center. The objective of the game is to score '
                          'runs by hitting the ball and running between the wickets, while the opposing team tries to dismiss the batsmen and'
                          ' limit the runs scored. Cricket is known for its strategic gameplay, rich history, and passionate fanbase, particularly in'
                          ' countries like India, England, Australia, and Pakistan',
                      style: TextStyle(fontSize: 18, ),

                    ),
                    _buildSportSection('Squash', [
                      'assets/squash1.jpg',
                      'assets/squash2.jpg',
                      'assets/squash3.jpg',
                      'assets/squash4.jpg',
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSportSection(String sport, List<String> photos) {
    return Column(
      children: [
        SizedBox(height: 10),
        Text(
          sport,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: photos.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  photos[index],
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryButton(BuildContext context, String imagePath, String label, Widget targetPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => targetPage));
      },
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black), // Black border line
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          image: DecorationImage(
            image: AssetImage('assets/background.jpeg'), // Replace 'background_image.jpg' with your image path
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10), // Round borders
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(imagePath, fit: BoxFit.cover, width: 120, height: 120),
            ),
            Container(
              width: 120,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  label,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryPage1 extends StatefulWidget {
  @override
  _CategoryPage1State createState() => _CategoryPage1State();
}

class _CategoryPage1State extends State<CategoryPage1> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _phone;
  DateTime _selectedDate = DateTime.now();
  String? _selectedTimeSlot;
  final List<String> _timeSlots = [
    '9:00 AM - 10:00 AM',
    '10:00 AM - 11:00 AM',
    '11:00 AM - 12:00 PM',
    '12:00 PM - 1:00 PM',
    '1:00 PM - 2:00 PM',
    '2:00 PM - 3:00 PM',
    '3:00 PM - 4:00 PM',
    '4:00 PM - 5:00 PM',
    '5:00 PM - 6:00 PM',
    '6:00 PM - 7:00 PM',
    '7:00 PM - 8:00 PM',
    '8:00 PM - 9:00 PM',
    '9:00 PM - 10:00 PM',
    '10:00 PM - 11:00 PM',
  ];

  void _submitBooking(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Handle booking submission logic here
      print('Booking submitted: Name: $_name, Email: $_email, Phone: $_phone, Date: $_selectedDate, Time Slot: $_selectedTimeSlot');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Booking submitted successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cricket Booking'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.blue), // Change text color
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Add border radius
                    ),
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.blue), // Change label text color
                    hintStyle: TextStyle(color: Colors.blue), // Change hint Change hint text color
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value;
                  },
                ),

                SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(color: Colors.blue), // Change text color
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Add border radius
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.blue), // Change label text color
                    hintStyle: TextStyle(color: Colors.blue), // Change hint text color
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Email';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value;
                  },
                ),

                SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(color: Colors.blue), // Change text color
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Add border radius
                    ),
                    labelText: 'Phone',
                    labelStyle: TextStyle(color: Colors.blue), // Change label text color
                    hintStyle: TextStyle(color: Colors.blue),// Change hint text color
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Phone';
                    }
                    return null;
                  },
                  onSaved: (value) {

                    _name = value;
                  },
                ),

                SizedBox(height: 20),
                TableCalendar(
                  firstDay: DateTime.utc(2022, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: _selectedDate,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDate, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDate = selectedDay;
                    });
                  },
                ),
                SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Select Time Slot',
                    labelStyle: TextStyle(color: Colors.blue), // Change label text color
                    hintStyle: TextStyle(color: Colors.blue), // Change hint text color
                  ),
                  value: _selectedTimeSlot,
                  items: _timeSlots.map((String timeSlot) {
                    return DropdownMenuItem<String>(
                      value: timeSlot,
                      child: Text(timeSlot, style: TextStyle(color: Colors.blue)), // Change dropdown item text color
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedTimeSlot = newValue;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select a time slot';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _submitBooking(context),
                  child: Text('Submit Booking'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volleyball Booking'),
      ),
      body: Center(
        child: Text('Welcome to Volleyball Booking'),
      ),
    );
  }
}

class CategoryPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Badminton Booking'),
      ),
      body: Center(
        child: Text('Welcome to Badminton Booking'),
      ),
    );
  }
}

class CategoryPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basketball Booking'),
      ),
      body: Center(
        child: Text('Welcome to Basketball Booking'),
      ),
    );
  }
}

class CategoryPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Squash Booking'),
      ),
      body: Center(
        child: Text('Welcome to Squash Booking'),
      ),
    );
  }
}

