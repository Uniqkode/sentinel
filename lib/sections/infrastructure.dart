import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';

class InfrastructureSection extends StatelessComponent {
  const InfrastructureSection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      dark: true,
      id: 'technology',
      children: [
        div(classes: 'text-center mb-16 scroll-reveal', [
          p(
            classes:
                'text-rose-500 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('Technology & Infrastructure')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-6',
            [Component.text('Enterprise-Grade Infrastructure')],
          ),
          p(
            classes: 'text-slate-400 text-lg max-w-3xl mx-auto',
            [
              Component.text(
                'Our platform leverages multi-cloud infrastructure and GPU-accelerated computing for secure data storage, real-time telemetry, AI model inference, and scalable processing.',
              ),
            ],
          ),
        ]),
        img(
          src: 'https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=1200&h=500&fit=crop&q=80',
          alt: 'Data center servers - infrastructure',
          classes: 'mx-auto mb-12 rounded-2xl shadow-lg shadow-rose-500/10 border border-slate-800 max-w-4xl w-full',
        ),
        div(
          classes:
              'stagger-group grid grid-cols-1 md:grid-cols-3 gap-6 max-w-6xl mx-auto',
          [
            _InfraBlock(
              logo: '/images/logo-aws.svg',
              logoAlt: 'AWS',
              title: 'AWS Cloud',
              items: [
                ('Amazon CloudWatch', 'Real-time telemetry streaming and monitoring of API traffic patterns across all connected gateways.'),
                ('Amazon Kinesis', 'High-throughput streaming for processing millions of API requests per second with sub-second latency.'),
                ('AWS Lambda / ECS', 'Serverless compute for AI inference workloads and containerized microservices at scale.'),
                ('Amazon S3', 'Secure, durable storage for API logs, schema snapshots, and audit trail archives.'),
                ('Amazon Bedrock', 'Foundation model access for advanced NLP-powered credential detection and security analysis.'),
                ('CloudFront', 'Global CDN distribution for dashboard assets and real-time alert delivery.'),
              ],
            ),
            _InfraBlock(
              logo: '/images/logo-nvidia.svg',
              logoAlt: 'NVIDIA',
              title: 'NVIDIA GPU',
              items: [
                ('Triton Inference Server', 'Rapid pattern analysis and low-latency inference for real-time anomaly detection across API traffic.'),
                ('CUDA Acceleration', 'GPU-accelerated parallel processing for analyzing thousands of endpoints simultaneously.'),
                ('TensorRT Optimization', 'Inference optimization reducing model latency by up to 10x for production-grade speed.'),
                ('GPU-Accelerated ML', 'Scalable AI development for training and deploying sequence prediction models at scale.'),
              ],
            ),
            _InfraBlock(
              logoAlt: 'Azure',
              title: 'Microsoft Azure',
              items: [
                ('Azure Monitor', 'End-to-end observability with distributed tracing across API microservices and serverless functions.'),
                ('Azure Event Hubs', 'Real-time event ingestion for high-throughput API log streaming and security telemetry.'),
                ('Azure Functions', 'Event-driven serverless compute for automated security response and alerting workflows.'),
                ('Azure Cosmos DB', 'Globally distributed NoSQL database for API schema versioning and audit history.'),
                ('Azure Sentinel', 'Cloud-native SIEM for unified threat detection and automated incident response.'),
                ('Azure DevOps', 'CI/CD integration for automated security scanning in deployment pipelines.'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _InfraBlock extends StatelessComponent {
  const _InfraBlock({
    this.logo,
    required this.logoAlt,
    required this.title,
    required this.items,
  });

  final String? logo;
  final String logoAlt;
  final String title;
  final List<(String, String)> items;

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'stagger-item glow-card p-6 rounded-2xl bg-slate-900/50 border border-slate-800',
      [
        div(classes: 'scroll-reveal mb-6', [
          if (logo != null)
            img(src: logo!, alt: logoAlt, classes: 'h-6 mb-2'),
          h3(
            classes: 'text-xl font-semibold text-white',
            [Component.text(title)],
          ),
        ]),
        div(classes: 'space-y-4', [
          for (final item in items)
            div(classes: 'flex items-start space-x-3', [
              div(
                classes:
                    'w-1.5 h-1.5 rounded-full bg-rose-400 mt-2 shrink-0',
                [],
              ),
              div([
                span(
                  classes:
                      'text-sm font-medium text-white',
                  [Component.text(item.$1)],
                ),
                p(
                  classes:
                      'text-sm text-slate-400 mt-0.5',
                  [Component.text(item.$2)],
                ),
              ]),
            ]),
        ]),
      ],
    );
  }
}
