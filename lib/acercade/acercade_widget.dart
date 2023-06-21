import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'acercade_model.dart';
export 'acercade_model.dart';

class AcercadeWidget extends StatefulWidget {
  const AcercadeWidget({Key? key}) : super(key: key);

  @override
  _AcercadeWidgetState createState() => _AcercadeWidgetState();
}

class _AcercadeWidgetState extends State<AcercadeWidget> {
  late AcercadeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AcercadeModel());
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
        backgroundColor: Color(0xFFF1F4F8),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/charlotte.jpg',
                      width: 383.0,
                      height: 443.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.99, 0.0),
                  child: Container(
                    width: 125.0,
                    height: 443.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 2.0,
                            sigmaY: 2.0,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 4.0, 4.0, 4.0),
                                  child: Text(
                                    'Directota:',
                                    textAlign: TextAlign.center,
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Charlotte Wells nació el 13 de junio de 1987 en Reino Unido. Es una productora y directora, conocida por Aftersun (2022)',
                                  textAlign: TextAlign.center,
                                  style:
                                      FlutterFlowTheme.of(context).titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: Text(
                    'Acerca de la pelicula:',
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                ),
                Text(
                  'No es grandilocuente, no hay nada, en riesgo y no hay nada fantastico. Es simplemnte la historia de un padre y su hija tomandose unas vacacion, es una pelicula que se cocina a fuego MUY lente y la verdad eso me gusto.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
