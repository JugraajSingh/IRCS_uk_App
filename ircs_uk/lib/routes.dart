import 'package:flutter/material.dart';
import 'package:ircs_uk/pages/about_us.dart';
import 'package:ircs_uk/pages/contact_us.dart';
import 'package:ircs_uk/pages/developers.dart';
import 'package:ircs_uk/pages/event_list.dart';
import 'package:ircs_uk/pages/our_team.dart';
import 'package:ircs_uk/pages/particular_event.dart';

class Routes {
  static MaterialPageRoute get eventListPage => MaterialPageRoute(builder: (context) => const EventList());
  static MaterialPageRoute get contactUsPage => MaterialPageRoute(builder: (context) => const ContactUs());
  static MaterialPageRoute get ourTeamPage => MaterialPageRoute(builder: (context) => const OurTeam());
  static MaterialPageRoute get developersPage => MaterialPageRoute(builder: (context) => const Developers());
  static MaterialPageRoute get aboutUsPage => MaterialPageRoute(builder: (context) => const AboutUs());

  static MaterialPageRoute particularEvent(String name) => MaterialPageRoute(builder: (context) => ParticularEvent(eventName: name));
}