import 'package:flutter/material.dart';

import 'style/AppColors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Task',
              style: TextStyle(color: AppColors.primaryText, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
