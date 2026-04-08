import 'package:flutter/material.dart';
import 'package:kinza_frontend/body.dart';
import 'package:kinza_frontend/bottom_bar.dart';
import 'package:kinza_frontend/date_time_picker.dart';
import 'package:kinza_frontend/dialog_box.dart';
import 'package:kinza_frontend/expand_flexible.dart';
import 'package:kinza_frontend/gridview.dart';
import 'package:kinza_frontend/images.dart';
import 'package:kinza_frontend/instagram_post.dart';
import 'package:kinza_frontend/list_tile.dart';
import 'package:kinza_frontend/login_validation.dart';
import 'package:kinza_frontend/menu.dart';
import 'package:kinza_frontend/nested_row_column.dart';
import 'package:kinza_frontend/pageview.dart';
import 'package:kinza_frontend/passing_parameters/screen_a.dart';
import 'package:kinza_frontend/provider/screen_1.dart';
import 'package:kinza_frontend/provider/user_provider.dart';
import 'package:kinza_frontend/single_selection.dart';
import 'package:kinza_frontend/tab_bar.dart';
import 'package:kinza_frontend/text_fileds.dart';
import 'package:provider/provider.dart';

import 'app_bar.dart';
import 'floating_action_button.dart';
import 'multiple_selection.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=> UserProvider()),
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: Screen1(),
    );
  }
}
