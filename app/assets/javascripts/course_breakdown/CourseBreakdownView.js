import React from 'react';
import PropTypes from 'prop-types';
import _ from 'lodash';
import FilterBar from '../components/FilterBar';
import EscapeListener from '../components/EscapeListener';
import SimpleFilterSelect, {ALL} from '../components/SimpleFilterSelect';
import CoursesTable from './CoursesTable';

export default class CourseBreakdownView extends React.Component {
  constructor(props) {
    super(props);
    this.state = initialState();
    this.onRaceClicked = this.onRaceClicked.bind(this);
    this.onGenderClicked = this.onGenderClicked.bind(this);
    this.onYearChanged = this.onYearChanged.bind(this);
    this.onEscape = this.onEscape.bind(this);
  }

  filteredCoursesWithBreakdown() {
    const {coursesWithBreakdown} = this.props;
    const {year} = this.state;
    const filteredCourses = coursesWithBreakdown.filter(course => Object.keys(course.course_year_data).includes(year));
    const filteredCoursesWithBreakdown = filteredCourses.map(course => {
      const course_fields = {
        course_name: course.course_name,
        is_honors: course.is_honors,
        subject: course.subject
      };
      const data_fields_for_year = course.course_year_data[year];
      return Object.assign(course_fields, data_fields_for_year);
    });
    return filteredCoursesWithBreakdown;
  }

  columnList() {
    const {checkedRace, checkedGender} = this.state;
    const {studentProportions} = this.props;
    const raceColumns = checkedRace ? Object.keys(studentProportions.race) : [];
    const genderColumns = checkedGender ? Object.keys(studentProportions.gender) : [];
    return raceColumns.concat(genderColumns);
  }

  yearList() {
    const {coursesWithBreakdown} = this.props;
    const allYears = coursesWithBreakdown.map(course => Object.keys(course.course_year_data));
    return _.uniq(_.flatten(allYears));
  }

  onRaceClicked(e) {
    this.setState({checkedRace: e.target.checked});
  }

  onGenderClicked(e) {
    this.setState({checkedGender: e.target.checked});
  }

  onYearChanged(year) {
    this.setState({year: year});
  }

  onEscape() {
    this.setState(initialState());
  }

  render() {
    return (
      <EscapeListener className="CourseBreakdownView" style={{...styles.root, ...styles.flexVertical}} onEscape={this.onEscape}>
        {this.renderSelection()}
        {this.renderTable()}
      </EscapeListener>
    );
  }

  renderSelection() {
    const yearList = this.yearList();
    const {year} = this.state;
    const nullOption = [{ value: ALL, label: 'All' }];

    return(
      <FilterBar style={styles.filterBar} barStyle={{flex: 1}} labelText="Filter">
        <label style={styles.checkbox}>
          <input
            style={{marginRight: 5}}
            type="checkbox"
            name={'Show Race Columns'}
            checked={this.state.checkedRace}
            onChange={this.onRaceClicked}
          />
        Show Race Columns
        </label>
        <label style={styles.checkbox}>
          <input
            style={{marginRight: 5}}
            type="checkbox"
            name={'Show Gender Columns'}
            checked={this.state.checkedGender}
            onChange={this.onGenderClicked}
          />
        Show Gender Columns
        </label>
        <SimpleFilterSelect
          style={{...styles.select, width: '7em'}}
          placeholder="School Year"
          value={year}
          onChange={this.onYearChanged}
          options={nullOption.concat(yearList.map(value => {
            return { value, label: `${value}` };
          }))} />
      </FilterBar>
    );
  }

  renderTable() {
    const filteredCoursesWithBreakdown = this.filteredCoursesWithBreakdown();
    const columnList = this.columnList();
    const {year} = this.state;
    return (
      <div style={{...styles.tableContainer, ...styles.flexVertical}}>
        <CoursesTable
          filteredCoursesWithBreakdown={filteredCoursesWithBreakdown}
          columnList={columnList}
          year={year}/>
      </div>
    );
  }
}

CourseBreakdownView.propTypes = {
  coursesWithBreakdown: PropTypes.arrayOf(PropTypes.shape({
    course_number: PropTypes.string.isRequired,
    course_name: PropTypes.string.isRequired,
    section_numbers: PropTypes.arrayOf(PropTypes.string.isRequired).isRequired,
    is_honors: PropTypes.bool,
    subject: PropTypes.string,
    course_year_data: PropTypes.shape(PropTypes.object.isRequired)
  })).isRequired,
  studentProportions: PropTypes.object.isRequired
};

const styles = {
  root: {
    fontSize: 14
  },
  flexVertical: {
    display: 'flex',
    flex: 1,
    flexDirection: 'column'
  },
  filterBar: {
    display: 'flex',
    flexDirection: 'row',
    alignItems: 'center',
    padding: 10,
    paddingLeft: 20,
    paddingRight: 10
  },
  checkbox: {
    marginLeft: 10,
    alignItems: 'center'
  },
  select: {
    width: '8em',
    fontSize: 12,
    marginLeft: 10
  },
  tableContainer: {
    marginLeft: 10,
    marginTop: 20
  },
  summary: {
    padding: 5,
    fontSize: 12
  },
  textBar: {
    flex: 1,
    display: 'flex',
    flexDirection: 'row',
    justifyContent: 'flex-end',
    alignItems: 'center'
  }
};

function initialState() {
  return {
    checkedRace: true,
    checkedGender: false,
    year: ALL
  };
}