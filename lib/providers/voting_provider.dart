import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:capital_car_app/data/repositories/voting_repository.dart';

final votingRepositoryProvider = Provider<VotingRepository>((ref) {
  return VotingRepository();
});

final votingStateProvider = StateNotifierProvider<VotingNotifier, AsyncValue<void>>((ref) {
  final repository = ref.watch(votingRepositoryProvider);
  return VotingNotifier(repository);
});

class VotingNotifier extends StateNotifier<AsyncValue<void>> {
  final VotingRepository _repository;

  VotingNotifier(this._repository) : super(const AsyncValue.data(null));

  Future<void> submitVote(String passengerId, DateTime targetDate, bool isGoing) async {
    state = const AsyncValue.loading();
    try {
      await _repository.submitVote(passengerId, targetDate, isGoing);
      state = const AsyncValue.data(null);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
