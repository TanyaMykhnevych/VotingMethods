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

  public majorityProfileTable: string[][] = [];
  public bordaProfileTable: string[][] = [];
  public bordaRuleTable: string[][] = [];
  public relativeMajorityTable: string[][] = [];

  constructor(private _votingService: VotingHttpService) { }

  public ngOnInit() {
    this._votingService.getRelativeMajorityVotingProfile().subscribe(p => {
      this.majorityProfileTable = this._fillVotingProfileTable(p);
    });
    this._votingService.getBordaRuleVotingProfile().subscribe(p => {
      this.bordaProfileTable = this._fillVotingProfileTable(p);
    });
    this._votingService.getBordaRule().subscribe(p => {
      this._fillBordaRuleResults(p);
    });
    this._votingService.getRelativeMajority().subscribe(p => {
      this._fillRelativeMajorityResults(p);
    });
  }

  private _fillVotingProfileTable(votingProfile: IVotingProfile): string[][] {
    const majorityProfileTable: string[][] = [];
    for (let i = 0; i < votingProfile.groupVotingProfiles.length; i++) {
      majorityProfileTable[i] = [];
      const candidates = votingProfile.groupVotingProfiles[i].candidates;
      majorityProfileTable[i][0] = votingProfile.groupVotingProfiles[i].numberOfVotes.toString();
      for (let j = 1; j < candidates.length + 1; j++) {
        majorityProfileTable[i][j] = candidates[j - 1].name;
      }
    }

    return majorityProfileTable[0].map((_, colIndex) => majorityProfileTable.map(row => row[colIndex]));
  }

  private _fillBordaRuleResults(scores: IVotingScore[]): void {
    for (let i = 0; i < scores.length; i++) {
      this.bordaRuleTable[i] = [];
      this.bordaRuleTable[i][0] = scores[i].candidateName;
      this.bordaRuleTable[i][1] = scores[i].numberOfScores.toString();
    }
  }

  private _fillRelativeMajorityResults(scores: IVotingScore[]): void {
    for (let i = 0; i < scores.length; i++) {
      this.relativeMajorityTable[i] = [];
      this.relativeMajorityTable[i][0] = scores[i].candidateName;
      this.relativeMajorityTable[i][1] = scores[i].numberOfScores.toString();
    }
  }
}
