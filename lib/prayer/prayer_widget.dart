import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../homepage/homepage_widget.dart';
import '../prayer_get/prayer_get_widget.dart';
import '../prayer_send1/prayer_send1_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayerWidget extends StatefulWidget {
  const PrayerWidget({Key? key}) : super(key: key);

  @override
  _PrayerWidgetState createState() => _PrayerWidgetState();
}

class _PrayerWidgetState extends State<PrayerWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Prayer'});
  }

  @override
  Widget build(BuildContext context) {
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
            logFirebaseEvent('PRAYER_arrow_back_rounded_ICN_ON_TAP');
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
          'Prayer',
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
              logFirebaseEvent('PRAYER_PAGE_close_outlined_ICN_ON_TAP');
              logFirebaseEvent('IconButton_Navigate-To');
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomepageWidget(),
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
                alignment: AlignmentDirectional(-0.01, 0.87),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('PRAYER_PAGE_GET_BTN_ON_TAP');
                    logFirebaseEvent('Button_Navigate-To');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrayerGetWidget(),
                      ),
                    );
                  },
                  text: 'Get',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFFFAFAD2),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.1),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('PRAYER_PAGE_SEND_BTN_ON_TAP');
                    logFirebaseEvent('Button_Navigate-To');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrayerSend1Widget(),
                      ),
                    );
                  },
                  text: 'Send',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFFFAFAD2),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.03, -0.65),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('PRAYER_PAGE_Image_lyhe5m1j_ON_TAP');
                    logFirebaseEvent('Image_Navigate-To');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrayerSend1Widget(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/letter2.png',
                    width: 270,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.6),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('PRAYER_PAGE_Image_kbu5bla0_ON_TAP');
                    logFirebaseEvent('Image_Navigate-To');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrayerGetWidget(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/letter2.png',
                    width: 270,
                    fit: BoxFit.cover,
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
