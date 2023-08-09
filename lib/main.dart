import 'package:flutter/material.dart';
import 'package:waclone/pages/calls.dart';
import 'package:waclone/pages/camera.dart';
import 'package:waclone/pages/chat.dart';
import 'package:waclone/pages/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text("WhatsApp"),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 10.0,
            ),
            Icon(Icons.message),
            SizedBox(
              width: 10.0,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 10.0,
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(
                child: Text("CHATS"),
              ),
              Tab(
                child: Text("STATUS"),
              ),
              Tab(
                child: Text("CALLS"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            CameraPage(),
            ChatPage(),
            StatusPage(),
            CallPage(),
          ],
        ));
  }
}
