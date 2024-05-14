import '/components/dashboard_summary_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'team_dashboard_widget.dart' show TeamDashboardWidget;
import 'package:flutter/material.dart';

class TeamDashboardModel extends FlutterFlowModel<TeamDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DashboardSummary component.
  late DashboardSummaryModel dashboardSummaryModel;

  @override
  void initState(BuildContext context) {
    dashboardSummaryModel = createModel(context, () => DashboardSummaryModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    dashboardSummaryModel.dispose();
  }
}
