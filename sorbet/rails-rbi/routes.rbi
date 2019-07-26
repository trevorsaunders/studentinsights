# This is an autogenerated file for routes helper methods

# typed: strong
class ActionController::Base
  extend T::Sig

  # Sigs for route /educators/sign_in(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_educator_session_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_educator_session_url(*args, **kwargs); end

  # Sigs for route /educators/sign_in(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educator_session_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educator_session_url(*args, **kwargs); end

  # Sigs for route /educators/sign_out(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def destroy_educator_session_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def destroy_educator_session_url(*args, **kwargs); end

  # Sigs for route /
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educator_homepage_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educator_homepage_url(*args, **kwargs); end

  # Sigs for route /
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def root_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def root_url(*args, **kwargs); end

  # Sigs for route /educators/multifactor(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_multifactor_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_multifactor_url(*args, **kwargs); end

  # Sigs for route /admin/educators(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_educators_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_educators_url(*args, **kwargs); end

  # Sigs for route /admin/educators/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_admin_educator_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_admin_educator_url(*args, **kwargs); end

  # Sigs for route /admin/educators/:id/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_educator_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_educator_url(*args, **kwargs); end

  # Sigs for route /admin/educators/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_educator_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_educator_url(*args, **kwargs); end

  # Sigs for route /admin/authorization(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_authorization_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_authorization_url(*args, **kwargs); end

  # Sigs for route /admin/masquerade/become(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_masquerade_become_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_masquerade_become_url(*args, **kwargs); end

  # Sigs for route /admin/masquerade/clear(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_masquerade_clear_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_masquerade_clear_url(*args, **kwargs); end

  # Sigs for route /admin(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_root_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_root_url(*args, **kwargs); end

  # Sigs for route /admin/import_records(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def import_records_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def import_records_url(*args, **kwargs); end

  # Sigs for route /admin/api/import_records(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_import_records_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_import_records_url(*args, **kwargs); end

  # Sigs for route /admin/sample_students(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def sample_students_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def sample_students_url(*args, **kwargs); end

  # Sigs for route /admin/api/sample_students_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_sample_students_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_sample_students_json_url(*args, **kwargs); end

  # Sigs for route /admin/student_voice_survey_uploads(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def student_voice_survey_uploads_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def student_voice_survey_uploads_url(*args, **kwargs); end

  # Sigs for route /admin/api/student_voice_survey_uploads(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_student_voice_survey_uploads_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_student_voice_survey_uploads_url(*args, **kwargs); end

  # Sigs for route /api/educators/my_students_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_educators_my_students_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_educators_my_students_json_url(*args, **kwargs); end

  # Sigs for route /api/educators/services_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_educators_services_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_educators_services_json_url(*args, **kwargs); end

  # Sigs for route /api/educators/student_searchbar_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_educators_student_searchbar_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_educators_student_searchbar_json_url(*args, **kwargs); end

  # Sigs for route /api/reading/update_data_point_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_reading_update_data_point_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_reading_update_data_point_json_url(*args, **kwargs); end

  # Sigs for route /api/reading/teams_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_reading_teams_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_reading_teams_json_url(*args, **kwargs); end

  # Sigs for route /api/reading_debug/reading_debug_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_reading_debug_reading_debug_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_reading_debug_reading_debug_json_url(*args, **kwargs); end

  # Sigs for route /api/reading_debug/star_reading_debug_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_reading_debug_star_reading_debug_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_reading_debug_star_reading_debug_json_url(*args, **kwargs); end

  # Sigs for route /api/class_lists/workspaces_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_class_lists_workspaces_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_class_lists_workspaces_json_url(*args, **kwargs); end

  # Sigs for route /api/equity/classlists_equity_index_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_equity_classlists_equity_index_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_equity_classlists_equity_index_json_url(*args, **kwargs); end

  # Sigs for route /api/equity/stats_by_school_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_equity_stats_by_school_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_equity_stats_by_school_json_url(*args, **kwargs); end

  # Sigs for route /api/home/students_with_low_grades_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_home_students_with_low_grades_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_home_students_with_low_grades_json_url(*args, **kwargs); end

  # Sigs for route /api/home/students_with_high_absences_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_home_students_with_high_absences_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_home_students_with_high_absences_json_url(*args, **kwargs); end

  # Sigs for route /api/home/feed_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_home_feed_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_home_feed_json_url(*args, **kwargs); end

  # Sigs for route /api/district/overview_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_district_overview_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_district_overview_json_url(*args, **kwargs); end

  # Sigs for route /api/district/enrollment_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_district_enrollment_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_district_enrollment_json_url(*args, **kwargs); end

  # Sigs for route /api/district/homerooms_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_district_homerooms_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_district_homerooms_json_url(*args, **kwargs); end

  # Sigs for route /api/search_notes/query_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_search_notes_query_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_search_notes_query_json_url(*args, **kwargs); end

  # Sigs for route /api/educators/my_notes_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_educators_my_notes_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_educators_my_notes_json_url(*args, **kwargs); end

  # Sigs for route /api/educators/my_sections_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_educators_my_sections_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_educators_my_sections_json_url(*args, **kwargs); end

  # Sigs for route /api/second_transition_notes/transition_students_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_second_transition_notes_transition_students_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_second_transition_notes_transition_students_json_url(*args, **kwargs); end

  # Sigs for route /api/event_notes(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_event_notes_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_event_notes_url(*args, **kwargs); end

  # Sigs for route /api/counselor_meetings/meetings_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_counselor_meetings_meetings_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_counselor_meetings_meetings_json_url(*args, **kwargs); end

  # Sigs for route /api/counselor_meetings(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_counselor_meetings_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_counselor_meetings_url(*args, **kwargs); end

  # Sigs for route /api/counselor_meetings/student_feed_cards_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_counselor_meetings_student_feed_cards_json_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_counselor_meetings_student_feed_cards_json_url(*args, **kwargs); end

  # Sigs for route /api/login_activity(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_login_activity_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_login_activity_url(*args, **kwargs); end

  # Sigs for route /educators/my_students(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_my_students_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_my_students_url(*args, **kwargs); end

  # Sigs for route /educators/my_sections(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_my_sections_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_my_sections_url(*args, **kwargs); end

  # Sigs for route /educators/my_notes(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_my_notes_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_my_notes_url(*args, **kwargs); end

  # Sigs for route /educators/services(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_services_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_services_url(*args, **kwargs); end

  # Sigs for route /educators/reset(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_reset_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_reset_url(*args, **kwargs); end

  # Sigs for route /educators/probe(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_probe_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def educators_probe_url(*args, **kwargs); end

  # Sigs for route /no_default_page(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def no_default_page_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def no_default_page_url(*args, **kwargs); end

  # Sigs for route /not_authorized(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def not_authorized_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def not_authorized_url(*args, **kwargs); end

  # Sigs for route /home(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def home_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def home_url(*args, **kwargs); end

  # Sigs for route /sections(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def sections_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def sections_url(*args, **kwargs); end

  # Sigs for route /district/enrollment(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def enrollment_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def enrollment_url(*args, **kwargs); end

  # Sigs for route /district/homerooms(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def homerooms_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def homerooms_url(*args, **kwargs); end

  # Sigs for route /district/wide_students_csv(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def wide_students_csv_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def wide_students_csv_url(*args, **kwargs); end

  # Sigs for route /district/discipline_csv(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def discipline_csv_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def discipline_csv_url(*args, **kwargs); end

  # Sigs for route /search/notes(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def search_notes_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def search_notes_url(*args, **kwargs); end

  # Sigs for route /homerooms/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def homeroom_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def homeroom_url(*args, **kwargs); end

  # Sigs for route /students/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def student_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def student_url(*args, **kwargs); end

  # Sigs for route /students/:id/v3(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def v3_student_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def v3_student_url(*args, **kwargs); end

  # Sigs for route /students/:id/v4(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def v4_student_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def v4_student_url(*args, **kwargs); end

  # Sigs for route /students/:id/student_report(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def student_report_student_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def student_report_student_url(*args, **kwargs); end

  # Sigs for route /students/:id/photo(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def photo_student_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def photo_student_url(*args, **kwargs); end

  # Sigs for route /students/:id/latest_iep_document(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def latest_iep_document_student_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def latest_iep_document_student_url(*args, **kwargs); end

  # Sigs for route /students/:id/service(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def service_student_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def service_student_url(*args, **kwargs); end

  # Sigs for route /services/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def service_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def service_url(*args, **kwargs); end

  # Sigs for route /service_uploads/past(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def past_service_uploads_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def past_service_uploads_url(*args, **kwargs); end

  # Sigs for route /service_uploads/lasids(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def lasids_service_uploads_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def lasids_service_uploads_url(*args, **kwargs); end

  # Sigs for route /service_uploads/service_types(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def service_types_service_uploads_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def service_types_service_uploads_url(*args, **kwargs); end

  # Sigs for route /service_uploads(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def service_uploads_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def service_uploads_url(*args, **kwargs); end

  # Sigs for route /service_uploads/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def service_upload_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def service_upload_url(*args, **kwargs); end

  # Sigs for route /sections/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def section_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def section_url(*args, **kwargs); end

  # Sigs for route /classlists/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_classlists_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_classlists_url(*args, **kwargs); end

  # Sigs for route /classlists/schools(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def schools_classlists_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def schools_classlists_url(*args, **kwargs); end

  # Sigs for route /schools/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def school_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def school_url(*args, **kwargs); end

  # Sigs for route /schools/:id/overview_json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def overview_json_school_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def overview_json_school_url(*args, **kwargs); end

  # Sigs for route /schools/:id/csv(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def csv_school_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def csv_school_url(*args, **kwargs); end

  # Sigs for route /schools/:id/absences(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def absences_school_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def absences_school_url(*args, **kwargs); end

  # Sigs for route /schools/:id/tardies(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def tardies_school_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def tardies_school_url(*args, **kwargs); end

  # Sigs for route /schools/:id/discipline(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def discipline_school_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def discipline_school_url(*args, **kwargs); end

  # Sigs for route /schools/:id/courses(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def courses_school_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def courses_school_url(*args, **kwargs); end

  # Sigs for route /reading/debug(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def debug_reading_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def debug_reading_url(*args, **kwargs); end

  # Sigs for route /reading/debug_star(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def debug_star_reading_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def debug_star_reading_url(*args, **kwargs); end

  # Sigs for route /reading/debug_csv(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def debug_csv_reading_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def debug_csv_reading_url(*args, **kwargs); end

  # Sigs for route /equity/stats_by_school(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def stats_by_school_equity_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def stats_by_school_equity_url(*args, **kwargs); end

  # Sigs for route /equity/classlists_index(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def classlists_index_equity_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def classlists_index_equity_url(*args, **kwargs); end

  # Sigs for route /counselors/meetings(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def meetings_counselors_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def meetings_counselors_url(*args, **kwargs); end

  # Sigs for route /counselors/transitions(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def transitions_counselors_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def transitions_counselors_url(*args, **kwargs); end

  # Sigs for route /internal/login_activity(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def login_activity_internal_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def login_activity_internal_url(*args, **kwargs); end

  # Sigs for route /internal/is_service_working(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def is_service_working_internal_path(*args, **kwargs); end
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def is_service_working_internal_url(*args, **kwargs); end

end
