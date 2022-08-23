import '../flutter_flow/flutter_flow_charts.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AaaaWidget extends StatefulWidget {
  const AaaaWidget({Key? key}) : super(key: key);

  @override
  _AaaaWidgetState createState() => _AaaaWidgetState();
}

class _AaaaWidgetState extends State<AaaaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'aaaa'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
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
              Container(
                width: 400,
                height: 300,
                child: FlutterFlowBarChart(
                  barData: [
                    FFBarChartData(
                      yData: List.generate(random_data.randomInteger(0, 0),
                          (index) => random_data.randomName(true, true)),
                      color: Color(0xFFD354E3),
                    )
                  ],
                  xLabels: List.generate(random_data.randomInteger(0, 0),
                      (index) => random_data.randomName(false, true)),
                  barWidth: 25,
                  barBorderRadius: BorderRadius.circular(0),
                  groupSpace: 5,
                  chartStylingInfo: ChartStylingInfo(
                    backgroundColor: Colors.white,
                    showGrid: true,
                    showBorder: false,
                  ),
                  axisBounds: AxisBounds(),
                  xAxisLabelInfo: AxisLabelInfo(),
                  yAxisLabelInfo: AxisLabelInfo(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
