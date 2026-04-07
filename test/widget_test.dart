// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:abims_proj/main.dart';

void main() {
  testWidgets('renders support-focused home screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Chats'), findsOneWidget);
    expect(find.text('Need help?'), findsOneWidget);
    expect(
      find.text('Tap the button below to speak with support.'),
      findsOneWidget,
    );
    expect(find.text('Speak with Support'), findsOneWidget);
    expect(find.byTooltip('Open support chat'), findsOneWidget);
  });

  testWidgets('shows chat floating action button icon', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byIcon(Icons.chat), findsWidgets);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
