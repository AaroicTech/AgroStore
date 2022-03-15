import 'package:agro_store/Stlyes/fonts.dart';
import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Card(
              child: Row(
                children: [
                  // const Text(
                  //   'x',
                  //   style: TextStyle(color: Colors.green, fontSize: 30),
                  // ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.cancel),
                  ),
                  const Image(
                    image: AssetImage('assets/agro_store.png'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Text('Products'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel),
                    ),
                  ),
                  ListTile(
                    leading: const Text('History'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel),
                    ),
                  ),
                  ListTile(
                    leading: const Text('Orders'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel),
                    ),
                  ),
                  ListTile(
                    leading: const Text('Massages'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel),
                    ),
                  ),
                  ListTile(
                    leading: const Text('Send Demoplaint'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Text('About Us'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel),
                    ),
                  ),
                  ListTile(
                    leading: const Text('Settings'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel),
                    ),
                  ),
                  ListTile(
                    leading: const Text('Contact us'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            Container(
              alignment: Alignment.bottomLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Logout',
                  style: textStyle2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
