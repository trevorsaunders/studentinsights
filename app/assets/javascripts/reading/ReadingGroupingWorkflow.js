import React from 'react';
import PropTypes from 'prop-types';
import _ from 'lodash';
import {toSchoolYear} from '../helpers/schoolYear';
import {apiFetchJson} from '../helpers/apiFetchJson';
import Lifecycle from '../components/Lifecycle';
import GroupingPhases from './GroupingPhases';
import ChooseTeam from './ChooseTeam';
import MakePlan from './MakePlan';
import CreateGroups, {createGroups} from './CreateGroups';
import {initialStudentIdsByRoom} from './studentIdsByRoomFunctions';


// For navigating the workflow and phases of the reading grouping process.
const Phases = {
  CHOOSE_TEAM: 'CHOOSE_TEAM',
  MAKE_PLAN: 'MAKE_PLAN',
  PRIMARY_GROUPS: 'PRIMARY_GROUPS',
  ADDITIONAL_GROUPS: 'ADDITIONAL_GROUPS'
};
export default class ReadingGroupingWorkflow extends React.Component {
  constructor(props, context) {
    super(props, context);

    this.state = {
      // navigation through workflow
      selectedPhaseKey: Phases.CHOOSE_TEAM,
      allowedPhaseKeys: [Phases.CHOOSE_TEAM],
      editablePhaseKeys: [Phases.CHOOSE_TEAM],

      // ChooseTeam
      team: defaultTeam(props, context),

      // MakePlan
      plan: {
        primaryEducatorIds: [],
        additionalEducatorIds: [],
        planText: ''
      },

      // CreateGroups
      primaryStudentIdsByRoom: null,
      secondaryStudentIdsByRoom: null,

      // data on students, from the server
      json: null,
    };

    this.fetchReadingDataJson = this.fetchReadingDataJson.bind(this);
  }


  isPhaseEditable(phaseKey) {
    const {editablePhaseKeys} = this.state;
    return editablePhaseKeys.indexOf(phaseKey) !== -1;
  }

  // Requires team to be picked (not enforced)
  // Only loads once.
  fetchReadingDataJson() {
    const {teams} = this.props;
    const {team, json} = this.state;
    if (json !== null) return;

    const {schoolId, grade} = team;
    const schoolSlug = _.find(teams.schools, {id: schoolId}).slug;
    const url = `/api/schools/${schoolSlug}/reading/${grade}/reading_json`;
    apiFetchJson(url).then(json => this.setState({json}));
  }

  render() {
    const {allowedPhaseKeys, selectedPhaseKey} = this.state;
    return (
      <div style={styles.root}>
        <GroupingPhases
          style={styles.flexVertical}
          contentStyle={styles.flexVertical}
          allowedPhaseKeys={allowedPhaseKeys}
          selectedPhaseKey={selectedPhaseKey}
          onPhaseChanged={selectedPhaseKey => this.setState({selectedPhaseKey})}
          phaseLabels={{
            [Phases.CHOOSE_TEAM]: 'Choose your grade',
            [Phases.MAKE_PLAN]: 'Make a plan',
            [Phases.PRIMARY_GROUPS]: 'Create primary groups',
            [Phases.ADDITIONAL_GROUPS]: 'Choose additional groups'
          }}
          renderFn={() => (
            <div style={{...styles.flexVertical, margin: 20}}>
              {selectedPhaseKey === Phases.CHOOSE_TEAM && this.renderChooseTeam()}
              {selectedPhaseKey === Phases.MAKE_PLAN && this.renderMakePlan()}
              {selectedPhaseKey === Phases.PRIMARY_GROUPS && this.renderPrimaryGroups()}
              {selectedPhaseKey === Phases.ADDITIONAL_GROUPS && this.renderAdditionalGroups()}
            </div>
          )}
        />
      </div>
    );
  }

