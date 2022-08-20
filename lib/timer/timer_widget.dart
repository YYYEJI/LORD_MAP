import '../find_prayer_group/find_prayer_group_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../homepage/homepage_widget.dart';
import '../timer_add_group/timer_add_group_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomepageWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Prayer group',
          style: FlutterFlowTheme.of(context).bodyText1,
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.find_in_page_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FindPrayerGroupWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TimerAddGroupWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        icon: Icon(
          Icons.add_circle_outline_rounded,
        ),
        label: Text(
          'add another group',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '[오늘 누군가의 기도제목]',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Text(
                              '\" 어쩌구저쩌구기도제목\"',
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: Text(
                        '00 : 02',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Start',
                      options: FFButtonOptions(
                        width: 130,
                        height: 60,
                        color: Color(0xFFFAFAD2),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).black600,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Finish',
                      options: FFButtonOptions(
                        width: 130,
                        height: 60,
                        color: Color(0xFFFAFAD2),
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
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
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: FlutterFlowTheme.of(context).black600,
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        indicatorColor: Color(0xFFFAFAD2),
                        tabs: [
                          Tab(
                            text: '그룹1',
                          ),
                          Tab(
                            text: '그룹2',
                          ),
                          Tab(
                            text: '그룹3',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 10),
                                        child: Text(
                                          ':: 주간 랭킹 ::',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Text(
                                        '1. ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/645/600',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Text(
                                        '김개똥',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Text(
                                        '04:19',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.solidCircle,
                                      color: Color(0xFF3FD239),
                                      size: 24,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Text(
                                        '1. ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/645/600',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Text(
                                        '김개똥',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Text(
                                        '04:19',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.solidCircle,
                                      color: Color(0xFF3FD239),
                                      size: 24,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Text(
                                        '1. ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/645/600',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Text(
                                        '김개똥',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Text(
                                        '04:19',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.solidCircle,
                                      color: Color(0xFF3FD239),
                                      size: 24,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Text(
                                        '1. ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/645/600',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Text(
                                        '김개똥',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Text(
                                        '04:19',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.solidCircle,
                                      color: Color(0xFF3FD239),
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 10),
                                            child: Text(
                                              ':: 주간 랭킹 ::',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '1. ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/645/600',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '김개똥',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '04:19',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.solidCircle,
                                          color: Color(0xFF3FD239),
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '1. ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/645/600',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '김개똥',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '04:19',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.solidCircle,
                                          color: Color(0xFF3FD239),
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '1. ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/645/600',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '김개똥',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '04:19',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.solidCircle,
                                          color: Color(0xFF3FD239),
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '1. ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/645/600',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '김개똥',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '04:19',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.solidCircle,
                                          color: Color(0xFF3FD239),
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 10),
                                            child: Text(
                                              ':: 주간 랭킹 ::',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '1. ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/645/600',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '김개똥',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '04:19',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.solidCircle,
                                          color: Color(0xFF3FD239),
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '1. ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/645/600',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '김개똥',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '04:19',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.solidCircle,
                                          color: Color(0xFF3FD239),
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '1. ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/645/600',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '김개똥',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '04:19',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.solidCircle,
                                          color: Color(0xFF3FD239),
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '1. ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/645/600',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '김개똥',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '04:19',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.solidCircle,
                                          color: Color(0xFF3FD239),
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
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
