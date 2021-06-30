import 'package:flutter/material.dart';

class FooterStyle {
  /// Responsible for FormatButton visibility.
  final bool formatButtonVisible;

  /// Controls the text inside FormatButton.
  /// * `true` - the button will show next CalendarFormat
  /// * `false` - the button will show current CalendarFormat
  final bool formatButtonShowsNext;

  /// Style for FormatButton `Text`.
  final TextStyle formatButtonTextStyle;

  /// Background `Decoration` for FormatButton.
  final Decoration formatButtonDecoration;

  /// Internal padding of the whole footer.
  final EdgeInsets footerPadding;

  /// External margin of the whole footer.
  final EdgeInsets footerMargin;

  /// Internal padding of FormatButton.
  final EdgeInsets formatButtonPadding;

  /// Decoration of the footer.
  final Decoration decoration;

  /// Creates a `FooterStyle` used by `TableCalendar` widget.
  const FooterStyle({
    this.formatButtonVisible = true,
    this.formatButtonShowsNext = true,
    this.formatButtonTextStyle = const TextStyle(
      decoration: TextDecoration.underline,
    ),
    this.formatButtonDecoration = const BoxDecoration(),
    this.footerMargin = const EdgeInsets.all(0.0),
    this.footerPadding = const EdgeInsets.symmetric(vertical: 8.0),
    this.formatButtonPadding =
    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
    this.decoration = const BoxDecoration(),
  });
}