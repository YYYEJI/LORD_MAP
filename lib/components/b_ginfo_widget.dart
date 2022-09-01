import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BGinfoWidget extends StatefulWidget {
  const BGinfoWidget({
    Key? key,
    this.churchBG,
  }) : super(key: key);

  final ChurchinBGRecord? churchBG;

  @override
  _BGinfoWidgetState createState() => _BGinfoWidgetState();
}

class _BGinfoWidgetState extends State<BGinfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(-0.15, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: FaIcon(
                      FontAwesomeIcons.church,
                      color: Colors.black,
                      size: 65,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  StreamBuilder<List<ChurchinBGRecord>>(
                    stream: queryChurchinBGRecord(
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
                      List<ChurchinBGRecord> textChurchinBGRecordList =
                          snapshot.data!;
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final textChurchinBGRecord =
                          textChurchinBGRecordList.isNotEmpty
                              ? textChurchinBGRecordList.first
                              : null;
                      return Text(
                        textChurchinBGRecord!.name!,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 24,
                            ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  StreamBuilder<List<ChurchinBGRecord>>(
                    stream: queryChurchinBGRecord(
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
                      List<ChurchinBGRecord> textChurchinBGRecordList =
                          snapshot.data!;
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final textChurchinBGRecord =
                          textChurchinBGRecordList.isNotEmpty
                              ? textChurchinBGRecordList.first
                              : null;
                      return Text(
                        textChurchinBGRecord!.address!,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText1,
                      );
                    },
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: StreamBuilder<List<ChurchinBGRecord>>(
                    stream: queryChurchinBGRecord(
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
                      List<ChurchinBGRecord> textChurchinBGRecordList =
                          snapshot.data!;
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final textChurchinBGRecord =
                          textChurchinBGRecordList.isNotEmpty
                              ? textChurchinBGRecordList.first
                              : null;
                      return Text(
                        textChurchinBGRecord!.phone!,
                        style: FlutterFlowTheme.of(context).bodyText1,
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
