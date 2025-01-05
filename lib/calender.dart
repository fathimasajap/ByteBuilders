import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'calender_model.dart';
export 'calender_model.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  late CalenderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalenderModel());
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
            'Page Title',
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
              FlutterFlowCalendar(
                color: FlutterFlowTheme.of(context).primary,
                iconColor: FlutterFlowTheme.of(context).secondaryText,
                weekFormat: false,
                weekStartsMonday: false,
                rowHeight: 48,
                onChange: (DateTimeRange? newSelectedDate) {
                  safeSetState(
                      () => _model.calendarSelectedDay = newSelectedDate);
                },
                titleStyle: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Inter Tight',
                      letterSpacing: 0.0,
                    ),
                dayOfWeekStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                selectedDateStyle:
                    FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          letterSpacing: 0.0,
                        ),
                inactiveDateStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
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
