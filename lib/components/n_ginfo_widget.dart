import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NGinfoWidget extends StatefulWidget {
  const NGinfoWidget({
    Key? key,
    this.ngparameter,
  }) : super(key: key);

  final ChurchinNGRecord? ngparameter;

  @override
  _NGinfoWidgetState createState() => _NGinfoWidgetState();
}

class _NGinfoWidgetState extends State<NGinfoWidget> {
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
        child: StreamBuilder<List<ChurchinNGRecord>>(
          stream: queryChurchinNGRecord(
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
            List<ChurchinNGRecord> columnChurchinNGRecordList = snapshot.data!;
            // Return an empty Container when the document does not exist.
            if (snapshot.data!.isEmpty) {
              return Container();
            }
            final columnChurchinNGRecord = columnChurchinNGRecordList.isNotEmpty
                ? columnChurchinNGRecordList.first
                : null;
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.05, 0.05),
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
                      StreamBuilder<List<ChurchinNGRecord>>(
                        stream: queryChurchinNGRecord(
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
                          List<ChurchinNGRecord> textChurchinNGRecordList =
                          snapshot.data!;
                          // Return an empty Container when the document does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final textChurchinNGRecord =
                          textChurchinNGRecordList.isNotEmpty
                              ? textChurchinNGRecordList.first
                              : null;
                          return Text(
                            widget.ngparameter!.name!,
                            style:
                            FlutterFlowTheme.of(context).bodyText1.override(
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
                      StreamBuilder<List<ChurchinNGRecord>>(
                        stream: queryChurchinNGRecord(
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
                          List<ChurchinNGRecord> textChurchinNGRecordList =
                          snapshot.data!;
                          // Return an empty Container when the document does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final textChurchinNGRecord =
                          textChurchinNGRecordList.isNotEmpty
                              ? textChurchinNGRecordList.first
                              : null;
                          return Text(
                            widget.ngparameter!.address!,
                            style: FlutterFlowTheme.of(context).bodyText1,
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
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: StreamBuilder<List<ChurchinNGRecord>>(
                          stream: queryChurchinNGRecord(
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
                            List<ChurchinNGRecord> textChurchinNGRecordList =
                            snapshot.data!;
                            // Return an empty Container when the document does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final textChurchinNGRecord =
                            textChurchinNGRecordList.isNotEmpty
                                ? textChurchinNGRecordList.first
                                : null;
                            return Text(
                              widget.ngparameter!.phone!,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
