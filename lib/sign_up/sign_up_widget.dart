import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../loading/loading_widget.dart';
import '../sign_in/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController? ageController;
  TextEditingController? nameController;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  TextEditingController? confirmController;
  late bool confirmVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    ageController = TextEditingController();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
    confirmController = TextEditingController();
    confirmVisibility = false;
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Sign_up'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFAFAD2),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30,
                ),
                onPressed: () async {
                  logFirebaseEvent('SIGN_UP_arrow_back_outlined_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_Navigate-To');
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoadingWidget(),
                    ),
                  );
                },
              ),
              Align(
                alignment: AlignmentDirectional(0.01, -0.98),
                child: Text(
                  'Welcome to \nLord Map',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.11, 0.3),
                child: Container(
                  width: 340,
                  height: 600,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextFormField(
                            controller: nameController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '   Name ',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: ageController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: '   Age ',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                        keyboardType: TextInputType.number,
                      ),
                      TextFormField(
                        controller: emailController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: '   E-mail ',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        controller: passwordController,
                        autofocus: true,
                        obscureText: !passwordVisibility,
                        decoration: InputDecoration(
                          hintText: '   Password',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passwordVisibility = !passwordVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      TextFormField(
                        controller: confirmController,
                        autofocus: true,
                        obscureText: !confirmVisibility,
                        decoration: InputDecoration(
                          hintText: '   Please enter password again',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => confirmVisibility = !confirmVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              confirmVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.6),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent('SIGN_UP_PAGE_SIGN_UP_BTN_ON_TAP');
                            logFirebaseEvent('Button_Auth');
                            if (passwordController?.text !=
                                confirmController?.text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Passwords don\'t match!',
                                  ),
                                ),
                              );
                              return;
                            }

                            final user = await createAccountWithEmail(
                              context,
                              emailController!.text,
                              passwordController!.text,
                            );
                            if (user == null) {
                              return;
                            }

                            final usersCreateData = createUsersRecordData(
                              age: int.parse(ageController!.text),
                              displayName: nameController!.text,
                              uid: emailController!.text,
                              email: emailController!.text,
                            );
                            await UsersRecord.collection
                                .doc(user.uid)
                                .update(usersCreateData);

                            logFirebaseEvent('Button_Auth');
                            await sendEmailVerification();
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInWidget(),
                              ),
                              (r) => false,
                            );
                          },
                          text: 'Sign up',
                          options: FFButtonOptions(
                            width: 130,
                            height: 30,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
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
