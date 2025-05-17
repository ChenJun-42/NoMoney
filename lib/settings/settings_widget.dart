import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'settings_model.dart';
export 'settings_model.dart';

/// User Center and Settings Module
/// I.
///
/// Module Overview
/// Module Name: User Center and Settings
/// Module Objective: To provide users with complete personal information
/// management, account control, preference settings, privacy protection and
/// feedback channels to enhance user experience and App personalization.
/// Entry Location: Home page “My” menu / Personal avatar click area /
/// Settings button
/// User Role: Registered user (Visitor mode is partially restricted)
///
/// Page structure description (first-level page)
/// First-level page name Page description
/// User information management Display and edit the basic information and
/// data of the user
/// Account management Provide functions related to login, security, and
/// account control
/// Notification Settings Control the switch and preferences of various types
/// of message notifications
/// Personalization Settings Control the App interface style, language, and
/// interaction habits
/// Data management Manage the storage, synchronization, and export operations
/// of user data
/// Privacy and Security Involves user privacy settings and security logs
/// Help Provides App guide, FAQ, and contact customer service portal
/// Feedback Users can submit questions and suggestions and check the feedback
/// processing status.
///
/// Functional description of sub-pages (expanded by module)
/// 1. User Information Management
/// Edit Avatar and Nickname: Allow uploading avatars and modifying nicknames.
///
/// Set gender, birthday, region: support optional or input box.
///
/// Modify cell phone number/email: need to verify the old cell phone/email
/// before changing.
///
/// Third-party account binding: such as WeChat, Apple, Google, etc.
///
/// 2. Account Management
/// Change Login Password: Need to verify current password and set new
/// password.
///
/// Secondary verification (2FA) switch: Verification by SMS or email
/// verification code.
///
/// Login Device Management: Show all logged-in devices, can be removed.
///
/// Logout account: show the logout instructions and process steps.
///
/// 3. Notification Settings
/// Message Notification Master Switch: Enable/disable all notifications.
///
/// Categorized message switch: Subdivide by notification type (e.g. system,
/// interactive, promotion, etc.).
///
/// Push mode setting: whether to receive app push, SMS, email alerts.
///
/// Priority setting (optional): only receive important notifications.
///
/// 4. Personalization Settings
/// Theme mode switching: dark mode / light mode.
///
/// Font Size Settings: Default / Large / Extra Large.
///
/// Home Module Customization: users can customize which modules are displayed
/// (e.g. shortcut entry).
///
/// Language Selection: Multi-language switching and automatic saving of
/// settings.
///
/// 5. Data Management
/// Clear Cache: One-click to clear local cache of images, videos, logs, etc.
///
/// Data export: export usage records, behavioral data, etc. (PDF/CSV format).
///
/// Local Data View: Show browsing records, downloaded files, etc.
///
/// Cloud Synchronization Settings: Whether to enable synchronization with the
/// cloud.
///
/// Data Backup and Recovery: Provide automatic backup and one-click recovery.
///
/// 6. Privacy and Security
/// Privilege Management: Invoke privilege control of camera, microphone,
/// location, etc.
///
/// View Privacy Policy: Jump to the text page of privacy policy.
///
/// Blacklist Management: List the accounts blocked by users, which can be
/// lifted.
///
/// Data Access Log: View which modules or third parties have called user
/// data. 7.
///
/// 7. Help
/// Beginner's Guide: Graphic or video guide.
///
/// Frequently Asked Questions (FAQ): covers the use of functions, accounts,
/// security and other issues.
///
/// Contact Customer Service: You can initiate online dialog, send emails, and
/// make phone calls.
///
/// System Announcement: Display maintenance notifications and version
/// updates.
///
/// 8. Feedback
/// Submit Feedback: Fill in the type and description of the problem, and
/// upload screenshots.
///
/// View Feedback Record: Users can check the history of feedback and
/// processing status.
///
/// User rating system: score app features, customer service and so on.
///
/// Join the experience program (optional): sign up for internal testing users
/// to experience the revised version of the function.
///
/// Fourth, the jump logic description
/// users enter the [User Center Home], click on any level of menu items that
/// jump to the corresponding sub-page;
///
/// The return button of each sub-page returns to the user center home page;
///
/// Multi-level operations (e.g. modifying cell phone number) will lead to the
/// intermediate verification process page (e.g. CAPTCHA input page);
///
/// Setting operations need to be saved or automatically saved, and it is
/// recommended to take effect in real time after setting changes.
///
/// V. Design and Development Suggestions
/// UI unified specification: all pages are unified to use the top title bar
/// and the return button, and the layout is unified;
///
/// Operation feedback mechanism: pop-up toast prompts “save successfully” or
/// “setting failure” after setting modification;
///
/// Exception handling: such as network error, permission denied, need to
/// pop-up tips;
///
/// Strong scalability: reserve the entrance for new functions (e.g. adding
/// member center in the future);
///
/// Visiting frequency analysis: it is recommended to bury points to analyze
/// the visiting frequency of each page and optimize the location of important
/// functions.
class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  static String routeName = 'Settings';
  static String routePath = '/settings';

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());
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
        floatingActionButton: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
          child: FloatingActionButton(
            onPressed: () {
              print('FloatingActionButton pressed ...');
            },
            backgroundColor: Color(0xFF3963D2),
            elevation: 3.0,
            child: Icon(
              Icons.question_answer_rounded,
              color: Colors.white,
              size: 24.0,
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 70.0,
                          height: 70.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1561414927-6d86591d0c4f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxtb25leXxlbnwwfHx8fDE3NDcwODI1ODd8MA&ixlib=rb-4.1.0&q=80&w=1080',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alex',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                'alex666@gmail.com',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(UserinformationThreeWidget.routeName);
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        Icons.person_outline,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      title: Text(
                        'User Information',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(AccountManagementThreeWidget.routeName);
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        Icons.lock_outline,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      title: Text(
                        'Account Management',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(BudgetsettingThreeWidget.routeName);
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        Icons.attach_money,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      title: Text(
                        'Budget Setting',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(PersonalizationThreeWidget.routeName);
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        Icons.palette_outlined,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      title: Text(
                        'Personalization',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(DataManagementThreeWidget.routeName);
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        Icons.storage,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      title: Text(
                        'Data Management',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(PrivacySecurityThreeWidget.routeName);
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        Icons.security,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      title: Text(
                        'Privacy & Security',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
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
