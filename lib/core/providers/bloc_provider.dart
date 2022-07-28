import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_series_app/core/blocs/home/home_bloc.dart';

final List<BlocProvider> blocProvider = [
  BlocProvider<HomeBloc>(create: (_) => HomeBloc()),
];
