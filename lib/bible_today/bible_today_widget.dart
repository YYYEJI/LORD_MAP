import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../homepage/homepage_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import '../backend/cloud_functions/cloud_functions.dart';


class BibleTodayWidget extends StatefulWidget {
  const BibleTodayWidget({Key? key}) : super(key: key);

  @override
  _BibleTodayWidgetState createState() => _BibleTodayWidgetState();
}

class _BibleTodayWidgetState extends State<BibleTodayWidget> {

  String bibleToday = "[버튼을 클릭해서 오늘의 말씀 받기]";

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'BibleToday'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ColPTTodayRecord>>(
      stream: queryColPTTodayRecord(),
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
        List<ColPTTodayRecord> bibleTodayColPTTodayRecordList = snapshot.data!;
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
                logFirebaseEvent('BIBLE_TODAY_arrow_back_rounded_ICN_ON_TA');
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
              '오늘의 성경말씀',
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
                alignment: AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.08, 0),
                            child: Container(
                              width: 280,
                              height: 500,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: AuthUserStreamWidget(
                                        child: StreamBuilder<
                                            List<ColPTTodayRecord>>(
                                          stream: queryColPTTodayRecord(
                                            queryBuilder: (colPTTodayRecord) =>
                                                colPTTodayRecord.where('col_pt',
                                                    isNotEqualTo: valueOrDefault(
                                                        currentUserDocument
                                                            ?.prayTitleToday,
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
                                            List<ColPTTodayRecord>
                                                textColPTTodayRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the document does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final textColPTTodayRecord =
                                                textColPTTodayRecordList
                                                        .isNotEmpty
                                                    ? textColPTTodayRecordList
                                                        .first
                                                    : null;
                                            return AutoSizeText(

                                              bibleToday,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        RandGetter n = RandGetter();
                        String foo = await n.getRandomBible();
                        //받아와서 리프레쉬하고
                        setState(() {
                          bibleToday = foo;
                        });

                        print('got new bible ...');
                      },
                      text: '오늘의 말씀 받기',
                      options: FFButtonOptions(
                        width: 200,
                        height: 60,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 18,
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
            ),
          ),
        );
      },
    );
  }
}
