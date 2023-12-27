import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:masteringlayoutandtamingthewidgettree52proportionalspacingwiththeflexibleandexpandedwidgets_responsivelayoutusingflexibleandexpandedwidgets/main.dart';

void main() {
  testWidgets('Responsive Layout Test', (WidgetTester tester) async {
    await tester
        .pumpWidget(MyApp()); // Replace MyApp with your main app widget name

    // Verify the Row widget is used
    expect(find.byType(Row), findsOneWidget);

    // Finding containers by color and verifying their presence
    expect(
        find.byWidgetPredicate(
            (widget) => widget is Container && widget.color == Colors.red),
        findsOneWidget);
    expect(
        find.byWidgetPredicate(
            (widget) => widget is Container && widget.color == Colors.green),
        findsOneWidget);
    expect(
        find.byWidgetPredicate(
            (widget) => widget is Container && widget.color == Colors.blue),
        findsOneWidget);

    // Verifying the flex factors for Flexible widgets
    final flexibleWidgets = tester.widgetList<Flexible>(find.byType(Flexible));
    expect(flexibleWidgets.length, 2);
    expect(flexibleWidgets.first.flex, 1);
    expect(flexibleWidgets.last.flex, 2);
  });
}
