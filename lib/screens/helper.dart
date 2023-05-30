import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weather_admin/utils/utils.dart';

sendPushNotification(BuildContext context, String title, String body) async {
  if (title.isEmpty || body.isEmpty) {
    return showSnackBar(context, 'Please fill required data!',
        color: Colors.red);
  }

  final String serverKey =
      'AAAA6I29cBc:APA91bE4f91NKflA23a-rgx_P0xd-NBCG57QBZz_HkLTnae6I3WxrLMfucvOSbwuPoDjW74zC6QAEDCeM1CZxt6YYWFyfVavWGujLpcWzpYXliS8TF6YTz1gTA3QbP0OCYOMwLLspE8P';
  final String firebaseUrl = 'https://fcm.googleapis.com/fcm/send';

  final Map<String, dynamic> notification = {
    "title": title,
    "body": body,
  };

  final Map<String, dynamic> message = {
    'notification': notification,
    'to': "/topics/all",
  };

  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'key=$serverKey',
  };

  final response = await http.post(
    Uri.parse(firebaseUrl),
    headers: headers,
    body: jsonEncode(message),
  );

  if (response.statusCode == 200) {
    showSnackBar(
      context,
      'Push notification sent successfully',
    );
  } else {
    showSnackBar(
      context,
      'Failed to send push notification',
    );
  }
}
