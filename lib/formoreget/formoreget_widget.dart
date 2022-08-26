import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class FormoregetWidget extends StatefulWidget {
  const FormoregetWidget({Key? key}) : super(key: key);

  @override
  _FormoregetWidgetState createState() => _FormoregetWidgetState();
}

class _FormoregetWidgetState extends State<FormoregetWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Formoreget'});
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
                    child: AuthUserStreamWidget(
                      child: StreamBuilder<List<ColPTTodayRecord>>(
                        stream: queryColPTTodayRecord(
                          queryBuilder: (colPTTodayRecord) =>
                              colPTTodayRecord.where('col_pt',
                                  isNotEqualTo: valueOrDefault(
                                      currentUserDocument?.prayTitleToday, '')),
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
                          List<ColPTTodayRecord> listViewColPTTodayRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewColPTTodayRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewColPTTodayRecord =
                                  listViewColPTTodayRecordList[listViewIndex];
                              return Slidable(
                                actionPane: const SlidableScrollActionPane(),
                                secondaryActions: [
                                  IconSlideAction(
                                    caption: 'Share',
                                    color: Colors.blue,
                                    icon: Icons.share,
                                    onTap: () {
                                      print('SlidableActionWidget pressed ...');
                                    },
                                  ),
                                ],
                                child: ListTile(
                                  title: Text(
                                    listViewColPTTodayRecord.colPt!,
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  subtitle: Text(
                                    listViewIndex.toString(),
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF303030),
                                    size: 20,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  dense: false,
                                ),
                              );
                            },
                          );
                        },
                      ),
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
