import 'package:flutter/cupertino.dart';
import 'package:progress_dialog/progress_dialog.dart';

class ProgressBar {
  // ignore: non_constant_identifier_names
  static Loading(BuildContext context, bool loading) {
    ProgressDialog progressBar = new ProgressDialog(context);
    if (loading) {
      progressBar.show();
    } else {
      progressBar.dismiss();
    }
  }
}
