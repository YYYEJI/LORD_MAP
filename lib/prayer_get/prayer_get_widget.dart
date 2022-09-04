import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../formoreget/formoreget_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../backend/cloud_functions/cloud_functions.dart';



class PrayerGetWidget extends StatefulWidget {
  const PrayerGetWidget({Key? key}) : super(key: key);
  @override
  _PrayerGetWidgetState createState() => _PrayerGetWidgetState();

}

String someonePrayerTitle = "[버튼을 눌러 기도제목 받기!]";


class _PrayerGetWidgetState extends State<PrayerGetWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  //여기



  //랜덤기도제목 받아오고 DB에도 저장해주는 친구
  Future<void> getRandomPrayerTitle() async {

    //새거 가져오고
    RandGetter n = RandGetter();
    String foo = await n.getRandomPrayTitle();
    setState(() {
      someonePrayerTitle = foo;
    });

    //유저필드도 그걸로 업데이트 해주기
    final usersUpdateData = createUsersRecordData(
      prayTitleGot: someonePrayerTitle,
    );
    await currentUserReference!.update(usersUpdateData);
    print("got new Random title :D");

  }



  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'PrayerGet'});
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
          '기도제목 받기',
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
          child: Align(
            alignment: AlignmentDirectional(-0.1, 0.05),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.05, -0.3),
                  child: Container(
                    width: 280,
                    height: 500,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Text(
                      //여기. 근데 가운데정렬 어케하지..? 일단 쌈마이로...
                      "\n\n\n   $someonePrayerTitle  ",
                      style: FlutterFlowTheme.of(context).subtitle2,

                    ),
                    /*child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: AuthUserStreamWidget(
                        child: StreamBuilder<List<ColPTTodayRecord>>(
                          stream: queryColPTTodayRecord(
                            queryBuilder: (colPTTodayRecord) =>
                                colPTTodayRecord.where('col_pt',
                                    isNotEqualTo: valueOrDefault(
                                        currentUserDocument?.prayTitleToday,
                                        '')),
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
                            List<ColPTTodayRecord> textColPTTodayRecordList =
                                snapshot.data!;
                            // Return an empty Container when the document does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final textColPTTodayRecord =
                                textColPTTodayRecordList.isNotEmpty
                                    ? textColPTTodayRecordList.first
                                    : null;
                            return AutoSizeText(
                              valueOrDefault<String>(
                                textColPTTodayRecord!.colPt,
                                '기도해주셔서 감사해요!',
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            );
                          },
                        ),
                      ),
                    ),*/
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.04, 0.89),
                  child: StreamBuilder<List<ColPTTodayRecord>>(
                    stream: queryColPTTodayRecord(
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
                      List<ColPTTodayRecord> buttonColPTTodayRecordList =
                      snapshot.data!;
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final buttonColPTTodayRecord =
                      buttonColPTTodayRecordList.isNotEmpty
                          ? buttonColPTTodayRecordList.first
                          : null;
                      return FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'PRAYER_GET_PAGE_GET_MORE!_BTN_ON_TAP');
                          logFirebaseEvent('Button_Navigate-To');
                          getRandomPrayerTitle();

                          /*await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormoregetWidget(),
                            ),
                          );*/

                        },
                        text: '기도제목 받기',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
