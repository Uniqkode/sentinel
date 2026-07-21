import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';

class AiTechnologySection extends StatelessComponent {
  const AiTechnologySection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      id: 'ai-technology',
      children: [
        div(classes: 'text-center mb-16 scroll-reveal', [
          p(
            classes:
                'text-cyan-400 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('AI Technology')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-slate-900 mb-6',
            [Component.text('How Our AI Engine Works')],
          ),
          p(
            classes: 'text-slate-600 text-lg max-w-3xl mx-auto',
            [
              Component.text(
                'Our AI engine combines sequence prediction, anomaly detection, and pattern classification to analyze raw HTTP traffic and repository commits in real time.',
              ),
            ],
          ),
        ]),
        div(classes: 'max-w-3xl mx-auto mb-12 scroll-reveal-scale', [
          img(src: '/images/ai-engine.svg', alt: 'Sentinel AI Engine Architecture', classes: 'w-full rounded-2xl shadow-2xl shadow-cyan-500/10 border border-slate-200', attributes: {'loading': 'lazy'}),
        ]),
        div(
          classes: 'stagger-group grid grid-cols-1 md:grid-cols-2 gap-8 max-w-5xl mx-auto',
          [
            _AiBlock(
              icon: '\u{1F4CA}',
              title: 'Data Input',
              items: [
                'Raw HTTP traffic from API gateways',
                'Repository commit history and diffs',
                'API schema specifications (OpenAPI/Swagger)',
                'Production error logs and response patterns',
              ],
            ),
            _AiBlock(
              icon: '\u{1F9E9}',
              title: 'Models & Techniques',
              items: [
                'Temporal sequence prediction models',
                'Statistical anomaly detection algorithms',
                'Multi-modal pattern classification',
                'NLP-powered credential detection',
              ],
            ),
            _AiBlock(
              icon: '\u{26A1}',
              title: 'AI Capabilities',
              items: [
                'Predict endpoint behavior drift',
                'Detect exposed sensitive credentials',
                'Classify breaking vs. non-breaking changes',
                'Generate automated security reports',
              ],
            ),
            _AiBlock(
              icon: '\u{2601}\u{FE0F}',
              title: 'Why GPU Infrastructure',
              items: [
                'NVIDIA Triton for low-latency inference',
                'Parallel analysis of thousands of endpoints',
                'Real-time processing of high-volume traffic',
                'GPU-accelerated pattern matching at scale',
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _AiBlock extends StatelessComponent {
  const _AiBlock({
    required this.icon,
    required this.title,
    required this.items,
  });

  final String icon;
  final String title;
  final List<String> items;

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'stagger-item p-6 rounded-2xl bg-slate-50 border border-slate-200 glow-card',
      [
        div(classes: 'flex items-center space-x-3 mb-4', [
          span(classes: 'text-2xl', [Component.text(icon)]),
          h3(
            classes:
                'text-lg font-semibold text-slate-900',
            [Component.text(title)],
          ),
        ]),
        ul(classes: 'space-y-2', [
          for (final item in items)
            li(classes: 'flex items-start space-x-2', [
              span(
                classes: 'text-cyan-500 mt-1 text-sm',
                [Component.text('\u2713')],
              ),
              span(
                classes: 'text-slate-600 text-sm',
                [Component.text(item)],
              ),
            ]),
        ]),
      ],
    );
  }
}
