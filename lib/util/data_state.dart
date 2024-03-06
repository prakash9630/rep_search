// import 'package:bank_list/core/network/dio_base.dart';
// import 'package:equatable/equatable.dart';
//
// class CommonState extends Equatable {
//   const CommonState({this.statusCode});
//
//   final int? statusCode;
//
//   @override
//   List<Object?> get props => [];
// }
//
// class CommonInitial extends CommonState {}
//
// class CommonLoading extends CommonState {}
//
// class CommonDummyLoading extends CommonState {}
//
// class CommonError extends CommonState {
//   final Failure failure;
//
//   const CommonError({required this.failure});
//
//   @override
//   List<Object?> get props => [failure];
// }
//
// class CommonNoData extends CommonState {
//   const CommonNoData();
//
//   List<Object?> get props => [];
// }
//
// class CommonDataFetchSuccess<T> extends CommonState {
//   final List<T> data;
//   final String? next;
//   const CommonDataFetchSuccess({required this.data,this.next});
//
//   @override
//   List<Object?> get props => [...data,next];
// }
//
// class CommonStateSuccess<T> extends CommonState {
//   final T data;
//   const CommonStateSuccess({required this.data});
//
//   List<T> get props => [data];
// }
