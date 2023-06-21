import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vida_model.dart';
export 'vida_model.dart';

class VidaWidget extends StatefulWidget {
  const VidaWidget({Key? key}) : super(key: key);

  @override
  _VidaWidgetState createState() => _VidaWidgetState();
}

class _VidaWidgetState extends State<VidaWidget> {
  late VidaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VidaModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).tertiary,
          automaticallyImplyLeading: false,
          title: Text(
            'Por que me fue importante',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/aftersun_(1).jpg',
                    width: 399.0,
                    height: 152.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                'Por una razon tan cencilla como la pelicula misma;\n\nMe relajo.\n\nMe interece lo suficiente en la pelicula como para desconectarme, me produjo sensaciones y to con eso ya estoy mas que satisfeche',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/screen-shot-2023-02-14-at-12-46-45-pm-1676396821.png',
                    width: 385.0,
                    height: 332.0,
                    fit: BoxFit.cover,
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
