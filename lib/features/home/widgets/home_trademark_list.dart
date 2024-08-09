import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glasses/domain/entities/trademark_entity.dart';
import 'package:glasses/features/home/bloc/home_bloc.dart';

class HomeTrademarkList extends StatelessWidget {
  const HomeTrademarkList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, List<TrademarkEntity>>(
      selector: (state) => state.trademarks,
      builder: (BuildContext context, List<TrademarkEntity> trademarks) {
        if (trademarks.isEmpty) {
          return const SizedBox.shrink();
        }
        return Column(
          children: [
            const Text(
              "100% MẮT KÍNH CHÍNH HÃNG",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const Text("Là đối tác của hơn 80 thương hiệu mắt kính quốc tế."),
            GridView.builder(
              padding: const EdgeInsets.all(8.0),
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
              itemCount: trademarks.length,
              itemBuilder: (BuildContext context, int index) {
                return const Card(color: Colors.red);
              },
              shrinkWrap: true,
            ),
          ],
        );
      },
    );
  }
}
