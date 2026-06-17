import 'package:flutter/material.dart';

class Update extends StatelessWidget {
  const Update({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Updates",
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text(("Create channel"))),
              PopupMenuItem(child: Text(("Status privacy"))),
              PopupMenuItem(child: Text(("Starred"))),
              PopupMenuItem(child: Text(("Ad preferences"))),
              PopupMenuItem(child: Text(("Settings"))),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              "Status",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(
                "Add status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      "https://tse4.mm.bing.net/th/id/OIP.ayACpdslq2Oq9hSUQnfMWQHaF1?pid=Api&h=220&P=0",
                    ),
                  ),
                  Positioned(
                    right: -2,
                    bottom: -2,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add, size: 14, color: Colors.white),
                    ),
                  ),
                ],
              ),
              subtitle: Text(
                "Disappears after 24 hours",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Recent updates",
                style: TextStyle(fontSize: 12, color: Colors.blueGrey),
              ),
            ),
            ListTile(
              title: Text(
                "Ammu",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://tse2.mm.bing.net/th/id/OIP.Fd1Nx0LWj6TfKQQf-rQtOwHaE6?pid=Api&h=220&P=0",
                ),
              ),
              subtitle: Text("1:50 pm"),
            ),
            ListTile(
              title: Text(
                "Appu",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://tse4.mm.bing.net/th/id/OIP.JPogPMSOOv8g9WJdtLUluAHaEe?pid=Api&h=220&P=0",
                ),
              ),
              subtitle: Text("2:30 pm"),
            ),
            ListTile(
              title: Text(
                "Ashh",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://thf.bing.com/th/id/OIP.7v71NzmdMeytaqyVVgt45AHaHa?w=187&h=150&c=6&o=7&cb=thfc1falcon2&dpr=1.3&pid=1.7&rm=3",
                ),
              ),
              subtitle: Text("1:34 pm"),
            ),
            ListTile(
              title: Text(
                "Anju",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://thf.bing.com/th/id/OIP.NJiq6uXrVb2e-HGBJGHbWgHaHO?w=195&h=190&c=7&r=0&o=7&cb=thfc1falcon2&dpr=1.3&pid=1.7&rm=3",
                ),
              ),
              subtitle: Text("9:50 pm"),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.edit)),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            child: Icon(Icons.camera_alt_rounded),
          ),
        ],
      ),
    );
  }
}
