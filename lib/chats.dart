import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: const Color.fromARGB(255, 38, 103, 76),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(Icons.currency_rupee_sharp),
          SizedBox(width: 5),
          Icon(Icons.camera_alt_outlined),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text(("New group"))),
              PopupMenuItem(child: Text(("New community"))),
              PopupMenuItem(child: Text(("Broadcast lists"))),
              PopupMenuItem(child: Text(("Linked devices"))),
              PopupMenuItem(child: Text(("Starred"))),
              PopupMenuItem(child: Text(("Payments"))),
              PopupMenuItem(child: Text(("Read all"))),
              PopupMenuItem(child: Text(("Settings"))),
            ],
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: .end,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: FloatingActionButton(
              onPressed: () {},
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWmR2IawvXafShmZA1x5n1CvcJ_cnF0NzU96x0lfl7Cw&s=10",
              ),
            ),
          ),
          SizedBox(height: 16),

          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              hintText: "Ask Meta AI or Search",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                    ),
                    child: Text("All"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                    ),
                    child: Text("Unread 99+"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                    ),
                    child: Text("Favourites"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                    ),
                    child: Text("Groups 45"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                    ),
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "data:image/jpeg;base64,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",
              ),
            ),
            title: Text("Amma"),
            subtitle: Text("Hiii"),
            trailing: Text("10:00"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://tse3.mm.bing.net/th/id/OIP.D8UOAr_xZmXgCpQFWANnbQHaEK?pid=Api&h=220&P=0",
              ),
            ),
            title: Text("Achan"),
            subtitle: Text("hy"),
            trailing: Text("11:00"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://tse3.mm.bing.net/th/id/OIP.YNa3EI3ELIemXTmJWUgFogHaE8?pid=Api&h=220&P=0",
              ),
            ),
            title: Text("Nandu"),
            subtitle: Text("food?"),
            trailing: Text("10:30"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://tse2.mm.bing.net/th/id/OIP.1fNmQhU9-vOO6RhkXXjjmwHaE8?pid=Api&h=220&P=0",
              ),
            ),
            title: Text("Kunjuu"),
            subtitle: Text("Evide"),
            trailing: Text("12:30"),
          ),
        ],
      ),
    );
  }
}
