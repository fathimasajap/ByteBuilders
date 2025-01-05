import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'excercise_model.dart';
export 'excercise_model.dart';

class ExcerciseWidget extends StatefulWidget {
  const ExcerciseWidget({super.key});

  @override
  State<ExcerciseWidget> createState() => _ExcerciseWidgetState();
}

class _ExcerciseWidgetState extends State<ExcerciseWidget> {
  late ExcerciseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExcerciseModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
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
            title: Stack(
              children: [
                Text(
                  'Excercise',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.white,
                        fontSize: 22,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
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
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.95, 11.7),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1447452001602-7090c7ab2db3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx5b2dhfGVufDB8fHx8MTczNjAyNzQ3NHww&ixlib=rb-4.0.3&q=80&w=1080',
                          width: 163,
                          height: 149,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: FlutterFlowYoutubePlayer(
                        url: 'https://youtu.be/T41mYCmtWls?si=LhyaHO1l-LCp2Qwj',
                        autoPlay: false,
                        looping: true,
                        mute: false,
                        showControls: true,
                        showFullScreen: true,
                        strictRelatedVideos: true,
                      ),
                    ),
                  ],
                ),
                Text(
                  'yoga',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        letterSpacing: 0.0,
                      ),
                ),
                FlutterFlowYoutubePlayer(
                  url: 'https://youtu.be/U9YKY7fdwyg?si=LbT-hZefuLLEPBDd',
                  autoPlay: false,
                  looping: true,
                  mute: false,
                  showControls: true,
                  showFullScreen: true,
                  strictRelatedVideos: true,
                ),
                Text(
                  'Meditation',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        letterSpacing: 0.0,
                      ),
                ),
                FlutterFlowIconButton(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
