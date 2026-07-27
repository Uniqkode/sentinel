import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';

class RoadmapSection extends StatelessComponent {
  const RoadmapSection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      dark: true,
      id: 'roadmap',
      children: [
        div(classes: 'scroll-reveal text-center mb-16', [
          p(
            classes:
                'text-rose-500 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('Roadmap')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-6',
            [Component.text('Product Roadmap')],
          ),
        ]),
        div(
          classes:
              'max-w-3xl mx-auto space-y-8',
          [
            _RoadmapItem(
              phase: 'Phase 1',
              title: 'MVP Development',
              description:
                  'Core API schema diffing engine, basic alert system, and OpenAPI/Swagger integration.',
              completed: true,
              delay: 0,
            ),
            _RoadmapItem(
              phase: 'Phase 2',
              title: 'Beta Testing',
              description:
                  'Private beta with selected fintech and backend teams. Iterate based on real-world feedback.',
              completed: true,
              delay: 100,
            ),
            _RoadmapItem(
              phase: 'Phase 3',
              title: 'AI Model Improvement',
              description:
                  'Advanced anomaly detection, NLP-powered credential scanning, and regression impact analysis.',
              active: true,
              delay: 200,
            ),
            _RoadmapItem(
              phase: 'Phase 4',
              title: 'Cloud Deployment',
              description:
                  'Full AWS + Azure infrastructure with CloudWatch telemetry, Kinesis streaming, and Bedrock integration.',
              delay: 300,
            ),
            _RoadmapItem(
              phase: 'Phase 5',
              title: 'GPU-Accelerated Scaling',
              description:
                  'NVIDIA Triton inference server for real-time processing of high-volume API traffic at scale.',
              delay: 400,
            ),
            _RoadmapItem(
              phase: 'Phase 6',
              title: 'Enterprise & Expansion',
              description:
                  'Enterprise features, SOC2 compliance, multi-team dashboards, and global market expansion.',
              delay: 500,
            ),
          ],
        ),
      ],
    );
  }
}

class _RoadmapItem extends StatelessComponent {
  const _RoadmapItem({
    required this.phase,
    required this.title,
    required this.description,
    this.active = false,
    this.completed = false,
    this.delay = 0,
  });

  final String phase;
  final String title;
  final String description;
  final bool active;
  final bool completed;
  final int delay;

  @override
  Component build(BuildContext context) {
    final isActive = active;
    final isCompleted = completed;

    return div(
      classes:
          'scroll-reveal glow-card flex items-start space-x-6 p-6 rounded-2xl ${isActive ? 'bg-rose-500/10 border border-rose-500/30' : isCompleted ? 'bg-emerald-500/5 border border-emerald-500/20' : 'bg-slate-900/50 border border-slate-800'} transition-all',
      attributes: {'data-delay': '$delay'},
      [
        div(
          classes:
              'shrink-0 w-12 h-12 rounded-xl ${isActive ? 'bg-rose-500 text-white' : isCompleted ? 'bg-emerald-500 text-white' : 'bg-slate-800 text-slate-400'} flex items-center justify-center',
          [
            span(
              classes: 'text-sm font-bold',
              [Component.text(isCompleted ? '\u2713' : phase.replaceAll('Phase ', ''))],
            ),
          ],
        ),
        div(classes: 'flex-1', [
          div(classes: 'flex items-center space-x-3 mb-1', [
            h3(
              classes:
                  'text-lg font-semibold ${isActive ? 'text-rose-400' : isCompleted ? 'text-emerald-400' : 'text-white'}',
              [Component.text(title)],
            ),
            if (isActive)
              span(
                classes:
                    'px-2 py-0.5 text-xs font-medium bg-rose-500/10 text-rose-400 rounded-full',
                [Component.text('Current')],
              ),
            if (isCompleted)
              span(
                classes:
                    'px-2 py-0.5 text-xs font-medium bg-emerald-500/10 text-emerald-400 rounded-full',
                [Component.text('Completed')],
              ),
          ]),
          p(
            classes: 'text-slate-400 text-sm leading-relaxed',
            [Component.text(description)],
          ),
        ]),
      ],
    );
  }
}
