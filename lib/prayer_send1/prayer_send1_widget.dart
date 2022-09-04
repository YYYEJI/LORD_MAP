import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/complete_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../prayer/prayer_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../backend/cloud_functions/cloud_functions.dart';

class PrayerSend1Widget extends StatefulWidget {
  const PrayerSend1Widget({Key? key}) : super(key: key);

  @override
  _PrayerSend1WidgetState createState() => _PrayerSend1WidgetState();
}

class _PrayerSend1WidgetState extends State<PrayerSend1Widget> {
  ColPTTodayRecord? praytitle;
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'PrayerSend1'});
    textController = TextEditingController();
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
          '기도제목 보내기',
          style: FlutterFlowTheme.of(context).bodyText1,
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.close_outlined,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () async {
              logFirebaseEvent('PRAYER_SEND1_close_outlined_ICN_ON_TAP');
              logFirebaseEvent('IconButton_Navigate-To');
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrayerWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFFAFAD2),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.05, -0.35),
                child: Container(
                  width: 280,
                  height: 500,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: TextFormField(
                    controller: textController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: '       Enter your prayer title . . . ◡̈',
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.86),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('PRAYER_SEND1_PAGE_SEND_BTN_ON_TAP');
                    logFirebaseEvent('Button_Backend-Call');

                    final usersUpdateData = createUsersRecordData(
                      prayTitleToday: textController!.text,
                    );
                    await currentUserReference!.update(usersUpdateData);
                    logFirebaseEvent('Button_Backend-Call');


                    // -----------------------------
                    RandGetter n = RandGetter();
                    //dummy불러오고
                    //+1하고 dummy업데이트
                    //그값을 key로 data생성
                    int I = await n.updateDummy();
                    n.createPrayerTitleData(textController!.text, I);

                    // -----------------------------

                    /*
                    final colPTTodayCreateData = createColPTTodayRecordData(
                      colPt: textController!.text,
                    );
                    var colPTTodayRecordReference =
                        ColPTTodayRecord.collection.doc();
                    await colPTTodayRecordReference.set(colPTTodayCreateData);
                    praytitle = ColPTTodayRecord.getDocumentFromData(
                        colPTTodayCreateData, colPTTodayRecordReference);
                    */
                    logFirebaseEvent('Button_Bottom-Sheet');
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: CompleteWidget(),
                        );
                      },
                    );

                    setState(() {});
                  },
                  text: 'Send',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
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
