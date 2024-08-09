import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glasses/features/feature_locator.dart';
import 'package:glasses/features/signin/bloc/signin_bloc.dart';
import 'package:glasses/features/widgets/common/base_view.dart';

@RoutePage()
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
    with WidgetsBindingObserver {
  late SignInBloc _bloc;

  @override
  void initState() {
    _bloc = featureLocator.get<SignInBloc>();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bloc.add(SignInInitialEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BaseView(body: SafeArea(child: _buildBody())),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("EMAIL"),
          TextField(),
          Text("PASSWORD"),
          TextField(),
          ElevatedButton(
            onPressed: () {},
            child: Text("SIGNIN"),
          ),
        ],
      ),
    );
  }
}
