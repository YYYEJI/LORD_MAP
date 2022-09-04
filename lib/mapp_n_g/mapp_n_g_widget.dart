import '../backend/backend.dart';
import '../components/n_ginfo_widget.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MappNGWidget extends StatefulWidget {
  const MappNGWidget({Key? key}) : super(key: key);

  @override
  _MappNGWidgetState createState() => _MappNGWidgetState();
}

class _MappNGWidgetState extends State<MappNGWidget> {
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MappNG'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ChurchinNGRecord>>(
      stream: queryChurchinNGRecord(),
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
        List<ChurchinNGRecord> mappNGChurchinNGRecordList = snapshot.data!;
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
                logFirebaseEvent('MAPP_N_G_arrow_back_rounded_ICN_ON_TAP');
                logFirebaseEvent('IconButton_Navigate-Back');
                Navigator.pop(context);
              },
            ),
            title: Align(
              alignment: AlignmentDirectional(-0.2, 0),
              child: Text(
                '남구 교회',
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
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: StreamBuilder<List<ChurchinNGRecord>>(
                              stream: queryChurchinNGRecord(),
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
                                List<ChurchinNGRecord>
                                googleMapChurchinNGRecordList =
                                snapshot.data!;
                                return FlutterFlowGoogleMap(
                                  controller: googleMapsController,
                                  onCameraIdle: (latLng) =>
                                  googleMapsCenter = latLng,
                                  initialLocation: googleMapsCenter ??=
                                      LatLng(36.0287, 129.3402),
                                  markers: mappNGChurchinNGRecordList
                                      .map(
                                        (mappNGChurchinNGRecord) =>
                                        FlutterFlowMarker(
                                          mappNGChurchinNGRecord.reference.path,
                                          mappNGChurchinNGRecord.location!,
                                              () async {
                                            logFirebaseEvent(
                                                'MAPP_N_G_GoogleMap_o52g074p_ON_MARKER_TA');
                                            logFirebaseEvent(
                                                'GoogleMap_Bottom-Sheet');
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                              Colors.transparent,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                  MediaQuery.of(context)
                                                      .viewInsets,
                                                  child: NGinfoWidget(
                                                    ngparameter:
                                                    mappNGChurchinNGRecord,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                  )
                                      .toList(),
                                  markerColor: GoogleMarkerColor.violet,
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
                    ],
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
