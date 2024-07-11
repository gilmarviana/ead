import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'criar_aula_widget.dart' show CriarAulaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CriarAulaModel extends FlutterFlowModel<CriarAulaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nomeAula widget.
  FocusNode? nomeAulaFocusNode;
  TextEditingController? nomeAulaTextController;
  String? Function(BuildContext, String?)? nomeAulaTextControllerValidator;
  // State field(s) for origemInstituicao widget.
  FocusNode? origemInstituicaoFocusNode;
  TextEditingController? origemInstituicaoTextController;
  String? Function(BuildContext, String?)?
      origemInstituicaoTextControllerValidator;
  // State field(s) for categoria widget.
  FocusNode? categoriaFocusNode;
  TextEditingController? categoriaTextController;
  String? Function(BuildContext, String?)? categoriaTextControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeAulaFocusNode?.dispose();
    nomeAulaTextController?.dispose();

    origemInstituicaoFocusNode?.dispose();
    origemInstituicaoTextController?.dispose();

    categoriaFocusNode?.dispose();
    categoriaTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();
  }
}
