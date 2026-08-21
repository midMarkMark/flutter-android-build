import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_dungeon_detective/main.dart';
import 'package:ai_dungeon_detective/screens/main_menu.dart';

void main() {
  testWidgets('App renders MainMenuScreen', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: AIDungeonDetectiveApp()),
    );

    // Verify the main menu title is displayed.
    expect(find.text('AI DUNGEON DETECTIVE'), findsOneWidget);
    expect(find.text('A Murder Mystery Game'), findsOneWidget);

    // Verify menu buttons exist.
    expect(find.text('NEW CASE'), findsOneWidget);
    expect(find.text('CONTINUE CASE'), findsOneWidget);
    expect(find.text('CASE HISTORY'), findsOneWidget);
    expect(find.text('SETTINGS'), findsOneWidget);
  });
}