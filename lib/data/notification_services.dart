import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final notificationPlugin = FlutterLocalNotificationsPlugin();
  bool _isInitialised = false;
  bool get isIntialiised => _isInitialised;

  Future<void> initNotification() async {
    if (_isInitialised) return;

    const initsSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const initSettingIos = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestSoundPermission: true,
        requestBadgePermission: true);

    const initSettings = InitializationSettings(
        android: initsSettingsAndroid, iOS: initSettingIos);

    await notificationPlugin.initialize(initSettings);
    _isInitialised = true;
  }

  NotificationDetails notificationDetails() {
    return const NotificationDetails(
        android: AndroidNotificationDetails(
            "daily_channel", "Daily_Notification",
            channelDescription: "Daily_notifactions_Channel",
            importance: Importance.max,
            priority: Priority.high),
        iOS: DarwinNotificationDetails());
  }

  Future<void> showNotification(
      {int id = 0, String? title, String? body}) async {
    return notificationPlugin.show(id, title, body, notificationDetails());
  }
}
