import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'charting_model.dart';
export 'charting_model.dart';

class ChartingWidget extends StatefulWidget {
  const ChartingWidget({super.key});

  @override
  State<ChartingWidget> createState() => _ChartingWidgetState();
}

class _ChartingWidgetState extends State<ChartingWidget> {
  late ChartingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartingModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFDC88E8),
          automaticallyImplyLeading: false,
          title: Text(
            'Assessment',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: 0,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    '                    Your perfomance indicator is...',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
              Opacity(
                opacity: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
              ),
              Container(
                width: 370,
                height: 230,
                child: FlutterFlowLineChart(
                  data: [
                    FFLineChartData(
                      xData: [],
                      yData: [],
                      settings: LineChartBarData(
                        color: FlutterFlowTheme.of(context).primary,
                        barWidth: 2,
                        isCurved: true,
                        dotData: FlDotData(show: false),
                        belowBarData: BarAreaData(
                          show: true,
                          color: Color(0xFFDC88E8),
                        ),
                      ),
                    )
                  ],
                  chartStylingInfo: ChartStylingInfo(
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    showBorder: false,
                  ),
                  axisBounds: AxisBounds(),
                  xAxisLabelInfo: AxisLabelInfo(
                    reservedSize: 32,
                  ),
                  yAxisLabelInfo: AxisLabelInfo(
                    reservedSize: 40,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: 0,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    '                        Click for your progress report',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
              Opacity(
                opacity: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
              ),
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Click here',
                options: FFButtonOptions(
                  height: 40,
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: Color(0xFFDC88E8),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1, 1),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: AlignmentDirectional(-1, 1),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8,
                    buttonSize: 40,
                    fillColor: Color(0xFFDC88E8),
                    icon: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24,
                    ),
                    onPressed: () async {
                      context.pushNamed('main');
                    },
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
