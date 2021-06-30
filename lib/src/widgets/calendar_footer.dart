import 'package:flutter/material.dart';
import 'package:table_calendar/src/customization/footer_style.dart';
import 'package:table_calendar/src/shared/utils.dart' show CalendarFormat;
import 'package:table_calendar/src/widgets/format_button.dart';

/// Calendar Footer Style
class CalendarFooter extends StatelessWidget {
  final CalendarFormat calendarFormat;
  final FooterStyle footerStyle;
  final ValueChanged<CalendarFormat> onFormatButtonTap;
  final Map<CalendarFormat, String> availableCalendarFormats;

  const CalendarFooter({
    Key? key,
    required this.calendarFormat,
    required this.footerStyle,
    required this.onFormatButtonTap,
    required this.availableCalendarFormats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: footerStyle.decoration,
      margin: footerStyle.footerMargin,
      padding: footerStyle.footerPadding,
      child: (footerStyle.formatButtonVisible &&
          availableCalendarFormats.length > 1) ?
      FormatButton(
        onTap: onFormatButtonTap,
        availableCalendarFormats: availableCalendarFormats,
        calendarFormat: calendarFormat,
        decoration: footerStyle.formatButtonDecoration,
        padding: footerStyle.formatButtonPadding,
        textStyle: footerStyle.formatButtonTextStyle,
        showsNextFormat: footerStyle.formatButtonShowsNext,
      )
          : Container(),
    );
  }
}