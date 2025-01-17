import 'package:book_store/home/cubit/book_cubit.dart';
import 'package:book_store/home/cubit/book_state.dart';
import 'package:book_store/home/view/widgets/app_bar.dart';
import 'package:book_store/home/view/widgets/bottom_bar.dart';
import 'package:book_store/home/view/widgets/success_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookCubit()..getBookDataCubit(),
      child: Scaffold(
          appBar: homeAppBar(),
          body: BlocBuilder<BookCubit, BookState>(
            builder: (context, state) {
              // BookCubit cubit = BlocProvider.of(context);
              if (state is SuccessState) {
                return GridView.count(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 24,
                  childAspectRatio: 0.5,
                  children: List.generate(state.bookCardModel.length, (index) {
                    return SuccessWidget(
                        bookCardModel: state.bookCardModel[index]);
                  }),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          bottomNavigationBar: homeBottomBar()),
    );
  }
}
