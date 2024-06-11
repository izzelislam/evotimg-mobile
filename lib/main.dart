import 'package:evoting/ui/pages/cadidate_detail.dart';
import 'package:evoting/ui/pages/splash_page.dart';
import 'package:evoting/ui/pages/ticket_page.dart';
import 'package:evoting/ui/pages/vote_404.dart';
import 'package:evoting/ui/pages/vote_page.dart';
import 'package:evoting/ui/pages/vote_success.dart';
import 'package:evoting/ui/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => SplashPage(),
        "/welcome" : (context) => WelcomePage(),
        "/vote404" : (context) => VoteNotFound(),
        "/ticket" : (context) => TicketPage(),
        "/vote" : (context) => VotePage(),
        "/vote-detail" : (context) => CandidateDetail(),
        "/vote-success" : (context) => VoteSuccessPage(),
      },
    );
  }
}