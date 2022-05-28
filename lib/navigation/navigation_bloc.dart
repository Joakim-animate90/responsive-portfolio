import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();
}
abstract class NavigationEvent extends Equatable {
  const NavigationEvent();
}


class NavigationEventExplore extends NavigationEvent{
  const NavigationEventExplore();

  List<Object?> get props => [];

}
class NavigationEventViewCv extends NavigationEvent{
  const NavigationEventViewCv();
  @override

  List<Object?> get props => [];

}
class NavigationEventAbout extends NavigationEvent{
  const NavigationEventAbout();
  @override

  List<Object?> get props => [];
}
class StateNavigationAbout extends NavigationState{
  const StateNavigationAbout();
  @override

  List<Object?> get props => [];

}
class StateNavigationViewCv extends NavigationState{
  const StateNavigationViewCv();
  @override

  List<Object?> get props => [];
}
class StateNavigationExplore extends NavigationState{
  const StateNavigationExplore();
  @override

  List<Object?> get props => [];
}

class NavigationBloc extends Bloc<NavigationEvent, NavigationState>{
  NavigationBloc():super(const StateNavigationAbout()){
    on<NavigationEventExplore>((event, emit) => emit(const StateNavigationExplore()));
    on<NavigationEventViewCv>((event, emit) => emit(const StateNavigationViewCv()));
  }

}