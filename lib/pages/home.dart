import 'package:jaspr/jaspr.dart';

import '../sections/hero.dart';
import '../sections/problem.dart';
import '../sections/solution.dart';
import '../sections/why_now.dart';
import '../sections/ai_technology.dart';
import '../sections/features.dart';
import '../sections/how_it_works.dart';
import '../sections/infrastructure.dart';
import '../sections/market_opportunity.dart';
import '../sections/traction.dart';
import '../sections/roadmap.dart';
import '../sections/team.dart';
import '../sections/demo_form_section.dart';
import '../sections/cta_section.dart';
import '../sections/contact_section.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Component build(BuildContext context) {
    return Component.fragment([
      HeroSection(),
      ProblemSection(),
      SolutionSection(),
      WhyNowSection(),
      AiTechnologySection(),
      FeaturesSection(),
      HowItWorksSection(),
      InfrastructureSection(),
      MarketOpportunitySection(),
      TractionSection(),
      RoadmapSection(),
      TeamSection(),
      DemoFormSection(),
      ContactSection(),
      CtaSection(),
    ]);
  }
}
