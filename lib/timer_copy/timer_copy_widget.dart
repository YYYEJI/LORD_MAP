import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../find_prayer_group/find_prayer_group_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_timer.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../homepage/homepage_widget.dart';
import '../timer_add_group/timer_add_group_widget.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TimerCopyWidget extends StatefulWidget {
  const TimerCopyWidget({
    Key? key,
    this.prayerGroup,
  }) : super(key: key);

  final DocumentReference? prayerGroup;

  @override
  _TimerCopyWidgetState createState() => _TimerCopyWidgetState();
}

class _TimerCopyWidgetState extends State<TimerCopyWidget> {
  late final StopWatchTimer timerController;
  late String timerValue;
  late int timerMilliseconds;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    timerMilliseconds = 0;
    timerValue = StopWatchTimer.getDisplayTime(
      0,
      hours: true,
      minute: true,
      second: true,
      milliSecond: false,
    );
    timerController = StopWatchTimer(
      mode: StopWatchMode.countUp,
      onChange: (value) {
        setState(() {
          timerMilliseconds = value;
          timerValue = StopWatchTimer.getDisplayTime(
            value,
            hours: true,
            minute: true,
            second: true,
            milliSecond: false,
          );
        });
      },
    );
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'TimerCopy'});
  }

  @override
  void dispose() {
    timerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PrayerGroupRecord>(
      stream: PrayerGroupRecord.getDocument(widget.prayerGroup!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitRipple(
                color: Color(0xFFCBCBCB),
                size: 50,
              ),
            ),
          );
        }
        final timerCopyPrayerGroupRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFFFAFAD2),
            iconTheme: IconThemeData(color: Colors.black),
            automaticallyImplyLeading: true,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('TIMER_COPY_arrow_back_rounded_ICN_ON_TAP');
                logFirebaseEvent('IconButton_Navigate-To');
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomepageWidget(),
                  ),
                );
              },
            ),
            title: Text(
              'Prayer group',
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
            actions: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.search,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20,
                ),
                onPressed: () async {
                  logFirebaseEvent('TIMER_COPY_PAGE_search_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_Navigate-To');
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FindPrayerGroupWidget(),
                    ),
                  );
                },
              ),
            ],
            centerTitle: true,
            elevation: 4,
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () async {
              logFirebaseEvent('TIMER_COPY_FloatingActionButton_r9k3436w');
              logFirebaseEvent('FloatingActionButton_Navigate-To');
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TimerAddGroupWidget(),
                ),
              );
            },
            backgroundColor: Color(0xFFFAFAD2),
            icon: Icon(
              Icons.add_circle_outline_rounded,
              color: Colors.black,
            ),
            label: Text(
              'add another group',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlutterFlowTimer(
                        timerValue: timerValue,
                        timer: timerController,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).black600,
                              fontSize: 55,
                            ),
                        onEnded: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'TIMER_COPY_PAGE_START_BTN_ON_TAP');
                            logFirebaseEvent('Button_Timer');
                            timerController.onExecute.add(
                              StopWatchExecute.start,
                            );
                          },
                          text: 'Start',
                          options: FFButtonOptions(
                            width: 100,
                            height: 60,
                            color: Color(0xFFFAFAD2),
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).black600,
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).black600,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        StreamBuilder<List<UserinPGRecord>>(
                          stream: queryUserinPGRecord(
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: SpinKitRipple(
                                    color: Color(0xFFCBCBCB),
                                    size: 50,
                                  ),
                                ),
                              );
                            }
                            List<UserinPGRecord> buttonUserinPGRecordList =
                                snapshot.data!;
                            // Return an empty Container when the document does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final buttonUserinPGRecord =
                                buttonUserinPGRecordList.isNotEmpty
                                    ? buttonUserinPGRecordList.first
                                    : null;
                            return FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'TIMER_COPY_PAGE_STOP_BTN_ON_TAP');
                                logFirebaseEvent('Button_Backend-Call');

                                final usersUpdateData = createUsersRecordData(
                                  isCompletedToday: true,
                                );
                                await currentUserReference!
                                    .update(usersUpdateData);
                                logFirebaseEvent('Button_Timer');
                                timerController.onExecute.add(
                                  StopWatchExecute.stop,
                                );

                                logFirebaseEvent('Button_Backend-Call');

                                final userinPGCreateData =
                                    createUserinPGRecordData(
                                  prayerTime: timerValue,
                                );
                                await UserinPGRecord.createDoc(
                                        widget.prayerGroup!)
                                    .set(userinPGCreateData);
                              },
                              text: 'Stop',
                              options: FFButtonOptions(
                                width: 100,
                                height: 60,
                                color: Color(0xFFFAFAD2),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).black600,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            );
                          },
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'TIMER_COPY_PAGE_RESET_BTN_ON_TAP');
                            logFirebaseEvent('Button_Timer');
                            timerController.onExecute.add(
                              StopWatchExecute.reset,
                            );
                          },
                          text: 'Reset',
                          options: FFButtonOptions(
                            width: 100,
                            height: 60,
                            color: Color(0xFFFAFAD2),
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).black600,
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).black600,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
