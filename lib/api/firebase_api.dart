import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  // create an instance of firebasse messaging
  final _firebaseMessaging = FirebaseMessaging.instance;

  // function to initialize notifications
  Future<void> initNotification() async {
    // request permission from the user
    await _firebaseMessaging.requestPermission();

    // Fetch the firebase cloud messaging token for this device
    final FCMToken = await _firebaseMessaging.getToken();

    print("Token $FCMToken");
  }

  // function to handle received messages

  // function to initialize foreground and background settings
}
