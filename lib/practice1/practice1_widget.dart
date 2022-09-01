import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Practice1Widget extends StatefulWidget {
  const Practice1Widget({Key? key}) : super(key: key);

  @override
  _Practice1WidgetState createState() => _Practice1WidgetState();
}

class _Practice1WidgetState extends State<Practice1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'practice1'});
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
        List<ColPTTodayRecord> practice1ColPTTodayRecordList = snapshot.data!;
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
              child: StreamBuilder<List<ColPTTodayRecord>>(
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
                  List<ColPTTodayRecord> columnColPTTodayRecordList =
                      snapshot.data!;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(columnColPTTodayRecordList.length,
                        (columnIndex) {
                      final columnColPTTodayRecord =
                          columnColPTTodayRecordList[columnIndex];
                      return StreamBuilder<ColPTTodayRecord>(
                        stream: ColPTTodayRecord.getDocument(
                            columnColPTTodayRecord.reference),
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
                          final containerColPTTodayRecord = snapshot.data!;
                          return Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          );
                        },
                      );
                    }),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
