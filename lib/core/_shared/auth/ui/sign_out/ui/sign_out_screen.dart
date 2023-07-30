import 'package:flutter/material.dart';

class SignOutScreen extends StatefulWidget {
  const SignOutScreen({super.key, this.token});

  final String? token;

  @override
  State<SignOutScreen> createState() => _SignOutScreenState();
}

class _SignOutScreenState extends State<SignOutScreen> {
  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (_) {
    //     CoreDi.get<RemoteAuthRepo>().signOut(
    //       localOnly: widget.token != null,
    //     );
    //   },
    // );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
    // return WillPopScope(
    //   onWillPop: () async => false,
    //   child: Scaffold(
    //     body: BlocConsumer<RemoteAuthRepo, RemoteAuthState>(
    //       bloc: CoreDi.get(),
    //       builder: (context, state) => switch (state) {
    //         (final RemoteAuthError state) => AppErrorWidget(
    //             message: context.s.error,
    //             subMessage: state.error.message,
    //             onRetry: () {
    //               CoreDi.get<RemoteAuthRepo>().signOut(
    //                 localOnly: widget.token != null,
    //               );
    //             },
    //           ),
    //         _ => Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Text(
    //                 context.s.exitFromAccount,
    //                 style: context.text.s16w700,
    //               ),
    //               const SizedBox(height: 40),
    //               const AppProgressIndicator(),
    //             ],
    //           ),
    //       },
    //       listener: (context, state) async {
    //         final router = context.rootRouter;
    //         if (state is RemoteAuthSignedOut) {
    //           if (widget.token != null) {
    //             await CoreDi.get<RemoteAuthRepo>().updateToken(widget.token!);
    //           }
    //           router.use.pushSplashScreen();
    //         }
    //       },
    //     ),
    //   ),
    // );
  }
}
