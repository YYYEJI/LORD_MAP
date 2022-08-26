import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UserListWidget extends StatefulWidget {
  const UserListWidget({Key? key}) : super(key: key);

  @override
  _UserListWidgetState createState() => _UserListWidgetState();
}

class _UserListWidgetState extends State<UserListWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
          child: Text(
            '1. ',
            style: FlutterFlowTheme.of(context).bodyText1,
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
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
          child: Text(
            '김개똥',
            style: FlutterFlowTheme.of(context).bodyText1,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
          child: Text(
            '04:19',
            style: FlutterFlowTheme.of(context).bodyText1,
          ),
        ),
        FaIcon(
          FontAwesomeIcons.solidCircle,
          color: Color(0xFF3FD239),
          size: 24,
        ),
      ],
    );
  }
}
