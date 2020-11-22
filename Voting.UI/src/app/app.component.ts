import { Component, OnInit } from '@angular/core';
import { IVotingProfile } from './models/voting-profile';
import { IVotingScore } from './models/voting-score';
import { VotingHttpService } from './services/voting-http.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {

  public votingProfileTable: string[][] = [];
  public bordaRuleTable: string[][] = [];
  public relativeMajorityTable: string[][] = [];
  private _votingProfile: IVotingProfile;

  constructor(private _votingService: VotingHttpService) { }

  public ngOnInit() {
    this._votingService.getVotingProfile().subscribe(p => {
      this._votingProfile = p;
      this._fillVotingProfileTable();
    });
    this._votingService.getBordaRule().subscribe(p => {
      this._fillBordaRuleTable(p);
    });
    this._votingService.getRelativeMajority().subscribe(p => {
      this._fillgetRelativeMajorityTable(p);
    });
  }

  private _fillVotingProfileTable(): void {
    for (let i = 0; i < this._votingProfile.groupVotingProfiles.length; i++) {
      this.votingProfileTable[i] = [];
      const candidates = this._votingProfile.groupVotingProfiles[i].candidates;
      this.votingProfileTable[i][0] = this._votingProfile.groupVotingProfiles[i].numberOfVotes.toString();
      for (let j = 1; j < candidates.length + 1; j++) {
        this.votingProfileTable[i][j] = candidates[j - 1].name;
      }
    }

    this.votingProfileTable = this.votingProfileTable[0].map((_, colIndex) => this.votingProfileTable.map(row => row[colIndex]));
  }

  private _fillBordaRuleTable(scores: IVotingScore[]): void {
    for (let i = 0; i < scores.length; i++) {
      this.bordaRuleTable[i] = [];
      this.bordaRuleTable[i][0] = scores[i].candidateName;
      this.bordaRuleTable[i][1] = scores[i].numberOfScores.toString();
    }
  }

  private _fillgetRelativeMajorityTable(scores: IVotingScore[]): void {
    for (let i = 0; i < scores.length; i++) {
      this.relativeMajorityTable[i] = [];
      this.relativeMajorityTable[i][0] = scores[i].candidateName;
      this.relativeMajorityTable[i][1] = scores[i].numberOfScores.toString();
    }
  }
}
