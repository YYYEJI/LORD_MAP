import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../timer/timer_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FindPrayerGroupWidget extends StatefulWidget {
  const FindPrayerGroupWidget({Key? key}) : super(key: key);

  @override
  _FindPrayerGroupWidgetState createState() => _FindPrayerGroupWidgetState();
}

class _FindPrayerGroupWidgetState extends State<FindPrayerGroupWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Find_prayer_group'});
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAD2),
        automaticallyImplyLeading: true,
        title: Text(
          'Find Group',
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
              logFirebaseEvent('FIND_PRAYER_GROUP_close_outlined_ICN_ON_');
              logFirebaseEvent('IconButton_Navigate-To');
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TimerWidget(),
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
                alignment: AlignmentDirectional(0, 0),
                child: Container(
                  width: 280,
                  height: 600,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -0.86),
                        child: TextFormField(
                          controller: textController,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '기도 그룹 현황',
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
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.85, -0.88),
                        child: FlutterFlowIconButton(
                          borderColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
                          borderRadius: 20,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: FaIcon(
                            FontAwesomeIcons.search,
                            color: FlutterFlowTheme.of(context).grayIcon,
                            size: 18,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.4),
                        child: Container(
                          width: 240,
                          height: 450,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: StreamBuilder<List<PrayerGroupRecord>>(
                            stream: queryPrayerGroupRecord(),
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
                              List<PrayerGroupRecord>
                                  listViewPrayerGroupRecordList =
                                  snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewPrayerGroupRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewPrayerGroupRecord =
                                      listViewPrayerGroupRecordList[
                                          listViewIndex];
                                  return Slidable(
                                    actionPane:
                                        const SlidableScrollActionPane(),
                                    secondaryActions: [
                                      IconSlideAction(
                                        caption: 'Enter',
                                        color: Colors.blue,
                                        icon: Icons.help_center,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'FIND_PRAYER_GROUP_SlidableActionWidget_1');
                                          logFirebaseEvent(
                                              'SlidableActionWidget_Navigate-To');
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  TimerWidget(),
                                            ),
                                          );
                                          logFirebaseEvent(
                                              'SlidableActionWidget_Backend-Call');

                                          final usersUpdateData =
                                              createUsersRecordData(
                                            prayerGroup:
                                                listViewPrayerGroupRecord
                                                    .groupName,
                                          );
                                          await currentUserReference!
                                              .update(usersUpdateData);
                                          logFirebaseEvent(
                                              'SlidableActionWidget_Backend-Call');

                                          final userinPGCreateData =
                                              createUserinPGRecordData();
                                          await UserinPGRecord.createDoc(
                                                  listViewPrayerGroupRecord
                                                      .reference)
                                              .set(userinPGCreateData);
                                        },
                                      ),
                                    ],
                                    child: ListTile(
                                      title: Text(
                                        listViewPrayerGroupRecord.groupName!,
                                        style:
                                            FlutterFlowTheme.of(context).title3,
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
                    ],
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
