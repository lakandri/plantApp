import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant/theme/themeprovider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingPage'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(9)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('DarkMode'),
                    CupertinoSwitch(
                        value:
                            Provider.of<Themeprovider>(context, listen: false)
                                .isDarkMode,
                        onChanged: (value) =>
                            Provider.of<Themeprovider>(context, listen: false)
                                .toggleTheme()),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
