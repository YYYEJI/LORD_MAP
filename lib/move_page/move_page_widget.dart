import '../alarm/alarm_widget.dart';
import '../bible_today/bible_today_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../homepage/homepage_widget.dart';
import '../mapp_b_g/mapp_b_g_widget.dart';
import '../prayer/prayer_widget.dart';
import '../prayer_get/prayer_get_widget.dart';
import '../prayer_send1/prayer_send1_widget.dart';
import '../select_room/select_room_widget.dart';
import '../sign_in/sign_in_widget.dart';
import '../timer/timer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MovePageWidget extends StatefulWidget {
  const MovePageWidget({Key? key}) : super(key: key);

  @override
  _MovePageWidgetState createState() => _MovePageWidgetState();
}

class _MovePageWidgetState extends State<MovePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MovePage'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFAFAD2),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.99, 0),
                child: Container(
                  width: 290,
                  height: 800,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.75, 0.95),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'MOVE_PAGE_PAGE_Text_2onjcgwv_ON_TAP');
                            logFirebaseEvent('Text_Navigate-To');
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInWidget(),
                              ),
                            );
                          },
                          child: Text(
                            'Logout',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.menu,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30,
                        ),
                        onPressed: () async {
                          logFirebaseEvent('MOVE_PAGE_PAGE_menu_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_Navigate-To');
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomepageWidget(),
                            ),
                          );
                        },
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.55, 0.13),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'MOVE_PAGE_PAGE_Text_xu0ksosh_ON_TAP');
                            logFirebaseEvent('Text_Navigate-To');
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BibleTodayWidget(),
                              ),
                            );
                          },
                          child: Text(
                            '오늘의 말씀',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.29, -0.36),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('MOVE_PAGE_PAGE_Text_d2ybb4eh_ON_TAP');
                    logFirebaseEvent('Text_Navigate-To');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrayerGetWidget(),
                      ),
                    );
                  },
                  child: Text(
                    '> 기도 제목 받기',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.7, -0.24),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('MOVE_PAGE_PAGE_Text_uhhg1gvu_ON_TAP');
                    logFirebaseEvent('Text_Navigate-To');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AlarmWidget(),
                      ),
                    );
                  },
                  child: Text(
                    '알람',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.7, -0.11),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('MOVE_PAGE_PAGE_Text_djpe8f4f_ON_TAP');
                    logFirebaseEvent('Text_Navigate-To');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TimerWidget(),
                      ),
                    );
                  },
                  child: Text(
                    '타이머',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.7, -0.57),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('MOVE_PAGE_PAGE_Text_r16ymivk_ON_TAP');
                    logFirebaseEvent('Text_Navigate-To');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrayerWidget(),
                      ),
                    );
                  },
                  child: Text(
                    '기도',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.7, -0.85),
                child: Text(
                  '카테고리',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.68, 0.01),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('MOVE_PAGE_PAGE_Text_h2x9uyo2_ON_TAP');
                    logFirebaseEvent('Text_Navigate-To');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectRoomWidget(),
                      ),
                    );
                  },
                  child: Text(
                    '기도실 예약',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.26, -0.47),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('MOVE_PAGE_PAGE_Text_9zz0jtfi_ON_TAP');
                    logFirebaseEvent('Text_Navigate-To');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrayerSend1Widget(),
                      ),
                    );
                  },
                  child: Text(
                    '> 기도 제목 보내기',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.7, -0.69),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('MOVE_PAGE_PAGE_Text_x2u4hkn5_ON_TAP');
                    logFirebaseEvent('Text_Navigate-To');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MappBGWidget(),
                      ),
                    );
                  },
                  child: Text(
                    '지도',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
