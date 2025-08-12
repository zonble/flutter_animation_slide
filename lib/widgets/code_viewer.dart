import 'package:flutter/material.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

class CodeViewer extends StatelessWidget {
  final String code;
  final bool lightTheme;

  const CodeViewer({
    Key? key,
    required this.code,
    this.lightTheme = true,
  }) : super(key: key);

  static Widget light(String code) {
    return CodeViewer(code: code, lightTheme: true);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<TextSpan?>(
      future: _highlightCode(),
      builder: (context, snapshot) {
        final highlighted = snapshot.data;
        
        return Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: lightTheme ? Colors.grey[50] : Colors.grey[900],
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: SingleChildScrollView(
            child: highlighted != null
                ? Text.rich(
                    highlighted,
                    style: const TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  )
                : Text(
                    code,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 14,
                      color: lightTheme ? Colors.black87 : Colors.white87,
                    ),
                  ),
          ),
        );
      },
    );
  }

  Future<TextSpan?> _highlightCode() async {
    try {
      await Highlighter.initialize(['dart']);
      final highlighter = Highlighter(
        language: 'dart',
        theme: lightTheme ? HighlighterTheme.githubLight : HighlighterTheme.githubDark,
      );
      return highlighter.highlight(code);
    } catch (e) {
      // Return null to fall back to plain text
      return null;
    }
  }
}