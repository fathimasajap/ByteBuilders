import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'checkbox_model.dart';
export 'checkbox_model.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  late CheckboxModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckboxModel());
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
            'TO DO LIST',
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
              Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 395,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: FlutterFlowCheckboxGroup(
                          options: [
                            'Wake up at 5oclock',
                            'do excercise',
                            'gardening'
                          ],
                          onChanged: (val) => safeSetState(
                              () => _model.checkboxGroupValues1 = val),
                          controller: _model.checkboxGroupValueController1 ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          activeColor: FlutterFlowTheme.of(context).primary,
                          checkColor: FlutterFlowTheme.of(context).info,
                          checkboxBorderColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          checkboxBorderRadius: BorderRadius.circular(4),
                          initialized: _model.checkboxGroupValues1 != null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              FlutterFlowCheckboxGroup(
                options: ['Option 1', 'Option 2', 'Do exercise'],
                onChanged: (val) =>
                    safeSetState(() => _model.checkboxGroupValues2 = val),
                controller: _model.checkboxGroupValueController2 ??=
                    FormFieldController<List<String>>(
                  [],
                ),
                activeColor: FlutterFlowTheme.of(context).primary,
                checkColor: FlutterFlowTheme.of(context).info,
                checkboxBorderColor: FlutterFlowTheme.of(context).secondaryText,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                checkboxBorderRadius: BorderRadius.circular(4),
                initialized: _model.checkboxGroupValues2 != null,
              ),
              Opacity(
                opacity: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1, -1),
                child: FlutterFlowIconButton(
                  borderRadius: 20,
                  buttonSize: 40,
                  fillColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.arrow_forward,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24,
                  ),
                  onPressed: () async {
                    context.pushNamed('excercise');
                  },
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
                ),
              ),
              FlutterFlowIconButton(
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
            ],
          ),
        ),
      ),
    );
  }
}
