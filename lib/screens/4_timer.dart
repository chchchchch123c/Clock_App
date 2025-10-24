import 'package:clock_app/screens/widgets/base_app_bar.dart';
import 'package:clock_app/screens/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(onTap: () {},),
      body: Column(),
    );
  }
}
