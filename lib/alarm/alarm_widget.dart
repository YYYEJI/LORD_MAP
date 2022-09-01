import '../alarm_add/alarm_add_widget.dart';
import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AlarmWidget extends StatefulWidget {
  const AlarmWidget({Key? key}) : super(key: key);

  @override
  _AlarmWidgetState createState() => _AlarmWidgetState();
}

class _AlarmWidgetState extends State<AlarmWidget> {
  bool? getBibleValue;
  bool? samepleMorningValue;
  bool? switchListTileValue1;
  bool? switchListTileValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Alarm'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAD2),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text(
          'Alarm',
          style: FlutterFlowTheme.of(context).bodyText1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFFAFAD2),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                child: AuthUserStreamWidget(
                  child: SwitchListTile(
                    value: getBibleValue ??= valueOrDefault<bool>(
                        currentUserDocument?.getBible, false),
                    onChanged: (newValue) =>
                        setState(() => getBibleValue = newValue),
                    title: Text(
                      '오늘의 말씀 받기',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                          ),
                    ),
                    tileColor: Color(0xFFFAFAD2),
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
              ),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: Text(
                      ':: 기도시간 알람 ::',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ),
                  SwitchListTile(
                    value: samepleMorningValue ??= true,
                    onChanged: (newValue) =>
                        setState(() => samepleMorningValue = newValue),
                    title: Text(
                      '08 : 00',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Poppins',
                            fontSize: 40,
                          ),
                    ),
                    subtitle: Text(
                      '\" 아침기도! \"',
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                    tileColor: Color(0xFFFAFAD2),
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  SwitchListTile(
                    value: switchListTileValue1 ??= true,
                    onChanged: (newValue) =>
                        setState(() => switchListTileValue1 = newValue),
                    title: Text(
                      '08 : 00',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Poppins',
                            fontSize: 40,
                          ),
                    ),
                    subtitle: Text(
                      '\" 아침기도! \"',
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                    tileColor: Color(0xFFFAFAD2),
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  SwitchListTile(
                    value: switchListTileValue2 ??= true,
                    onChanged: (newValue) =>
                        setState(() => switchListTileValue2 = newValue),
                    title: Text(
                      '08 : 00',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Poppins',
                            fontSize: 40,
                          ),
                    ),
                    subtitle: Text(
                      '\" 아침기도! \"',
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                    tileColor: Color(0xFFFAFAD2),
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 60,
                    borderWidth: 1,
                    buttonSize: 60,
                    icon: Icon(
                      Icons.add_circle_outline_sharp,
                      color: FlutterFlowTheme.of(context).gray600,
                      size: 40,
                    ),
                    onPressed: () async {
                      logFirebaseEvent(
                          'ALARM_add_circle_outline_sharp_ICN_ON_TA');
                      logFirebaseEvent('IconButton_Navigate-To');
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AlarmAddWidget(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
