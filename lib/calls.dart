import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calls",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text(("Clear call log"))),
              PopupMenuItem(child: Text(("Scheduled calls"))),
              PopupMenuItem(child: Text(("Settings"))),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.shade200,
                    child: Icon(
                      Icons.call_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Call"),
                ],
              ),

              Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.shade200,
                    child: Icon(
                      Icons.calendar_month_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Schedule"),
                ],
              ),

              Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.shade200,
                    child: Icon(Icons.dialpad, size: 25, color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Text("Keypad"),
                ],
              ),

              Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.shade200,
                    child: Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Favorites"),
                ],
              ),
            ],
          ),

          SizedBox(height: 40),

          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            title: Text("Amma"),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://tse3.mm.bing.net/th/id/OIP.D8UOAr_xZmXgCpQFWANnbQHaEK?pid=Api&h=220&P=0",
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.call_received),
                SizedBox(width: 10),
                Text("Today,11:13 am"),
              ],
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            title: Text("Ammu"),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://tse3.mm.bing.net/th/id/OIP.gWY1kab1JZRZzpybjIPZSQHaI-?pid=Api&h=220&P=0",
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.call_received),
                SizedBox(width: 10),
                Text("Yesterday,10:56 pm"),
              ],
            ),
            trailing: Icon(Icons.video_call),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.add_call),
      ),
    );
  }
}
