import 'package:flutter/material.dart';
import 'package:front_end/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:front_end/features/splash/presentation/pages/splash_page.dart';
import 'package:go_router/go_router.dart';

GoRouter router() => GoRouter(
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) =>
              const MaterialPage(child: SplashScreen()),
        ),

        // GoRoute(
        //   path: '/home',
        //   pageBuilder: (context, state) =>
        //       const MaterialPage(child: MyHomePage()),
        // ),

        // GoRoute(
        //   path: '/home/notifications',
        //   pageBuilder: (context, state) =>
        //       MaterialPage(child: NotificationPage()),
        // ),

        GoRoute(
          path: '/onboarding',
          pageBuilder: (context, state) =>
              MaterialPage(child: OnboardingPage()),
        ),

        // GoRoute(
        //   path: '/login',
        //   pageBuilder: (context, state) =>
        //       const MaterialPage(child: LoginPage()),
        // ),

        // GoRoute(
        //   path: '/signUp',
        //   pageBuilder: (context, state) =>
        //       const MaterialPage(child: SignUpPage()),
        // ),

        // GoRoute(
        //   path: '/profile',
        //   pageBuilder: (context, state) =>
        //       const MaterialPage(child: ProfilePage()),
        // ),

        // GoRoute(
        //   path: '/profile/editProfile',
        //   pageBuilder: (context, state) => MaterialPage(
        //       child: EditProfilePage(
        //     user: state.extra as UserEntity,
        //   )),
        // ),

        // GoRoute(
        //   path: '/contests',
        //   pageBuilder: (context, state) => MaterialPage(child: ContestPage()),
        // ),

        // GoRoute(
        //   path: '/contests/notifications',
        //   pageBuilder: (context, state) =>
        //       MaterialPage(child: NotificationPage()),
        // ),

        // GoRoute(
        //     path: '/contests/detail',
        //     pageBuilder: (context, state) {
        //       final contests = state.extra as Contest;
        //       return MaterialPage(
        //           child: ContestDetails(
        //         contest: contests,
        //       ));
        //     }),

        // GoRoute(
        //     path: '/announcement',
        //     pageBuilder: (context, state) =>
        //         const MaterialPage(child: AnnouncementPage())),
        // GoRoute(
        //     path: '/announcement/detail',
        //     pageBuilder: (context, state) {
        //       final announcement = state.extra as Announcement;
        //       return MaterialPage(
        //           child: AnnouncementDetailsPage(
        //         description: announcement.description,
        //         title: announcement.title,
        //       ));
        //     }),

        // Add more routes for other pages if needed
      ],
      // errorPageBuilder: (context, state) => ErrorPage()uilder: (context, state) => ErrorPage()
    );
