import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:push_notification/main.dart';

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

    initPushNotifications();
  }

  // function to handle received messages
  void handleMessage(RemoteMessage? message) {
    if (message == null) return;

    // navigate to new screen when clicked on notification
    navigatorKey.currentState?.pushNamed(
      '/notification_screen',
      arguments: message,
    );
  }

  // function to initialize foreground and background settings
  Future initPushNotifications() async {
    // handle notification is app is terminated
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    // attach event listener for when a notification opens the app
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
