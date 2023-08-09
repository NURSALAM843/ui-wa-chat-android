import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd/mm/yyyy').format(now);
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Text("${index + 1}"),
                ),
                title: Text(
                  "Saya ${index + 1}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  children: [
                    const Icon(
                      Icons.done_all,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text("Pesan Saya ${index + 1}"),
                  ],
                ),
                trailing: Text("${formattedDate}"),
              ),
              const Divider(),
            ],
          );
        },
      ),
    );
  }
}
