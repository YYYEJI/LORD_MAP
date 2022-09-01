import '../alarm/alarm_widget.dart';
import '../auth/auth_util.dart';
import '../bible_today/bible_today_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../move_page/move_page_widget.dart';
import '../prayer/prayer_widget.dart';
import '../prayer_get/prayer_get_widget.dart';
import '../prayer_send1/prayer_send1_widget.dart';
import '../select_map/select_map_widget.dart';
import '../select_room/select_room_widget.dart';
import '../setting/setting_widget.dart';
import '../sign_in/sign_in_widget.dart';
import '../timer/timer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({Key? key}) : super(key: key);

  @override
  _HomepageWidgetState createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Homepage'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAD2),
        automaticallyImplyLeading: true,
        leading: FlutterFlowIconButton(
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
            logFirebaseEvent('HOMEPAGE_PAGE_menu_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Navigate-To');
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MovePageWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Lord Map',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                fontSize: 30,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.settings_outlined,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () async {
              logFirebaseEvent('HOMEsettings_outlined_ICN_ON_TAP');
              logFirebaseEvent('IconButton_Navigate-To');
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFFAFAD2),
      drawer: Drawer(
        elevation: 16,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(-0.65, -0.85),
              child: Text(
                '카테고리',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.65, -0.19),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('HOMEPAGE_PAGE_Text_bu5wf0lp_ON_TAP');
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
              alignment: AlignmentDirectional(-0.65, -0.7),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('HOMEPAGE_PAGE_Text_4qofdfdv_ON_TAP');
                  logFirebaseEvent('Text_Navigate-To');
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectMapWidget(),
                    ),
                  );
                },
                child: Text(
                  '지도',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.64, -0.09),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('HOMEPAGE_PAGE_Text_nnrrl3cj_ON_TAP');
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
              alignment: AlignmentDirectional(-0.63, 0.93),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('HOMEPAGE_PAGE_Text_9t95snbt_ON_TAP');
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
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.65, -0.59),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('HOMEPAGE_PAGE_Text_tna6fr8o_ON_TAP');
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
              alignment: AlignmentDirectional(-0.61, 0.12),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('HOMEPAGE_PAGE_Text_6t6lmmu1_ON_TAP');
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
            Align(
              alignment: AlignmentDirectional(-0.61, 0.02),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('HOMEPAGE_PAGE_Text_xq7s60oz_ON_TAP');
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
              alignment: AlignmentDirectional(-0.13, -0.36),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('HOMEPAGE_PAGE_Text_a5nwpk95_ON_TAP');
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
              alignment: AlignmentDirectional(-0.1, -0.47),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('HOMEPAGE_PAGE_Text_a479m3uy_ON_TAP');
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
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'HOMEPAGE_PAGE_Column_06yivz1c_ON_TAP');
                        logFirebaseEvent('Column_Navigate-To');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectMapWidget(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.map_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'HOMEPAGE_PAGE_map_outlined_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_Navigate-To');
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SelectMapWidget(),
                                ),
                              );
                            },
                          ),
                          Text(
                            '지역교회',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'HOMEPAGE_PAGE_Column_idqbtbkc_ON_TAP');
                        logFirebaseEvent('Column_Navigate-To');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrayerWidget(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.mail_outline_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'HOMEmail_outline_rounded_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_Navigate-To');
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PrayerWidget(),
                                ),
                              );
                            },
                          ),
                          Text(
                            '기도제목',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'HOMEPAGE_PAGE_Column_agbkyokk_ON_TAP');
                        logFirebaseEvent('Column_Navigate-To');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlarmWidget(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.alarm_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'HOMEPAGE_PAGE_alarm_rounded_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_Navigate-To');
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlarmWidget(),
                                ),
                              );
                            },
                          ),
                          Text(
                            '기도알림',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'HOMEPAGE_PAGE_Column_xpink7i4_ON_TAP');
                        logFirebaseEvent('Column_Navigate-To');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectRoomWidget(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.bookmarks_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'HOMEbookmarks_outlined_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_Navigate-To');
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SelectRoomWidget(),
                                ),
                              );
                            },
                          ),
                          Text(
                            '기도실',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'HOMEPAGE_PAGE_Column_84zi71lp_ON_TAP');
                        logFirebaseEvent('Column_Navigate-To');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BibleTodayWidget(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.menu_book_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'HOMEmenu_book_outlined_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_Navigate-To');
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BibleTodayWidget(),
                                ),
                              );
                            },
                          ),
                          Text(
                            '오늘말씀',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 50),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'HOMEPAGE_PAGE_START_PRAYER_BTN_ON_TAP');
                        logFirebaseEvent('Button_Navigate-To');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TimerWidget(),
                          ),
                        );
                      },
                      text: 'Start Prayer',
                      options: FFButtonOptions(
                        width: 280,
                        height: 100,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).black600,
                                  fontSize: 30,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '이번주 ',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  AuthUserStreamWidget(
                    child: Text(
                      valueOrDefault(currentUserDocument?.prayerStack, 0)
                          .toString(),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Text(
                    '명을 위해 기도했어요!',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: 300,
                  height: 180,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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
