import 'package:flutter/material.dart';
import 'package:weather_admin/screens/helper.dart';
import 'package:weather_admin/widgets/custom_input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController title = TextEditingController();
  final TextEditingController body = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.blue,
        leading: Image.asset("assets/images/logo.png"),
        title: const Text("Weather Admin"),
      ),
      body: ListView(padding: EdgeInsets.all(20), children: [
        const Text(
          "Notification Form",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        CustomerInput(
          controller: title,
          label: "Title *",
        ),
        CustomerInput(
          controller: body,
          label: "Body *",
          isTextArea: true,
        ),
        SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () =>
                sendPushNotification(context, title.text, body.text),
            child: const Text('Send'),
          ),
        )
      ]),
    );
  }
}
