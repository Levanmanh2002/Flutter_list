import 'package:flutter/material.dart';

// ignore: camel_case_types
class listIcon extends StatefulWidget {
  const listIcon({Key? key}) : super(key: key);

  @override
  State<listIcon> createState() => _listIconState();
}

// ignore: camel_case_types
class _listIconState extends State<listIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter - ListView Icon',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: const Color(0xffe4ad00),
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return ListTile(
              title: Text("I am ${index + 1}"),
              onTap: () {
                // ignore: avoid_print
                print("I am ${index + 1}");
              },
              onLongPress: () {
                // ignore: avoid_print
                print("123 ${index + 1}");
              },
              leading: IconButton(
                icon: const Icon(Icons.timelapse),
                onPressed: () {},
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
            );
          }),
        ));
  }
}