  renderChooseTeam() {
    const {teams} = this.props;
    const {team} = this.state;
    return (
      <ChooseTeam
        isEditable={this.isPhaseEditable(Phases.CHOOSE_TEAM)}
        team={team}
        onTeamChanged={team => this.setState({team})}
        teams={teams}
        onDone={() => {
          this.setState({
            selectedPhaseKey: Phases.MAKE_PLAN,
            editablePhaseKeys: [
              Phases.MAKE_PLAN
            ],
            allowedPhaseKeys: [
              Phases.CHOOSE_TEAM,
              Phases.MAKE_PLAN
            ]
          });
        }}
      />
    );
  }

  // At this phase, also prefetch student data
  renderMakePlan() {
    const {teams} = this.props;
    const {plan} = this.state;
    return (
      <Lifecycle componentWillMount={this.fetchReadingDataJson}>
        <MakePlan
          isEditable={this.isPhaseEditable(Phases.MAKE_PLAN)}
          plan={plan}
          onPlanChanged={plan => this.setState({plan})}
          educators={teams.educators}
          onDone={() => {
            this.setState({
              selectedPhaseKey: Phases.PRIMARY_GROUPS,
              editablePhaseKeys: [
                Phases.PRIMARY_GROUPS,
                Phases.ADDITIONAL_GROUPS
              ],
              allowedPhaseKeys: [
                Phases.CHOOSE_TEAM,
                Phases.MAKE_PLAN,
                Phases.PRIMARY_GROUPS,
                Phases.ADDITIONAL_GROUPS
              ]
            });
          }}
        />
      </Lifecycle>
    );
  }

  renderPrimaryGroups() {
    const {json} = this.state;
    if (!json) return null;

    const {teams} = this.props;
    const {team, plan, primaryStudentIdsByRoom} = this.state;
    const classrooms = _.sortBy(plan.primaryEducatorIds.map(id => {
      const educator = _.find(teams.educators, {id});
      return {educator, text: _.last(educator.full_name.split(' '))};
    }), 'text');

    return (
      <CreateGroups
        studentIdsByRoom={primaryStudentIdsByRoom || initialStudentIdsByRoom(createGroups(classrooms).length, json.reading_students)}
        onStudentIdsByRoomChanged={({studentIdsByRoom}) => {
          this.setState({primaryStudentIdsByRoom: studentIdsByRoom});
        }}
        isEditable={this.isPhaseEditable(Phases.PRIMARY_GROUPS)}
        grade={team.grade}
        benchmarkPeriodKey={team.benchmarkPeriodKey}
        schoolName={json.school.name}
        doc={json.entry_doc}
        readingStudents={json.reading_students}
        mtssNotes={json.latest_mtss_notes}
        classrooms={classrooms}
      />
    );
  }

  renderAdditionalGroups() {
    return <div>additional groups!</div>;
  }
}
ReadingGroupingWorkflow.contextTypes = {
  nowFn: PropTypes.func.isRequired
};
ReadingGroupingWorkflow.propTypes = {
  defaultSchoolSlug: PropTypes.string,
  defaultGrade: PropTypes.string,
  teams: PropTypes.shape({
    schools: PropTypes.arrayOf(PropTypes.shape({
      id: PropTypes.number.isRequired,
      name: PropTypes.string.isRequired
    })).isRequired,
    grades: PropTypes.arrayOf(PropTypes.string).isRequired,
    educators: PropTypes.arrayOf(PropTypes.shape({
      id: PropTypes.number.isRequired,
      full_name: PropTypes.string.isRequired
    })).isRequired,
    benchmarkWindows: PropTypes.arrayOf(PropTypes.shape({
      benchmark_school_year: PropTypes.number.isRequired,
      benchmark_period_key: PropTypes.string.isRequired
    })).isRequired
  }).isRequired
};

const styles = {
  root: {
    fontSize: 14,
    width: '100%',
    display: 'flex',
    flex: 1,
    flexDirection: 'column'
  },
  flexVertical: {
    display: 'flex',
    flex: 1,
    flexDirection: 'column'
  }
};

function defaultTeam(props, context) {
  const maybeSchool = _.find(props.teams.schools, {slug: props.defaultSchoolSlug});
  return {
    schoolId: maybeSchool ? maybeSchool.id : null,
    grade: props.defaultGrade || null,
    benchmarkSchoolYear: toSchoolYear(context.nowFn().toDate()),
    benchmarkPeriodKey: null
  };
}
