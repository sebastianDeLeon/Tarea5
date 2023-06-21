import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contratame_model.dart';
export 'contratame_model.dart';

class ContratameWidget extends StatefulWidget {
  const ContratameWidget({Key? key}) : super(key: key);

  @override
  _ContratameWidgetState createState() => _ContratameWidgetState();
}

class _ContratameWidgetState extends State<ContratameWidget> {
  late ContratameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContratameModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(
              maxWidth: 670.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/foto2x2.jpg',
                    width: 362.0,
                    height: 268.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 0.0, 12.0),
                        child: Text(
                          'Mis informaciones de contacto',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).displaySmall,
                        ),
                      ),
                      Text(
                        'Email:',
                        style: FlutterFlowTheme.of(context).titleLarge,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                        child: Text(
                          'sebastiandeleonrosario@gmail.com',
                          style: FlutterFlowTheme.of(context).labelLarge,
                        ),
                      ),
                      Text(
                        'Linkedin:',
                        style: FlutterFlowTheme.of(context).titleLarge,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                        child: Text(
                          'https://www.linkedin.com/in/sebastian-de-leon-86060327a/',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
