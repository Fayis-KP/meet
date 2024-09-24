import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  final List<Map<String, String>> contacts = [
    {'name': 'Frank', 'number': '123-789-4560'},
    {'name': 'Grace', 'number': '654-321-9870'},
    {'name': 'Hannah', 'number': '789-456-1230'},
    {'name': 'Ivy', 'number': '234-567-8901'},
    {'name': 'Jack', 'number': '567-890-1234'},
    {'name': 'Karen', 'number': '890-123-4567'},
    {'name': 'Leo', 'number': '901-234-5678'},
    {'name': 'Mia', 'number': '345-678-9012'},
    {'name': 'Nathan', 'number': '678-901-2345'},
    {'name': 'Olivia', 'number': '012-345-6789'},
    {'name': 'Paul', 'number': '123-234-3456'},
    {'name': 'Quinn', 'number': '234-345-4567'},
    {'name': 'Ruby', 'number': '345-456-5678'},
    {'name': 'Steve', 'number': '456-567-6789'},
    {'name': 'Tina', 'number': '567-678-7890'},
    {'name': 'Uma', 'number': '678-789-8901'},
    {'name': 'Victor', 'number': '789-890-9012'},
    {'name': 'Wendy', 'number': '890-901-0123'},
    {'name': 'Xander', 'number': '901-012-1234'},
    {'name': 'Yara', 'number': '234-567-8901'},
    {'name': 'Zane', 'number': '345-678-9012'},
  ];

  final List<Color> avatarColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 60,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'New',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search or enter code',
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none, // Remove underline
                        contentPadding: EdgeInsets.only(left: 15), // Adjust left padding here
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.keyboard_alt_outlined, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10),
              child: Row(
                children: [
                  Icon(Icons.create, color: Colors.blueGrey),
                  SizedBox(width: 15),
                  Text(
                    "Create a new meeting",
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10),
              child: Row(
                children: [
                  Icon(Icons.calendar_today, color: Colors.blueGrey),
                  SizedBox(width: 10),
                  Text(
                    "Schedule in Google Calendar",
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10),
              child: Row(
                children: [
                  Icon(Icons.group, color: Colors.blueGrey),
                  SizedBox(width: 10),
                  Text(
                    "Create group",
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10),
              child: Text(
                'Connect on Meet',
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  String name = contacts[index]['name']!;
                  String number = contacts[index]['number']!;
                  Color avatarColor = avatarColors[index % avatarColors.length]; // Cycle through colors

                  return Container(
                    margin: EdgeInsets.only(bottom: 10), // Space between list items
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: avatarColor, // Different color for each contact
                        child: Text(
                          name[0], // Display first letter of the name
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(
                        name,
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        number,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
