import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { IVotingProfile } from '../models/voting-profile';
import { IVotingScore } from '../models/voting-score';
import { AppSettings } from '../settings';

@Injectable()
export class VotingHttpService {

    constructor(private _http: HttpClient) {}

    public getRelativeMajorityVotingProfile(): Observable<IVotingProfile> {
        return this._http.get<IVotingProfile>(`${AppSettings.apiHost}/voting/profile/relative-majority`);
    }

    public getBordaRuleVotingProfile(): Observable<IVotingProfile> {
        return this._http.get<IVotingProfile>(`${AppSettings.apiHost}/voting/profile/borda-rule`);
    }

    public getBordaRule(): Observable<IVotingScore[]> {
        return this._http.get<IVotingScore[]>(`${AppSettings.apiHost}/voting/borda-rule`);
    }

    public getRelativeMajority(): Observable<IVotingScore[]> {
        return this._http.get<IVotingScore[]>(`${AppSettings.apiHost}/voting/relative-majority`);
    }
}
