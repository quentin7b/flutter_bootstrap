import 'dart:io';

void main(List<String> args) {
  stdout.writeln('Hello there !\nLet\'s set this project up for you!');
  stdout
      .writeln('First of all, what is the name of your project (dart style) ?');
  final projectName = askProjectName();
  stdout.writeln('Now what is your package name (like com.toto.app) ?');
  final packageName = askPackageName();
  stdout.writeln(
    'Your project and package name are $projectName and $packageName',
  );

  // Replace name in pubspec.yaml
  final pubspec = File('pubspec.yaml');
  pubspec.writeAsStringSync(
    pubspec.readAsStringSync().replaceAll(
          'name: flutter_bootstrap_app',
          'name: $projectName',
        ),
  );

  // Replace name in AndroidManifest.xml
  final androidManifest = File('android/app/src/main/AndroidManifest.xml');
  androidManifest.writeAsStringSync(
    androidManifest.readAsStringSync().replaceAll(
          'android:label="flutter_bootstrap_app"',
          'android:label="$projectName"',
        ),
  );
  // Replace applicationId in android/app/build.gradle
  final buildGradle = File('android/app/build.gradle');
  buildGradle.writeAsStringSync(
    buildGradle.readAsStringSync().replaceAll(
          'applicationId "com.example.flutter_bootstrap_app"',
          'applicationId "$packageName"',
        ),
  );

  // For ios we need a correct bundle identifier with no _
  // First we uppercase each letter after a _ if they exist
  String iosBundle = '';
  int len = packageName.length;
  for (int lI = 0; lI < len; lI++) {
    if (packageName[lI] == '_') {
      if (lI + 1 < len) {
        iosBundle += packageName[lI + 1].toUpperCase();
        lI++;
      }
    } else {
      iosBundle += packageName[lI];
    }
  }

  // Now replace it in ios/Runner.xcodeproj
  final xcodeproj = File('ios/Runner.xcodeproj/project.pbxproj');
  xcodeproj.writeAsStringSync(
    xcodeproj.readAsStringSync().replaceAll(
          'com.example.flutterBootstrapApp',
          iosBundle,
        ),
  );
  // And in info.plist
  final infoPlist = File('ios/Runner/Info.plist');
  infoPlist.writeAsStringSync(
    infoPlist.readAsStringSync().replaceAll(
          'com.example.flutterBootstrapApp',
          iosBundle,
        ),
  );

  // Finally replace name in all dart files
  final files = Directory('./lib')
      .listSync(recursive: true)
      .whereType<File>()
      .where((file) => file.path.endsWith('.dart'));
  for (final file in files) {
    file.writeAsStringSync(
      file.readAsStringSync().replaceAll(
            'flutter_bootstrap_app',
            projectName,
          ),
    );
  }

  stdout.writeln('All set !');
  stdout.writeln('Would you like to run pub get? (y/n)');
  final answer = stdin.readLineSync();
  if (answer == 'y') {
    Process.runSync('flutter', ['pub', 'get']);
  }

  stdout.writeln('Would you like to run pub run build_runner build? (y/n)');
  final answer2 = stdin.readLineSync();
  if (answer2 == 'y') {
    Process.runSync('dart', ['pub', 'run', 'build_runner', 'build']);
  }

  // Add web support ?
  stdout.writeln('Would you like to add web support? (y/n)');
  final answer3 = stdin.readLineSync();
  if (answer3 == 'y') {
    Process.runSync('flutter', ['create', '--platforms', 'web', '.']);
  }

  stdout.writeln('Bye !');
}

String askProjectName() {
  final regex = RegExp(r'^[a-z0-9_]*$');
  final projectName = stdin.readLineSync();
  if (projectName == null ||
      projectName.isEmpty ||
      !regex.hasMatch(projectName)) {
    stdout.writeln(
      'Project name invalid. Please try again (https://dart.dev/tools/linter-rules/package_names).',
    );
    return askProjectName();
  }
  stdout.writeln('Your project name is $projectName, ok (y/n) ?');
  final answer = stdin.readLineSync();
  if (answer == 'y') {
    return projectName;
  }
  // Message
  stdout.writeln(
    'Project name invalid. Please try again (https://dart.dev/tools/linter-rules/package_names).',
  );
  return askProjectName();
}

String askPackageName() {
  final regex = RegExp(r'^([A-Za-z]{1}[A-Za-z\d_]*\.)+[A-Za-z][A-Za-z\d_]*$');
  final packageName = stdin.readLineSync();
  if (packageName == null ||
      packageName.isEmpty ||
      !regex.hasMatch(packageName)) {
    stdout.writeln('Package name invalid. Please try again.');
    return askPackageName();
  }
  stdout.writeln('Your package name is $packageName, ok (y/n) ?');
  final answer = stdin.readLineSync();
  if (answer == 'y') {
    return packageName;
  }
  // Message
  stdout.writeln('Package name invalid. Please try again.');
  return askPackageName();
}
