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
          'border border-rose-500/30 text-rose-400 hover:bg-rose-500/10 hover:border-rose-400';
    } else if (primary) {
      colorClass =
          'bg-rose-500 text-white hover:bg-rose-400 shadow-lg shadow-rose-500/25';
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
