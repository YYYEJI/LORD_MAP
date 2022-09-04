import '../backend/backend.dart';
import '../components/b_ginfo_widget.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MappBGWidget extends StatefulWidget {
  const MappBGWidget({Key? key}) : super(key: key);

  @override
  _MappBGWidgetState createState() => _MappBGWidgetState();
}

class _MappBGWidgetState extends State<MappBGWidget> {
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MappBG'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ChurchinBGRecord>>(
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
        List<ChurchinBGRecord> mappBGChurchinBGRecordList = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Color(0xFFFAFAD2),
            automaticallyImplyLeading: false,
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
                logFirebaseEvent('MAPP_B_G_arrow_back_rounded_ICN_ON_TAP');
                logFirebaseEvent('IconButton_Navigate-Back');
                Navigator.pop(context);
              },
            ),
            title: Align(
              alignment: AlignmentDirectional(-0.25, 0),
              child: Text(
                '북구 교회',
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).black600,
                      fontSize: 20,
                    ),
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2,
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
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
                        List<ChurchinBGRecord> googleMapChurchinBGRecordList =
                        snapshot.data!;
                        return FlutterFlowGoogleMap(
                          controller: googleMapsController,
                          onCameraIdle: (latLng) => googleMapsCenter = latLng,
                          initialLocation: googleMapsCenter ??=
                              LatLng(36.084, 129.3919),
                          markers: googleMapChurchinBGRecordList
                              .map(
                                (googleMapChurchinBGRecord) =>
                                FlutterFlowMarker(
                                  googleMapChurchinBGRecord.reference.path,
                                  googleMapChurchinBGRecord.location!,
                                      () async {
                                    logFirebaseEvent(
                                        'MAPP_B_G_GoogleMap_tthfe3tu_ON_MARKER_TA');
                                    logFirebaseEvent('GoogleMap_Bottom-Sheet');
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                          MediaQuery.of(context).viewInsets,
                                          child: BGinfoWidget(
                                            churchInfoBG:
                                            googleMapChurchinBGRecord,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                          )
                              .toList(),
                          markerColor: GoogleMarkerColor.azure,
                          mapType: MapType.normal,
                          style: GoogleMapStyle.standard,
                          initialZoom: 14,
                          allowInteraction: true,
                          allowZoom: true,
                          showZoomControls: true,
                          showLocation: true,
                          showCompass: false,
                          showMapToolbar: false,
                          showTraffic: false,
                          centerMapOnMarkerTap: true,
                        );
                      },
                    ),

                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
