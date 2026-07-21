import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class SentinelButton extends StatelessComponent {
  const SentinelButton({
    super.key,
    required this.label,
    this.href,
    this.primary = true,
    this.small = false,
    this.outline = false,
  });

  final String label;
  final String? href;
  final bool primary;
  final bool small;
  final bool outline;

  @override
  Component build(BuildContext context) {
    final sizeClass = small ? 'px-4 py-2 text-sm' : 'px-6 py-3 text-base';

    String colorClass;
    if (outline) {
      colorClass =
          'border border-cyan-500/30 text-cyan-400 hover:bg-cyan-500/10 hover:border-cyan-400';
    } else if (primary) {
      colorClass =
          'bg-cyan-500 text-slate-950 hover:bg-cyan-400 shadow-lg shadow-cyan-500/25';
    } else {
      colorClass =
          'bg-slate-800 text-slate-200 hover:bg-slate-700 border border-slate-700';
    }

    final classes =
        'inline-flex items-center justify-center font-semibold rounded-lg transition-all duration-300 $sizeClass $colorClass';

    if (href != null) {
      return a(href: href!, classes: classes, [Component.text(label)]);
    }
    return button(classes: classes, [Component.text(label)]);
  }
}