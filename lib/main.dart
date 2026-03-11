import 'package:flutter/material.dart';
import 'package:kinza_frontend/body.dart';
import 'package:kinza_frontend/expand_flexible.dart';
import 'package:kinza_frontend/images.dart';
import 'package:kinza_frontend/instagram_post.dart';
import 'package:kinza_frontend/list_tile.dart';
import 'package:kinza_frontend/nested_row_column.dart';
import 'package:kinza_frontend/single_selection.dart';
import 'package:kinza_frontend/text_fileds.dart';

import 'app_bar.dart';
import 'floating_action_button.dart';
import 'multiple_selection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: MultipleSelection(),
    );
  }
}
