import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glasses/features/feature_locator.dart';
import 'package:glasses/features/pages/home/bloc/home_bloc.dart';
import 'package:glasses/features/pages/home/widgets/banner_slider.dart';
import 'package:glasses/features/pages/home/widgets/home_trademark_list.dart';
import 'package:glasses/features/widgets/common/base_view.dart';
import 'package:glasses/features/widgets/headers/common_header.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeBloc _bloc;

  @override
  void initState() {
    _bloc = featureLocator.get<HomeBloc>();
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _bloc.add(OnInitialize());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BaseView(
        body: _buildBody(),
        header: const CommonHeader(),
      ),
    );
  }

  Widget _buildBody() {
    return const SingleChildScrollView(
      child: Column(
        children: [
          BannerSlider(),
          HomeTrademarkList(),
        ],
      ),
    );
  }
}
