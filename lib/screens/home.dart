import 'package:flutter/material.dart';
import 'package:meet/screens/new.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> historyData = [
    {
      'name': 'Sophia Turner',
      'description': 'Audio call',
      'date': '3 Days Ago',
      'isIncoming': false,
      'color': Colors.purple,
    },
    {
      'name': 'Liam Oliver',
      'description': 'Video call',
      'date': 'Last Week',
      'isIncoming': true,
      'color': Colors.pink,
    },
    {
      'name': 'William Brown',
      'description': 'Missed call',
      'date': '5 Days Ago',
      'isIncoming': false,
      'color': Colors.teal,
    },
    {
      'name': 'Sophia Martinez',
      'description': 'Audio call',
      'date': '1 Week Ago',
      'isIncoming': true,
      'color': Colors.deepOrange,
    },
    {
      'name': 'James Wilson',
      'description': 'Video call',
      'date': 'Yesterday',
      'isIncoming': false,
      'color': Colors.yellow,
    },
    {
      'name': 'Olivia Brown',
      'description': 'Missed call',
      'date': '4 Days Ago',
      'isIncoming': false,
      'color': Colors.lime,
    },
    {
      'name': 'Ethan Garcia',
      'description': 'Audio call',
      'date': '3 Hours Ago',
      'isIncoming': true,
      'color': Colors.indigo,
    },
    {
      'name': 'Ava Anderson',
      'description': 'Video call',
      'date': '5 Hours Ago',
      'isIncoming': false,
      'color': Colors.lightBlue,
    },
    {
      'name': 'Mason Thompson',
      'description': 'Audio call',
      'date': '6 Days Ago',
      'isIncoming': true,
      'color': Colors.lightGreen,
    },
    {
      'name': 'Charlotte Harris',
      'description': 'Video call',
      'date': '1 Hour Ago',
      'isIncoming': true,
      'color': Colors.amber,
    },
    {
      'name': 'Amelia Clark',
      'description': 'Missed call',
      'date': '3 Days Ago',
      'isIncoming': false,
      'color': Colors.deepPurple,
    },
    {
      'name': 'Noah Roberts',
      'description': 'Audio call',
      'date': 'Today',
      'isIncoming': true,
      'color': Colors.cyanAccent,
    },
    {
      'name': 'Isabella Young',
      'description': 'Video call',
      'date': 'Yesterday',
      'isIncoming': true,
      'color': Colors.orangeAccent,
    },
    {
      'name': 'Michael Green',
      'description': 'Missed call',
      'date': '4 Days Ago',
      'isIncoming': false,
      'color': Colors.lightBlueAccent,
    },
    {
      'name': 'Lucas Baker',
      'description': 'Audio call',
      'date': '2 Days Ago',
      'isIncoming': true,
      'color': Colors.pinkAccent,
    },
    {
      'name': 'Harper Wright',
      'description': 'Video call',
      'date': 'Today',
      'isIncoming': true,
      'color': Colors.limeAccent,
    },
    {
      'name': 'Evelyn Scott',
      'description': 'Missed call',
      'date': '2 Days Ago',
      'isIncoming': false,
      'color': Colors.tealAccent,
    },
    {
      'name': 'Daniel Phillips',
      'description': 'Audio call',
      'date': '3 Days Ago',
      'isIncoming': true,
      'color': Colors.redAccent,
    },
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white, // Set background color to white
      drawer: Drawer(
        backgroundColor: Colors.white, // Set Drawer background color to white
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Google Meet',
                  style: TextStyle(
                    color: Colors.black, // Text color set to black
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined, color: Colors.black),
              title: Text('Privacy in Meet', style: TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text('Settings', style: TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help_outline, color: Colors.black),
              title: Text('Help & Feedback', style: TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Add the search bar at the top
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300], // Light grey for the search bar
                prefixIcon: IconButton(
                  icon: Icon(Icons.menu, color: Colors.black), // Black menu icon
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                ),
                hintText: 'Search or enter code',
                hintStyle: TextStyle(color: Colors.black54), // Dark grey hint text
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.black), // Black input text color
            ),
          ),
          // Add some spacing
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "History",
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: historyData.length,
              itemBuilder: (context, index) {
                final item = historyData[index];
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  leading: CircleAvatar(
                    backgroundColor: item['color'],
                    child: Text(
                      item['name'][0],
                      style: TextStyle(fontSize: 22, color: Colors.white), // White initials
                    ),
                  ),
                  title: Text(
                    item['name'],
                    style: TextStyle(color: Colors.black, fontSize: 16), // Black name
                  ),
                  subtitle: Text(
                    item['description'],
                    style: TextStyle(color: Colors.black54), // Grey description
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        item['date'],
                        style: TextStyle(color: Colors.black54, fontSize: 12), // Grey date
                      ),
                      SizedBox(width: 8),
                      Icon(
                        item['isIncoming'] ? Icons.call_received : Icons.call_made,
                        color: Colors.black54, // Grey call icon
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => New(),
            ),
          );
        },
        backgroundColor: Colors.blue,
        icon: Icon(Icons.video_call_outlined, color: Colors.white),
        label: Text('New'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
