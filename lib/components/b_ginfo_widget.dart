import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                child: StreamBuilder<List<ChurchinBGRecord>>(
                  stream: queryChurchinBGRecord(),
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
                    return Text(
                      widget.churchBG!.name!,
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF4A92FF),
                            fontSize: 35,
                          ),
                    );
                  },
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text(
                  widget.churchBG!.address!,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
