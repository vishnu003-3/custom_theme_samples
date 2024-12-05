import 'package:custom_theme_samples/controller/app_config_controller.dart';
import 'package:custom_theme_samples/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherScreen extends StatelessWidget {
  const LauncherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  launchUrl(Uri.parse("https://github.com/vishnu003-3"));
                },
                child: Text(
                  "Linkedin",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w900),
                )),
            Switch(
              value: context.watch<AppConfigController>().isDark,
              onChanged: (value) {
                context.read<AppConfigController>().onToggleTheme(value);
              },
            )
          ],
        ),
      ),
    );
  }
}
