import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../prayer/prayer_widget.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayerGetWidget extends StatefulWidget {
  const PrayerGetWidget({Key? key}) : super(key: key);

  @override
  _PrayerGetWidgetState createState() => _PrayerGetWidgetState();
}

class _PrayerGetWidgetState extends State<PrayerGetWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
              logFirebaseEvent('PRAYER_GET_close_outlined_ICN_ON_TAP');
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
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: AutoSizeText(
                        valueOrDefault<String>(
                          random_data.randomString(
                            1,
                            10,
                            true,
                            false,
                            false,
                          ),
                          'God bless you!',
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.04, 0.89),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Get',
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
