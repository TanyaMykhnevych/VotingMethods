import { ICandidate } from './candidate';

export interface IGroupVotingProfile {
    numberOfVotes: number;
    candidates: ICandidate[];
}