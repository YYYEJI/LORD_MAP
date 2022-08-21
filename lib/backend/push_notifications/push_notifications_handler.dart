import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(
              color: FlutterFlowTheme.of(context).primaryColor,
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'Loading': (data) async => LoadingWidget(),
  'Sign_up': (data) async => SignUpWidget(),
  'Homepage': (data) async => HomepageWidget(),
  'MovePage': (data) async => MovePageWidget(),
  'Prayer': (data) async => PrayerWidget(),
  'PrayerSend1': (data) async => PrayerSend1Widget(),
  'PrayerSend2': (data) async => PrayerSend2Widget(),
  'PrayerGet': (data) async => PrayerGetWidget(),
  'Timer': (data) async => TimerWidget(),
  'Timer_addGroup': (data) async => TimerAddGroupWidget(),
  'Find_prayer_group': (data) async => FindPrayerGroupWidget(),
  'AlarmAdd': (data) async => AlarmAddWidget(),
  'Alarm': (data) async => AlarmWidget(),
  'SelectRoom': (data) async => SelectRoomWidget(),
  'PrayerRoomlectur': (data) async => PrayerRoomlecturWidget(),
  'PrayerRoomDorm': (data) async => PrayerRoomDormWidget(),
  'mappageDorm': (data) async => MappageDormWidget(),
  'mappageLectur': (data) async => MappageLecturWidget(),
  'SelectMap': (data) async => SelectMapWidget(),
  'MappBG': (data) async => MappBGWidget(),
  'MappNG': (data) async => MappNGWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
