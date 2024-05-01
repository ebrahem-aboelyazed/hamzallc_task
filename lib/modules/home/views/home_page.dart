import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';
import 'package:hamzallc_task/modules/home/home.dart';
import 'package:hamzallc_task/modules/settings/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(),
      child: Scaffold(
        bottomNavigationBar: const AppBottomNav(),
        body: Builder(
          builder: (ctx) {
            final cubit = ctx.read<HomeCubit>();
            return PopScope(
              canPop: false,
              onPopInvoked: (didPop) {
                if (didPop) return;
                if (cubit.currentPage != 0) {
                  cubit.changePage(page: 0);
                }
              },
              child: PageView(
                controller: cubit.pageController,
                children: const [
                  ArticlesView(),
                  SettingsView(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
