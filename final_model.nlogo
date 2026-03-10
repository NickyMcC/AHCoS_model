;timestep one month

;infection_status
;0 uninfected
;1 latent
;2 subclinical TB
;3 clinical TB
;4 treatment

;hiv_art_status
;0 uninfected
;1 HIV+ ART-
;2 HIV+ ART+

;sex
;0 m
;1 f

;interventions
;0 none
;1 symptom dependent testing in clinics
;2 TUTT
;3 TUTT saliva
;4 community screening symptom dependent
;5 community screening symptom agnostic
;6 community xray van

;tutt_reason
;1 previous tb
;2 contact
;3 art

extensions[
  csv
  profiler
  time
  rnd
]

breed [hiv0tb0_ms hiv0tb0_m]
breed [hiv0tb1_ms hiv0tb1_m]
breed [hiv0tb2_ms hiv0tb2_m]
breed [hiv0tb3_ms hiv0tb3_m]
breed [hiv0tb4_ms hiv0tb4_m]
breed [hiv1tb0_ms hiv1tb0_m]
breed [hiv1tb1_ms hiv1tb1_m]
breed [hiv1tb2_ms hiv1tb2_m]
breed [hiv1tb3_ms hiv1tb3_m]
breed [hiv1tb4_ms hiv1tb4_m]
breed [hiv2tb0_ms hiv2tb0_m]
breed [hiv2tb1_ms hiv2tb1_m]
breed [hiv2tb2_ms hiv2tb2_m]
breed [hiv2tb3_ms hiv2tb3_m]
breed [hiv2tb4_ms hiv2tb4_m]
breed [hiv0tb0_fs hiv0tb0_f]
breed [hiv0tb1_fs hiv0tb1_f]
breed [hiv0tb2_fs hiv0tb2_f]
breed [hiv0tb3_fs hiv0tb3_f]
breed [hiv0tb4_fs hiv0tb4_f]
breed [hiv1tb0_fs hiv1tb0_f]
breed [hiv1tb1_fs hiv1tb1_f]
breed [hiv1tb2_fs hiv1tb2_f]
breed [hiv1tb3_fs hiv1tb3_f]
breed [hiv1tb4_fs hiv1tb4_f]
breed [hiv2tb0_fs hiv2tb0_f]
breed [hiv2tb1_fs hiv2tb1_f]
breed [hiv2tb2_fs hiv2tb2_f]
breed [hiv2tb3_fs hiv2tb3_f]
breed [hiv2tb4_fs hiv2tb4_f]

globals[

  ;;;;;;;;;;;;;;;;input file globals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  file
  hpc
  start_year
  end_year
  output_year
  clinic_visit_output_year
  initial_pop_size
  min_age
  max_age
  background_mort_starts_m
  background_mort_starts_f
  background_mort_m_annual
  background_mort_f_annual
  infection_seed_proportion
  tb_seed_proportion
  hiv_intro_year
  art_intro_year
  hiv_prev_initial_f
  hiv_prev_initial_m
  HIV1_mortality_rate_annual
  HIV2_mortality_rate_annual
  hiv_inc_early_f_annual
  hiv_inc_early_m_annual
  hiv_inc_mid_f_annual
  hiv_inc_mid_m_annual
  hiv_inc_f_late_reduction
  hiv_inc_m_late_reduction
  hiv_inc_change_year1_start
  hiv_inc_change_year1_end
  hiv_inc_change_year2_start
  hiv_inc_change_year2_end
  ART_start_rate_early_m_annual
  ART_start_rate_early_f_annual
  ART_start_rate_late_m_annual
  ART_start_rate_late_f_annual
  ART_start_rate_change_year
  baseline_infection_rate
  tb_rates_change_start_year
  tb_rates_change_end_year
  relative_reduction_rates
  reduced_transmission_sub
  transmission_multiplier_chronic
  reduced_transmission_hiv1_vs_hiv2
  reduced_transmission_hiv2
  reinfection_relative_risk_HIV0
  reinfection_relative_risk_HIV1
  reinfection_relative_risk_HIV2
  develop_tb_y1_rate_HIV0_annual
  develop_tb_y2_rate_HIV0_annual
  develop_tb_y3_rate_HIV0_annual
  develop_tb_y4_rate_HIV0_annual
  develop_tb_y5_rate_HIV0_annual
  develop_tb_reactivation_rate_HIV0_annual
  increased_develop_tb_rate_HIV2_vs_HIV0
  increased_develop_tb_rate_HIV1_vs_HIV2
  increased_TB_development_male
  increased_TB_development_chronic
  clinic_TBsymp_HIV0_annual
  clinic_TBsymp_HIV1_annual
  clinic_TBsymp_HIV2_annual
  clinic_TBsymp_adjust_chronic
  clinic_TBsymp_diagnosis_prob
  clinic_TBsymp_diagnosis_adjust_chronic
  clinic_TBsymp_adjust_transient
  self_cure_rate_HIV0_annual
  self_cure_rate_HIV1_vs_HIV2
  self_cure_rate_HIV2_vs_HIV0
  relative_self_cure_rate_chronic
  TB_mortality_rate_clin_HIV0_vs_HIV2
  TB_mortality_rate_clin_HIV1_annual
  TB_mortality_rate_clin_HIV2_vs_HIV1
  relative_TB_mortality_rate_chronic
  TB_mortality_rate_treatment_hiv0_monthly
  TB_treatment_dropout_rate_hiv0_monthly
  TB_mortality_rate_treatment_hiv12_monthly
  TB_treatment_dropout_rate_hiv12_monthly
  TB_treatment_length
  rate_sub_to_clin_hiv0_vs_hiv2
  rate_sub_to_clin_hiv1_annual
  rate_sub_to_clin_hiv2_vs_hiv1
  relative_rate_sub_to_clin_chronic
  rate_clin_to_sub_hiv0_annual
  rate_clin_to_sub_hiv2_vs_hiv0
  rate_clin_to_sub_hiv1_vs_hiv2
  relative_rate_clin_to_sub_chronic
  prop_infect_15
  start_art_on_tb_diagnosis
  infectiousness_var
  hh_trans_rate_multiplier
  child_trans_rate_multiplier
  prop_with_symp_hiv0
  prop_with_symp_input_hiv1
  prop_with_symp_input_hiv2
  proportion_symp_chronic
  abs_increased_prop_symp_chronic_hiv
  prop_male
  clinic_visit_alpha_m_hiv01
  clinic_visit_lambda_m_hiv01
  clinic_visit_alpha_m_hiv2
  clinic_visit_lambda_m_hiv2
  clinic_visit_alpha_f_hiv01
  clinic_visit_lambda_f_hiv01
  clinic_visit_alpha_f_hiv2
  clinic_visit_lambda_f_hiv2
  clinic_visit_adjust
  clinic_other_symp_hiv01
  clinic_other_tb_hiv01
  clinic_other_hiv2_rel_hiv01
  routine_annual_visit_prob
  produce_sputum_prob_tb
  produce_sputum_prob_notb
  xpert_sens_active
  xpert_sens_passive
  routine_xpert_spec
  routine_min_month_between_xpert
  routine_iltfu
  routine_symptom_screen_prob
  routine_xray_prob_hiv01
  routine_xray_prob_hiv2
  routine_xray_sens
  routine_xray_spec
  prob_diagnosis_doctor
  int_start_year
  int_type
  int_coverage
  int_increased_cov_TB
  int_clinic_symp_screen_prob
  int_clinic_min_month_between_xpert
  int_tutt_ratio_screened_contacts_prior
  int_tutt_ratio_pos_contacts_prior
  int_saliva_sens
  sputum_induction_prob
  induce_produce_sputum_prob
  also_xray
  also_comm_symp
  also_comm_asymp
  also_clinicsymp_aftertutt

  ;;;;;;;;;;;;;;;;;;;;;immediately calculated from input file
  background_mort_m_monthly
  background_mort_f_monthly
  HIV1_mortality_rate_monthly
  HIV2_mortality_rate_monthly
  hiv_inc_early_f_monthly
  hiv_inc_early_m_monthly
  hiv_inc_mid_f_monthly
  hiv_inc_mid_m_monthly
  hiv_inc_late_f_monthly
  hiv_inc_late_m_monthly
  ART_start_rate_early_m_monthly
  ART_start_rate_early_f_monthly
  ART_start_rate_late_m_monthly
  ART_start_rate_late_f_monthly
  develop_tb_y1_rate_HIV0_monthly
  develop_tb_y2_rate_HIV0_monthly
  develop_tb_y3_rate_HIV0_monthly
  develop_tb_y4_rate_HIV0_monthly
  develop_tb_y5_rate_HIV0_monthly
  develop_tb_reactivation_rate_HIV0_monthly
  develop_tb_y1_rate_HIV1_monthly
  develop_tb_y2_rate_HIV1_monthly
  develop_tb_y3_rate_HIV1_monthly
  develop_tb_y4_rate_HIV1_monthly
  develop_tb_y5_rate_HIV1_monthly
  develop_tb_reactivation_rate_HIV1_monthly
  develop_tb_y1_rate_HIV2_monthly
  develop_tb_y2_rate_HIV2_monthly
  develop_tb_y3_rate_HIV2_monthly
  develop_tb_y4_rate_HIV2_monthly
  develop_tb_y5_rate_HIV2_monthly
  develop_tb_reactivation_rate_HIV2_monthly
  clinic_TBsymp_HIV0_monthly
  clinic_TBsymp_HIV1_monthly
  clinic_TBsymp_HIV2_monthly
  self_cure_rate_HIV0_monthly
  self_cure_rate_HIV1_monthly
  self_cure_rate_HIV2_monthly
  TB_mortality_rate_clin_HIV0_monthly
  TB_mortality_rate_clin_HIV1_monthly
  TB_mortality_rate_clin_HIV2_monthly
  rate_sub_to_clin_hiv0_monthly
  rate_sub_to_clin_hiv1_monthly
  rate_sub_to_clin_hiv2_monthly
  rate_clin_to_sub_hiv0_monthly
  rate_clin_to_sub_hiv1_monthly
  rate_clin_to_sub_hiv2_monthly
  infectiousness_alp_gam
  self_cure_rate_HIV1_annual
  self_cure_rate_HIV2_annual
  prop_with_symp_hiv1
  prop_with_symp_hiv2
  prob_transient_comm_hiv0
  prob_transient_comm_hiv1
  prob_transient_comm_hiv2
  prob_transient_clinic_hiv0
  prob_transient_clinic_hiv1
  prob_transient_clinic_hiv2
  reduced_transmission_chronic
  clinic_other_symp_hiv2
  clinic_other_tb_hiv2
  reduced_transmission_hiv1
  tb_rates_change_start_tick
  tb_rates_change_end_tick


  ;;;;;;;;;;;;;;;;tb;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  background_risk_list


  ;;;;;;;;;;;;;;;;time;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  end_ticks
  year
  month
  next_change_ticks
  reduction_per_step
  ticks_per_step


  ;;;;;;;;;;;;;;;;interventions;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  intervention

  tutt_neg_contacts_to_screen
  tutt_pos_contacts_to_screen

  community_screen_prop_pos
  community_screen_prop_neg

  tracker_community_symp_screen
  tracker_community_xray
  tracker_community_sputum_attempt
  tracker_community_sputum_produced
  tracker_community_sputum_pos
  tracker_community_sputum_attempt_clinic
  tracker_community_sputum_produced_clinic
  tracker_community_sputum_pos_clinic
  tracker_community_start_treat_active
  tracker_community_start_treat_active_havetb
  tracker_community_diagnosed_active
  tracker_community_diagnosed_active_havetb
  tracker_community_xray_comm
  tracker_community_dr_ref
  tracker_community_dr_see
  tracker_community_dr_invest
  tracker_community_dr_pos
  tracker_community_dr_immed_treat



  tracker_clinic_art_visit_p
  tracker_clinic_art_visit_a
  tracker_clinic_symp_screen_p
  tracker_clinic_symp_screen_a
  tracker_clinic_sputum_attempt_p
  tracker_clinic_sputum_attempt_a
  tracker_clinic_sputum_produced_p
  tracker_clinic_sputum_produced_a
  tracker_clinic_sputum_pos_p
  tracker_clinic_sputum_pos_a
  tracker_clinic_xray_p
  tracker_clinic_xray_a
  tracker_clinic_xray_pos_p
  tracker_clinic_xray_pos_a
  tracker_clinic_dr_ref_p
  tracker_clinic_dr_ref_a
  tracker_clinic_dr_see_p
  tracker_clinic_dr_see_a
  tracker_clinic_dr_invest_p
  tracker_clinic_dr_invest_a
  tracker_clinic_dr_pos_p
  tracker_clinic_dr_pos_a
  tracker_clinic_dr_immed_treat_p
  tracker_clinic_dr_immed_treat_a
  tracker_clinic_start_treat_active_p
  tracker_clinic_start_treat_active_a
  tracker_clinic_start_treat_active_havetb_p
  tracker_clinic_start_treat_active_havetb_a
  tracker_clinic_diagnosed_active_p
  tracker_clinic_diagnosed_active_a
  tracker_clinic_diagnosed_active_havetb_p
  tracker_clinic_diagnosed_active_havetb_a
  tracker_clinic_start_treat_after_iltfu_p
  tracker_clinic_start_treat_after_iltfu_a
  tracker_clinic_active_screened_p
  tracker_clinic_active_screened_a

  tracker_start_treat_passive
  tracker_falsepos_route



  ;;;;;;;;;;;;;;;;output trackers;;;;;;;;;;;;;;;;;;;;;;
  tracker_popsize_mid_hiv0_m
  tracker_popsize_mid_hiv0_f
  tracker_popsize_mid_hiv1_m
  tracker_popsize_mid_hiv1_f
  tracker_popsize_mid_hiv2_m
  tracker_popsize_mid_hiv2_f
  tracker_mid_ever_diagnosed
  tracker_mid_ever_diagnosed_tb
  tracker_mid_diagnosed_2y
  tracker_mid_diagnosed_2y_tb
  tracker_tb2_mid_hiv0_m
  tracker_tb2_mid_hiv0_f
  tracker_tb2_mid_hiv1_m
  tracker_tb2_mid_hiv1_f
  tracker_tb2_mid_hiv2_m
  tracker_tb2_mid_hiv2_f
  tracker_tb3_mid_hiv0_m
  tracker_tb3_mid_hiv0_f
  tracker_tb3_mid_hiv1_m
  tracker_tb3_mid_hiv1_f
  tracker_tb3_mid_hiv2_m
  tracker_tb3_mid_hiv2_f
  tracker_develop_tb_hiv0_m
  tracker_develop_tb_hiv0_f
  tracker_develop_tb_hiv1_m
  tracker_develop_tb_hiv1_f
  tracker_develop_tb_hiv2_m
  tracker_develop_tb_hiv2_f
  tracker_develop_tb_hiv0_m_nr_nc
  tracker_develop_tb_hiv0_m_nr_yc
  tracker_develop_tb_hiv0_m_2y_nc
  tracker_develop_tb_hiv0_m_2y_yc
  tracker_develop_tb_hiv0_f_nr_nc
  tracker_develop_tb_hiv0_f_nr_yc
  tracker_develop_tb_hiv0_f_2y_nc
  tracker_develop_tb_hiv0_f_2y_yc
  tracker_develop_tb_hiv1_m_nr_nc
  tracker_develop_tb_hiv1_m_nr_yc
  tracker_develop_tb_hiv1_m_2y_nc
  tracker_develop_tb_hiv1_m_2y_yc
  tracker_develop_tb_hiv1_f_nr_nc
  tracker_develop_tb_hiv1_f_nr_yc
  tracker_develop_tb_hiv1_f_2y_nc
  tracker_develop_tb_hiv1_f_2y_yc
  tracker_develop_tb_hiv2_m_nr_nc
  tracker_develop_tb_hiv2_m_nr_yc
  tracker_develop_tb_hiv2_m_2y_nc
  tracker_develop_tb_hiv2_m_2y_yc
  tracker_develop_tb_hiv2_f_nr_nc
  tracker_develop_tb_hiv2_f_nr_yc
  tracker_develop_tb_hiv2_f_2y_nc
  tracker_develop_tb_hiv2_f_2y_yc
  tracker_die_tb_hiv0_m
  tracker_die_tb_hiv0_f
  tracker_die_tb_hiv1_m
  tracker_die_tb_hiv1_f
  tracker_die_tb_hiv2_m
  tracker_die_tb_hiv2_f
  tracker_die_tb_hiv0_notreat
  tracker_die_tb_hiv1_notreat
  tracker_die_tb_hiv2_notreat
  tracker_die_tb_hiv0_ontreat
  tracker_die_tb_hiv1_ontreat
  tracker_die_tb_hiv2_ontreat
  tracker_treat_tb_hiv0_m
  tracker_treat_tb_hiv0_f
  tracker_treat_tb_hiv1_m
  tracker_treat_tb_hiv1_f
  tracker_treat_tb_hiv2_m
  tracker_treat_tb_hiv2_f
  tracker_treat_success_hiv0
  tracker_treat_die_tb_hiv0
  tracker_treat_dropout_hiv0
  tracker_treat_success_hiv1
  tracker_treat_success_hiv2
  tracker_treat_die_tb_hiv12
  tracker_treat_dropout_hiv12
  tracker_treat_success_hiv0_2022
  tracker_treat_die_tb_hiv0_2022
  tracker_treat_dropout_hiv0_2022
  tracker_treat_success_hiv12_2022
  tracker_treat_die_tb_hiv12_2022
  tracker_treat_dropout_hiv12_2022
  tracker_selfcure_hiv0
  tracker_selfcure_hiv1
  tracker_selfcure_hiv2
  tracker_inc_tb_23
  tracker_treat_tb_23

  tracker_int_simp

  tracker_tb2_hiv0_symp_mid
  tracker_tb2_hiv1_symp_mid
  tracker_tb2_hiv2_symp_mid
  tracker_tb2_hiv12_symp_mid
  tracker_hiv12_symp_mid

  tracker_start_treat_symp_hiv0
  tracker_start_treat_symp_hiv1
  tracker_start_treat_symp_hiv2
  tracker_start_art



  tracker_attend_clinic_bg_2y_m_hiv0_ntb_ns
  tracker_attend_clinic_bg_2y_m_hiv1_ntb_ns
  tracker_attend_clinic_bg_2y_m_hiv2_ntb_ns
  tracker_attend_clinic_bg_2y_m_hiv0_ytb_ns
  tracker_attend_clinic_bg_2y_m_hiv1_ytb_ns
  tracker_attend_clinic_bg_2y_m_hiv2_ytb_ns
  tracker_attend_clinic_bg_2y_f_hiv0_ntb_ns
  tracker_attend_clinic_bg_2y_f_hiv1_ntb_ns
  tracker_attend_clinic_bg_2y_f_hiv2_ntb_ns
  tracker_attend_clinic_bg_2y_f_hiv0_ytb_ns
  tracker_attend_clinic_bg_2y_f_hiv1_ytb_ns
  tracker_attend_clinic_bg_2y_f_hiv2_ytb_ns
  tracker_attend_clinic_bg_2y_m_hiv0_ntb_ys
  tracker_attend_clinic_bg_2y_m_hiv1_ntb_ys
  tracker_attend_clinic_bg_2y_m_hiv2_ntb_ys
  tracker_attend_clinic_bg_2y_m_hiv0_ytb_ys
  tracker_attend_clinic_bg_2y_m_hiv1_ytb_ys
  tracker_attend_clinic_bg_2y_m_hiv2_ytb_ys
  tracker_attend_clinic_bg_2y_f_hiv0_ntb_ys
  tracker_attend_clinic_bg_2y_f_hiv1_ntb_ys
  tracker_attend_clinic_bg_2y_f_hiv2_ntb_ys
  tracker_attend_clinic_bg_2y_f_hiv0_ytb_ys
  tracker_attend_clinic_bg_2y_f_hiv1_ytb_ys
  tracker_attend_clinic_bg_2y_f_hiv2_ytb_ys

  tracker_attend_clinic_bg_nr_m_hiv0_ntb_ns
  tracker_attend_clinic_bg_nr_m_hiv1_ntb_ns
  tracker_attend_clinic_bg_nr_m_hiv2_ntb_ns
  tracker_attend_clinic_bg_nr_m_hiv0_ytb_ns
  tracker_attend_clinic_bg_nr_m_hiv1_ytb_ns
  tracker_attend_clinic_bg_nr_m_hiv2_ytb_ns
  tracker_attend_clinic_bg_nr_f_hiv0_ntb_ns
  tracker_attend_clinic_bg_nr_f_hiv1_ntb_ns
  tracker_attend_clinic_bg_nr_f_hiv2_ntb_ns
  tracker_attend_clinic_bg_nr_f_hiv0_ytb_ns
  tracker_attend_clinic_bg_nr_f_hiv1_ytb_ns
  tracker_attend_clinic_bg_nr_f_hiv2_ytb_ns
  tracker_attend_clinic_bg_nr_m_hiv0_ntb_ys
  tracker_attend_clinic_bg_nr_m_hiv1_ntb_ys
  tracker_attend_clinic_bg_nr_m_hiv2_ntb_ys
  tracker_attend_clinic_bg_nr_m_hiv0_ytb_ys
  tracker_attend_clinic_bg_nr_m_hiv1_ytb_ys
  tracker_attend_clinic_bg_nr_m_hiv2_ytb_ys
  tracker_attend_clinic_bg_nr_f_hiv0_ntb_ys
  tracker_attend_clinic_bg_nr_f_hiv1_ntb_ys
  tracker_attend_clinic_bg_nr_f_hiv2_ntb_ys
  tracker_attend_clinic_bg_nr_f_hiv0_ytb_ys
  tracker_attend_clinic_bg_nr_f_hiv1_ytb_ys
  tracker_attend_clinic_bg_nr_f_hiv2_ytb_ys

  tracker_attend_clinic_symp_2y_m_hiv0_ntb_ns
  tracker_attend_clinic_symp_2y_m_hiv1_ntb_ns
  tracker_attend_clinic_symp_2y_m_hiv2_ntb_ns
  tracker_attend_clinic_symp_2y_m_hiv0_ytb_ns
  tracker_attend_clinic_symp_2y_m_hiv1_ytb_ns
  tracker_attend_clinic_symp_2y_m_hiv2_ytb_ns
  tracker_attend_clinic_symp_2y_f_hiv0_ntb_ns
  tracker_attend_clinic_symp_2y_f_hiv1_ntb_ns
  tracker_attend_clinic_symp_2y_f_hiv2_ntb_ns
  tracker_attend_clinic_symp_2y_f_hiv0_ytb_ns
  tracker_attend_clinic_symp_2y_f_hiv1_ytb_ns
  tracker_attend_clinic_symp_2y_f_hiv2_ytb_ns
  tracker_attend_clinic_symp_2y_m_hiv0_ntb_ys
  tracker_attend_clinic_symp_2y_m_hiv1_ntb_ys
  tracker_attend_clinic_symp_2y_m_hiv2_ntb_ys
  tracker_attend_clinic_symp_2y_m_hiv0_ytb_ys
  tracker_attend_clinic_symp_2y_m_hiv1_ytb_ys
  tracker_attend_clinic_symp_2y_m_hiv2_ytb_ys
  tracker_attend_clinic_symp_2y_f_hiv0_ntb_ys
  tracker_attend_clinic_symp_2y_f_hiv1_ntb_ys
  tracker_attend_clinic_symp_2y_f_hiv2_ntb_ys
  tracker_attend_clinic_symp_2y_f_hiv0_ytb_ys
  tracker_attend_clinic_symp_2y_f_hiv1_ytb_ys
  tracker_attend_clinic_symp_2y_f_hiv2_ytb_ys

  tracker_attend_clinic_symp_nr_m_hiv0_ntb_ns
  tracker_attend_clinic_symp_nr_m_hiv1_ntb_ns
  tracker_attend_clinic_symp_nr_m_hiv2_ntb_ns
  tracker_attend_clinic_symp_nr_m_hiv0_ytb_ns
  tracker_attend_clinic_symp_nr_m_hiv1_ytb_ns
  tracker_attend_clinic_symp_nr_m_hiv2_ytb_ns
  tracker_attend_clinic_symp_nr_f_hiv0_ntb_ns
  tracker_attend_clinic_symp_nr_f_hiv1_ntb_ns
  tracker_attend_clinic_symp_nr_f_hiv2_ntb_ns
  tracker_attend_clinic_symp_nr_f_hiv0_ytb_ns
  tracker_attend_clinic_symp_nr_f_hiv1_ytb_ns
  tracker_attend_clinic_symp_nr_f_hiv2_ytb_ns
  tracker_attend_clinic_symp_nr_m_hiv0_ntb_ys
  tracker_attend_clinic_symp_nr_m_hiv1_ntb_ys
  tracker_attend_clinic_symp_nr_m_hiv2_ntb_ys
  tracker_attend_clinic_symp_nr_m_hiv0_ytb_ys
  tracker_attend_clinic_symp_nr_m_hiv1_ytb_ys
  tracker_attend_clinic_symp_nr_m_hiv2_ytb_ys
  tracker_attend_clinic_symp_nr_f_hiv0_ntb_ys
  tracker_attend_clinic_symp_nr_f_hiv1_ntb_ys
  tracker_attend_clinic_symp_nr_f_hiv2_ntb_ys
  tracker_attend_clinic_symp_nr_f_hiv0_ytb_ys
  tracker_attend_clinic_symp_nr_f_hiv1_ytb_ys
  tracker_attend_clinic_symp_nr_f_hiv2_ytb_ys

  tracker_diagnosed_bg_m_hiv0_ytb_ns
  tracker_diagnosed_bg_m_hiv1_ytb_ns
  tracker_diagnosed_bg_m_hiv2_ytb_ns
  tracker_diagnosed_bg_f_hiv0_ytb_ns
  tracker_diagnosed_bg_f_hiv1_ytb_ns
  tracker_diagnosed_bg_f_hiv2_ytb_ns
  tracker_diagnosed_bg_m_hiv0_ytb_ys
  tracker_diagnosed_bg_m_hiv1_ytb_ys
  tracker_diagnosed_bg_m_hiv2_ytb_ys
  tracker_diagnosed_bg_f_hiv0_ytb_ys
  tracker_diagnosed_bg_f_hiv1_ytb_ys
  tracker_diagnosed_bg_f_hiv2_ytb_ys

  tracker_diagnosed_symp_active_m_hiv0_ytb_ys
  tracker_diagnosed_symp_active_m_hiv1_ytb_ys
  tracker_diagnosed_symp_active_m_hiv2_ytb_ys
  tracker_diagnosed_symp_active_f_hiv0_ytb_ys
  tracker_diagnosed_symp_active_f_hiv1_ytb_ys
  tracker_diagnosed_symp_active_f_hiv2_ytb_ys

  tracker_diagnosed_symp_m_hiv0_ytb_ys
  tracker_diagnosed_symp_m_hiv1_ytb_ys
  tracker_diagnosed_symp_m_hiv2_ytb_ys
  tracker_diagnosed_symp_f_hiv0_ytb_ys
  tracker_diagnosed_symp_f_hiv1_ytb_ys
  tracker_diagnosed_symp_f_hiv2_ytb_ys

  tracker_clinic_visits_2022
  tracker_clinic_symp_prev_2022
  tracker_increased_tb_prev_in_clinic_symp_2022
  tracker_increased_tb_prev_in_clinic_2022

  tracker_ontreat_mid

  tracker_die_tb_hiv0_age0
  tracker_die_tb_hiv0_age1
  tracker_die_tb_hiv0_age2
  tracker_die_tb_hiv1_age0
  tracker_die_tb_hiv1_age1
  tracker_die_tb_hiv1_age2
  tracker_die_tb_hiv2_age0
  tracker_die_tb_hiv2_age1
  tracker_die_tb_hiv2_age2
  tracker_die_hiv_age0
  tracker_die_hiv_age1
  tracker_die_hiv_age2
  tracker_die_other_age0
  tracker_die_other_age1
  tracker_die_other_age2

  tracker_mid_hiv1_age0
  tracker_mid_hiv1_age1
  tracker_mid_hiv1_age2
  tracker_mid_hiv2_age0
  tracker_mid_hiv2_age1
  tracker_mid_hiv2_age2

  tracker_tutt_eligibility_screened_year
  tracker_tutt_recenttb_screened_year
  tracker_tutt_recenttb_detected_year
  tracker_tutt_contact_screened_year
  tracker_tutt_contact_detected_year
  tracker_tutt_art_screened_year
  tracker_tutt_art_detected_year
  tracker_tutt_recenttb_truepos_year
  tracker_tutt_contact_truepos_year
  tracker_tutt_art_truepos_year
  tracker_start_treat_pm_hiv0
  tracker_start_treat_pm_hiv1
  tracker_start_treat_pm_hiv2
  tracker_resolve_pm_hiv0
  tracker_resolve_pm_hiv1
  tracker_resolve_pm_hiv2
  tracker_start_treat_pm_2026_hiv0
  tracker_start_treat_pm_2026_hiv1
  tracker_start_treat_pm_2026_hiv2
  tracker_resolve_pm_2026_hiv0
  tracker_resolve_pm_2026_hiv1
  tracker_resolve_pm_2026_hiv2
  tracker_start_treat_2026_hiv0
  tracker_start_treat_2026_hiv1
  tracker_start_treat_2026_hiv2
  tracker_dietb_notreat_2026_hiv0
  tracker_dietb_notreat_2026_hiv1
  tracker_dietb_notreat_2026_hiv2
  tracker_dietb_ontreat_2026_hiv0
  tracker_dietb_ontreat_2026_hiv1
  tracker_dietb_ontreat_2026_hiv2
  tracker_dienottb_2026_hiv0
  tracker_dienottb_2026_hiv1
  tracker_dienottb_2026_hiv2
  tracker_selfcure_2026_hiv0
  tracker_selfcure_2026_hiv1
  tracker_selfcure_2026_hiv2

  tracker_popsize_mid_hiv0_ntb_ntr_nch_ntbsymp_n2y
  tracker_popsize_mid_hiv0_ntb_ntr_nch_ntbsymp_y2y
  tracker_popsize_mid_hiv0_ntb_ntr_ych_ntbsymp_n2y
  tracker_popsize_mid_hiv0_ntb_ntr_ych_ntbsymp_y2y
  tracker_popsize_mid_hiv0_ntb_ytr_nch_ntbsymp_n2y
  tracker_popsize_mid_hiv0_ntb_ytr_nch_ntbsymp_y2y
  tracker_popsize_mid_hiv0_ntb_ytr_ych_ntbsymp_n2y
  tracker_popsize_mid_hiv0_ntb_ytr_ych_ntbsymp_y2y
  tracker_popsize_mid_hiv0_ytb_ntr_nch_ntbsymp_n2y
  tracker_popsize_mid_hiv0_ytb_ntr_nch_ntbsymp_y2y
  tracker_popsize_mid_hiv0_ytb_ntr_nch_ytbsymp_n2y
  tracker_popsize_mid_hiv0_ytb_ntr_nch_ytbsymp_y2y
  tracker_popsize_mid_hiv0_ytb_ntr_ych_ntbsymp_n2y
  tracker_popsize_mid_hiv0_ytb_ntr_ych_ntbsymp_y2y
  tracker_popsize_mid_hiv0_ytb_ntr_ych_ytbsymp_n2y
  tracker_popsize_mid_hiv0_ytb_ntr_ych_ytbsymp_y2y
  tracker_popsize_mid_hiv0_ytb_ytr_nch_ntbsymp_n2y
  tracker_popsize_mid_hiv0_ytb_ytr_nch_ntbsymp_y2y
  tracker_popsize_mid_hiv0_ytb_ytr_nch_ytbsymp_n2y
  tracker_popsize_mid_hiv0_ytb_ytr_nch_ytbsymp_y2y
  tracker_popsize_mid_hiv0_ytb_ytr_ych_ntbsymp_n2y
  tracker_popsize_mid_hiv0_ytb_ytr_ych_ntbsymp_y2y
  tracker_popsize_mid_hiv0_ytb_ytr_ych_ytbsymp_n2y
  tracker_popsize_mid_hiv0_ytb_ytr_ych_ytbsymp_y2y
  tracker_popsize_mid_hiv1_ntb_ntr_nch_ntbsymp_n2y
  tracker_popsize_mid_hiv1_ntb_ntr_nch_ntbsymp_y2y
  tracker_popsize_mid_hiv1_ntb_ntr_ych_ntbsymp_n2y
  tracker_popsize_mid_hiv1_ntb_ntr_ych_ntbsymp_y2y
  tracker_popsize_mid_hiv1_ntb_ytr_nch_ntbsymp_n2y
  tracker_popsize_mid_hiv1_ntb_ytr_nch_ntbsymp_y2y
  tracker_popsize_mid_hiv1_ntb_ytr_ych_ntbsymp_n2y
  tracker_popsize_mid_hiv1_ntb_ytr_ych_ntbsymp_y2y
  tracker_popsize_mid_hiv1_ytb_ntr_nch_ntbsymp_n2y
  tracker_popsize_mid_hiv1_ytb_ntr_nch_ntbsymp_y2y
  tracker_popsize_mid_hiv1_ytb_ntr_nch_ytbsymp_n2y
  tracker_popsize_mid_hiv1_ytb_ntr_nch_ytbsymp_y2y
  tracker_popsize_mid_hiv1_ytb_ntr_ych_ntbsymp_n2y
  tracker_popsize_mid_hiv1_ytb_ntr_ych_ntbsymp_y2y
  tracker_popsize_mid_hiv1_ytb_ntr_ych_ytbsymp_n2y
  tracker_popsize_mid_hiv1_ytb_ntr_ych_ytbsymp_y2y
  tracker_popsize_mid_hiv1_ytb_ytr_nch_ntbsymp_n2y
  tracker_popsize_mid_hiv1_ytb_ytr_nch_ntbsymp_y2y
  tracker_popsize_mid_hiv1_ytb_ytr_nch_ytbsymp_n2y
  tracker_popsize_mid_hiv1_ytb_ytr_nch_ytbsymp_y2y
  tracker_popsize_mid_hiv1_ytb_ytr_ych_ntbsymp_n2y
  tracker_popsize_mid_hiv1_ytb_ytr_ych_ntbsymp_y2y
  tracker_popsize_mid_hiv1_ytb_ytr_ych_ytbsymp_n2y
  tracker_popsize_mid_hiv1_ytb_ytr_ych_ytbsymp_y2y
  tracker_popsize_mid_hiv2_ntb_ntr_nch_ntbsymp_n2y
  tracker_popsize_mid_hiv2_ntb_ntr_nch_ntbsymp_y2y
  tracker_popsize_mid_hiv2_ntb_ntr_ych_ntbsymp_n2y
  tracker_popsize_mid_hiv2_ntb_ntr_ych_ntbsymp_y2y
  tracker_popsize_mid_hiv2_ntb_ytr_nch_ntbsymp_n2y
  tracker_popsize_mid_hiv2_ntb_ytr_nch_ntbsymp_y2y
  tracker_popsize_mid_hiv2_ntb_ytr_ych_ntbsymp_n2y
  tracker_popsize_mid_hiv2_ntb_ytr_ych_ntbsymp_y2y
  tracker_popsize_mid_hiv2_ytb_ntr_nch_ntbsymp_n2y
  tracker_popsize_mid_hiv2_ytb_ntr_nch_ntbsymp_y2y
  tracker_popsize_mid_hiv2_ytb_ntr_nch_ytbsymp_n2y
  tracker_popsize_mid_hiv2_ytb_ntr_nch_ytbsymp_y2y
  tracker_popsize_mid_hiv2_ytb_ntr_ych_ntbsymp_n2y
  tracker_popsize_mid_hiv2_ytb_ntr_ych_ntbsymp_y2y
  tracker_popsize_mid_hiv2_ytb_ntr_ych_ytbsymp_n2y
  tracker_popsize_mid_hiv2_ytb_ntr_ych_ytbsymp_y2y
  tracker_popsize_mid_hiv2_ytb_ytr_nch_ntbsymp_n2y
  tracker_popsize_mid_hiv2_ytb_ytr_nch_ntbsymp_y2y
  tracker_popsize_mid_hiv2_ytb_ytr_nch_ytbsymp_n2y
  tracker_popsize_mid_hiv2_ytb_ytr_nch_ytbsymp_y2y
  tracker_popsize_mid_hiv2_ytb_ytr_ych_ntbsymp_n2y
  tracker_popsize_mid_hiv2_ytb_ytr_ych_ntbsymp_y2y
  tracker_popsize_mid_hiv2_ytb_ytr_ych_ytbsymp_n2y
  tracker_popsize_mid_hiv2_ytb_ytr_ych_ytbsymp_y2y



  ;;;;;;;;;;;;;;;;fitting target outputs;;;;;;;;;;;;;;;;;;;;;;
  hiv_prev_m_2000
  hiv_prev_f_2000
  hiv_prev_m_2008
  hiv_prev_f_2008
  hiv_prev_m_2010
  hiv_prev_f_2010
  hiv_prev_m_2011
  hiv_prev_f_2011
  hiv_prev_m_2021
  hiv_prev_f_2021
  hiv_prev_m_2023
  hiv_prev_f_2023
  hiv_prev_m_2030
  hiv_prev_f_2030
  art_cov_m_2011
  art_cov_f_2011
  art_cov_m_2019
  art_cov_f_2019
  art_cov_m_2021
  art_cov_f_2021
  art_cov_m_2023
  art_cov_f_2023
  tb_incidence_2008
  tb_incidence_2005
  tb_incidence_2005_hivpos
  tb_incidence_2010
  tb_incidence_2010_hivpos
  tb_incidence_2021_m
  tb_incidence_2021_f
  tb_incidence_2023_hivpos
  tb_mort_2005
  tb_mort_2005_hivpos
  tb_mort_2010
  tb_mort_2010_hivpos
  tb_mort_2023
  tb_mort_2023_hivpos
  tb_treat_inc_ratio_2021
  prop_start_treat_hivpos_2023
  prop_start_treat_art_2023
  tb_prev_m_2018
  tb_prev_f_2018
  tb_prev_hivpos_2018
  tb_prev_hivneg_2018
  hiv_prev_m_2002
  hiv_prev_f_2002
  art_cov_m_2016
  art_cov_f_2016

  tb_mort_2022_hivneg_num
  tb_mort_2022_hivpos_num


  tb_incidence_2018
  tb_incidence_2018_hivneg_denom
  tb_incidence_2018_hivpos_denom
  tb_incidence_2023
  tb_incidence_2021_hivneg_denom
  tb_incidence_2021_hivpos_denom
  tb_mort_2021_hivneg_denom
  tb_mort_2021_hivpos_denom
  tb_prev_2018


  tb_notification_2011_m
  tb_notification_2011_f
  tb_notification_2018_m
  tb_notification_2018_f
  tb_notification_2021_m
  tb_notification_2021_f
  tb_notification_2011
  tb_notification_2018
  tb_incidence_hivneg_2018
  tb_incidence_hivpos_2018
  tb_mort_2018_hivneg
  tb_mort_2018_hivpos
  tb_prev_hiv0_2018
  tb_prev_hiv1_2018
  tb_prev_hiv2_2018

  age_list_2022_m
  age_list_2022_f

  tb_incidence_2011
  prop_inc_tb_hivpos_2018
  ratio_inc_f_to_m
  prop_prev_tb_hiv_2018
  prop_prev_tb_symp_hiv0_2018
  prop_prev_tb_symp_hiv12_2018
  prop_prev_tb_symp_hiv1_2018
  prop_prev_tb_symp_hiv2_2018
  prop_pop_with_symp_hiv12_2018
  not_2018_hiv0
  not_2018_hiv1
  not_2018_hiv2
  tb_not_2018
  tb_not_23
  treat_2018_m
  treat_2018_f
  prop_prev_tb_m
  prop_prev_tb_hiv
  prop_prev_hivtb_art

  hiv0_asymp_2018_mid
  hiv1_asymp_2018_mid
  hiv2_asymp_2018_mid
  hiv0_symp_2018_mid
  hiv1_symp_2018_mid
  hiv2_symp_2018_mid

  prop_start_treat_hivpos_2018
  treatment_coverage_2018
  treatment_success
  treatment_dropout
  treatment_death
  n_hiv0_sub_2018
  n_hiv0_clin_2018
  n_hiv1_sub_2018
  n_hiv1_clin_2018
  n_hiv2_sub_2018
  n_hiv2_clin_2018
  infection_prob_10_background_2018
  infection_prob_10_hiv0_sub_2018
  infection_prob_10_hiv0_clin_2018
  infection_prob_10_hiv0_symp_2018
  infection_prob_10_hiv1_sub_2018
  infection_prob_10_hiv1_clin_2018
  infection_prob_10_hiv1_symp_2018
  infection_prob_10_hiv2_sub_2018
  infection_prob_10_hiv2_clin_2018
  infection_prob_10_hiv2_symp_2018

  n_diagnosed_hiv0_sub_asymp_2023
  n_diagnosed_hiv0_sub_symp_2023
  n_diagnosed_hiv0_clin_2023
  n_diagnosed_hiv1_sub_asymp_2023
  n_diagnosed_hiv1_sub_symp_2023
  n_diagnosed_hiv1_clin_2023
  n_diagnosed_hiv2_sub_asymp_2023
  n_diagnosed_hiv2_sub_symp_2023
  n_diagnosed_hiv2_clin_2023
  n_prev_hiv0_sub_asymp_2023
  n_prev_hiv0_sub_symp_2023
  n_prev_hiv0_clin_2023
  n_prev_hiv1_sub_asymp_2023
  n_prev_hiv1_sub_symp_2023
  n_prev_hiv1_clin_2023
  n_prev_hiv2_sub_asymp_2023
  n_prev_hiv2_sub_symp_2023
  n_prev_hiv2_clin_2023
  infection_prob_9_background_2023
  inf9_diagnosed_hiv0_sub_asymp_2023
  inf9_diagnosed_hiv0_sub_symp_2023
  inf9_diagnosed_hiv0_clin_2023
  inf9_diagnosed_hiv1_sub_asymp_2023
  inf9_diagnosed_hiv1_sub_symp_2023
  inf9_diagnosed_hiv1_clin_2023
  inf9_diagnosed_hiv2_sub_asymp_2023
  inf9_diagnosed_hiv2_sub_symp_2023
  inf9_diagnosed_hiv2_clin_2023
  inf9_prev_hiv0_sub_asymp_2023
  inf9_prev_hiv0_sub_symp_2023
  inf9_prev_hiv0_clin_2023
  inf9_prev_hiv1_sub_asymp_2023
  inf9_prev_hiv1_sub_symp_2023
  inf9_prev_hiv1_clin_2023
  inf9_prev_hiv2_sub_asymp_2023
  inf9_prev_hiv2_sub_symp_2023
  inf9_prev_hiv2_clin_2023
]

turtles-own [
  age
  sex
  ticks_at_birth
  ticks_at_death
  TB_death
  hiv_death
  time_to_hiv
  ticks_at_hiv
  time_to_art
  ticks_at_art
  hiv_seed
  hiv_art_status
  ticks_at_infection
  gap_tbinfection_hiv_risk
  gap_tbinfection_art_risk
  gap_tbinfection_hiv_schedule
  gap_tbinfection_art_schedule
  correct_ticks_at_disease_development
  ticks_at_disease_development
  breed_at_disease_development
  correct_ticks_at_disease_transition
  months_ago_infected_15
  my_hh_risk_list
  infectiousness
  symptom_scale
  chronic
  screening_month
  symp_screen_pos
  my_clinic_visit_rate_base
  my_clinic_visit_rate_adjust
  correct_ticks_at_clinic_visit
  start_treat_symp
  my_symp
  ticks_at_last_xpert
  ticks_at_last_xpert_attempt
  ticks_at_diagnosis
  ticks_at_last_tutt
  tutt_reason
  eligible_detect_next_visit
  detect_at_next_clinic_visit
  ticks_at_last_selfcure
  dr_diagnosed
  no_tb_on_treat
  ticks_at_falsepos
  my_hiv_inc_change_year1
  my_hiv_inc_change_year2
  tb_clinic_visit_symp
  start_treat_route
  breed_start_treat
  develop_tb_2026
  develop_tb_2026_start_treat
  sputum_attempt_2026
  sputum_produced_2026
  tb2_tb3_at_start_treat
  ticks_at_last_resolved_tb3
]


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;setup and go;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

to setup
  ca
  reset-ticks
  read_in_inputs
  random-seed seed
  setup_lists
  setup_time
  setup_turtles
  setup_tb_infect
  setup_interventions
  setup_output
  setup_rate_changes
end


to go
  time:go-until (end_ticks + 1)
  if ticks = (end_ticks + 1) [stop]
end

to go-once
  time:go-until ticks + 1
end

to go-one-year
  time:go-until ticks + 12
end

to go-ten-years
  time:go-until ticks + 120
end

to setup_time
  set end_ticks 12 * (end_year + 1 - start_year)
  set year start_year
  set month 1
  time:schedule-repeating-event "observer" [ [] ->
    set year (year + 1)
  ]
  12 12
  time:schedule-repeating-event "observer" [ [] ->
    set month (month + 1)
    if month = 13 [set month 1]
  ]
  12 1
end

to setup_interventions
  ;time:schedule-repeating-event "observer" [ [] ->
  ;  int_simp
  ;]
  ;(int_simp_start_year - start_year) * 12 12

  ifelse int_type = 4 or int_type = 5 or int_type = 6
  [
    time:schedule-event "observer" [ [] ->
      set intervention int_type
      start_intervention
    ]
    (int_start_year - start_year) * 12
  ]
  [
    time:schedule-event "observer" [ [] ->
      set intervention int_type
      start_intervention
    ]
    (int_start_year - start_year) * 12 - 0.00001
  ]
end



to read_in_inputs
  set file csv:from-file (word "inputs_" input_number ".csv")
  foreach file
    [
      ? -> run (word "set " item 0 ? " " item 1 ?)
  ]
  set baseline_infection_rate (1 / baseline_infection_rate)
  set max_age max_age * 12
  set min_age min_age * 12
  set background_mort_starts_m background_mort_starts_m * 12
  set background_mort_starts_f background_mort_starts_f * 12
  set background_mort_m_monthly background_mort_m_annual / 12
  set background_mort_f_monthly background_mort_f_annual / 12

  set HIV1_mortality_rate_monthly HIV1_mortality_rate_annual / 12
  set HIV2_mortality_rate_monthly HIV2_mortality_rate_annual / 12
  set hiv_inc_early_f_monthly hiv_inc_early_f_annual / 12
  set hiv_inc_early_m_monthly hiv_inc_early_m_annual / 12
  set hiv_inc_mid_f_monthly hiv_inc_mid_f_annual / 12
  set hiv_inc_mid_m_monthly hiv_inc_mid_m_annual / 12
  set hiv_inc_late_m_monthly (hiv_inc_mid_m_monthly * hiv_inc_m_late_reduction)
  set hiv_inc_late_f_monthly (hiv_inc_mid_f_monthly * hiv_inc_f_late_reduction)
  set ART_start_rate_early_m_annual 0.0542 * EXP(1.0678 * ART_start_rate_early_m_annual)
  set ART_start_rate_early_m_monthly ART_start_rate_early_m_annual / 12
  set ART_start_rate_early_f_annual 0.0623 * EXP(1.609 * ART_start_rate_early_f_annual)
  set ART_start_rate_early_f_monthly ART_start_rate_early_f_annual / 12
  set ART_start_rate_late_m_annual 0.0212 * EXP(2.8622 * ART_start_rate_late_m_annual)
  set ART_start_rate_late_m_monthly ART_start_rate_late_m_annual / 12
  set ART_start_rate_late_f_annual 0.0193 * EXP(3.4356 * ART_start_rate_late_f_annual) - 0.0193
  set ART_start_rate_late_f_monthly ART_start_rate_late_f_annual / 12
  set develop_tb_y1_rate_HIV0_monthly develop_tb_y1_rate_HIV0_annual / 12
  set develop_tb_y2_rate_HIV0_monthly develop_tb_y2_rate_HIV0_annual / 12
  set develop_tb_y3_rate_HIV0_monthly develop_tb_y3_rate_HIV0_annual / 12
  set develop_tb_y4_rate_HIV0_monthly develop_tb_y4_rate_HIV0_annual / 12
  set develop_tb_y5_rate_HIV0_monthly develop_tb_y5_rate_HIV0_annual / 12
  set develop_tb_reactivation_rate_HIV0_monthly develop_tb_reactivation_rate_HIV0_annual / 12
  set develop_tb_y1_rate_HIV2_monthly develop_tb_y1_rate_HIV0_monthly * increased_develop_tb_rate_HIV2_vs_HIV0
  set develop_tb_y2_rate_HIV2_monthly develop_tb_y2_rate_HIV0_monthly * increased_develop_tb_rate_HIV2_vs_HIV0
  set develop_tb_y3_rate_HIV2_monthly develop_tb_y3_rate_HIV0_monthly * increased_develop_tb_rate_HIV2_vs_HIV0
  set develop_tb_y4_rate_HIV2_monthly develop_tb_y4_rate_HIV0_monthly * increased_develop_tb_rate_HIV2_vs_HIV0
  set develop_tb_y5_rate_HIV2_monthly develop_tb_y5_rate_HIV0_monthly * increased_develop_tb_rate_HIV2_vs_HIV0
  set develop_tb_reactivation_rate_HIV2_monthly develop_tb_reactivation_rate_HIV0_monthly * increased_develop_tb_rate_HIV2_vs_HIV0
  set develop_tb_y1_rate_HIV1_monthly develop_tb_y1_rate_HIV2_monthly * increased_develop_tb_rate_HIV1_vs_HIV2
  set develop_tb_y2_rate_HIV1_monthly develop_tb_y2_rate_HIV2_monthly * increased_develop_tb_rate_HIV1_vs_HIV2
  set develop_tb_y3_rate_HIV1_monthly develop_tb_y3_rate_HIV2_monthly * increased_develop_tb_rate_HIV1_vs_HIV2
  set develop_tb_y4_rate_HIV1_monthly develop_tb_y4_rate_HIV2_monthly * increased_develop_tb_rate_HIV1_vs_HIV2
  set develop_tb_y5_rate_HIV1_monthly develop_tb_y5_rate_HIV2_monthly * increased_develop_tb_rate_HIV1_vs_HIV2
  set develop_tb_reactivation_rate_HIV1_monthly develop_tb_reactivation_rate_HIV2_monthly * increased_develop_tb_rate_HIV1_vs_HIV2
  set clinic_TBsymp_HIV0_monthly clinic_TBsymp_HIV0_annual / 12
  set clinic_TBsymp_HIV1_monthly clinic_TBsymp_HIV1_annual / 12
  set clinic_TBsymp_HIV2_monthly clinic_TBsymp_HIV2_annual / 12
  set self_cure_rate_HIV0_monthly self_cure_rate_HIV0_annual / 12
  set self_cure_rate_HIV2_monthly self_cure_rate_HIV0_monthly * self_cure_rate_HIV2_vs_HIV0
  set self_cure_rate_HIV1_monthly self_cure_rate_HIV2_monthly * self_cure_rate_HIV1_vs_HIV2
  set TB_mortality_rate_clin_HIV1_monthly TB_mortality_rate_clin_HIV1_annual / 12
  set TB_mortality_rate_clin_HIV2_monthly TB_mortality_rate_clin_HIV1_monthly * TB_mortality_rate_clin_HIV2_vs_HIV1
  set TB_mortality_rate_clin_HIV0_monthly TB_mortality_rate_clin_HIV2_monthly * TB_mortality_rate_clin_HIV0_vs_HIV2
  set rate_sub_to_clin_hiv1_monthly rate_sub_to_clin_hiv1_annual / 12
  set rate_sub_to_clin_hiv2_monthly rate_sub_to_clin_hiv1_monthly * rate_sub_to_clin_hiv2_vs_hiv1
  set rate_sub_to_clin_hiv0_monthly rate_sub_to_clin_hiv2_monthly * rate_sub_to_clin_hiv0_vs_hiv2
  set rate_clin_to_sub_hiv0_monthly rate_clin_to_sub_hiv0_annual / 12
  set rate_clin_to_sub_hiv2_monthly rate_clin_to_sub_hiv0_monthly * rate_clin_to_sub_hiv2_vs_hiv0
  set rate_clin_to_sub_hiv1_monthly rate_clin_to_sub_hiv2_monthly * rate_clin_to_sub_hiv1_vs_hiv2
  set self_cure_rate_HIV2_annual (self_cure_rate_HIV0_annual * self_cure_rate_HIV2_vs_HIV0)
  set self_cure_rate_HIV1_annual (self_cure_rate_HIV2_annual * self_cure_rate_HIV1_vs_HIV2)

  if infectiousness_var > 0 [set infectiousness_alp_gam (1 / infectiousness_var)]

  set prop_with_symp_hiv1 prop_with_symp_hiv0 + prop_with_symp_input_hiv1 * (1 - prop_with_symp_hiv0)
  set prop_with_symp_hiv2 prop_with_symp_hiv0 + prop_with_symp_input_hiv1 * prop_with_symp_input_hiv2 * (1 - prop_with_symp_hiv0)

  set reduced_transmission_chronic (1 - 0.586791734) * reduced_transmission_sub + 0.586791734 * reduced_transmission_sub * transmission_multiplier_chronic

  set clinic_visit_adjust (clinic_visit_adjust / 12)

  set prob_transient_comm_hiv0 (prop_with_symp_hiv0 - prop_with_symp_hiv0 * proportion_symp_chronic)/(1 - prop_with_symp_hiv0 * proportion_symp_chronic)
  set prob_transient_comm_hiv1 (prop_with_symp_hiv1 - prop_with_symp_hiv1 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv))/(1 - prop_with_symp_hiv1 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv))
  set prob_transient_comm_hiv2 (prop_with_symp_hiv2 - prop_with_symp_hiv2 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv))/(1 - prop_with_symp_hiv2 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv))

  set clinic_other_symp_hiv2 (1 + (clinic_other_symp_hiv01 - 1) * clinic_other_hiv2_rel_hiv01)
  set clinic_other_tb_hiv2 (1 + (clinic_other_tb_hiv01 - 1) * clinic_other_hiv2_rel_hiv01)

  set prob_transient_clinic_hiv0 (prob_transient_comm_hiv0 * clinic_other_symp_hiv01 / (prob_transient_comm_hiv0 * clinic_other_symp_hiv01 + (1 - prob_transient_comm_hiv0)))
  set prob_transient_clinic_hiv1 (prob_transient_comm_hiv1 * clinic_other_symp_hiv01 / (prob_transient_comm_hiv1 * clinic_other_symp_hiv01 + (1 - prob_transient_comm_hiv1)))
  set prob_transient_clinic_hiv2 (prob_transient_comm_hiv2 * clinic_other_symp_hiv2 / (prob_transient_comm_hiv2 * clinic_other_symp_hiv2 + (1 - prob_transient_comm_hiv2)))

  set reduced_transmission_hiv1 (reduced_transmission_hiv2 * reduced_transmission_hiv1_vs_hiv2)

  ;  set self_cure_rate_HIV0_monthly (self_cure_rate_HIV0_monthly / ((prop_with_symp_hiv0 * proportion_symp_chronic) * relative_self_cure_rate_chronic + 1 - (prop_with_symp_hiv0 * proportion_symp_chronic)))
  ;  set self_cure_rate_HIV1_monthly (self_cure_rate_HIV1_monthly / ((prop_with_symp_hiv1 * proportion_symp_chronic) * relative_self_cure_rate_chronic + 1 - (prop_with_symp_hiv1 * proportion_symp_chronic)))
  ;  set self_cure_rate_HIV2_monthly (self_cure_rate_HIV2_monthly / ((prop_with_symp_hiv2 * proportion_symp_chronic) * relative_self_cure_rate_chronic + 1 - (prop_with_symp_hiv2 * proportion_symp_chronic)))
  ;
  ;  set TB_mortality_rate_clin_HIV0_monthly (TB_mortality_rate_clin_HIV0_monthly / ((prop_with_symp_hiv0 * proportion_symp_chronic) * relative_TB_mortality_rate_chronic + 1 - (prop_with_symp_hiv0 * proportion_symp_chronic)))
  ;  set TB_mortality_rate_clin_HIV1_monthly (TB_mortality_rate_clin_HIV1_monthly / ((prop_with_symp_hiv1 * proportion_symp_chronic) * relative_TB_mortality_rate_chronic + 1 - (prop_with_symp_hiv1 * proportion_symp_chronic)))
  ;  set TB_mortality_rate_clin_HIV2_monthly (TB_mortality_rate_clin_HIV2_monthly / ((prop_with_symp_hiv2 * proportion_symp_chronic) * relative_TB_mortality_rate_chronic + 1 - (prop_with_symp_hiv2 * proportion_symp_chronic)))
  ;
  ;  set rate_clin_to_sub_hiv0_monthly (rate_clin_to_sub_hiv0_monthly / ((prop_with_symp_hiv0 * proportion_symp_chronic) * relative_rate_sub_to_clin_chronic + 1 - (prop_with_symp_hiv0 * proportion_symp_chronic)))
  ;  set rate_clin_to_sub_hiv1_monthly (rate_clin_to_sub_hiv1_monthly / ((prop_with_symp_hiv1 * proportion_symp_chronic) * relative_rate_sub_to_clin_chronic + 1 - (prop_with_symp_hiv1 * proportion_symp_chronic)))
  ;  set rate_clin_to_sub_hiv2_monthly (rate_clin_to_sub_hiv2_monthly / ((prop_with_symp_hiv2 * proportion_symp_chronic) * relative_rate_sub_to_clin_chronic + 1 - (prop_with_symp_hiv2 * proportion_symp_chronic)))
  ;
  ;  set rate_sub_to_clin_hiv0_monthly (rate_sub_to_clin_hiv0_monthly / ((prop_with_symp_hiv0 * proportion_symp_chronic) * relative_rate_sub_to_clin_chronic + 1 - (prop_with_symp_hiv0 * proportion_symp_chronic)))
  ;  set rate_sub_to_clin_hiv1_monthly (rate_sub_to_clin_hiv1_monthly / ((prop_with_symp_hiv1 * proportion_symp_chronic) * relative_rate_sub_to_clin_chronic + 1 - (prop_with_symp_hiv1 * proportion_symp_chronic)))
  ;  set rate_sub_to_clin_hiv2_monthly (rate_sub_to_clin_hiv2_monthly / ((prop_with_symp_hiv2 * proportion_symp_chronic) * relative_rate_sub_to_clin_chronic + 1 - (prop_with_symp_hiv2 * proportion_symp_chronic)))
end

to setup_lists
  set background_risk_list n-values (15 * 12) [0]
  set tracker_community_start_treat_active []
  set tracker_community_start_treat_active_havetb []
  set tracker_clinic_start_treat_active_p []
  set tracker_clinic_start_treat_active_a []
  set tracker_clinic_start_treat_active_havetb_p []
  set tracker_clinic_start_treat_active_havetb_a []
  set tracker_clinic_start_treat_after_iltfu_p []
  set tracker_clinic_start_treat_after_iltfu_a []
  set tracker_start_treat_passive []
  set tracker_community_diagnosed_active []
  set tracker_community_diagnosed_active_havetb []
  set tracker_clinic_diagnosed_active_p []
  set tracker_clinic_diagnosed_active_a []
  set tracker_clinic_diagnosed_active_havetb_p []
  set tracker_clinic_diagnosed_active_havetb_a []
  set tracker_clinic_active_screened_p []
  set tracker_clinic_active_screened_a []
  set tracker_community_sputum_produced []
  set tracker_community_sputum_produced_clinic []
  set tracker_clinic_sputum_produced_p []
  set tracker_clinic_sputum_produced_a []
  set tracker_community_sputum_attempt []
  set tracker_community_sputum_attempt_clinic []
  set tracker_clinic_sputum_attempt_p []
  set tracker_clinic_sputum_attempt_a []
  set tracker_falsepos_route []
  set tracker_start_treat_pm_hiv0 []
  set tracker_start_treat_pm_hiv1 []
  set tracker_start_treat_pm_hiv2 []
  set tracker_resolve_pm_hiv0 []
  set tracker_resolve_pm_hiv1 []
  set tracker_resolve_pm_hiv2 []
  set tracker_start_treat_pm_2026_hiv0 []
  set tracker_start_treat_pm_2026_hiv1 []
  set tracker_start_treat_pm_2026_hiv2 []
  set tracker_resolve_pm_2026_hiv0 []
  set tracker_resolve_pm_2026_hiv1 []
  set tracker_resolve_pm_2026_hiv2 []
end

to setup_tb_infect
  time:schedule-repeating-event "observer" [ [] ->
    update_my_hh_risk_list
  ]
  (2000 - start_year) * 12 1

  time:schedule-repeating-event "observer" [ [] ->
    tb_infect
  ]
  1 1
end

to setup_rate_changes
  set tb_rates_change_start_tick (tb_rates_change_start_year - start_year) * 12
  set tb_rates_change_end_tick (tb_rates_change_end_year - start_year) * 12
  set ticks_per_step (tb_rates_change_end_tick - tb_rates_change_start_tick) / 10
  set next_change_ticks tb_rates_change_start_tick
  set reduction_per_step (relative_reduction_rates ^ (1 / (10)))
  schedule_rate_changes
end

to schedule_rate_changes
  time:schedule-event "observer" [ [] ->
    set baseline_infection_rate (baseline_infection_rate * reduction_per_step)
    set develop_tb_y1_rate_HIV0_monthly develop_tb_y1_rate_HIV0_monthly * reduction_per_step
    set develop_tb_y2_rate_HIV0_monthly develop_tb_y2_rate_HIV0_monthly * reduction_per_step
    set develop_tb_y3_rate_HIV0_monthly develop_tb_y3_rate_HIV0_monthly * reduction_per_step
    set develop_tb_y4_rate_HIV0_monthly develop_tb_y4_rate_HIV0_monthly * reduction_per_step
    set develop_tb_y5_rate_HIV0_monthly develop_tb_y5_rate_HIV0_monthly * reduction_per_step
    set develop_tb_reactivation_rate_HIV0_monthly develop_tb_reactivation_rate_HIV0_monthly * reduction_per_step
    set develop_tb_y1_rate_HIV1_monthly develop_tb_y1_rate_HIV1_monthly * reduction_per_step
    set develop_tb_y2_rate_HIV1_monthly develop_tb_y2_rate_HIV1_monthly * reduction_per_step
    set develop_tb_y3_rate_HIV1_monthly develop_tb_y3_rate_HIV1_monthly * reduction_per_step
    set develop_tb_y4_rate_HIV1_monthly develop_tb_y4_rate_HIV1_monthly * reduction_per_step
    set develop_tb_y5_rate_HIV1_monthly develop_tb_y5_rate_HIV1_monthly * reduction_per_step
    set develop_tb_reactivation_rate_HIV1_monthly develop_tb_reactivation_rate_HIV1_monthly * reduction_per_step
    set develop_tb_y1_rate_HIV2_monthly develop_tb_y1_rate_HIV2_monthly * reduction_per_step
    set develop_tb_y2_rate_HIV2_monthly develop_tb_y2_rate_HIV2_monthly * reduction_per_step
    set develop_tb_y3_rate_HIV2_monthly develop_tb_y3_rate_HIV2_monthly * reduction_per_step
    set develop_tb_y4_rate_HIV2_monthly develop_tb_y4_rate_HIV2_monthly * reduction_per_step
    set develop_tb_y5_rate_HIV2_monthly develop_tb_y5_rate_HIV2_monthly * reduction_per_step
    set develop_tb_reactivation_rate_HIV2_monthly develop_tb_reactivation_rate_HIV2_monthly * reduction_per_step
    ask (turtle-set
      hiv0tb1_ms hiv0tb1_fs
      hiv1tb1_ms hiv1tb1_fs
      hiv2tb1_ms hiv2tb1_fs)
    [schedule_develop_disease]
    set next_change_ticks (next_change_ticks + ticks_per_step)
    if next_change_ticks <= tb_rates_change_end_tick [schedule_rate_changes]
  ]
  next_change_ticks
end

to-report random-negative-binomial [r p]
  report random-poisson random-gamma r ((1 - p) / p)
end


to-report random-binomial [n p]
  let m (n * p)
  ifelse m < 10 and n >= 20 and p <= 0.05
  [report poisson-binomial m]
  [ifelse n * (1 - p) > 10
    [report normal-binomial n p]
    [report exact-binomial n p]
  ]
end

to-report exact-binomial [n p]
  report sum n-values n [ifelse-value (p > random-float 1) [1] [0]]
end

to-report poisson-binomial [m]
  report random-poisson m
end

to-report normal-binomial [n p]
  let number round(random-normal (n * p) sqrt(n * p * (1 - p)))
  if number < 0 [set number 0]
  if number > n [set number n]
  report number
end


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;setup turtles;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

to setup_turtles
  create-hiv0tb0_ms initial_pop_size [
    set ticks_at_diagnosis -100
    set ticks_at_last_selfcure -100
    set age random-float (max_age - min_age) + min_age
    ifelse random-float 1 < 0.5
    [
      set sex 0
    ]
    [
      set sex 1
      set breed hiv0tb0_fs
    ]
    ifelse sex = 0
      [set my_clinic_visit_rate_base (clinic_visit_adjust * random-gamma clinic_visit_alpha_m_hiv01 clinic_visit_lambda_m_hiv01)]
    [set my_clinic_visit_rate_base (clinic_visit_adjust * random-gamma clinic_visit_alpha_f_hiv01 clinic_visit_lambda_f_hiv01)]
    set my_clinic_visit_rate_adjust my_clinic_visit_rate_base
    schedule_natural_mortality
    if random-float 1 < infection_seed_proportion [
      if breed = hiv0tb0_ms
      [set breed hiv0tb1_ms]
      if breed = hiv0tb0_fs
      [set breed hiv0tb1_fs]
    ]
    if random-float 1 < tb_seed_proportion
        [develop_disease_process]

    set symptom_scale random-float 1
    if symptom_scale < prop_with_symp_hiv0 * proportion_symp_chronic
      [set chronic 1
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_symp_hiv01)
    ]


    set screening_month (random 12) + 1
  ]
end


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;demog;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

to schedule_natural_mortality
  let time_to_old_age (max_age - age)
  let time_to_background_mort 10000000
  ifelse sex = 0
  [let mort_delay max list 0 (background_mort_starts_m - min_age - age)
    if background_mort_m_monthly > 0 [set time_to_background_mort mort_delay + (- LN (1 - random-float 1) / background_mort_m_monthly)]]
  [let mort_delay max list 0 (background_mort_starts_f - min_age - age)
    if background_mort_f_monthly > 0 [set time_to_background_mort mort_delay + (- LN (1 - random-float 1) / background_mort_f_monthly)]]
  set ticks_at_death (ticks + min list time_to_old_age time_to_background_mort)
  ;if ticks_at_death > 1000 [print (word breed " " time_to_old_age " " time_to_background_mort " " age)]
  if ticks_at_death < 1 [set ticks_at_death 1]
  time:schedule-event self [ [] ->
    dying_process
  ] ticks_at_death
end

to dying_process
  ;if ticks != ticks_at_death and TB_death != 1 [print who]
  if ticks = ticks_at_death or TB_death = 1 [
    create_new_person
    ifelse TB_death = 1 [
      ifelse breed = hiv0tb3_ms or breed = hiv0tb4_ms
      [set tracker_die_tb_hiv0_m (tracker_die_tb_hiv0_m + 1)]
      [ifelse breed = hiv1tb3_ms or breed = hiv1tb4_ms
        [set tracker_die_tb_hiv1_m (tracker_die_tb_hiv1_m + 1)]
        [ifelse breed = hiv2tb3_ms or breed = hiv2tb4_ms
          [set tracker_die_tb_hiv2_m (tracker_die_tb_hiv2_m + 1)]
          [ifelse breed = hiv0tb3_fs or breed = hiv0tb4_fs
            [set tracker_die_tb_hiv0_f (tracker_die_tb_hiv0_f + 1)]
            [ifelse breed = hiv1tb3_fs or breed = hiv1tb4_fs
              [set tracker_die_tb_hiv1_f (tracker_die_tb_hiv1_f + 1)]
              [ifelse breed = hiv2tb3_fs or breed = hiv2tb4_fs
                [set tracker_die_tb_hiv2_f (tracker_die_tb_hiv2_f + 1)]
                [print (word "error dying process " breed)]]]]]]

      if develop_tb_2026 = 1 [
        ifelse breed_at_disease_development = hiv0tb1_ms or breed_at_disease_development = hiv0tb1_fs or
        breed_at_disease_development = hiv0tb4_ms or breed_at_disease_development = hiv0tb4_fs
        [
          set tracker_resolve_pm_2026_hiv0 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv0
          set tracker_dietb_notreat_2026_hiv0 (tracker_dietb_notreat_2026_hiv0 + 1)
        ]
        [ifelse breed_at_disease_development = hiv1tb1_ms or breed_at_disease_development = hiv1tb1_fs or
          breed_at_disease_development = hiv1tb4_ms or breed_at_disease_development = hiv1tb4_fs
          [
            set tracker_resolve_pm_2026_hiv1 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv1
            set tracker_dietb_notreat_2026_hiv1 (tracker_dietb_notreat_2026_hiv1 + 1)
          ]
          [ifelse breed_at_disease_development = hiv2tb1_ms or breed_at_disease_development = hiv2tb1_fs or
            breed_at_disease_development = hiv2tb4_ms or breed_at_disease_development = hiv2tb4_fs
            [
              set tracker_resolve_pm_2026_hiv2 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv2
              set tracker_dietb_notreat_2026_hiv2 (tracker_dietb_notreat_2026_hiv2 + 1)
            ]
            [print breed_at_disease_development]]]
        set develop_tb_2026 0
      ]

      if develop_tb_2026_start_treat = 1 [
        ifelse breed_at_disease_development = hiv0tb1_ms or breed_at_disease_development = hiv0tb1_fs or
        breed_at_disease_development = hiv0tb4_ms or breed_at_disease_development = hiv0tb4_fs
        [
          set tracker_resolve_pm_2026_hiv0 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv0
          set tracker_dietb_ontreat_2026_hiv0 (tracker_dietb_ontreat_2026_hiv0 + 1)
        ]
        [ifelse breed_at_disease_development = hiv1tb1_ms or breed_at_disease_development = hiv1tb1_fs or
          breed_at_disease_development = hiv1tb4_ms or breed_at_disease_development = hiv1tb4_fs
          [
            set tracker_resolve_pm_2026_hiv1 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv1
            set tracker_dietb_ontreat_2026_hiv1 (tracker_dietb_ontreat_2026_hiv1 + 1)
          ]
          [ifelse breed_at_disease_development = hiv2tb1_ms or breed_at_disease_development = hiv2tb1_fs or
            breed_at_disease_development = hiv2tb4_ms or breed_at_disease_development = hiv2tb4_fs
            [
              set tracker_resolve_pm_2026_hiv2 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv2
              set tracker_dietb_ontreat_2026_hiv2 (tracker_dietb_ontreat_2026_hiv2 + 1)
            ]
            [print breed_at_disease_development]]]
      ]

      ifelse breed = hiv0tb3_ms or breed = hiv0tb3_fs
      [set tracker_die_tb_hiv0_notreat (tracker_die_tb_hiv0_notreat + 1)
        set tracker_resolve_pm_hiv0 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv0
      ]
      [ifelse breed = hiv1tb3_ms or breed = hiv1tb3_fs
        [set tracker_die_tb_hiv1_notreat (tracker_die_tb_hiv1_notreat + 1)
          set tracker_resolve_pm_hiv1 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv1
        ]
        [ifelse breed = hiv2tb3_ms or breed = hiv2tb3_fs
          [set tracker_die_tb_hiv2_notreat (tracker_die_tb_hiv2_notreat + 1)
            set tracker_resolve_pm_hiv2 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv2
          ]
          [
            ifelse breed_start_treat = hiv0tb4_ms or breed_start_treat = hiv0tb4_fs
            [set tracker_die_tb_hiv0_ontreat (tracker_die_tb_hiv0_ontreat + 1)]
            [ifelse breed_start_treat = hiv1tb4_ms or breed_start_treat = hiv1tb4_fs
              [set tracker_die_tb_hiv1_ontreat (tracker_die_tb_hiv1_ontreat + 1)]
              [ifelse breed_start_treat = hiv2tb4_ms or breed_start_treat = hiv2tb4_fs
                [set tracker_die_tb_hiv2_ontreat (tracker_die_tb_hiv2_ontreat + 1)]
                [print (word "error dying process 2 " breed)]]]
      ]]]



      ifelse hiv_art_status = 0
      [
        ifelse (ticks - ticks_at_birth) < (29 - 15) * 12
        [set tracker_die_tb_hiv0_age0 (tracker_die_tb_hiv0_age0 + 1)]
        [ifelse (ticks - ticks_at_birth) < (49 - 15) * 12
          [set tracker_die_tb_hiv0_age1 (tracker_die_tb_hiv0_age1 + 1)]
          [set tracker_die_tb_hiv0_age2 (tracker_die_tb_hiv0_age2 + 1)]]
      ]
      [ifelse hiv_art_status = 1
        [
          ifelse (ticks - ticks_at_birth) < (29 - 15) * 12
          [set tracker_die_tb_hiv1_age0 (tracker_die_tb_hiv1_age0 + 1)]
          [ifelse (ticks - ticks_at_birth) < (49 - 15) * 12
            [set tracker_die_tb_hiv1_age1 (tracker_die_tb_hiv1_age1 + 1)]
            [set tracker_die_tb_hiv1_age2 (tracker_die_tb_hiv1_age2 + 1)]]
        ]
        [
          ifelse (ticks - ticks_at_birth) < (29 - 15) * 12
          [set tracker_die_tb_hiv2_age0 (tracker_die_tb_hiv2_age0 + 1)]
          [ifelse (ticks - ticks_at_birth) < (49 - 15) * 12
            [set tracker_die_tb_hiv2_age1 (tracker_die_tb_hiv2_age1 + 1)]
            [set tracker_die_tb_hiv2_age2 (tracker_die_tb_hiv2_age2 + 1)]]
        ]
      ]
    ]
    [
      ;if develop_tb_2026 = 1 [print 1]
      ifelse hiv_death = 1
      [
        ifelse (ticks - ticks_at_birth) < (29 - 15) * 12
        [set tracker_die_hiv_age0 (tracker_die_hiv_age0 + 1)]
        [
          ifelse (ticks - ticks_at_birth) < (49 - 15) * 12
          [set tracker_die_hiv_age1 (tracker_die_hiv_age1 + 1)]
          [set tracker_die_hiv_age2 (tracker_die_hiv_age2 + 1)]
        ]
      ]
      [
        ifelse (ticks - ticks_at_birth) < (29 - 15) * 12
        [set tracker_die_other_age0 (tracker_die_other_age0 + 1)]
        [ifelse (ticks - ticks_at_birth) < (49 - 15) * 12
          [set tracker_die_other_age1 (tracker_die_other_age1 + 1)]
          [set tracker_die_other_age2 (tracker_die_other_age2 + 1)]
        ]
      ]

      if develop_tb_2026 = 1 [
        ifelse breed_at_disease_development = hiv0tb1_ms or breed_at_disease_development = hiv0tb1_fs or
        breed_at_disease_development = hiv0tb4_ms or breed_at_disease_development = hiv0tb4_fs
        [
          set tracker_resolve_pm_2026_hiv0 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv0
          set tracker_dienottb_2026_hiv0 (tracker_dienottb_2026_hiv0 + 1)
        ]
        [ifelse breed_at_disease_development = hiv1tb1_ms or breed_at_disease_development = hiv1tb1_fs or
          breed_at_disease_development = hiv1tb4_ms or breed_at_disease_development = hiv1tb4_fs
          [
            set tracker_resolve_pm_2026_hiv1 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv1
            set tracker_dienottb_2026_hiv1 (tracker_dienottb_2026_hiv1 + 1)
          ]
          [ifelse breed_at_disease_development = hiv2tb1_ms or breed_at_disease_development = hiv2tb1_fs or
            breed_at_disease_development = hiv2tb4_ms or breed_at_disease_development = hiv2tb4_fs
            [
              set tracker_resolve_pm_2026_hiv2 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv2
              set tracker_dienottb_2026_hiv2 (tracker_dienottb_2026_hiv2 + 1)
            ]
            [print breed_at_disease_development]]]
        set develop_tb_2026 0
      ]
    ]
    die
  ]
end


to create_new_person
  hatch-hiv0tb0_ms 1 [
    set age 0
    set TB_death 0
    set hiv_death 0
    set hiv_seed 0
    set ticks_at_birth ticks
    set months_ago_infected_15 100000
    set ticks_at_diagnosis -100
    set ticks_at_falsepos -100
    set ticks_at_last_xpert 0
    set ticks_at_last_xpert_attempt 0
    set eligible_detect_next_visit 0
    set detect_at_next_clinic_visit 0
    set ticks_at_last_selfcure -100
    set no_tb_on_treat 0
    set start_treat_symp 0
    set start_treat_route 0
    set develop_tb_2026 0
    set breed_at_disease_development 0
    set sputum_attempt_2026 0
    set sputum_produced_2026 0
    set ticks_at_last_resolved_tb3 -100
    set my_hiv_inc_change_year1 (hiv_inc_change_year1_start + random-float 1 * (hiv_inc_change_year1_end - hiv_inc_change_year1_start))
    set my_hiv_inc_change_year2 (hiv_inc_change_year2_start + random-float 1 * (hiv_inc_change_year2_end - hiv_inc_change_year2_start))
    ifelse random-float 1 < 0.5
    [
      set sex 0
    ]
    [
      set sex 1
      set breed hiv0tb0_fs
    ]
    ifelse sex = 0
      [set my_clinic_visit_rate_base (clinic_visit_adjust * random-gamma clinic_visit_alpha_m_hiv01 clinic_visit_lambda_m_hiv01)]
    [set my_clinic_visit_rate_base (clinic_visit_adjust * random-gamma clinic_visit_alpha_f_hiv01 clinic_visit_lambda_f_hiv01)]
    set my_clinic_visit_rate_adjust my_clinic_visit_rate_base

    ;if (intervention = 2 or intervention = 3)
    ;[schedule_clinic_visits]

    set hiv_art_status 0
    schedule_hiv_and_mortality
    if random-float 1 < prop_infect_15
    [
      ifelse breed = hiv0tb0_ms
      [set breed hiv0tb1_ms]
      [set breed hiv0tb1_fs]
      set months_ago_infected_15 random (10 * 12)
      set ticks_at_infection (ticks - months_ago_infected_15)
      schedule_develop_disease_15
    ]

    set chronic 0
    set symptom_scale random-float 1
    if symptom_scale < prop_with_symp_hiv0 * proportion_symp_chronic
      [set chronic 1
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_symp_hiv01)
    ]
    set screening_month (random 12) + 1

    if ticks > (clinic_visit_output_year - start_year) * 12
    [
      reset_clinic_visiting
    ]
  ]
end


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;HIV and ART;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

to schedule_hiv_and_mortality

  set time_to_hiv 100000
  set ticks_at_hiv 100000
  set time_to_art 100000
  set ticks_at_art 100000

  ;;natural mortality
  let time_to_max_age (max_age - min_age)
  let time_to_background_mort 100000
  ifelse sex = 0
  [if background_mort_m_monthly > 0 [set time_to_background_mort background_mort_starts_m - min_age + (- LN (1 - random-float 1) / background_mort_m_monthly)]]
  [if background_mort_f_monthly > 0 [set time_to_background_mort background_mort_starts_f - min_age + (- LN (1 - random-float 1) / background_mort_f_monthly)]]
  let ticks_at_mort_non_hiv ticks + min (list time_to_max_age time_to_background_mort)

  ;hiv initial introduction
  time_to_hiv_seed

  ;time creation to hiv
  if hiv_seed = 0 [
    time_to_hiv_early
    if time_to_hiv = 100000
    [time_to_hiv_mid
      if time_to_hiv = 100000
      [time_to_hiv_late]]
  ]

  ;time hiv to art
  if time_to_hiv < 100000 [
    time_to_art_early
    if time_to_art = 100000
    [time_to_art_late]
  ]

  ;time to hiv death
  let ticks_at_hiv_mort 100000
  if ticks_at_hiv < 100000 and HIV1_mortality_rate_monthly > 0 [
    let time_hiv_to_hiv_mort (- LN (1 - random-float 1) / HIV1_mortality_rate_monthly)
    if time_hiv_to_hiv_mort < (ticks_at_art - ticks_at_hiv) [
      set ticks_at_hiv_mort ticks_at_hiv + time_hiv_to_hiv_mort
      set ticks_at_art 100000
    ]
    if ticks_at_art < 100000 and HIV2_mortality_rate_monthly > 0 [
      let time_art_to_art_mort (- LN (1 - random-float 1) / HIV2_mortality_rate_monthly)
      set ticks_at_hiv_mort ticks_at_art + time_art_to_art_mort
    ]
  ]

  ;schedule events
  if ticks_at_hiv < ticks_at_mort_non_hiv [
    time:schedule-event self [ [] ->
      become_hivpos
    ] ticks_at_hiv
  ]

  if ticks_at_art < ticks_at_mort_non_hiv [
    time:schedule-event self [ [] ->
      start_art
    ] ticks_at_art
  ]

  set ticks_at_death min (list ticks_at_mort_non_hiv ticks_at_hiv_mort)
  if min (list ticks_at_mort_non_hiv ticks_at_hiv_mort) = ticks_at_hiv_mort [set hiv_death 1]
  ;if (ticks_at_death - ticks) > 1000 [print (word who " " breed " " ticks_at_mort_non_hiv " " ticks_at_hiv_mort " " age)]
  time:schedule-event self [ [] ->
    dying_process
  ] ticks_at_death
end

to time_to_hiv_seed
  let time_infected_seed 100000
  if (ticks < 12 * hiv_intro_year - 12 * start_year) and (ticks > 12 * hiv_intro_year - (max_age - min_age) - 12 * start_year)
  [
    ifelse sex = 0
    [if random-float 1 < hiv_prev_initial_m
      [set hiv_seed 1
        set ticks_at_hiv (12 * (hiv_intro_year - start_year))]]
    [if random-float 1 < hiv_prev_initial_f
      [set hiv_seed 1
        set ticks_at_hiv (12 * (hiv_intro_year - start_year))]]
  ]
end

to time_to_hiv_early
  let ticks_lb max (list ticks (12 * (hiv_intro_year - start_year)))
  let ticks_ub (12 * (my_hiv_inc_change_year1 - start_year))
  let time_exposed max (list 0 (ticks_ub - ticks_lb))
  if time_exposed > 0
  [
    ifelse sex = 0
    [if hiv_inc_early_m_monthly > 0 [set time_to_hiv (- LN (1 - random-float 1) / hiv_inc_early_m_monthly)]]
    [if hiv_inc_early_f_monthly > 0 [set time_to_hiv (- LN (1 - random-float 1) / hiv_inc_early_f_monthly)]]
    set ticks_at_hiv (ticks_lb + time_to_hiv)
    if time_to_hiv > time_exposed
    [set time_to_hiv 100000
      set ticks_at_hiv 100000]
  ]
end

to time_to_hiv_mid
  let ticks_lb max (list ticks (12 * (my_hiv_inc_change_year1 - start_year)))
  let ticks_ub (12 * (my_hiv_inc_change_year2 - start_year))
  let time_exposed max (list 0 (ticks_ub - ticks_lb))
  if time_exposed > 0
  [
    ifelse sex = 0
    [if hiv_inc_mid_m_monthly > 0 [set time_to_hiv (- LN (1 - random-float 1) / hiv_inc_mid_m_monthly)]]
    [if hiv_inc_mid_f_monthly > 0 [set time_to_hiv (- LN (1 - random-float 1) / hiv_inc_mid_f_monthly)]]
    set ticks_at_hiv (ticks_lb + time_to_hiv)
    if time_to_hiv > time_exposed
    [set time_to_hiv 100000
      set ticks_at_hiv 100000]
  ]
end

to time_to_hiv_late
  let ticks_lb max (list ticks (12 * (my_hiv_inc_change_year2 - start_year)))
  let ticks_ub 12 * end_year
  let time_exposed max (list 0 (ticks_ub - ticks_lb))
  if time_exposed > 0
  [
    ifelse sex = 0
    [if hiv_inc_late_m_monthly > 0 [set time_to_hiv (- LN (1 - random-float 1) / hiv_inc_late_m_monthly)]]
    [if hiv_inc_late_f_monthly > 0 [set time_to_hiv (- LN (1 - random-float 1) / hiv_inc_late_f_monthly)]]
    set ticks_at_hiv (ticks_lb + time_to_hiv)
    if time_to_hiv > time_exposed
    [set time_to_hiv 100000
      set ticks_at_hiv 100000]
  ]
end

to time_to_art_early
  let ticks_lb max (list (ticks_at_hiv) (12 * (art_intro_year - start_year)))
  let ticks_ub min (list (ticks + max_age - min_age) (12 * (ART_start_rate_change_year - start_year)))
  let time_exposed max (list 0 (ticks_ub - ticks_lb))
  set time_to_art 100000
  if time_exposed > 0
  [
    ifelse sex = 0
    [if ART_start_rate_early_m_monthly > 0 [set time_to_art (- LN (1 - random-float 1) / ART_start_rate_early_m_monthly)]]
    [if ART_start_rate_early_f_monthly > 0 [set time_to_art (- LN (1 - random-float 1) / ART_start_rate_early_f_monthly)]]
    set ticks_at_art (ticks_lb + time_to_art)
    if time_to_art > time_exposed
    [set time_to_art 100000
      set ticks_at_art 100000]
  ]
end

to time_to_art_late
  let ticks_lb max (list (ticks_at_hiv) (12 * (ART_start_rate_change_year - start_year)))
  let ticks_ub min (list (ticks + max_age - min_age) (12 * (end_year - start_year)))
  let time_exposed max (list 0 (ticks_ub - ticks_lb))
  set time_to_art 100000
  if time_exposed > 0
  [
    ifelse sex = 0
    [if ART_start_rate_late_m_monthly > 0 [set time_to_art (- LN (1 - random-float 1) / ART_start_rate_late_m_monthly)]]
    [if ART_start_rate_late_f_monthly > 0 [set time_to_art (- LN (1 - random-float 1) / ART_start_rate_late_f_monthly)]]
    set ticks_at_art (ticks_lb + time_to_art)
    if time_to_art > time_exposed
    [set time_to_art 100000
      set ticks_at_art 100000]
  ]
end

to become_hivpos
  ifelse breed = hiv0tb0_ms
  [set breed hiv1tb0_ms]
  [ifelse breed = hiv0tb0_fs
    [set breed hiv1tb0_fs]
    [
      ifelse breed = hiv0tb1_ms
      [set breed hiv1tb1_ms]
      [ifelse breed = hiv0tb1_fs
        [set breed hiv1tb1_fs]
        [
          ifelse breed = hiv0tb2_ms
          [set breed hiv1tb2_ms
            disease_transition]
          [ifelse breed = hiv0tb2_fs
            [set breed hiv1tb2_fs
              disease_transition]
            [
              ifelse breed = hiv0tb3_ms
              [set breed hiv1tb3_ms
                disease_transition]
              [ifelse breed = hiv0tb3_fs
                [set breed hiv1tb3_fs
                  disease_transition]
                [
                  ifelse breed = hiv0tb4_ms
                  [set breed hiv1tb4_ms]
                  [ifelse breed = hiv0tb4_fs
                    [set breed hiv1tb4_fs]
                    [print "error become_hivpos"]]]]]]]]]]

  set hiv_art_status 1
  set chronic 0
  if symptom_scale < prop_with_symp_hiv1 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv)
  [
    set chronic 1
  ]
end

to start_art
  if ticks = ticks_at_art [
    ifelse breed = hiv1tb0_ms
    [set breed hiv2tb0_ms]
    [ifelse breed = hiv1tb0_fs
      [set breed hiv2tb0_fs]
      [
        ifelse breed = hiv1tb1_ms
        [set breed hiv2tb1_ms]
        [ifelse breed = hiv1tb1_fs
          [set breed hiv2tb1_fs]
          [
            ifelse breed = hiv1tb2_ms
            [set breed hiv2tb2_ms]
            [ifelse breed = hiv1tb2_fs
              [set breed hiv2tb2_fs]
              [
                ifelse breed = hiv1tb3_ms
                [set breed hiv2tb3_ms]
                [ifelse breed = hiv1tb3_fs
                  [set breed hiv2tb3_fs]
                  [
                    ifelse breed = hiv1tb4_ms
                    [set breed hiv2tb4_ms]
                    [ifelse breed = hiv1tb4_fs
                      [set breed hiv2tb4_fs]
                      [print (word "error start ART " breed)]]]]]]]]]]
    set tracker_start_art (tracker_start_art + 1)
    set hiv_art_status 2
    set chronic 0
    if symptom_scale < prop_with_symp_hiv2 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv)
    [
      set chronic 1
    ]

    ifelse sex = 0
    [set my_clinic_visit_rate_base clinic_visit_adjust * random-gamma clinic_visit_alpha_m_hiv2 clinic_visit_lambda_m_hiv2]
    [set my_clinic_visit_rate_base clinic_visit_adjust * random-gamma clinic_visit_alpha_f_hiv2 clinic_visit_lambda_f_hiv2]

    if chronic = 1
    [set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_symp_hiv2)]

    if breed = hiv2tb2_ms or breed = hiv2tb2_fs [
      ifelse chronic = 1
      [set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv2 * clinic_other_symp_hiv2)]
      [set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv2)]
    ]

    if breed = hiv2tb3_ms or breed = hiv2tb3_fs
    [set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv2 * clinic_other_symp_hiv2)]

    set ticks_at_last_xpert (ticks - 12)
    set ticks_at_last_xpert_attempt (ticks - 12)
    set correct_ticks_at_disease_transition ticks

    ifelse breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs
    [set correct_ticks_at_disease_transition ticks
      clinic_visit_background]
    [if (clinic_visit_output_year - start_year) * 12 < ticks
      [reset_clinic_visiting]
    ]
  ]
end


to recalculate_hiv_mort
  set age (ticks - ticks_at_birth)
  let time_to_old_age (max_age - min_age - age)

  let time_to_background_mort 100000
  ifelse sex = 0
  [let mort_delay max list 0 (background_mort_starts_m - min_age - age)
    if background_mort_m_monthly > 0 [set time_to_background_mort mort_delay + (- LN (1 - random-float 1) / background_mort_m_monthly)]]
  [let mort_delay max list 0 (background_mort_starts_f - min_age - age)
    if background_mort_f_monthly > 0 [set time_to_background_mort mort_delay + (- LN (1 - random-float 1) / background_mort_f_monthly)]]
  let time_art_to_art_mort 100000
  if HIV2_mortality_rate_monthly > 0
  [set time_art_to_art_mort (- LN (1 - random-float 1) / HIV2_mortality_rate_monthly)]
  set ticks_at_death (ticks + min (list time_to_old_age time_to_background_mort time_art_to_art_mort))

  ifelse min (list time_to_old_age time_to_background_mort time_art_to_art_mort) = time_art_to_art_mort
  [set hiv_death 1]
  [set hiv_death 0]


  time:schedule-event self [ [] ->
    dying_process
  ] ticks_at_death
end


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;infect;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

to update_my_hh_risk_list
  ask (turtle-set
    hiv0tb2_ms hiv0tb2_fs) [
    ifelse chronic = 0
    [set my_hh_risk_list fput (1 - (1 - baseline_infection_rate / count turtles * 10000 * reduced_transmission_sub) ^ (infectiousness * hh_trans_rate_multiplier)) my_hh_risk_list]
    [set my_hh_risk_list fput (1 - (1 - baseline_infection_rate / count turtles * 10000 * reduced_transmission_chronic) ^ (infectiousness * hh_trans_rate_multiplier)) my_hh_risk_list]
    set my_hh_risk_list remove-item (12 * 15 - 1) my_hh_risk_list
  ]
  ask (turtle-set
    hiv0tb3_ms hiv0tb3_fs) [
    set my_hh_risk_list fput (1 - (1 - baseline_infection_rate / count turtles * 10000) ^ (infectiousness * hh_trans_rate_multiplier)) my_hh_risk_list
    set my_hh_risk_list remove-item (12 * 15 - 1) my_hh_risk_list
  ]

  ask (turtle-set
    hiv1tb2_ms hiv1tb2_fs) [
    ifelse chronic = 0
    [set my_hh_risk_list fput (1 - (1 - baseline_infection_rate / count turtles * 10000 * reduced_transmission_sub  * reduced_transmission_hiv1) ^ (infectiousness * hh_trans_rate_multiplier)) my_hh_risk_list]
    [set my_hh_risk_list fput (1 - (1 - baseline_infection_rate / count turtles * 10000 * reduced_transmission_chronic  * reduced_transmission_hiv1) ^ (infectiousness * hh_trans_rate_multiplier)) my_hh_risk_list]
    set my_hh_risk_list remove-item (12 * 15 - 1) my_hh_risk_list
  ]
  ask (turtle-set
    hiv1tb3_ms hiv1tb3_fs) [
    set my_hh_risk_list fput (1 - (1 - baseline_infection_rate / count turtles * 10000  * reduced_transmission_hiv1) ^ (infectiousness * hh_trans_rate_multiplier)) my_hh_risk_list
    set my_hh_risk_list remove-item (12 * 15 - 1) my_hh_risk_list
  ]

  ask (turtle-set
    hiv2tb2_ms hiv2tb2_fs) [
    ifelse chronic = 0
    [set my_hh_risk_list fput (1 - (1 - baseline_infection_rate / count turtles * 10000 * reduced_transmission_sub * reduced_transmission_hiv2) ^ (infectiousness * hh_trans_rate_multiplier)) my_hh_risk_list]
    [set my_hh_risk_list fput (1 - (1 - baseline_infection_rate / count turtles * 10000 * reduced_transmission_chronic * reduced_transmission_hiv2) ^ (infectiousness * hh_trans_rate_multiplier)) my_hh_risk_list]
    set my_hh_risk_list remove-item (12 * 15 - 1) my_hh_risk_list
  ]
  ask (turtle-set
    hiv2tb3_ms hiv2tb3_fs) [
    set my_hh_risk_list fput (1 - (1 - baseline_infection_rate / count turtles * 10000 * reduced_transmission_hiv2) ^ (infectiousness * hh_trans_rate_multiplier)) my_hh_risk_list
    set my_hh_risk_list remove-item (12 * 15 - 1) my_hh_risk_list
  ]
end


to tb_infect
  let infection_rate 0
  if count turtles > 0
  [set infection_rate (baseline_infection_rate / count turtles * 10000)]

  let infection_risk
  (1 -
    (1 - infection_rate) ^ (count hiv0tb3_ms + count hiv0tb3_fs) *
    (1 - infection_rate * reduced_transmission_sub) ^ (count hiv0tb2_ms with [chronic = 0] + count hiv0tb2_fs with [chronic = 0]) *
    (1 - infection_rate * reduced_transmission_chronic) ^ (count hiv0tb2_ms with [chronic = 1] + count hiv0tb2_fs with [chronic = 1]) *

    (1 - infection_rate * reduced_transmission_hiv1) ^ (count hiv1tb3_ms + count hiv1tb3_fs) *
    (1 - infection_rate * reduced_transmission_sub * reduced_transmission_hiv1) ^ (count hiv1tb2_ms with [chronic = 0] + count hiv1tb2_fs with [chronic = 0]) *
    (1 - infection_rate * reduced_transmission_chronic * reduced_transmission_hiv1) ^ (count hiv1tb2_ms with [chronic = 1] + count hiv1tb2_fs with [chronic = 1]) *

    (1 - infection_rate * reduced_transmission_hiv2) ^ (count hiv2tb3_ms + count hiv2tb3_fs) *
    (1 - infection_rate * reduced_transmission_sub * reduced_transmission_hiv2) ^ (count hiv2tb2_ms with [chronic = 0] + count hiv2tb2_fs with [chronic = 0]) *
    (1 - infection_rate * reduced_transmission_chronic * reduced_transmission_hiv2) ^ (count hiv2tb2_ms with [chronic = 1] + count hiv2tb2_fs with [chronic = 1])
  )

  set background_risk_list fput infection_risk background_risk_list
  set background_risk_list remove-item (15 * 12 - 1) background_risk_list

  let reinfection_risk_hiv0
  (1 -
    (1 - infection_rate * reinfection_relative_risk_HIV0) ^ (count hiv0tb3_ms + count hiv0tb3_fs) *
    (1 - infection_rate * reinfection_relative_risk_HIV0 * reduced_transmission_sub) ^ (count hiv0tb2_ms with [chronic = 0] + count hiv0tb2_fs with [chronic = 0]) *
    (1 - infection_rate * reinfection_relative_risk_HIV0 * reduced_transmission_chronic) ^ (count hiv0tb2_ms with [chronic = 1] + count hiv0tb2_fs with [chronic = 1]) *

    (1 - infection_rate * reinfection_relative_risk_HIV0 * reduced_transmission_hiv1) ^ (count hiv1tb3_ms + count hiv1tb3_fs) *
    (1 - infection_rate * reinfection_relative_risk_HIV0 * reduced_transmission_sub * reduced_transmission_hiv1) ^ (count hiv1tb2_ms with [chronic = 0] + count hiv1tb2_fs with [chronic = 0]) *
    (1 - infection_rate * reinfection_relative_risk_HIV0 * reduced_transmission_chronic * reduced_transmission_hiv1) ^ (count hiv1tb2_ms with [chronic = 1] + count hiv1tb2_fs with [chronic = 1]) *

    (1 - infection_rate * reinfection_relative_risk_HIV0 * reduced_transmission_hiv2) ^ (count hiv2tb3_ms + count hiv2tb3_fs) *
    (1 - infection_rate * reinfection_relative_risk_HIV0 * reduced_transmission_sub * reduced_transmission_hiv2) ^ (count hiv2tb2_ms with [chronic = 0] + count hiv2tb2_fs with [chronic = 0]) *
    (1 - infection_rate * reinfection_relative_risk_HIV0 * reduced_transmission_chronic * reduced_transmission_hiv2) ^ (count hiv2tb2_ms with [chronic = 1] + count hiv2tb2_fs with [chronic = 1])
  )

  let reinfection_risk_hiv1
  (1 -
    (1 - infection_rate * reinfection_relative_risk_HIV1) ^ (count hiv0tb3_ms + count hiv0tb3_fs) *
    (1 - infection_rate * reinfection_relative_risk_HIV1 * reduced_transmission_sub) ^ (count hiv0tb2_ms with [chronic = 0] + count hiv0tb2_fs with [chronic = 0]) *
    (1 - infection_rate * reinfection_relative_risk_HIV1 * reduced_transmission_chronic) ^ (count hiv0tb2_ms with [chronic = 1] + count hiv0tb2_fs with [chronic = 1]) *

    (1 - infection_rate * reinfection_relative_risk_HIV1 * reduced_transmission_hiv1) ^ (count hiv1tb3_ms + count hiv1tb3_fs) *
    (1 - infection_rate * reinfection_relative_risk_HIV1 * reduced_transmission_sub * reduced_transmission_hiv1) ^ (count hiv1tb2_ms with [chronic = 0] + count hiv1tb2_fs with [chronic = 0]) *
    (1 - infection_rate * reinfection_relative_risk_HIV1 * reduced_transmission_chronic * reduced_transmission_hiv1) ^ (count hiv1tb2_ms with [chronic = 1] + count hiv1tb2_fs with [chronic = 1]) *

    (1 - infection_rate * reinfection_relative_risk_HIV1 * reduced_transmission_hiv2) ^ (count hiv2tb3_ms + count hiv2tb3_fs) *
    (1 - infection_rate * reinfection_relative_risk_HIV1 * reduced_transmission_sub * reduced_transmission_hiv2) ^ (count hiv2tb2_ms with [chronic = 0] + count hiv2tb2_fs with [chronic = 0]) *
    (1 - infection_rate * reinfection_relative_risk_HIV1 * reduced_transmission_chronic * reduced_transmission_hiv2) ^ (count hiv2tb2_ms with [chronic = 1] + count hiv2tb2_fs with [chronic = 1])
  )

  let reinfection_risk_hiv2
  (1 -
    (1 - infection_rate * reinfection_relative_risk_HIV2) ^ (count hiv0tb3_ms + count hiv0tb3_fs) *
    (1 - infection_rate * reinfection_relative_risk_HIV2 * reduced_transmission_sub) ^ (count hiv0tb2_ms with [chronic = 0] + count hiv0tb2_fs with [chronic = 0]) *
    (1 - infection_rate * reinfection_relative_risk_HIV2 * reduced_transmission_chronic) ^ (count hiv0tb2_ms with [chronic = 1] + count hiv0tb2_fs with [chronic = 1]) *

    (1 - infection_rate * reinfection_relative_risk_HIV2 * reduced_transmission_hiv1) ^ (count hiv1tb3_ms + count hiv1tb3_fs) *
    (1 - infection_rate * reinfection_relative_risk_HIV2 * reduced_transmission_sub * reduced_transmission_hiv1) ^ (count hiv1tb2_ms with [chronic = 0] + count hiv1tb2_fs with [chronic = 0]) *
    (1 - infection_rate * reinfection_relative_risk_HIV2 * reduced_transmission_chronic * reduced_transmission_hiv1) ^ (count hiv1tb2_ms with [chronic = 1] + count hiv1tb2_fs with [chronic = 1]) *

    (1 - infection_rate * reinfection_relative_risk_HIV2 * reduced_transmission_hiv2) ^ (count hiv2tb3_ms + count hiv2tb3_fs) *
    (1 - infection_rate * reinfection_relative_risk_HIV2 * reduced_transmission_sub * reduced_transmission_hiv2) ^ (count hiv2tb2_ms with [chronic = 0] + count hiv2tb2_fs with [chronic = 0]) *
    (1 - infection_rate * reinfection_relative_risk_HIV2 * reduced_transmission_chronic * reduced_transmission_hiv2) ^ (count hiv2tb2_ms with [chronic = 1] + count hiv2tb2_fs with [chronic = 1])
  )

  let num_to_infect_hiv0tb0_ms random-binomial (count hiv0tb0_ms) infection_risk
  let num_to_infect_hiv0tb0_fs random-binomial (count hiv0tb0_fs) infection_risk
  let num_to_infect_hiv1tb0_ms random-binomial (count hiv1tb0_ms) infection_risk
  let num_to_infect_hiv1tb0_fs random-binomial (count hiv1tb0_fs) infection_risk
  let num_to_infect_hiv2tb0_ms random-binomial (count hiv2tb0_ms) infection_risk
  let num_to_infect_hiv2tb0_fs random-binomial (count hiv2tb0_fs) infection_risk
  let num_to_infect_hiv0tb1_ms random-binomial (count hiv0tb1_ms) reinfection_risk_hiv0
  let num_to_infect_hiv0tb1_fs random-binomial (count hiv0tb1_fs) reinfection_risk_hiv0
  let num_to_infect_hiv1tb1_ms random-binomial (count hiv1tb1_ms) reinfection_risk_hiv1
  let num_to_infect_hiv1tb1_fs random-binomial (count hiv1tb1_fs) reinfection_risk_hiv1
  let num_to_infect_hiv2tb1_ms random-binomial (count hiv2tb1_ms) reinfection_risk_hiv2
  let num_to_infect_hiv2tb1_fs random-binomial (count hiv2tb1_fs) reinfection_risk_hiv2

  ask n-of num_to_infect_hiv0tb1_ms hiv0tb1_ms [get_infected]
  ask n-of num_to_infect_hiv0tb1_fs hiv0tb1_fs [get_infected]
  ask n-of num_to_infect_hiv1tb1_ms hiv1tb1_ms [get_infected]
  ask n-of num_to_infect_hiv1tb1_fs hiv1tb1_fs [get_infected]
  ask n-of num_to_infect_hiv2tb1_ms hiv2tb1_ms [get_infected]
  ask n-of num_to_infect_hiv2tb1_fs hiv2tb1_fs [get_infected]
  ask n-of num_to_infect_hiv0tb0_ms hiv0tb0_ms [get_infected]
  ask n-of num_to_infect_hiv0tb0_fs hiv0tb0_fs [get_infected]
  ask n-of num_to_infect_hiv1tb0_ms hiv1tb0_ms [get_infected]
  ask n-of num_to_infect_hiv1tb0_fs hiv1tb0_fs [get_infected]
  ask n-of num_to_infect_hiv2tb0_ms hiv2tb0_ms [get_infected]
  ask n-of num_to_infect_hiv2tb0_fs hiv2tb0_fs [get_infected]
end

to get_infected
  if no_tb_on_treat = 0 [
    ifelse breed = hiv0tb0_ms or breed = hiv0tb1_ms or breed = hiv0tb4_ms
    [
      set breed hiv0tb1_ms]
    [ifelse breed = hiv0tb0_fs or breed = hiv0tb1_fs or breed = hiv0tb4_fs
      [
        set breed hiv0tb1_fs]
      [
        ifelse breed = hiv1tb0_ms or breed = hiv1tb1_ms or breed = hiv1tb4_ms
        [
          set breed hiv1tb1_ms]
        [ifelse breed = hiv1tb0_fs or breed = hiv1tb1_fs or breed = hiv1tb4_fs
          [
            set breed hiv1tb1_fs]
          [
            ifelse breed = hiv2tb0_ms or breed = hiv2tb1_ms or breed = hiv2tb4_ms
            [
              set breed hiv2tb1_ms]
            [ifelse breed = hiv2tb0_fs or breed = hiv2tb1_fs or breed = hiv2tb4_fs
              [
                set breed hiv2tb1_fs]
              [print "error get infected"]]]]]]

    set ticks_at_infection ticks
    schedule_develop_disease
  ]
end

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;disease progression;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

to schedule_develop_disease
  set gap_tbinfection_hiv_risk max (list (ticks_at_hiv - ticks) 0) + ticks - ticks_at_infection
  set gap_tbinfection_art_risk max (list (ticks_at_art - ticks) 0) + ticks - ticks_at_infection
  set gap_tbinfection_hiv_schedule max (list (ticks_at_hiv - ticks) 0)
  set gap_tbinfection_art_schedule max (list (ticks_at_art - ticks) 0)

  ifelse breed = hiv0tb1_ms or breed = hiv0tb1_fs
  [calculate_time_to_disease_HIV0
    ifelse correct_ticks_at_disease_development < ticks_at_hiv
    [schedule_develop_disease2]
    [calculate_time_to_disease_HIV1
      ifelse correct_ticks_at_disease_development < ticks_at_art
      [schedule_develop_disease2]
      [calculate_time_to_disease_HIV2
        schedule_develop_disease2]
    ]
  ]
  [
    ifelse breed = hiv1tb1_ms or breed = hiv1tb1_fs
    [calculate_time_to_disease_HIV1
      ifelse correct_ticks_at_disease_development < ticks_at_art
      [schedule_develop_disease2]
      [calculate_time_to_disease_HIV2
        schedule_develop_disease2]]

    [ifelse breed = hiv2tb1_ms or breed = hiv2tb1_fs
      [calculate_time_to_disease_HIV2
        schedule_develop_disease2]
      [print "error_develop_disease"]
    ]
  ]
end

to schedule_develop_disease2
  if correct_ticks_at_disease_development < ticks_at_death [
    time:schedule-event self [ [] ->
      develop_disease_process
    ] correct_ticks_at_disease_development
  ]
end

to calculate_time_to_disease_HIV0
  let rate_multiplier_sex 1
  let rate_multiplier 1
  ifelse sex = 0
  [set rate_multiplier_sex 1 / (prop_male + (1 - prop_male) / increased_TB_development_male)]
  [set rate_multiplier_sex 1 / (prop_male * increased_TB_development_male + 1 - prop_male)]
  ifelse chronic = 1
  [set rate_multiplier rate_multiplier_sex / ((prop_with_symp_hiv0 * proportion_symp_chronic) + (1 - (prop_with_symp_hiv0 * proportion_symp_chronic)) / increased_TB_development_chronic)]
  [set rate_multiplier rate_multiplier_sex / ((prop_with_symp_hiv0 * proportion_symp_chronic) * increased_TB_development_chronic + 1 - (prop_with_symp_hiv0 * proportion_symp_chronic))]
  let time (- LN (1 - random-float 1) / (develop_tb_y1_rate_HIV0_monthly * rate_multiplier))
  ifelse time < (12 - ticks + ticks_at_infection)
  [
    set correct_ticks_at_disease_development (time + ticks)
  ]
  [
    set time (- LN (1 - random-float 1) / (develop_tb_y2_rate_HIV0_monthly * rate_multiplier))
    ifelse time < 12 and time < (24 - ticks + ticks_at_infection)
    [
      let adjust 0
      if((ticks - ticks_at_infection) < 12)
      [set adjust 12 - (ticks - ticks_at_infection)]
      set correct_ticks_at_disease_development (time + ticks + adjust)
    ]
    [
      set time (- LN (1 - random-float 1) / (develop_tb_y3_rate_HIV0_monthly * rate_multiplier))
      ifelse time < 12 and time < (36 - ticks + ticks_at_infection)
      [
        let adjust 0
        if((ticks - ticks_at_infection) < 24)
        [set adjust 24 - (ticks - ticks_at_infection)]
        set correct_ticks_at_disease_development (time + ticks + adjust)
      ]
      [
        set time (- LN (1 - random-float 1) / (develop_tb_y4_rate_HIV0_monthly * rate_multiplier))
        ifelse time < 12 and time < (48 - ticks + ticks_at_infection)
        [
          let adjust 0
          if((ticks - ticks_at_infection) < 36)
          [set adjust 36 - (ticks - ticks_at_infection)]
          set correct_ticks_at_disease_development (time + ticks + adjust)
        ]
        [
          set time (- LN (1 - random-float 1) / (develop_tb_y5_rate_HIV0_monthly * rate_multiplier))
          ifelse time < 12 and time < (60 - ticks + ticks_at_infection)
          [
            let adjust 0
            if((ticks - ticks_at_infection) < 48)
            [set adjust 48 - (ticks - ticks_at_infection)]
            set correct_ticks_at_disease_development (time + ticks + adjust)
          ]
          [
            set time (- LN (1 - random-float 1) / (develop_tb_reactivation_rate_HIV0_monthly * rate_multiplier))
            let adjust 0
            if((ticks - ticks_at_infection) < 60)
            [set adjust 60 - (ticks - ticks_at_infection)]
            set correct_ticks_at_disease_development (time + ticks + adjust)
          ]
        ]
      ]
    ]
  ]
end


to calculate_time_to_disease_HIV1
  let rate_multiplier_sex 1
  let rate_multiplier 1
  ifelse sex = 0
  [set rate_multiplier_sex 1 / (prop_male + (1 - prop_male) / increased_TB_development_male)]
  [set rate_multiplier_sex 1 / (prop_male * increased_TB_development_male + 1 - prop_male)]
  ifelse chronic = 1
  [set rate_multiplier rate_multiplier_sex / ((prop_with_symp_hiv1 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv)) + (1 - (prop_with_symp_hiv1 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv))) / increased_TB_development_chronic)]
  [set rate_multiplier rate_multiplier_sex / ((prop_with_symp_hiv1 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv)) * increased_TB_development_chronic + 1 - (prop_with_symp_hiv1 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv)))]
  let time (- LN (1 - random-float 1) / (develop_tb_y1_rate_HIV1_monthly * rate_multiplier))
  ifelse time < (12 - gap_tbinfection_hiv_risk)
  [
    set correct_ticks_at_disease_development (time + ticks + gap_tbinfection_hiv_schedule)
  ]
  [
    set time (- LN (1 - random-float 1) / (develop_tb_y2_rate_HIV1_monthly * rate_multiplier))
    ifelse time < 12 and time < (24 - gap_tbinfection_hiv_risk)
    [
      let adjust 0
      if (gap_tbinfection_hiv_risk < 12)
      [set adjust 12 - gap_tbinfection_hiv_risk]
      set correct_ticks_at_disease_development (time + ticks + adjust + gap_tbinfection_hiv_schedule)
    ]
    [
      set time (- LN (1 - random-float 1) / (develop_tb_y3_rate_HIV1_monthly * rate_multiplier))
      ifelse time < 12 and time < (36 - gap_tbinfection_hiv_risk)
      [
        let adjust 0
        if (gap_tbinfection_hiv_risk < 24)
        [set adjust 24 - gap_tbinfection_hiv_risk]
        set correct_ticks_at_disease_development (time + ticks + adjust + gap_tbinfection_hiv_schedule)
      ]
      [
        set time (- LN (1 - random-float 1) / (develop_tb_y4_rate_HIV1_monthly * rate_multiplier))
        ifelse time < 12 and time < (48 - gap_tbinfection_hiv_risk)
        [
          let adjust 0
          if (gap_tbinfection_hiv_risk < 36)
          [set adjust 36 - gap_tbinfection_hiv_risk]
          set correct_ticks_at_disease_development (time + ticks + adjust + gap_tbinfection_hiv_schedule)
        ]
        [
          set time (- LN (1 - random-float 1) / (develop_tb_y5_rate_HIV1_monthly * rate_multiplier))
          ifelse time < 12 and time < (60 - gap_tbinfection_hiv_risk)
          [
            let adjust 0
            if (gap_tbinfection_hiv_risk < 48)
            [set adjust 48 - gap_tbinfection_hiv_risk]
            set correct_ticks_at_disease_development (time + ticks + adjust + gap_tbinfection_hiv_schedule)
          ]
          [
            set time (- LN (1 - random-float 1) / (develop_tb_reactivation_rate_HIV1_monthly * rate_multiplier))
            let adjust 0
            if(gap_tbinfection_hiv_risk < 60)
            [set adjust 60 - gap_tbinfection_hiv_risk]
            set correct_ticks_at_disease_development (time + ticks + adjust + gap_tbinfection_hiv_schedule)
          ]
        ]
      ]
    ]
  ]
end

to calculate_time_to_disease_HIV2
  let rate_multiplier_sex 1
  let rate_multiplier 1
  ifelse sex = 0
  [set rate_multiplier_sex 1 / (prop_male + (1 - prop_male) / increased_TB_development_male)]
  [set rate_multiplier_sex 1 / (prop_male * increased_TB_development_male + 1 - prop_male)]
  ifelse chronic = 1
  [set rate_multiplier rate_multiplier_sex / ((prop_with_symp_hiv2 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv)) + (1 - (prop_with_symp_hiv2 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv))) / increased_TB_development_chronic)]
  [set rate_multiplier rate_multiplier_sex / ((prop_with_symp_hiv2 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv)) * increased_TB_development_chronic + 1 - (prop_with_symp_hiv2 * (proportion_symp_chronic + abs_increased_prop_symp_chronic_hiv)))]
  let time (- LN (1 - random-float 1) / (develop_tb_y1_rate_HIV2_monthly * rate_multiplier))
  ifelse time < (12 - gap_tbinfection_art_risk)
  [
    set correct_ticks_at_disease_development (time + ticks + gap_tbinfection_art_schedule)
  ]
  [
    set time (- LN (1 - random-float 1) / (develop_tb_y2_rate_HIV2_monthly * rate_multiplier))
    ifelse time < 12 and time < (24 - gap_tbinfection_art_risk)
    [
      let adjust 0
      if (gap_tbinfection_art_risk < 12)
      [set adjust 12 - gap_tbinfection_art_risk]
      set correct_ticks_at_disease_development (time + ticks + adjust + gap_tbinfection_art_schedule)
    ]
    [
      set time (- LN (1 - random-float 1) / (develop_tb_y3_rate_HIV2_monthly * rate_multiplier))
      ifelse time < 12 and time < (36 - gap_tbinfection_art_risk)
      [
        let adjust 0
        if (gap_tbinfection_art_risk < 24)
        [set adjust 24 - gap_tbinfection_art_risk]
        set correct_ticks_at_disease_development (time + ticks + adjust + gap_tbinfection_art_schedule)
      ]
      [
        set time (- LN (1 - random-float 1) / (develop_tb_y4_rate_HIV2_monthly * rate_multiplier))
        ifelse time < 12 and time < (48 - gap_tbinfection_art_risk)
        [
          let adjust 0
          if (gap_tbinfection_art_risk < 36)
          [set adjust 36 - gap_tbinfection_art_risk]
          set correct_ticks_at_disease_development (time + ticks + adjust + gap_tbinfection_art_schedule)
        ]
        [
          set time (- LN (1 - random-float 1) / (develop_tb_y5_rate_HIV2_monthly * rate_multiplier))
          ifelse time < 12 and time < (60 - gap_tbinfection_art_risk)
          [
            let adjust 0
            if (gap_tbinfection_art_risk < 48)
            [set adjust 48 - gap_tbinfection_art_risk]
            set correct_ticks_at_disease_development (time + ticks + adjust + gap_tbinfection_art_schedule)
          ]
          [
            set time (- LN (1 - random-float 1) / (develop_tb_reactivation_rate_HIV2_monthly * rate_multiplier))
            let adjust 0
            if(gap_tbinfection_art_risk < 60)
            [set adjust 60 - gap_tbinfection_art_risk]
            set correct_ticks_at_disease_development (time + ticks + adjust + gap_tbinfection_art_schedule)
          ]
        ]
      ]
    ]
  ]
end

to schedule_develop_disease_15
  let rate_multiplier_sex 1
  let rate_multiplier 1
  ifelse sex = 0
  [set rate_multiplier_sex 1 / (prop_male + (1 - prop_male) / increased_TB_development_male)]
  [set rate_multiplier_sex 1 / (prop_male * increased_TB_development_male + 1 - prop_male)]
  ifelse chronic = 1
  [set rate_multiplier rate_multiplier_sex / ((prop_with_symp_hiv0 * proportion_symp_chronic) + (1 - (prop_with_symp_hiv0 * proportion_symp_chronic)) / increased_TB_development_chronic)]
  [set rate_multiplier rate_multiplier_sex / ((prop_with_symp_hiv0 * proportion_symp_chronic) * increased_TB_development_chronic + 1 - (prop_with_symp_hiv0 * proportion_symp_chronic))]
  let time (- LN (1 - random-float 1) / (develop_tb_y1_rate_HIV0_monthly))
  ifelse time < (12 - ticks + ticks_at_infection) and time < (12 - months_ago_infected_15)
  [
    set correct_ticks_at_disease_development (time + ticks)
  ]
  [
    set time (- LN (1 - random-float 1) / (develop_tb_y2_rate_HIV0_monthly * rate_multiplier))
    ifelse time < 12 and time < (24 - months_ago_infected_15)
    [
      let adjust 0
      if (months_ago_infected_15 < 12)
      [set adjust 12 - months_ago_infected_15]
      set correct_ticks_at_disease_development (time + ticks + adjust)
    ]
    [
      set time (- LN (1 - random-float 1) / (develop_tb_y3_rate_HIV0_monthly * rate_multiplier))
      ifelse time < 12 and time < (36 - months_ago_infected_15)
      [
        let adjust 0
        if (months_ago_infected_15 < 24)
        [set adjust 24 - months_ago_infected_15]
        set correct_ticks_at_disease_development (time + ticks + adjust)
      ]
      [
        set time (- LN (1 - random-float 1) / (develop_tb_y4_rate_HIV0_monthly * rate_multiplier))
        ifelse time < 1 and time < (48 - months_ago_infected_15)
        [
          let adjust 0
          if (months_ago_infected_15 < 36)
          [set adjust 36 - months_ago_infected_15]
          set correct_ticks_at_disease_development (time + ticks + adjust)
        ]
        [
          set time (- LN (1 - random-float 1) / (develop_tb_y5_rate_HIV0_monthly * rate_multiplier))
          ifelse time < 12 and time < (60 - months_ago_infected_15)
          [
            let adjust 0
            if (months_ago_infected_15 < 48)
            [set adjust 48 - months_ago_infected_15]
            set correct_ticks_at_disease_development (time + ticks + adjust)
          ]
          [
            set time (- LN (1 - random-float 1) / (develop_tb_reactivation_rate_HIV0_monthly * rate_multiplier))
            let adjust 0
            if (months_ago_infected_15 < 60)
            [set adjust 60 - months_ago_infected_15]
            set correct_ticks_at_disease_development (time + ticks + adjust)
          ]
        ]
      ]
    ]
  ]
  schedule_develop_disease2
end


to develop_disease_process_treatment_dropout
  if ticks = correct_ticks_at_disease_development
  [
    ;ifelse year = 2026 and (ticks > ticks_at_last_selfcure + 12)
    ;[set develop_tb_2026 1]
    ;[set develop_tb_2026 0]

    set correct_ticks_at_disease_development 1000000
    set ticks_at_disease_development ticks
    ifelse breed = hiv0tb1_ms or breed = hiv0tb2_ms or breed = hiv0tb3_ms or breed = hiv0tb4_ms or (breed = hiv0tb0_ms and ticks = 0)
      [set breed hiv0tb2_ms]
    [ifelse breed = hiv0tb1_fs or breed = hiv0tb2_fs or breed = hiv0tb3_fs or breed = hiv0tb4_fs or (breed = hiv0tb0_fs and ticks = 0)
      [set breed hiv0tb2_fs]
      [ifelse breed = hiv1tb1_ms or breed = hiv1tb2_ms or breed = hiv1tb3_ms or breed = hiv1tb4_ms or (breed = hiv1tb0_ms and ticks = 0)
        [set breed hiv1tb2_ms]
        [ifelse breed = hiv1tb1_fs or breed = hiv1tb2_fs or breed = hiv1tb3_fs or breed = hiv1tb4_fs or (breed = hiv1tb0_fs and ticks = 0)
          [set breed hiv1tb2_fs]
          [ifelse breed = hiv2tb1_ms or breed = hiv2tb2_ms or breed = hiv2tb3_ms or breed = hiv2tb4_ms or (breed = hiv2tb0_ms and ticks = 0)
            [set breed hiv2tb2_ms]
            [ifelse breed = hiv2tb1_fs or breed = hiv2tb2_fs or breed = hiv2tb3_fs or breed = hiv2tb4_fs or (breed = hiv2tb0_fs and ticks = 0)
              [set breed hiv2tb2_fs]
              [print "error develop disease process"]]]]]]

    set start_treat_symp 0

    ifelse chronic = 1
    [
      ifelse breed = hiv2tb2_ms or breed = hiv2tb2_fs
      [
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv2 * clinic_other_symp_hiv2)
      ]
      [
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv01 * clinic_other_symp_hiv01)
      ]
    ]
    [
      ifelse breed = hiv2tb2_ms or breed = hiv2tb2_fs
      [
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv2)
      ]
      [
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv01)
      ]
    ]

    disease_transition
  ]
end

to develop_disease_process
  if ticks = correct_ticks_at_disease_development
  [
    set correct_ticks_at_disease_development 1000000
    set ticks_at_disease_development ticks
    set breed_at_disease_development breed

    if ticks > ticks_at_last_selfcure + 12 [

      ifelse year = 2026
      [set develop_tb_2026 1]
      [set develop_tb_2026 0]

      ifelse chronic = 1 and (ticks - ticks_at_diagnosis > 24)
      [
        if breed = hiv0tb1_ms or breed = hiv0tb4_ms or (breed = hiv0tb0_ms and ticks = 0) [set tracker_develop_tb_hiv0_m_nr_yc (tracker_develop_tb_hiv0_m_nr_yc + 1)]
        if breed = hiv0tb1_fs or breed = hiv0tb4_fs or (breed = hiv0tb0_fs and ticks = 0) [set tracker_develop_tb_hiv0_f_nr_yc (tracker_develop_tb_hiv0_f_nr_yc + 1)]
        if breed = hiv1tb1_ms or breed = hiv1tb4_ms or (breed = hiv1tb0_ms and ticks = 0) [set tracker_develop_tb_hiv1_m_nr_yc (tracker_develop_tb_hiv1_m_nr_yc + 1)]
        if breed = hiv1tb1_fs or breed = hiv1tb4_fs or (breed = hiv1tb0_fs and ticks = 0) [set tracker_develop_tb_hiv1_f_nr_yc (tracker_develop_tb_hiv1_f_nr_yc + 1)]
        if breed = hiv2tb1_ms or breed = hiv2tb4_ms or (breed = hiv2tb0_ms and ticks = 0) [set tracker_develop_tb_hiv2_m_nr_yc (tracker_develop_tb_hiv2_m_nr_yc + 1)]
        if breed = hiv2tb1_fs or breed = hiv2tb4_fs or (breed = hiv2tb0_fs and ticks = 0) [set tracker_develop_tb_hiv2_f_nr_yc (tracker_develop_tb_hiv2_f_nr_yc + 1)]
      ]
      [ifelse chronic = 1 and (ticks - ticks_at_diagnosis <= 24)
        [
          if breed = hiv0tb1_ms or breed = hiv0tb4_ms or (breed = hiv0tb0_ms and ticks = 0) [set tracker_develop_tb_hiv0_m_2y_yc (tracker_develop_tb_hiv0_m_2y_yc + 1)]
          if breed = hiv0tb1_fs or breed = hiv0tb4_fs or (breed = hiv0tb0_fs and ticks = 0) [set tracker_develop_tb_hiv0_f_2y_yc (tracker_develop_tb_hiv0_f_2y_yc + 1)]
          if breed = hiv1tb1_ms or breed = hiv1tb4_ms or (breed = hiv1tb0_ms and ticks = 0) [set tracker_develop_tb_hiv1_m_2y_yc (tracker_develop_tb_hiv1_m_2y_yc + 1)]
          if breed = hiv1tb1_fs or breed = hiv1tb4_fs or (breed = hiv1tb0_fs and ticks = 0) [set tracker_develop_tb_hiv1_f_2y_yc (tracker_develop_tb_hiv1_f_2y_yc + 1)]
          if breed = hiv2tb1_ms or breed = hiv2tb4_ms or (breed = hiv2tb0_ms and ticks = 0) [set tracker_develop_tb_hiv2_m_2y_yc (tracker_develop_tb_hiv2_m_2y_yc + 1)]
          if breed = hiv2tb1_fs or breed = hiv2tb4_fs or (breed = hiv2tb0_fs and ticks = 0) [set tracker_develop_tb_hiv2_f_2y_yc (tracker_develop_tb_hiv2_f_2y_yc + 1)]
        ]
        [ifelse chronic = 0 and (ticks - ticks_at_diagnosis > 24)
          [
            if breed = hiv0tb1_ms or breed = hiv0tb4_ms or (breed = hiv0tb0_ms and ticks = 0) [set tracker_develop_tb_hiv0_m_nr_nc (tracker_develop_tb_hiv0_m_nr_nc + 1)]
            if breed = hiv0tb1_fs or breed = hiv0tb4_fs or (breed = hiv0tb0_fs and ticks = 0) [set tracker_develop_tb_hiv0_f_nr_nc (tracker_develop_tb_hiv0_f_nr_nc + 1)]
            if breed = hiv1tb1_ms or breed = hiv1tb4_ms or (breed = hiv1tb0_ms and ticks = 0) [set tracker_develop_tb_hiv1_m_nr_nc (tracker_develop_tb_hiv1_m_nr_nc + 1)]
            if breed = hiv1tb1_fs or breed = hiv1tb4_fs or (breed = hiv1tb0_fs and ticks = 0) [set tracker_develop_tb_hiv1_f_nr_nc (tracker_develop_tb_hiv1_f_nr_nc + 1)]
            if breed = hiv2tb1_ms or breed = hiv2tb4_ms or (breed = hiv2tb0_ms and ticks = 0) [set tracker_develop_tb_hiv2_m_nr_nc (tracker_develop_tb_hiv2_m_nr_nc + 1)]
            if breed = hiv2tb1_fs or breed = hiv2tb4_fs or (breed = hiv2tb0_fs and ticks = 0) [set tracker_develop_tb_hiv2_f_nr_nc (tracker_develop_tb_hiv2_f_nr_nc + 1)]
          ]
          [ifelse chronic = 0 and (ticks - ticks_at_diagnosis <= 24)
            [
              if breed = hiv0tb1_ms or breed = hiv0tb4_ms or (breed = hiv0tb0_ms and ticks = 0) [set tracker_develop_tb_hiv0_m_2y_nc (tracker_develop_tb_hiv0_m_2y_nc + 1)]
              if breed = hiv0tb1_fs or breed = hiv0tb4_fs or (breed = hiv0tb0_fs and ticks = 0) [set tracker_develop_tb_hiv0_f_2y_nc (tracker_develop_tb_hiv0_f_2y_nc + 1)]
              if breed = hiv1tb1_ms or breed = hiv1tb4_ms or (breed = hiv1tb0_ms and ticks = 0) [set tracker_develop_tb_hiv1_m_2y_nc (tracker_develop_tb_hiv1_m_2y_nc + 1)]
              if breed = hiv1tb1_fs or breed = hiv1tb4_fs or (breed = hiv1tb0_fs and ticks = 0) [set tracker_develop_tb_hiv1_f_2y_nc (tracker_develop_tb_hiv1_f_2y_nc + 1)]
              if breed = hiv2tb1_ms or breed = hiv2tb4_ms or (breed = hiv2tb0_ms and ticks = 0) [set tracker_develop_tb_hiv2_m_2y_nc (tracker_develop_tb_hiv2_m_2y_nc + 1)]
              if breed = hiv2tb1_fs or breed = hiv2tb4_fs or (breed = hiv2tb0_fs and ticks = 0) [set tracker_develop_tb_hiv2_f_2y_nc (tracker_develop_tb_hiv2_f_2y_nc + 1)]
            ]
            [print "error develop disease process2"]]]]

    ]

    ifelse breed = hiv0tb1_ms or breed = hiv0tb4_ms or (breed = hiv0tb0_ms and ticks = 0)
    [set breed hiv0tb2_ms
      if ticks > ticks_at_last_selfcure + 12
      [set tracker_develop_tb_hiv0_m tracker_develop_tb_hiv0_m + 1]]
    [ifelse breed = hiv0tb1_fs or breed = hiv0tb4_fs or (breed = hiv0tb0_fs and ticks = 0)
      [set breed hiv0tb2_fs
        if ticks > ticks_at_last_selfcure + 12
        [set tracker_develop_tb_hiv0_f tracker_develop_tb_hiv0_f + 1]]
      [ifelse breed = hiv1tb1_ms or breed = hiv1tb4_ms or (breed = hiv1tb0_ms and ticks = 0)
        [set breed hiv1tb2_ms
          if ticks > ticks_at_last_selfcure + 12
          [set tracker_develop_tb_hiv1_m tracker_develop_tb_hiv1_m + 1]]
        [ifelse breed = hiv1tb1_fs or breed = hiv1tb4_fs or (breed = hiv1tb0_fs and ticks = 0)
          [set breed hiv1tb2_fs
            if ticks > ticks_at_last_selfcure + 12
            [set tracker_develop_tb_hiv1_f tracker_develop_tb_hiv1_f + 1]]
          [ifelse breed = hiv2tb1_ms or breed = hiv2tb4_ms or (breed = hiv2tb0_ms and ticks = 0)
            [set breed hiv2tb2_ms
              if ticks > ticks_at_last_selfcure + 12
              [set tracker_develop_tb_hiv2_m tracker_develop_tb_hiv2_m + 1]]
            [ifelse breed = hiv2tb1_fs or breed = hiv2tb4_fs or (breed = hiv2tb0_fs and ticks = 0)
              [set breed hiv2tb2_fs
                if ticks > ticks_at_last_selfcure + 12
                [set tracker_develop_tb_hiv2_f tracker_develop_tb_hiv2_f + 1]]
              [print "error develop disease process"]]]]]]

    set my_hh_risk_list n-values (15 * 12) [0]
    ifelse infectiousness_var > 0
    [set infectiousness random-gamma infectiousness_alp_gam infectiousness_alp_gam]
    [set infectiousness 1]

    ifelse chronic = 1
    [
      ifelse breed = hiv2tb2_ms or breed = hiv2tb2_fs
      [
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv2 * clinic_other_symp_hiv2)
      ]
      [
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv01 * clinic_other_symp_hiv01)
      ]
    ]
    [
      ifelse breed = hiv2tb2_ms or breed = hiv2tb2_fs
      [
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv2)
      ]
      [
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv01)
      ]
    ]

    if breed = hiv2tb2_ms or breed = hiv2tb2_fs
    [
      let clinic_time 10000
      if my_clinic_visit_rate_adjust > 0
      [set clinic_time (- LN (1 - random-float 1) / my_clinic_visit_rate_adjust)]
      ifelse clinic_time < 12
      [set ticks_at_last_xpert (ticks - 12 * random-float 1)]
      [set ticks_at_last_xpert (ticks - 12)]
      set ticks_at_last_xpert_attempt ticks_at_last_xpert
    ]
    disease_transition
  ]
end

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;disease transitions, outcome and treatment;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
to disease_transition
  let tb_die_time 10000
  let self_cure_time 10000
  let clinic_visit_tb_time 10000
  let sub_to_clin_time 10000
  let clin_to_sub_time 10000
  let clinic_visit_other_time 10000
  set TB_death 0

  if my_clinic_visit_rate_adjust > 0
  [set clinic_visit_other_time (- LN (1 - random-float 1) / my_clinic_visit_rate_adjust)]
  ifelse breed = hiv0tb2_ms or breed = hiv0tb2_fs
    [
      ifelse chronic = 0
      [set self_cure_time (- LN (1 - random-float 1) / self_cure_rate_HIV0_monthly)]
      [if relative_self_cure_rate_chronic > 0 [set self_cure_time (- LN (1 - random-float 1) / (self_cure_rate_HIV0_monthly * relative_self_cure_rate_chronic))]]
      ifelse chronic = 0
      [set sub_to_clin_time (- LN (1 - random-float 1) / rate_sub_to_clin_hiv0_monthly)]
      [set sub_to_clin_time (- LN (1 - random-float 1) / (rate_sub_to_clin_hiv0_monthly * relative_rate_sub_to_clin_chronic))]
      if chronic = 1 and clinic_TBsymp_adjust_chronic > 0 [set clinic_visit_tb_time (- LN (1 - random-float 1) / (clinic_TBsymp_HIV0_monthly * clinic_TBsymp_adjust_chronic))]
      if chronic = 0 and (clinic_TBsymp_adjust_chronic * clinic_TBsymp_adjust_transient) > 0 and random-float 1 < prob_transient_comm_hiv0
      [set clinic_visit_tb_time (- LN (1 - random-float 1) / (clinic_TBsymp_HIV0_monthly * clinic_TBsymp_adjust_chronic * clinic_TBsymp_adjust_transient))]
  ]
  [ifelse breed = hiv1tb2_ms or breed = hiv1tb2_fs
    [if self_cure_rate_HIV1_monthly > 0
      [
        ifelse chronic = 0
        [set self_cure_time (- LN (1 - random-float 1) / self_cure_rate_HIV1_monthly)]
        [if relative_self_cure_rate_chronic > 0 [set self_cure_time (- LN (1 - random-float 1) / (self_cure_rate_HIV1_monthly * relative_self_cure_rate_chronic))]]
      ]
      ifelse chronic = 0
      [set sub_to_clin_time (- LN (1 - random-float 1) / rate_sub_to_clin_hiv1_monthly)]
      [set sub_to_clin_time (- LN (1 - random-float 1) / (rate_sub_to_clin_hiv1_monthly * relative_rate_sub_to_clin_chronic))]
      if chronic = 1 and clinic_TBsymp_adjust_chronic > 0 [set clinic_visit_tb_time (- LN (1 - random-float 1) / (clinic_TBsymp_HIV1_monthly * clinic_TBsymp_adjust_chronic))]
      if chronic = 0 and (clinic_TBsymp_adjust_chronic * clinic_TBsymp_adjust_transient) > 0 and random-float 1 < prob_transient_comm_hiv1
      [set clinic_visit_tb_time (- LN (1 - random-float 1) / (clinic_TBsymp_HIV1_monthly * clinic_TBsymp_adjust_chronic * clinic_TBsymp_adjust_transient))]
    ]
    [ifelse breed = hiv2tb2_ms or breed = hiv2tb2_fs
      [
        ifelse chronic = 0
        [set self_cure_time (- LN (1 - random-float 1) / self_cure_rate_HIV2_monthly)]
        [if relative_self_cure_rate_chronic > 0 [set self_cure_time (- LN (1 - random-float 1) / (self_cure_rate_HIV2_monthly * relative_self_cure_rate_chronic))]]
        ifelse chronic = 0
        [set sub_to_clin_time (- LN (1 - random-float 1) / rate_sub_to_clin_hiv2_monthly)]
        [set sub_to_clin_time (- LN (1 - random-float 1) / (rate_sub_to_clin_hiv2_monthly * relative_rate_sub_to_clin_chronic))]
        if chronic = 1 and clinic_TBsymp_adjust_chronic > 0 [set clinic_visit_tb_time (- LN (1 - random-float 1) / (clinic_TBsymp_HIV2_monthly * clinic_TBsymp_adjust_chronic))]
        if chronic = 0 and (clinic_TBsymp_adjust_chronic * clinic_TBsymp_adjust_transient) > 0 and random-float 1 < prob_transient_comm_hiv2
        [set clinic_visit_tb_time (- LN (1 - random-float 1) / (clinic_TBsymp_HIV2_monthly * clinic_TBsymp_adjust_chronic * clinic_TBsymp_adjust_transient))]
      ]

      [ifelse breed = hiv0tb3_ms or breed = hiv0tb3_fs
        [
          ifelse chronic = 0
          [set tb_die_time (- LN (1 - random-float 1) / TB_mortality_rate_clin_HIV0_monthly)]
          [set tb_die_time (- LN (1 - random-float 1) / (TB_mortality_rate_clin_HIV0_monthly * relative_TB_mortality_rate_chronic))]
          set clinic_visit_tb_time (- LN (1 - random-float 1) / clinic_TBsymp_HIV0_monthly)
          ifelse chronic = 0
          [set clin_to_sub_time (- LN (1 - random-float 1) / rate_clin_to_sub_hiv0_monthly)]
          [if relative_rate_clin_to_sub_chronic > 0 [set clin_to_sub_time (- LN (1 - random-float 1) / (rate_clin_to_sub_hiv0_monthly * relative_rate_clin_to_sub_chronic))]]
        ]

        [ifelse breed = hiv1tb3_ms or breed = hiv1tb3_fs
          [
            ifelse chronic = 0
            [set tb_die_time (- LN (1 - random-float 1) / TB_mortality_rate_clin_HIV1_monthly)]
            [set tb_die_time (- LN (1 - random-float 1) / (TB_mortality_rate_clin_HIV1_monthly * relative_TB_mortality_rate_chronic))]
            set clinic_visit_tb_time (- LN (1 - random-float 1) / clinic_TBsymp_HIV1_monthly)
            ifelse chronic = 0
            [set clin_to_sub_time (- LN (1 - random-float 1) / rate_clin_to_sub_hiv1_monthly)]
            [if relative_rate_clin_to_sub_chronic > 0 [set clin_to_sub_time (- LN (1 - random-float 1) / (rate_clin_to_sub_hiv1_monthly * relative_rate_clin_to_sub_chronic))]]
          ]

          [ifelse breed = hiv2tb3_ms or breed = hiv2tb3_fs
            [
              ifelse chronic = 0
              [set tb_die_time (- LN (1 - random-float 1) / TB_mortality_rate_clin_HIV2_monthly)]
              [set tb_die_time (- LN (1 - random-float 1) / (TB_mortality_rate_clin_HIV2_monthly * relative_TB_mortality_rate_chronic))]
              set clinic_visit_tb_time (- LN (1 - random-float 1) / clinic_TBsymp_HIV2_monthly)
              ifelse chronic = 0
              [set clin_to_sub_time (- LN (1 - random-float 1) / rate_clin_to_sub_hiv2_monthly)]
              [if relative_rate_clin_to_sub_chronic > 0 [set clin_to_sub_time (- LN (1 - random-float 1) / (rate_clin_to_sub_hiv2_monthly * relative_rate_clin_to_sub_chronic))]]
            ]

            [print "error_disease_transition"]]]]]]


  ifelse min (list self_cure_time clinic_visit_tb_time tb_die_time sub_to_clin_time clin_to_sub_time clinic_visit_other_time (ticks_at_death - ticks)) = self_cure_time
  [
    set correct_ticks_at_disease_transition ticks + self_cure_time
    time:schedule-event self [ [] ->
      if ticks = correct_ticks_at_disease_transition [
        self_cure
      ]
    ] (ticks + self_cure_time)
  ]
  [
    ifelse min (list self_cure_time clinic_visit_tb_time tb_die_time sub_to_clin_time clin_to_sub_time clinic_visit_other_time (ticks_at_death - ticks)) = clinic_visit_tb_time
    [
      set correct_ticks_at_disease_transition ticks + clinic_visit_tb_time
      time:schedule-event self [ [] ->
        if ticks = correct_ticks_at_disease_transition [
          set start_treat_symp 1
          clinic_visit_tb_symp
        ]
      ] (ticks + clinic_visit_tb_time)
    ]
    [
      ifelse min (list self_cure_time clinic_visit_tb_time tb_die_time sub_to_clin_time clin_to_sub_time clinic_visit_other_time (ticks_at_death - ticks)) = tb_die_time
      [
        set correct_ticks_at_disease_transition ticks + tb_die_time
        time:schedule-event self [ [] ->
          if ticks = correct_ticks_at_disease_transition [
            set TB_death 1
            dying_process
          ]
        ] (ticks + tb_die_time)
      ]
      [
        ifelse min (list self_cure_time clinic_visit_tb_time tb_die_time sub_to_clin_time clin_to_sub_time clinic_visit_other_time (ticks_at_death - ticks)) = sub_to_clin_time
        [
          set correct_ticks_at_disease_transition ticks + sub_to_clin_time
          time:schedule-event self [ [] ->
            if ticks = correct_ticks_at_disease_transition [
              move_sub_to_clin
            ]
          ] (ticks + sub_to_clin_time)
        ]
        [
          ifelse min (list self_cure_time clinic_visit_tb_time tb_die_time sub_to_clin_time clin_to_sub_time clinic_visit_other_time (ticks_at_death - ticks)) = clin_to_sub_time
          [
            set correct_ticks_at_disease_transition ticks + clin_to_sub_time
            time:schedule-event self [ [] ->
              if ticks = correct_ticks_at_disease_transition [
                move_clin_to_sub
              ]
            ] (ticks + clin_to_sub_time)
          ]
          [
            if min (list self_cure_time clinic_visit_tb_time tb_die_time sub_to_clin_time clin_to_sub_time clinic_visit_other_time (ticks_at_death - ticks)) = clinic_visit_other_time
            [
              set correct_ticks_at_disease_transition ticks + clinic_visit_other_time
              time:schedule-event self [ [] ->
                if ticks = correct_ticks_at_disease_transition [
                  clinic_visit_background
                ]
              ] (ticks + clinic_visit_other_time)
            ]
          ]
        ]
      ]
    ]
  ]
end

to self_cure
  set ticks_at_infection ticks

  if develop_tb_2026 = 1 [
    ifelse breed_at_disease_development = hiv0tb1_ms or breed_at_disease_development = hiv0tb1_fs or
    breed_at_disease_development = hiv0tb4_ms or breed_at_disease_development = hiv0tb4_fs
    [
      set tracker_resolve_pm_2026_hiv0 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv0
      set tracker_selfcure_2026_hiv0 (tracker_selfcure_2026_hiv0 + 1)
    ]
    [ifelse breed_at_disease_development = hiv1tb1_ms or breed_at_disease_development = hiv1tb1_fs or
      breed_at_disease_development = hiv1tb4_ms or breed_at_disease_development = hiv1tb4_fs
      [
        set tracker_resolve_pm_2026_hiv1 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv1
        set tracker_selfcure_2026_hiv1 (tracker_selfcure_2026_hiv1 + 1)
      ]
      [ifelse breed_at_disease_development = hiv2tb1_ms or breed_at_disease_development = hiv2tb1_fs or
        breed_at_disease_development = hiv2tb4_ms or breed_at_disease_development = hiv2tb4_fs
        [
          set tracker_resolve_pm_2026_hiv2 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv2
          set tracker_selfcure_2026_hiv2 (tracker_selfcure_2026_hiv2 + 1)
        ]
        [print breed_at_disease_development]]]
    set develop_tb_2026 0
  ]

  ifelse breed = hiv0tb2_ms or breed = hiv0tb3_ms
  [set tracker_selfcure_hiv0 (tracker_selfcure_hiv0 + 1)
    set tracker_resolve_pm_hiv0 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv0
    set breed hiv0tb1_ms]
  [ifelse breed = hiv0tb2_fs or breed = hiv0tb3_fs
    [set tracker_selfcure_hiv0 (tracker_selfcure_hiv0 + 1)
      set tracker_resolve_pm_hiv0 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv0
      set breed hiv0tb1_fs]
    [
      ifelse breed = hiv1tb2_ms or breed = hiv1tb3_ms
      [set tracker_selfcure_hiv1 (tracker_selfcure_hiv1 + 1)
        set tracker_resolve_pm_hiv1 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv1
        set breed hiv1tb1_ms]
      [ifelse breed = hiv1tb2_fs or breed = hiv1tb3_fs
        [set tracker_selfcure_hiv1 (tracker_selfcure_hiv1 + 1)
          set tracker_resolve_pm_hiv1 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv1
          set breed hiv1tb1_fs]
        [
          ifelse breed = hiv2tb2_ms or breed = hiv2tb3_ms
          [set tracker_selfcure_hiv2 (tracker_selfcure_hiv2 + 1)
            set tracker_resolve_pm_hiv2 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv2
            set breed hiv2tb1_ms]
          [ifelse breed = hiv2tb2_fs or breed = hiv2tb3_fs
            [set tracker_selfcure_hiv2 (tracker_selfcure_hiv2 + 1)
              set tracker_resolve_pm_hiv2 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv2
              set breed hiv2tb1_fs]
            [print "error self cure"]]]]]]

  ifelse chronic = 1
    [
      ifelse breed = hiv2tb1_ms or breed = hiv2tb1_fs
      [
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_symp_hiv2)
      ]
      [
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_symp_hiv01)
      ]
  ]
  [
    set my_clinic_visit_rate_adjust my_clinic_visit_rate_base
  ]
  if (clinic_visit_output_year - start_year) * 12 < ticks [reset_clinic_visiting]

  set ticks_at_last_selfcure ticks

  schedule_develop_disease
end

to start_treatment
  if ticks = correct_ticks_at_disease_transition [
    set ticks_at_diagnosis ticks
    set ticks_at_last_resolved_tb3 ticks

    if year = 2023 [

      let infection_prob_9_background 0
      foreach (sublist background_risk_list 0 (12 * 9 - 1)) [ x ->
        set infection_prob_9_background infection_prob_9_background + (1 - infection_prob_9_background) * x * child_trans_rate_multiplier
      ]

      if breed = hiv0tb3_ms or breed = hiv0tb3_fs
      [
        set n_diagnosed_hiv0_clin_2023 (n_diagnosed_hiv0_clin_2023 + 1)
        let risk infection_prob_9_background
        foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
          set risk risk + (1 - risk) * x
        ]
        set inf9_diagnosed_hiv0_clin_2023 (inf9_diagnosed_hiv0_clin_2023 + risk)
      ]
      if breed = hiv0tb2_ms or breed = hiv0tb2_fs [
        ifelse start_treat_symp = 1
        [
          set n_diagnosed_hiv0_sub_symp_2023 (n_diagnosed_hiv0_sub_symp_2023 + 1)
          let risk infection_prob_9_background
          foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
            set risk risk + (1 - risk) * x
          ]
          set inf9_diagnosed_hiv0_sub_symp_2023 (inf9_diagnosed_hiv0_sub_symp_2023 + risk)
        ]
        [
          set n_diagnosed_hiv0_sub_asymp_2023 (n_diagnosed_hiv0_sub_asymp_2023 + 1)
          let risk infection_prob_9_background
          foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
            set risk risk + (1 - risk) * x
          ]
          set inf9_diagnosed_hiv0_sub_asymp_2023 (inf9_diagnosed_hiv0_sub_asymp_2023 + risk)
        ]
      ]

      if breed = hiv1tb3_ms or breed = hiv1tb3_fs
      [
        set n_diagnosed_hiv1_clin_2023 (n_diagnosed_hiv1_clin_2023 + 1)
        let risk infection_prob_9_background
        foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
          set risk risk + (1 - risk) * x
        ]
        set inf9_diagnosed_hiv1_clin_2023 (inf9_diagnosed_hiv1_clin_2023 + risk)
      ]
      if breed = hiv1tb2_ms or breed = hiv1tb2_fs [
        ifelse start_treat_symp = 1
        [
          set n_diagnosed_hiv1_sub_symp_2023 (n_diagnosed_hiv1_sub_symp_2023 + 1)
          let risk infection_prob_9_background
          foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
            set risk risk + (1 - risk) * x
          ]
          set inf9_diagnosed_hiv1_sub_symp_2023 (inf9_diagnosed_hiv1_sub_symp_2023 + risk)
        ]
        [
          set n_diagnosed_hiv1_sub_asymp_2023 (n_diagnosed_hiv1_sub_asymp_2023 + 1)
          let risk infection_prob_9_background
          foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
            set risk risk + (1 - risk) * x
          ]
          set inf9_diagnosed_hiv1_sub_asymp_2023 (inf9_diagnosed_hiv1_sub_asymp_2023 + risk)
        ]
      ]

      if breed = hiv2tb3_ms or breed = hiv2tb3_fs
      [
        set n_diagnosed_hiv2_clin_2023 (n_diagnosed_hiv2_clin_2023 + 1)
        let risk infection_prob_9_background
        foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
          set risk risk + (1 - risk) * x
        ]
        set inf9_diagnosed_hiv2_clin_2023 (inf9_diagnosed_hiv2_clin_2023 + risk)
      ]
      if breed = hiv2tb2_ms or breed = hiv2tb2_fs [
        ifelse start_treat_symp = 1
        [
          set n_diagnosed_hiv2_sub_symp_2023 (n_diagnosed_hiv2_sub_symp_2023 + 1)
          let risk infection_prob_9_background
          foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
            set risk risk + (1 - risk) * x
          ]
          set inf9_diagnosed_hiv2_sub_symp_2023 (inf9_diagnosed_hiv2_sub_symp_2023 + risk)
        ]
        [
          set n_diagnosed_hiv2_sub_asymp_2023 (n_diagnosed_hiv2_sub_asymp_2023 + 1)
          let risk infection_prob_9_background
          foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
            set risk risk + (1 - risk) * x
          ]
          set inf9_diagnosed_hiv2_sub_asymp_2023 (inf9_diagnosed_hiv2_sub_asymp_2023 + risk)
        ]
      ]
    ]

    ifelse breed = hiv0tb2_ms or breed = hiv0tb2_fs or
    breed = hiv1tb2_ms or breed = hiv1tb2_fs or
    breed = hiv2tb2_ms or breed = hiv2tb2_fs
    [set tb2_tb3_at_start_treat 2]
    [set tb2_tb3_at_start_treat 3]

    if develop_tb_2026 = 1 [
      ifelse breed_at_disease_development = hiv0tb1_ms or breed_at_disease_development = hiv0tb1_fs or
      breed_at_disease_development = hiv0tb4_ms or breed_at_disease_development = hiv0tb4_fs
      [
        set tracker_resolve_pm_2026_hiv0 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv0
        set tracker_start_treat_2026_hiv0 (tracker_start_treat_2026_hiv0 + 1)
      ]
      [ifelse breed_at_disease_development = hiv1tb1_ms or breed_at_disease_development = hiv1tb1_fs or
        breed_at_disease_development = hiv1tb4_ms or breed_at_disease_development = hiv1tb4_fs
        [
          set tracker_resolve_pm_2026_hiv1 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv1
          set tracker_start_treat_2026_hiv1 (tracker_start_treat_2026_hiv1 + 1)
        ]
        [ifelse breed_at_disease_development = hiv2tb1_ms or breed_at_disease_development = hiv2tb1_fs or
          breed_at_disease_development = hiv2tb4_ms or breed_at_disease_development = hiv2tb4_fs
          [
            set tracker_resolve_pm_2026_hiv2 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_2026_hiv2
            set tracker_start_treat_2026_hiv2 (tracker_start_treat_2026_hiv2 + 1)
          ]
          [print breed_at_disease_development]]]
      set develop_tb_2026 0
      set develop_tb_2026_start_treat 1
    ]


    ifelse breed = hiv0tb2_ms or breed = hiv0tb3_ms
    [set breed hiv0tb4_ms
      set tracker_treat_tb_hiv0_m (tracker_treat_tb_hiv0_m + 1)
      set tracker_start_treat_pm_hiv0 lput (ticks - ticks_at_disease_development) tracker_start_treat_pm_hiv0
      set tracker_resolve_pm_hiv0 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv0]
    [ifelse breed = hiv0tb2_fs or breed = hiv0tb3_fs
      [set breed hiv0tb4_fs
        set tracker_treat_tb_hiv0_f (tracker_treat_tb_hiv0_f + 1)
        set tracker_start_treat_pm_hiv0 lput (ticks - ticks_at_disease_development) tracker_start_treat_pm_hiv0
        set tracker_resolve_pm_hiv0 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv0]
      [ifelse breed = hiv1tb2_ms or breed = hiv1tb3_ms
        [set breed hiv1tb4_ms
          set tracker_treat_tb_hiv1_m (tracker_treat_tb_hiv1_m + 1)
          set tracker_start_treat_pm_hiv1 lput (ticks - ticks_at_disease_development) tracker_start_treat_pm_hiv1
          set tracker_resolve_pm_hiv1 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv1]
        [ifelse breed = hiv1tb2_fs or breed = hiv1tb3_fs
          [set breed hiv1tb4_fs
            set tracker_treat_tb_hiv1_f (tracker_treat_tb_hiv1_f + 1)
            set tracker_start_treat_pm_hiv1 lput (ticks - ticks_at_disease_development) tracker_start_treat_pm_hiv1
            set tracker_resolve_pm_hiv1 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv1]
          [ifelse breed = hiv2tb2_ms or breed = hiv2tb3_ms
            [set breed hiv2tb4_ms
              set tracker_treat_tb_hiv2_m (tracker_treat_tb_hiv2_m + 1)
              set tracker_start_treat_pm_hiv2 lput (ticks - ticks_at_disease_development) tracker_start_treat_pm_hiv2
              set tracker_resolve_pm_hiv2 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv2]
            [ifelse breed = hiv2tb2_fs or breed = hiv2tb3_fs
              [set breed hiv2tb4_fs
                set tracker_treat_tb_hiv2_f (tracker_treat_tb_hiv2_f + 1)
                set tracker_start_treat_pm_hiv2 lput (ticks - ticks_at_disease_development) tracker_start_treat_pm_hiv2
                set tracker_resolve_pm_hiv2 lput (ticks - ticks_at_disease_development) tracker_resolve_pm_hiv2]
              [print "error start treatment"]]]]]]

    set breed_start_treat breed

    if ticks > 12 * (art_intro_year - start_year) and start_art_on_tb_diagnosis = 1
    [
      if breed = hiv1tb4_ms or breed = hiv1tb4_fs
      [
        set ticks_at_art ticks
        start_ART
        recalculate_hiv_mort
      ]
    ]


    let time_tb_treat_death 0
    ifelse breed = hiv0tb4_ms or breed = hiv0tb4_fs
    [set time_tb_treat_death (- LN (1 - random-float 1) / (TB_mortality_rate_treatment_hiv0_monthly))]
    [set time_tb_treat_death (- LN (1 - random-float 1) / (TB_mortality_rate_treatment_hiv12_monthly))]

    let time_tb_treat_dropout 0
    ifelse breed = hiv0tb4_ms or breed = hiv0tb4_fs
    [
      set time_tb_treat_dropout (- LN (1 - random-float 1) / (TB_treatment_dropout_rate_hiv0_monthly))
    ]
    [ifelse breed = hiv1tb4_ms or breed = hiv1tb4_fs
      [
        set time_tb_treat_dropout (- LN (1 - random-float 1) / (TB_treatment_dropout_rate_hiv12_monthly))
      ]
      [ifelse breed = hiv2tb4_ms or breed = hiv2tb4_fs
        [
          set time_tb_treat_dropout (- LN (1 - random-float 1) / (TB_treatment_dropout_rate_hiv12_monthly))
        ]
        [print "error_treat2"]]]

    ifelse time_tb_treat_death < time_tb_treat_dropout
    [
      ifelse time_tb_treat_death < TB_treatment_length
      [
        ifelse time_tb_treat_death < (ticks_at_death - ticks)
        [
          time:schedule-event self [ [] ->
            ifelse breed = hiv0tb4_ms or breed = hiv0tb4_fs
            [set tracker_treat_die_tb_hiv0 (tracker_treat_die_tb_hiv0 + 1)]
            [set tracker_treat_die_tb_hiv12 (tracker_treat_die_tb_hiv12 + 1)]
            set TB_death 1
            dying_process
          ] (ticks + time_tb_treat_death)
        ]
        [
        ]
      ]
      [schedule_treatment_end]
    ]
    [
      ifelse time_tb_treat_dropout < TB_treatment_length
      [
        time:schedule-event self [ [] ->
          ifelse breed = hiv0tb4_ms or breed = hiv0tb4_fs
          [set tracker_treat_dropout_hiv0 (tracker_treat_dropout_hiv0 + 1)]
          [set tracker_treat_dropout_hiv12 (tracker_treat_dropout_hiv12 + 1)]
          set develop_tb_2026_start_treat 0
          set correct_ticks_at_disease_development ticks
          develop_disease_process_treatment_dropout
        ] (ticks + time_tb_treat_dropout)
      ]
      [
        schedule_treatment_end]
    ]


    ifelse chronic = 1
    [
      ifelse breed = hiv2tb4_ms or breed = hiv2tb4_fs
      [
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_symp_hiv2)
      ]
      [
        set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_symp_hiv01)
      ]
    ]
    [
      set my_clinic_visit_rate_adjust my_clinic_visit_rate_base
    ]
    if (clinic_visit_output_year - start_year) * 12 < ticks [reset_clinic_visiting]
  ]
end

to schedule_treatment_end
  time:schedule-event self [ [] ->
    ifelse (breed_start_treat = hiv0tb4_ms or breed_start_treat = hiv0tb4_fs)
          [set tracker_treat_success_hiv0 (tracker_treat_success_hiv0 + 1)]
    [ifelse (breed_start_treat = hiv1tb4_ms or breed_start_treat = hiv1tb4_fs)
      [set tracker_treat_success_hiv1 (tracker_treat_success_hiv1 + 1)]
      [set tracker_treat_success_hiv2 (tracker_treat_success_hiv2 + 1)]]

    ifelse breed = hiv0tb4_ms
    [set breed hiv0tb1_ms]
    [ifelse breed = hiv0tb4_fs
      [set breed hiv0tb1_fs]
      [
        ifelse breed = hiv1tb4_ms
        [set breed hiv1tb1_ms]
        [ifelse breed = hiv1tb4_fs
          [set breed hiv1tb1_fs]
          [
            ifelse breed = hiv2tb4_ms
            [set breed hiv2tb1_ms]
            [ifelse breed = hiv2tb4_fs
              [set breed hiv2tb1_fs]
              [print "error treatment end"]]]]]]

    set ticks_at_infection (ticks - 6)
    set start_treat_symp 0
    set develop_tb_2026_start_treat 0
    schedule_develop_disease
    ;if (intervention = 2 or intervention = 3) [schedule_clinic_visits]
  ] (correct_ticks_at_disease_transition + TB_treatment_length)
end

to move_sub_to_clin
  ifelse breed = hiv0tb2_ms [
    set breed hiv0tb3_ms
  ]
  [ifelse breed = hiv1tb2_ms [
    set breed hiv1tb3_ms
    ]
    [ifelse breed = hiv2tb2_ms [
      set breed hiv2tb3_ms
      ]
      [ifelse breed = hiv0tb2_fs [
        set breed hiv0tb3_fs
        ]
        [ifelse breed = hiv1tb2_fs [
          set breed hiv1tb3_fs
          ]
          [ifelse breed = hiv2tb2_fs [
            set breed hiv2tb3_fs
            ]
            [print "error_move_sub_to_clin"
  ]]]]]]

  ifelse breed = hiv2tb3_ms or breed = hiv2tb3_fs
  [
    set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv2 * clinic_other_symp_hiv2)
  ]
  [
    set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv01 * clinic_other_symp_hiv01)
  ]

  disease_transition
end

to move_clin_to_sub
  ifelse breed = hiv0tb3_ms [
    set breed hiv0tb2_ms
  ]
  [ifelse breed = hiv1tb3_ms [
    set breed hiv1tb2_ms
    ]
    [ifelse breed = hiv2tb3_ms [
      set breed hiv2tb2_ms
      ]
      [ifelse breed = hiv0tb3_fs [
        set breed hiv0tb2_fs
        ]
        [ifelse breed = hiv1tb3_fs [
          set breed hiv1tb2_fs
          ]
          [ifelse breed = hiv2tb3_fs [
            set breed hiv2tb2_fs
            ]
            [print "error_move_clin_to_sub"]
  ]]]]]

  ifelse chronic = 1
  [
    ifelse breed = hiv2tb2_ms or breed = hiv2tb2_fs
    [
      set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv2 * clinic_other_symp_hiv2)
    ]
    [
      set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv01 * clinic_other_symp_hiv01)
    ]
  ]
  [
    ifelse breed = hiv2tb2_ms or breed = hiv2tb2_fs
    [
      set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv2)
    ]
    [
      set my_clinic_visit_rate_adjust (my_clinic_visit_rate_base * clinic_other_tb_hiv01)
    ]
  ]

  set ticks_at_last_resolved_tb3 ticks

  disease_transition
end

to reset_clinic_visiting
  let clinic_visit_other_time 100000
  if my_clinic_visit_rate_adjust > 0
  [set clinic_visit_other_time (- LN (1 - random-float 1) / my_clinic_visit_rate_adjust)]

  let clinic_visit_TB_symp_time 100000
  ifelse chronic = 1
  [
    if hiv_art_status = 0
    [set clinic_visit_TB_symp_time (- LN (1 - random-float 1) / (clinic_TBsymp_HIV0_monthly * clinic_TBsymp_adjust_chronic))]
    if hiv_art_status = 1
    [set clinic_visit_TB_symp_time (- LN (1 - random-float 1) / (clinic_TBsymp_HIV1_monthly * clinic_TBsymp_adjust_chronic))]
    if hiv_art_status = 2
    [set clinic_visit_TB_symp_time (- LN (1 - random-float 1) / (clinic_TBsymp_HIV2_monthly * clinic_TBsymp_adjust_chronic))]
  ]
  [
    if hiv_art_status = 0 and random-float 1 < prob_transient_comm_hiv0
    [set clinic_visit_TB_symp_time (- LN (1 - random-float 1) / (clinic_TBsymp_HIV0_monthly * clinic_TBsymp_adjust_chronic * clinic_TBsymp_adjust_transient))]
    if hiv_art_status = 1 and random-float 1 < prob_transient_comm_hiv1
    [set clinic_visit_TB_symp_time (- LN (1 - random-float 1) / (clinic_TBsymp_HIV1_monthly * clinic_TBsymp_adjust_chronic * clinic_TBsymp_adjust_transient))]
    if hiv_art_status = 2 and random-float 1 < prob_transient_comm_hiv2
    [set clinic_visit_TB_symp_time (- LN (1 - random-float 1) / (clinic_TBsymp_HIV2_monthly * clinic_TBsymp_adjust_chronic * clinic_TBsymp_adjust_transient))]
  ]

  ifelse min (list clinic_visit_other_time clinic_visit_TB_symp_time) = clinic_visit_other_time
  [
    set correct_ticks_at_disease_transition (ticks + clinic_visit_other_time)
    time:schedule-event self [ [] ->
      clinic_visit_background
    ] (ticks + clinic_visit_other_time)
  ]
  [
    set correct_ticks_at_disease_transition  (ticks + clinic_visit_TB_symp_time)
    time:schedule-event self [ [] ->
      clinic_visit_tb_symp
    ] (ticks + clinic_visit_TB_symp_time)
  ]
end

to clinic_visit_background
  if ticks = correct_ticks_at_disease_transition [
    set tutt_reason 0
    ifelse ticks_at_diagnosis < (ticks - 24)
    [;no recent tb diagnosis
      if (breed = hiv0tb0_ms or breed = hiv0tb1_ms or breed = hiv0tb4_ms) and tb_clinic_visit_symp = 0 [
        ifelse (chronic = 1 or random-float 1 < prob_transient_clinic_hiv0)
        [set tracker_attend_clinic_bg_nr_m_hiv0_ntb_ys (tracker_attend_clinic_bg_nr_m_hiv0_ntb_ys + 1)]
        [set tracker_attend_clinic_bg_nr_m_hiv0_ntb_ns (tracker_attend_clinic_bg_nr_m_hiv0_ntb_ns + 1)]
      ]
      if (breed = hiv0tb0_fs or breed = hiv0tb1_fs or breed = hiv0tb4_fs) and tb_clinic_visit_symp = 0 [
        ifelse (chronic = 1 or random-float 1 < prob_transient_clinic_hiv0)
        [set tracker_attend_clinic_bg_nr_f_hiv0_ntb_ys (tracker_attend_clinic_bg_nr_f_hiv0_ntb_ys + 1)]
        [set tracker_attend_clinic_bg_nr_f_hiv0_ntb_ns (tracker_attend_clinic_bg_nr_f_hiv0_ntb_ns + 1)]
      ]
      if (breed = hiv0tb2_ms or breed = hiv0tb3_ms) and tb_clinic_visit_symp = 0 [
        ifelse (breed = hiv0tb3_ms or chronic = 1 or random-float 1 < prob_transient_clinic_hiv0)
        [set tracker_attend_clinic_bg_nr_m_hiv0_ytb_ys (tracker_attend_clinic_bg_nr_m_hiv0_ytb_ys + 1)]
        [set tracker_attend_clinic_bg_nr_m_hiv0_ytb_ns (tracker_attend_clinic_bg_nr_m_hiv0_ytb_ns + 1)]
      ]
      if (breed = hiv0tb2_fs or breed = hiv0tb3_fs) and tb_clinic_visit_symp = 0 [
        ifelse (breed = hiv0tb3_fs or chronic = 1 or random-float 1 < prob_transient_clinic_hiv0)
        [set tracker_attend_clinic_bg_nr_f_hiv0_ytb_ys (tracker_attend_clinic_bg_nr_f_hiv0_ytb_ys + 1)]
        [set tracker_attend_clinic_bg_nr_f_hiv0_ytb_ns (tracker_attend_clinic_bg_nr_f_hiv0_ytb_ns + 1)]
      ]

      if (breed = hiv1tb0_ms or breed = hiv1tb1_ms or breed = hiv1tb4_ms) and tb_clinic_visit_symp = 0 [
        ifelse (chronic = 1 or random-float 1 < prob_transient_clinic_hiv1)
        [set tracker_attend_clinic_bg_nr_m_hiv1_ntb_ys (tracker_attend_clinic_bg_nr_m_hiv1_ntb_ys + 1)]
        [set tracker_attend_clinic_bg_nr_m_hiv1_ntb_ns (tracker_attend_clinic_bg_nr_m_hiv1_ntb_ns + 1)]
      ]
      if (breed = hiv1tb0_fs or breed = hiv1tb1_fs or breed = hiv1tb4_fs) and tb_clinic_visit_symp = 0 [
        ifelse (chronic = 1 or random-float 1 < prob_transient_clinic_hiv1)
        [set tracker_attend_clinic_bg_nr_f_hiv1_ntb_ys (tracker_attend_clinic_bg_nr_f_hiv1_ntb_ys + 1)]
        [set tracker_attend_clinic_bg_nr_f_hiv1_ntb_ns (tracker_attend_clinic_bg_nr_f_hiv1_ntb_ns + 1)]
      ]
      if (breed = hiv1tb2_ms or breed = hiv1tb3_ms) and tb_clinic_visit_symp = 0 [
        ifelse (breed = hiv1tb3_ms or chronic = 1 or random-float 1 < prob_transient_clinic_hiv1)
        [set tracker_attend_clinic_bg_nr_m_hiv1_ytb_ys (tracker_attend_clinic_bg_nr_m_hiv1_ytb_ys + 1)]
        [set tracker_attend_clinic_bg_nr_m_hiv1_ytb_ns (tracker_attend_clinic_bg_nr_m_hiv1_ytb_ns + 1)]
      ]
      if (breed = hiv1tb2_fs or breed = hiv1tb3_fs) and tb_clinic_visit_symp = 0 [
        ifelse (breed = hiv1tb3_fs or chronic = 1 or random-float 1 < prob_transient_clinic_hiv1)
        [set tracker_attend_clinic_bg_nr_f_hiv1_ytb_ys (tracker_attend_clinic_bg_nr_f_hiv1_ytb_ys + 1)]
        [set tracker_attend_clinic_bg_nr_f_hiv1_ytb_ns (tracker_attend_clinic_bg_nr_f_hiv1_ytb_ns + 1)]
      ]

      if (breed = hiv2tb0_ms or breed = hiv2tb1_ms or breed = hiv2tb4_ms) and tb_clinic_visit_symp = 0 [
        ifelse (chronic = 1 or random-float 1 < prob_transient_clinic_hiv2)
        [set tracker_attend_clinic_bg_nr_m_hiv2_ntb_ys (tracker_attend_clinic_bg_nr_m_hiv2_ntb_ys + 1)]
        [set tracker_attend_clinic_bg_nr_m_hiv2_ntb_ns (tracker_attend_clinic_bg_nr_m_hiv2_ntb_ns + 1)]
      ]
      if (breed = hiv2tb0_fs or breed = hiv2tb1_fs or breed = hiv2tb4_fs) and tb_clinic_visit_symp = 0 [
        ifelse (chronic = 1 or random-float 1 < prob_transient_clinic_hiv2)
        [set tracker_attend_clinic_bg_nr_f_hiv2_ntb_ys (tracker_attend_clinic_bg_nr_f_hiv2_ntb_ys + 1)]
        [set tracker_attend_clinic_bg_nr_f_hiv2_ntb_ns (tracker_attend_clinic_bg_nr_f_hiv2_ntb_ns + 1)]
      ]
      if (breed = hiv2tb2_ms or breed = hiv2tb3_ms) and tb_clinic_visit_symp = 0 [
        ifelse (breed = hiv2tb3_ms or chronic = 1 or random-float 1 < prob_transient_clinic_hiv2)
        [set tracker_attend_clinic_bg_nr_m_hiv2_ytb_ys (tracker_attend_clinic_bg_nr_m_hiv2_ytb_ys + 1)]
        [set tracker_attend_clinic_bg_nr_m_hiv2_ytb_ns (tracker_attend_clinic_bg_nr_m_hiv2_ytb_ns + 1)]
      ]
      if (breed = hiv2tb2_fs or breed = hiv2tb3_fs) and tb_clinic_visit_symp = 0 [
        ifelse (breed = hiv2tb3_fs or chronic = 1 or random-float 1 < prob_transient_clinic_hiv2)
        [set tracker_attend_clinic_bg_nr_f_hiv2_ytb_ys (tracker_attend_clinic_bg_nr_f_hiv2_ytb_ys + 1)]
        [set tracker_attend_clinic_bg_nr_f_hiv2_ytb_ns (tracker_attend_clinic_bg_nr_f_hiv2_ytb_ns + 1)]
      ]
    ]
    [;recent tb diagnosis
      if (breed = hiv0tb0_ms or breed = hiv0tb1_ms or breed = hiv0tb4_ms) and tb_clinic_visit_symp = 0 [
        ifelse (chronic = 1 or random-float 1 < prob_transient_clinic_hiv0)
        [set tracker_attend_clinic_bg_2y_m_hiv0_ntb_ys (tracker_attend_clinic_bg_2y_m_hiv0_ntb_ys + 1)]
        [set tracker_attend_clinic_bg_2y_m_hiv0_ntb_ns (tracker_attend_clinic_bg_2y_m_hiv0_ntb_ns + 1)]
      ]
      if (breed = hiv0tb0_fs or breed = hiv0tb1_fs or breed = hiv0tb4_fs) and tb_clinic_visit_symp = 0 [
        ifelse (chronic = 1 or random-float 1 < prob_transient_clinic_hiv0)
        [set tracker_attend_clinic_bg_2y_f_hiv0_ntb_ys (tracker_attend_clinic_bg_2y_f_hiv0_ntb_ys + 1)]
        [set tracker_attend_clinic_bg_2y_f_hiv0_ntb_ns (tracker_attend_clinic_bg_2y_f_hiv0_ntb_ns + 1)]
      ]
      if (breed = hiv0tb2_ms or breed = hiv0tb3_ms) and tb_clinic_visit_symp = 0 [
        ifelse (breed = hiv0tb3_ms or chronic = 1 or random-float 1 < prob_transient_clinic_hiv0)
        [set tracker_attend_clinic_bg_2y_m_hiv0_ytb_ys (tracker_attend_clinic_bg_2y_m_hiv0_ytb_ys + 1)]
        [set tracker_attend_clinic_bg_2y_m_hiv0_ytb_ns (tracker_attend_clinic_bg_2y_m_hiv0_ytb_ns + 1)]
      ]
      if (breed = hiv0tb2_fs or breed = hiv0tb3_fs) and tb_clinic_visit_symp = 0 [
        ifelse (breed = hiv0tb3_fs or chronic = 1 or random-float 1 < prob_transient_clinic_hiv0)
        [set tracker_attend_clinic_bg_2y_f_hiv0_ytb_ys (tracker_attend_clinic_bg_2y_f_hiv0_ytb_ys + 1)]
        [set tracker_attend_clinic_bg_2y_f_hiv0_ytb_ns (tracker_attend_clinic_bg_2y_f_hiv0_ytb_ns + 1)]
      ]

      if (breed = hiv1tb0_ms or breed = hiv1tb1_ms or breed = hiv1tb4_ms) and tb_clinic_visit_symp = 0 [
        ifelse (chronic = 1 or random-float 1 < prob_transient_clinic_hiv1)
        [set tracker_attend_clinic_bg_2y_m_hiv1_ntb_ys (tracker_attend_clinic_bg_2y_m_hiv1_ntb_ys + 1)]
        [set tracker_attend_clinic_bg_2y_m_hiv1_ntb_ns (tracker_attend_clinic_bg_2y_m_hiv1_ntb_ns + 1)]
      ]
      if (breed = hiv1tb0_fs or breed = hiv1tb1_fs or breed = hiv1tb4_fs) and tb_clinic_visit_symp = 0 [
        ifelse (chronic = 1 or random-float 1 < prob_transient_clinic_hiv1)
        [set tracker_attend_clinic_bg_2y_f_hiv1_ntb_ys (tracker_attend_clinic_bg_2y_f_hiv1_ntb_ys + 1)]
        [set tracker_attend_clinic_bg_2y_f_hiv1_ntb_ns (tracker_attend_clinic_bg_2y_f_hiv1_ntb_ns + 1)]
      ]
      if (breed = hiv1tb2_ms or breed = hiv1tb3_ms) and tb_clinic_visit_symp = 0 [
        ifelse (breed = hiv1tb3_ms or chronic = 1 or random-float 1 < prob_transient_clinic_hiv1)
        [set tracker_attend_clinic_bg_2y_m_hiv1_ytb_ys (tracker_attend_clinic_bg_2y_m_hiv1_ytb_ys + 1)]
        [set tracker_attend_clinic_bg_2y_m_hiv1_ytb_ns (tracker_attend_clinic_bg_2y_m_hiv1_ytb_ns + 1)]
      ]
      if (breed = hiv1tb2_fs or breed = hiv1tb3_fs) and tb_clinic_visit_symp = 0 [
        ifelse (breed = hiv1tb3_fs or chronic = 1 or random-float 1 < prob_transient_clinic_hiv1)
        [set tracker_attend_clinic_bg_2y_f_hiv1_ytb_ys (tracker_attend_clinic_bg_2y_f_hiv1_ytb_ys + 1)]
        [set tracker_attend_clinic_bg_2y_f_hiv1_ytb_ns (tracker_attend_clinic_bg_2y_f_hiv1_ytb_ns + 1)]
      ]

      if (breed = hiv2tb0_ms or breed = hiv2tb1_ms or breed = hiv2tb4_ms) and tb_clinic_visit_symp = 0 [
        ifelse (chronic = 1 or random-float 1 < prob_transient_clinic_hiv2)
        [set tracker_attend_clinic_bg_2y_m_hiv2_ntb_ys (tracker_attend_clinic_bg_2y_m_hiv2_ntb_ys + 1)]
        [set tracker_attend_clinic_bg_2y_m_hiv2_ntb_ns (tracker_attend_clinic_bg_2y_m_hiv2_ntb_ns + 1)]
      ]
      if (breed = hiv2tb0_fs or breed = hiv2tb1_fs or breed = hiv2tb4_fs) and tb_clinic_visit_symp = 0 [
        ifelse (chronic = 1 or random-float 1 < prob_transient_clinic_hiv2)
        [set tracker_attend_clinic_bg_2y_f_hiv2_ntb_ys (tracker_attend_clinic_bg_2y_f_hiv2_ntb_ys + 1)]
        [set tracker_attend_clinic_bg_2y_f_hiv2_ntb_ns (tracker_attend_clinic_bg_2y_f_hiv2_ntb_ns + 1)]
      ]
      if (breed = hiv2tb2_ms or breed = hiv2tb3_ms) and tb_clinic_visit_symp = 0 [
        ifelse (breed = hiv2tb3_ms or chronic = 1 or random-float 1 < prob_transient_clinic_hiv2)
        [set tracker_attend_clinic_bg_2y_m_hiv2_ytb_ys (tracker_attend_clinic_bg_2y_m_hiv2_ytb_ys + 1)]
        [set tracker_attend_clinic_bg_2y_m_hiv2_ytb_ns (tracker_attend_clinic_bg_2y_m_hiv2_ytb_ns + 1)]
      ]
      if (breed = hiv2tb2_fs or breed = hiv2tb3_fs) and tb_clinic_visit_symp = 0 [
        ifelse (breed = hiv2tb3_fs or chronic = 1 or random-float 1 < prob_transient_clinic_hiv2)
        [set tracker_attend_clinic_bg_2y_f_hiv2_ytb_ys (tracker_attend_clinic_bg_2y_f_hiv2_ytb_ys + 1)]
        [set tracker_attend_clinic_bg_2y_f_hiv2_ytb_ns (tracker_attend_clinic_bg_2y_f_hiv2_ytb_ns + 1)]
      ]
    ]

    ifelse breed = hiv0tb4_ms or breed = hiv0tb4_fs or breed = hiv1tb4_ms or breed = hiv1tb4_fs or breed = hiv2tb4_ms or breed = hiv2tb4_fs or no_tb_on_treat = 1
    [if tb_clinic_visit_symp = 0 [reset_clinic_visiting]]
    [
      ifelse intervention = 2 or intervention = 3
      [tutt_screen]
      [
        set dr_diagnosed 0
        ifelse detect_at_next_clinic_visit = 1
        [;detection following previous ILFU
          clinic_visit_test_pos
        ]
        [;no detection following previous ILFU
          let my_sputum_prob 0
          let my_xray_sens 0
          let my_doc_treat_immed_prob 0
          let my_test_indicative_prob 0
          ifelse (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
            breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
            breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
          [set my_sputum_prob produce_sputum_prob_tb
            set my_xray_sens routine_xray_sens
            set my_doc_treat_immed_prob (0.25 + 0.05)
            set my_test_indicative_prob 0.05
          ]
          [set my_sputum_prob produce_sputum_prob_notb
            set my_xray_sens (1 - routine_xray_spec)
            set my_doc_treat_immed_prob (0.25 + 0.01)
            set my_test_indicative_prob 0.02]

          let my_symp_screen_prob 0
          let my_xray_prob 0
          ifelse hiv_art_status = 2
          [set my_xray_prob routine_xray_prob_hiv2
            set my_symp_screen_prob routine_symptom_screen_prob]
          [set my_xray_prob routine_xray_prob_hiv01]

          if intervention = 1
          [
            set my_symp_screen_prob int_clinic_symp_screen_prob
          ]

          let my_doc_prob 0.6
          if hiv_art_status = 1 [set my_doc_prob 0.8]
          if intervention = 1 and hiv_art_status = 2 [set my_doc_prob 0.75]

          let my_xpert_sens (1 - routine_xpert_spec)
          if (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
            breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
            breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
          [
            ifelse tb_clinic_visit_symp = 1
            [set my_xpert_sens xpert_sens_passive]
            [set my_xpert_sens xpert_sens_active]
          ]



          set my_symp 0
          ifelse breed = hiv0tb3_ms or breed = hiv0tb3_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs or chronic = 1
          [set my_symp 1]
          [
            if hiv_art_status = 0 and random-float 1 < prob_transient_clinic_hiv0
            [set my_symp 1]
            if hiv_art_status = 1 and random-float 1 < prob_transient_clinic_hiv1
            [set my_symp 1]
            if hiv_art_status = 2 and random-float 1 < prob_transient_clinic_hiv2
            [set my_symp 1]
          ]
          if tb_clinic_visit_symp = 1 [set my_symp 1]
          set eligible_detect_next_visit 0

          ifelse (breed = hiv2tb0_ms or breed = hiv2tb0_fs or breed = hiv2tb1_ms or breed = hiv2tb1_fs or
            breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs) and ticks >= (ticks_at_last_xpert_attempt + 12)
          [;annual visit
            ifelse random-float 1 < routine_annual_visit_prob
            [;annual visit happens
              ifelse tb_clinic_visit_symp = 1
              [
                set tracker_clinic_active_screened_p lput hiv_art_status tracker_clinic_active_screened_p
                set tracker_clinic_art_visit_p (tracker_clinic_art_visit_p + 1)
                set tracker_clinic_sputum_attempt_p (lput hiv_art_status tracker_clinic_sputum_attempt_p)
              ]
              [
                set tracker_clinic_active_screened_a lput hiv_art_status tracker_clinic_active_screened_a
                set tracker_clinic_art_visit_a (tracker_clinic_art_visit_a + 1)
                set tracker_clinic_sputum_attempt_a (lput hiv_art_status tracker_clinic_sputum_attempt_a)
              ]
              if year = 2026 [set sputum_attempt_2026 1]
              set ticks_at_last_xpert_attempt ticks
              ifelse random-float 1 < my_sputum_prob
              [;produce sputum
                ifelse tb_clinic_visit_symp = 1
                [set tracker_clinic_sputum_produced_p (lput hiv_art_status tracker_clinic_sputum_produced_p)]
                [set tracker_clinic_sputum_produced_a (lput hiv_art_status tracker_clinic_sputum_produced_a)]
                set ticks_at_last_xpert ticks
                if year = 2026 [set sputum_produced_2026 1]
                ifelse random-float 1 < my_xpert_sens
                [;xpert+
                  ifelse tb_clinic_visit_symp = 1
                  [set tracker_clinic_sputum_pos_p (tracker_clinic_sputum_pos_p + 1)]
                  [set tracker_clinic_sputum_pos_a (tracker_clinic_sputum_pos_a + 1)]
                  set eligible_detect_next_visit 1
                  set start_treat_route "annual_xpertpos"
                  clinic_visit_test_pos
                ]
                [;xpert-
                  clinic_visit_test_neg
                ]
              ]
              [;can't produce sputum
                ifelse tb_clinic_visit_symp = 1
                [set tracker_clinic_symp_screen_p (tracker_clinic_symp_screen_p + 1)]
                [set tracker_clinic_symp_screen_a (tracker_clinic_symp_screen_a + 1)]
                ifelse my_symp = 1
                [;symptomatic
                  ifelse tb_clinic_visit_symp = 1
                  [set tracker_clinic_dr_ref_p (tracker_clinic_dr_ref_p + 1)]
                  [set tracker_clinic_dr_ref_a (tracker_clinic_dr_ref_a + 1)]
                  ifelse random-float 1 < 0.25
                  [;ltfu
                    clinic_visit_test_neg
                  ]
                  [;see a doctor
                    ifelse tb_clinic_visit_symp = 1
                    [set tracker_clinic_dr_see_p (tracker_clinic_dr_see_p + 1)]
                    [set tracker_clinic_dr_see_a (tracker_clinic_dr_see_a + 1)]
                    let rand random-float 1
                    ifelse rand < 0.25
                    [;no tests
                      clinic_visit_test_neg
                    ]
                    [ifelse rand < my_doc_treat_immed_prob
                      [;start treat
                        ifelse tb_clinic_visit_symp = 1
                        [set tracker_clinic_dr_immed_treat_p (tracker_clinic_dr_immed_treat_p + 1)]
                        [set tracker_clinic_dr_immed_treat_a (tracker_clinic_dr_immed_treat_a + 1)]
                        set dr_diagnosed 1
                        set start_treat_route "annual_doc_immed"
                        clinic_visit_test_pos
                      ]
                      [;referral for further tests
                        ifelse tb_clinic_visit_symp = 1
                        [set tracker_clinic_dr_invest_p (tracker_clinic_dr_invest_p + 1)]
                        [set tracker_clinic_dr_invest_a (tracker_clinic_dr_invest_a + 1)]
                        ifelse random-float 1 < my_test_indicative_prob
                        [;indicative of TB
                          ifelse tb_clinic_visit_symp = 1
                          [set tracker_clinic_dr_pos_p (tracker_clinic_dr_pos_p + 1)]
                          [set tracker_clinic_dr_pos_a (tracker_clinic_dr_pos_a + 1)]
                          set start_treat_route "annual_doc_test"
                          clinic_visit_test_pos
                        ]
                        [;not indicative of TB
                          clinic_visit_test_neg
                        ]
                      ]
                    ]
                  ]
                ]
                [;asymptomatic
                  clinic_visit_test_neg
                ]
              ]
            ]
            [;annual visit doesn't happen
              clinic_visit_test_neg
            ]
          ]
          [;not annual visit
            ifelse random-float 1 < my_symp_screen_prob
            [;receive symptom screen
              ifelse tb_clinic_visit_symp = 1
              [
                set tracker_clinic_active_screened_p lput hiv_art_status tracker_clinic_active_screened_p
                set tracker_clinic_symp_screen_p (tracker_clinic_symp_screen_p + 1)
              ]
              [
                set tracker_clinic_active_screened_a lput hiv_art_status tracker_clinic_active_screened_a
                set tracker_clinic_symp_screen_a (tracker_clinic_symp_screen_a + 1)
              ]
              ifelse my_symp = 1
              [;symptoms
                ifelse ticks >= (ticks_at_last_xpert + routine_min_month_between_xpert)
                [;more than 6 months since last xpert
                  ifelse tb_clinic_visit_symp = 1
                  [set tracker_clinic_sputum_attempt_p (lput hiv_art_status tracker_clinic_sputum_attempt_p)]
                  [set tracker_clinic_sputum_attempt_a (lput hiv_art_status tracker_clinic_sputum_attempt_a)]
                  if year = 2026 [set sputum_attempt_2026 1]
                  set ticks_at_last_xpert_attempt ticks
                  ifelse random-float 1 < my_sputum_prob
                  [;produce sputum
                    ifelse tb_clinic_visit_symp = 1
                    [set tracker_clinic_sputum_produced_p (lput hiv_art_status tracker_clinic_sputum_produced_p)]
                    [set tracker_clinic_sputum_produced_a (lput hiv_art_status tracker_clinic_sputum_produced_a)]
                    if year = 2026 [set sputum_produced_2026 1]
                    set ticks_at_last_xpert ticks
                    ifelse random-float 1 < my_xpert_sens
                    [;xpert positive
                      ifelse tb_clinic_visit_symp = 1
                      [set tracker_clinic_sputum_pos_p (tracker_clinic_sputum_pos_p + 1)]
                      [set tracker_clinic_sputum_pos_a (tracker_clinic_sputum_pos_a + 1)]
                      set eligible_detect_next_visit 1
                      set start_treat_route "other_xpertpos"
                      clinic_visit_test_pos
                    ]
                    [;xpert negative
                      clinic_visit_test_neg
                    ]
                  ]
                  [;can't produce sputum
                    ifelse tb_clinic_visit_symp = 1
                    [set tracker_clinic_dr_ref_p (tracker_clinic_dr_ref_p + 1)]
                    [set tracker_clinic_dr_ref_a (tracker_clinic_dr_ref_a + 1)]
                    ifelse random-float 1 < (1 - my_doc_prob)
                    [;ltfu
                      clinic_visit_test_neg
                    ]
                    [;see a doctor
                      ifelse tb_clinic_visit_symp = 1
                      [set tracker_clinic_dr_see_p (tracker_clinic_dr_see_p + 1)]
                      [set tracker_clinic_dr_see_a (tracker_clinic_dr_see_a + 1)]
                      let rand random-float 1
                      ifelse rand < 0.25
                      [;no tests
                        clinic_visit_test_neg
                      ]
                      [ifelse rand < my_doc_treat_immed_prob
                        [;start treat
                          ifelse tb_clinic_visit_symp = 1
                          [set tracker_clinic_dr_immed_treat_p (tracker_clinic_dr_immed_treat_p + 1)]
                          [set tracker_clinic_dr_immed_treat_a (tracker_clinic_dr_immed_treat_a + 1)]
                          set dr_diagnosed 1
                          set start_treat_route "other_doc_immed"
                          clinic_visit_test_pos
                        ]
                        [;referral for further tests
                          ifelse tb_clinic_visit_symp = 1
                          [set tracker_clinic_dr_invest_p (tracker_clinic_dr_invest_p + 1)]
                          [set tracker_clinic_dr_invest_a (tracker_clinic_dr_invest_a + 1)]
                          ifelse random-float 1 < my_test_indicative_prob
                          [;indicative of TB
                            ifelse tb_clinic_visit_symp = 1
                            [set tracker_clinic_dr_pos_p (tracker_clinic_dr_pos_p + 1)]
                            [set tracker_clinic_dr_pos_a (tracker_clinic_dr_pos_a + 1)]
                            set start_treat_route "other_doc_test"
                            clinic_visit_test_pos
                          ]
                          [;not indicative of TB
                            clinic_visit_test_neg
                          ]
                        ]
                      ]
                    ]
                  ]
                ]
                [;less than routine_min_month_between_xpert months since last xpert
                  clinic_visit_test_neg
                ]
              ]
              [;no symptoms
                clinic_visit_test_neg
              ]
            ]
            [;don't receive symptom screen
              clinic_visit_test_neg
            ]
          ]
        ]
      ]
    ]
  ]
end

to clinic_symp_after_tutt
  set dr_diagnosed 0
  ifelse detect_at_next_clinic_visit = 1
  [;detection following previous ILFU
    clinic_visit_test_pos
  ]
  [;no detection following previous ILFU
    let my_sputum_prob 0
    let my_xray_sens 0
    let my_doc_treat_immed_prob 0
    let my_test_indicative_prob 0
    ifelse (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
      breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
      breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
    [set my_sputum_prob produce_sputum_prob_tb
      set my_xray_sens routine_xray_sens
      set my_doc_treat_immed_prob (0.25 + 0.05)
      set my_test_indicative_prob 0.05
    ]
    [set my_sputum_prob produce_sputum_prob_notb
      set my_xray_sens (1 - routine_xray_spec)
      set my_doc_treat_immed_prob (0.25 + 0.01)
      set my_test_indicative_prob 0.02]

    let my_symp_screen_prob 0
    let my_xray_prob 0
    ifelse hiv_art_status = 2
    [set my_xray_prob routine_xray_prob_hiv2
      set my_symp_screen_prob routine_symptom_screen_prob]
    [set my_xray_prob routine_xray_prob_hiv01]

    set my_symp_screen_prob int_clinic_symp_screen_prob

    let my_doc_prob 0.6
    if hiv_art_status = 1 [set my_doc_prob 0.8]
    if intervention = 1 and hiv_art_status = 2 [set my_doc_prob 0.75]

    let my_xpert_sens (1 - routine_xpert_spec)
    if (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
      breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
      breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
    [
      ifelse tb_clinic_visit_symp = 1
      [set my_xpert_sens xpert_sens_passive]
      [set my_xpert_sens xpert_sens_active]
    ]



    set my_symp 0
    ifelse breed = hiv0tb3_ms or breed = hiv0tb3_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs or chronic = 1
    [set my_symp 1]
    [
      if hiv_art_status = 0 and random-float 1 < prob_transient_clinic_hiv0
      [set my_symp 1]
      if hiv_art_status = 1 and random-float 1 < prob_transient_clinic_hiv1
      [set my_symp 1]
      if hiv_art_status = 2 and random-float 1 < prob_transient_clinic_hiv2
      [set my_symp 1]
    ]
    if tb_clinic_visit_symp = 1 [set my_symp 1]
    set eligible_detect_next_visit 0

    ifelse (breed = hiv2tb0_ms or breed = hiv2tb0_fs or breed = hiv2tb1_ms or breed = hiv2tb1_fs or
      breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs) and ticks >= (ticks_at_last_xpert_attempt + 12)
    [;annual visit
      ifelse random-float 1 < routine_annual_visit_prob
      [;annual visit happens
        ifelse tb_clinic_visit_symp = 1
        [
          set tracker_clinic_active_screened_p lput hiv_art_status tracker_clinic_active_screened_p
          set tracker_clinic_art_visit_p (tracker_clinic_art_visit_p + 1)
          set tracker_clinic_sputum_attempt_p (lput hiv_art_status tracker_clinic_sputum_attempt_p)
        ]
        [
          set tracker_clinic_active_screened_a lput hiv_art_status tracker_clinic_active_screened_a
          set tracker_clinic_art_visit_a (tracker_clinic_art_visit_a + 1)
          set tracker_clinic_sputum_attempt_a (lput hiv_art_status tracker_clinic_sputum_attempt_a)
        ]
        if year = 2026 [set sputum_attempt_2026 1]
        set ticks_at_last_xpert_attempt ticks
        ifelse random-float 1 < my_sputum_prob
        [;produce sputum
          ifelse tb_clinic_visit_symp = 1
          [set tracker_clinic_sputum_produced_p (lput hiv_art_status tracker_clinic_sputum_produced_p)]
          [set tracker_clinic_sputum_produced_a (lput hiv_art_status tracker_clinic_sputum_produced_a)]
          set ticks_at_last_xpert ticks
          if year = 2026 [set sputum_produced_2026 1]
          ifelse random-float 1 < my_xpert_sens
          [;xpert+
            ifelse tb_clinic_visit_symp = 1
            [set tracker_clinic_sputum_pos_p (tracker_clinic_sputum_pos_p + 1)]
            [set tracker_clinic_sputum_pos_a (tracker_clinic_sputum_pos_a + 1)]
            set eligible_detect_next_visit 1
            set start_treat_route "annual_xpertpos"
            clinic_visit_test_pos
          ]
          [;xpert-
            clinic_visit_test_neg
          ]
        ]
        [;can't produce sputum
          ifelse tb_clinic_visit_symp = 1
          [set tracker_clinic_symp_screen_p (tracker_clinic_symp_screen_p + 1)]
          [set tracker_clinic_symp_screen_a (tracker_clinic_symp_screen_a + 1)]
          ifelse my_symp = 1
          [;symptomatic
            ifelse tb_clinic_visit_symp = 1
            [set tracker_clinic_dr_ref_p (tracker_clinic_dr_ref_p + 1)]
            [set tracker_clinic_dr_ref_a (tracker_clinic_dr_ref_a + 1)]
            ifelse random-float 1 < 0.25
            [;ltfu
              clinic_visit_test_neg
            ]
            [;see a doctor
              ifelse tb_clinic_visit_symp = 1
              [set tracker_clinic_dr_see_p (tracker_clinic_dr_see_p + 1)]
              [set tracker_clinic_dr_see_a (tracker_clinic_dr_see_a + 1)]
              let rand random-float 1
              ifelse rand < 0.25
              [;no tests
                clinic_visit_test_neg
              ]
              [ifelse rand < my_doc_treat_immed_prob
                [;start treat
                  ifelse tb_clinic_visit_symp = 1
                  [set tracker_clinic_dr_immed_treat_p (tracker_clinic_dr_immed_treat_p + 1)]
                  [set tracker_clinic_dr_immed_treat_a (tracker_clinic_dr_immed_treat_a + 1)]
                  set dr_diagnosed 1
                  set start_treat_route "annual_doc_immed"
                  clinic_visit_test_pos
                ]
                [;referral for further tests
                  ifelse tb_clinic_visit_symp = 1
                  [set tracker_clinic_dr_invest_p (tracker_clinic_dr_invest_p + 1)]
                  [set tracker_clinic_dr_invest_a (tracker_clinic_dr_invest_a + 1)]
                  ifelse random-float 1 < my_test_indicative_prob
                  [;indicative of TB
                    ifelse tb_clinic_visit_symp = 1
                    [set tracker_clinic_dr_pos_p (tracker_clinic_dr_pos_p + 1)]
                    [set tracker_clinic_dr_pos_a (tracker_clinic_dr_pos_a + 1)]
                    set start_treat_route "annual_doc_test"
                    clinic_visit_test_pos
                  ]
                  [;not indicative of TB
                    clinic_visit_test_neg
                  ]
                ]
              ]
            ]
          ]
          [;asymptomatic
            clinic_visit_test_neg
          ]
        ]
      ]
      [;annual visit doesn't happen
        clinic_visit_test_neg
      ]
    ]
    [;not annual visit
      ifelse random-float 1 < my_symp_screen_prob
      [;receive symptom screen
        ifelse tb_clinic_visit_symp = 1
        [
          set tracker_clinic_active_screened_p lput hiv_art_status tracker_clinic_active_screened_p
          set tracker_clinic_symp_screen_p (tracker_clinic_symp_screen_p + 1)
        ]
        [
          set tracker_clinic_active_screened_a lput hiv_art_status tracker_clinic_active_screened_a
          set tracker_clinic_symp_screen_a (tracker_clinic_symp_screen_a + 1)
        ]
        ifelse my_symp = 1
        [;symptoms
          ifelse ticks >= (ticks_at_last_xpert + routine_min_month_between_xpert)
          [;more than 6 months since last xpert
            ifelse tb_clinic_visit_symp = 1
            [set tracker_clinic_sputum_attempt_p (lput hiv_art_status tracker_clinic_sputum_attempt_p)]
            [set tracker_clinic_sputum_attempt_a (lput hiv_art_status tracker_clinic_sputum_attempt_a)]
            if year = 2026 [set sputum_attempt_2026 1]
            set ticks_at_last_xpert_attempt ticks
            ifelse random-float 1 < my_sputum_prob
            [;produce sputum
              ifelse tb_clinic_visit_symp = 1
              [set tracker_clinic_sputum_produced_p (lput hiv_art_status tracker_clinic_sputum_produced_p)]
              [set tracker_clinic_sputum_produced_a (lput hiv_art_status tracker_clinic_sputum_produced_a)]
              if year = 2026 [set sputum_produced_2026 1]
              set ticks_at_last_xpert ticks
              ifelse random-float 1 < my_xpert_sens
              [;xpert positive
                ifelse tb_clinic_visit_symp = 1
                [set tracker_clinic_sputum_pos_p (tracker_clinic_sputum_pos_p + 1)]
                [set tracker_clinic_sputum_pos_a (tracker_clinic_sputum_pos_a + 1)]
                set eligible_detect_next_visit 1
                set start_treat_route "other_xpertpos"
                clinic_visit_test_pos
              ]
              [;xpert negative
                clinic_visit_test_neg
              ]
            ]
            [;can't produce sputum
              ifelse tb_clinic_visit_symp = 1
              [set tracker_clinic_dr_ref_p (tracker_clinic_dr_ref_p + 1)]
              [set tracker_clinic_dr_ref_a (tracker_clinic_dr_ref_a + 1)]
              ifelse random-float 1 < (1 - my_doc_prob)
              [;ltfu
                clinic_visit_test_neg
              ]
              [;see a doctor
                ifelse tb_clinic_visit_symp = 1
                [set tracker_clinic_dr_see_p (tracker_clinic_dr_see_p + 1)]
                [set tracker_clinic_dr_see_a (tracker_clinic_dr_see_a + 1)]
                let rand random-float 1
                ifelse rand < 0.25
                [;no tests
                  clinic_visit_test_neg
                ]
                [ifelse rand < my_doc_treat_immed_prob
                  [;start treat
                    ifelse tb_clinic_visit_symp = 1
                    [set tracker_clinic_dr_immed_treat_p (tracker_clinic_dr_immed_treat_p + 1)]
                    [set tracker_clinic_dr_immed_treat_a (tracker_clinic_dr_immed_treat_a + 1)]
                    set dr_diagnosed 1
                    set start_treat_route "other_doc_immed"
                    clinic_visit_test_pos
                  ]
                  [;referral for further tests
                    ifelse tb_clinic_visit_symp = 1
                    [set tracker_clinic_dr_invest_p (tracker_clinic_dr_invest_p + 1)]
                    [set tracker_clinic_dr_invest_a (tracker_clinic_dr_invest_a + 1)]
                    ifelse random-float 1 < my_test_indicative_prob
                    [;indicative of TB
                      ifelse tb_clinic_visit_symp = 1
                      [set tracker_clinic_dr_pos_p (tracker_clinic_dr_pos_p + 1)]
                      [set tracker_clinic_dr_pos_a (tracker_clinic_dr_pos_a + 1)]
                      set start_treat_route "other_doc_test"
                      clinic_visit_test_pos
                    ]
                    [;not indicative of TB
                      clinic_visit_test_neg
                    ]
                  ]
                ]
              ]
            ]
          ]
          [;less than routine_min_month_between_xpert months since last xpert
            clinic_visit_test_neg
          ]
        ]
        [;no symptoms
          clinic_visit_test_neg
        ]
      ]
      [;don't receive symptom screen
        clinic_visit_test_neg
      ]
    ]
  ]
end


to clinic_visit_test_pos
  if detect_at_next_clinic_visit = 0 [
    ifelse tb_clinic_visit_symp = 1
    [set tracker_clinic_diagnosed_active_p lput hiv_art_status tracker_clinic_diagnosed_active_p]
    [set tracker_clinic_diagnosed_active_a lput hiv_art_status tracker_clinic_diagnosed_active_a]
    if (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
      breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
      breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
    [
      ifelse tb_clinic_visit_symp = 1
      [set tracker_clinic_diagnosed_active_havetb_p lput hiv_art_status tracker_clinic_diagnosed_active_havetb_p]
      [set tracker_clinic_diagnosed_active_havetb_a lput hiv_art_status tracker_clinic_diagnosed_active_havetb_a]
    ]
  ]
  ifelse random-float 1 > routine_iltfu or detect_at_next_clinic_visit = 1 or dr_diagnosed = 1
  [;detected
    ifelse tb_clinic_visit_symp = 1
    [set tracker_clinic_start_treat_active_p lput hiv_art_status tracker_clinic_start_treat_active_p]
    [set tracker_clinic_start_treat_active_a lput hiv_art_status tracker_clinic_start_treat_active_a]
    if detect_at_next_clinic_visit = 1 [
      ifelse tb_clinic_visit_symp = 1
      [set tracker_clinic_start_treat_after_iltfu_p lput hiv_art_status tracker_clinic_start_treat_after_iltfu_p]
      [set tracker_clinic_start_treat_after_iltfu_a lput hiv_art_status tracker_clinic_start_treat_after_iltfu_a]
    ]
    set detect_at_next_clinic_visit 0
    set eligible_detect_next_visit 0
    if intervention = 2 or intervention = 3 [
      if tutt_reason = 1 [set tracker_tutt_recenttb_detected_year (tracker_tutt_recenttb_detected_year + 1)]
      if tutt_reason = 2 [set tracker_tutt_contact_detected_year (tracker_tutt_contact_detected_year + 1)]
      if tutt_reason = 3 [set tracker_tutt_art_detected_year (tracker_tutt_art_detected_year + 1)]
    ]

    ifelse (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
      breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
      breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)

    [;have tb
      ifelse tb_clinic_visit_symp = 1
      [set tracker_clinic_start_treat_active_havetb_p lput hiv_art_status tracker_clinic_start_treat_active_havetb_p]
      [set tracker_clinic_start_treat_active_havetb_a lput hiv_art_status tracker_clinic_start_treat_active_havetb_a]

      ifelse tb_clinic_visit_symp = 0 [
        if (breed = hiv0tb2_ms or breed = hiv0tb3_ms) and my_symp = 0 [set tracker_diagnosed_bg_m_hiv0_ytb_ns (tracker_diagnosed_bg_m_hiv0_ytb_ns + 1)]
        if (breed = hiv1tb2_ms or breed = hiv1tb3_ms) and my_symp = 0 [set tracker_diagnosed_bg_m_hiv1_ytb_ns (tracker_diagnosed_bg_m_hiv1_ytb_ns + 1)]
        if (breed = hiv2tb2_ms or breed = hiv2tb3_ms) and my_symp = 0 [set tracker_diagnosed_bg_m_hiv2_ytb_ns (tracker_diagnosed_bg_m_hiv2_ytb_ns + 1)]
        if (breed = hiv0tb2_fs or breed = hiv0tb3_fs) and my_symp = 0 [set tracker_diagnosed_bg_f_hiv0_ytb_ns (tracker_diagnosed_bg_f_hiv0_ytb_ns + 1)]
        if (breed = hiv1tb2_fs or breed = hiv1tb3_fs) and my_symp = 0 [set tracker_diagnosed_bg_f_hiv1_ytb_ns (tracker_diagnosed_bg_f_hiv1_ytb_ns + 1)]
        if (breed = hiv2tb2_fs or breed = hiv2tb3_fs) and my_symp = 0 [set tracker_diagnosed_bg_f_hiv2_ytb_ns (tracker_diagnosed_bg_f_hiv2_ytb_ns + 1)]

        if (breed = hiv0tb2_ms or breed = hiv0tb3_ms) and my_symp = 1 [set tracker_diagnosed_bg_m_hiv0_ytb_ys (tracker_diagnosed_bg_m_hiv0_ytb_ys + 1)]
        if (breed = hiv1tb2_ms or breed = hiv1tb3_ms) and my_symp = 1 [set tracker_diagnosed_bg_m_hiv1_ytb_ys (tracker_diagnosed_bg_m_hiv1_ytb_ys + 1)]
        if (breed = hiv2tb2_ms or breed = hiv2tb3_ms) and my_symp = 1 [set tracker_diagnosed_bg_m_hiv2_ytb_ys (tracker_diagnosed_bg_m_hiv2_ytb_ys + 1)]
        if (breed = hiv0tb2_fs or breed = hiv0tb3_fs) and my_symp = 1 [set tracker_diagnosed_bg_f_hiv0_ytb_ys (tracker_diagnosed_bg_f_hiv0_ytb_ys + 1)]
        if (breed = hiv1tb2_fs or breed = hiv1tb3_fs) and my_symp = 1 [set tracker_diagnosed_bg_f_hiv1_ytb_ys (tracker_diagnosed_bg_f_hiv1_ytb_ys + 1)]
        if (breed = hiv2tb2_fs or breed = hiv2tb3_fs) and my_symp = 1 [set tracker_diagnosed_bg_f_hiv2_ytb_ys (tracker_diagnosed_bg_f_hiv2_ytb_ys + 1)]
      ]
      [
        if (breed = hiv0tb2_ms or breed = hiv0tb3_ms) [set tracker_diagnosed_symp_active_m_hiv0_ytb_ys (tracker_diagnosed_symp_active_m_hiv0_ytb_ys + 1)]
        if (breed = hiv1tb2_ms or breed = hiv1tb3_ms) [set tracker_diagnosed_symp_active_m_hiv1_ytb_ys (tracker_diagnosed_symp_active_m_hiv1_ytb_ys + 1)]
        if (breed = hiv2tb2_ms or breed = hiv2tb3_ms) [set tracker_diagnosed_symp_active_m_hiv2_ytb_ys (tracker_diagnosed_symp_active_m_hiv2_ytb_ys + 1)]
        if (breed = hiv0tb2_fs or breed = hiv0tb3_fs) [set tracker_diagnosed_symp_active_f_hiv0_ytb_ys (tracker_diagnosed_symp_active_f_hiv0_ytb_ys + 1)]
        if (breed = hiv1tb2_fs or breed = hiv1tb3_fs) [set tracker_diagnosed_symp_active_f_hiv1_ytb_ys (tracker_diagnosed_symp_active_f_hiv1_ytb_ys + 1)]
        if (breed = hiv2tb2_fs or breed = hiv2tb3_fs) [set tracker_diagnosed_symp_active_f_hiv2_ytb_ys (tracker_diagnosed_symp_active_f_hiv2_ytb_ys + 1)]
      ]

      set tb_clinic_visit_symp 0
      if intervention = 2 or intervention = 3 [
        if tutt_reason = 1 [set tracker_tutt_recenttb_truepos_year (tracker_tutt_recenttb_truepos_year + 1)]
        if tutt_reason = 2 [set tracker_tutt_contact_truepos_year (tracker_tutt_contact_truepos_year + 1)]
        if tutt_reason = 3 [set tracker_tutt_art_truepos_year (tracker_tutt_art_truepos_year + 1)]
      ]

      set correct_ticks_at_disease_transition ticks
      start_treatment
    ]
    [;don't have tb
      set tracker_falsepos_route lput start_treat_route tracker_falsepos_route
      set tb_clinic_visit_symp 0
      if (clinic_visit_output_year - start_year) * 12 < ticks [reset_clinic_visiting]
      set no_tb_on_treat 1
      set ticks_at_falsepos ticks
      let treat_end_time 0
      ifelse hiv_art_status = 0
      [set treat_end_time (- LN (1 - random-float 1) / (TB_treatment_dropout_rate_hiv0_monthly))]
      [set treat_end_time (- LN (1 - random-float 1) / (TB_treatment_dropout_rate_hiv12_monthly))]
      set treat_end_time (min list treat_end_time 6)
      set correct_ticks_at_disease_development 0

      time:schedule-event self [ [] ->
        set no_tb_on_treat 0
      ]
      ticks + treat_end_time
    ]
  ]
  [;loss to follow up
    if eligible_detect_next_visit = 1 [
      ifelse random-float 1 < 0.5 [
        set detect_at_next_clinic_visit 1
        set eligible_detect_next_visit 0
        time:schedule-event self [ [] ->
          set detect_at_next_clinic_visit 0
        ]
        ticks + 24
      ]
      [
        set detect_at_next_clinic_visit 0
        set eligible_detect_next_visit 0
      ]
    ]
    clinic_visit_test_neg
  ]
end

to clinic_visit_test_neg
  if tb_clinic_visit_symp = 0 [
    ifelse (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
      breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
      breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
    [;have tb
      disease_transition
    ]
    [;don't have tb
      if (clinic_visit_output_year - start_year) * 12 < ticks [reset_clinic_visiting]
    ]
  ]
end

to clinic_visit_tb_symp
  if ticks = correct_ticks_at_disease_transition [
    ifelse ticks_at_diagnosis < (ticks - 24)
    [;no recent tb diagnosis
      if (breed = hiv0tb2_ms or breed = hiv0tb3_ms) [set tracker_attend_clinic_symp_nr_m_hiv0_ytb_ys (tracker_attend_clinic_symp_nr_m_hiv0_ytb_ys + 1)]
      if (breed = hiv1tb2_ms or breed = hiv1tb3_ms) [set tracker_attend_clinic_symp_nr_m_hiv1_ytb_ys (tracker_attend_clinic_symp_nr_m_hiv1_ytb_ys + 1)]
      if (breed = hiv2tb2_ms or breed = hiv2tb3_ms) [set tracker_attend_clinic_symp_nr_m_hiv2_ytb_ys (tracker_attend_clinic_symp_nr_m_hiv2_ytb_ys + 1)]
      if (breed = hiv0tb2_fs or breed = hiv0tb3_fs) [set tracker_attend_clinic_symp_nr_f_hiv0_ytb_ys (tracker_attend_clinic_symp_nr_f_hiv0_ytb_ys + 1)]
      if (breed = hiv1tb2_fs or breed = hiv1tb3_fs) [set tracker_attend_clinic_symp_nr_f_hiv1_ytb_ys (tracker_attend_clinic_symp_nr_f_hiv1_ytb_ys + 1)]
      if (breed = hiv2tb2_fs or breed = hiv2tb3_fs) [set tracker_attend_clinic_symp_nr_f_hiv2_ytb_ys (tracker_attend_clinic_symp_nr_f_hiv2_ytb_ys + 1)]

      if (breed = hiv0tb0_ms or breed = hiv0tb1_ms or breed = hiv0tb4_ms) [set tracker_attend_clinic_symp_nr_m_hiv0_ntb_ys (tracker_attend_clinic_symp_nr_m_hiv0_ntb_ys + 1)]
      if (breed = hiv1tb0_ms or breed = hiv1tb1_ms or breed = hiv1tb4_ms) [set tracker_attend_clinic_symp_nr_m_hiv1_ntb_ys (tracker_attend_clinic_symp_nr_m_hiv1_ntb_ys + 1)]
      if (breed = hiv2tb0_ms or breed = hiv2tb1_ms or breed = hiv2tb4_ms) [set tracker_attend_clinic_symp_nr_m_hiv2_ntb_ys (tracker_attend_clinic_symp_nr_m_hiv2_ntb_ys + 1)]
      if (breed = hiv0tb0_fs or breed = hiv0tb1_fs or breed = hiv0tb4_fs) [set tracker_attend_clinic_symp_nr_f_hiv0_ntb_ys (tracker_attend_clinic_symp_nr_f_hiv0_ntb_ys + 1)]
      if (breed = hiv1tb0_fs or breed = hiv1tb1_fs or breed = hiv1tb4_fs) [set tracker_attend_clinic_symp_nr_f_hiv1_ntb_ys (tracker_attend_clinic_symp_nr_f_hiv1_ntb_ys + 1)]
      if (breed = hiv2tb0_fs or breed = hiv2tb1_fs or breed = hiv2tb4_fs) [set tracker_attend_clinic_symp_nr_f_hiv2_ntb_ys (tracker_attend_clinic_symp_nr_f_hiv2_ntb_ys + 1)]
    ]
    [;recent tb diagnosis
      if (breed = hiv0tb2_ms or breed = hiv0tb3_ms) [set tracker_attend_clinic_symp_2y_m_hiv0_ytb_ys (tracker_attend_clinic_symp_2y_m_hiv0_ytb_ys + 1)]
      if (breed = hiv1tb2_ms or breed = hiv1tb3_ms) [set tracker_attend_clinic_symp_2y_m_hiv1_ytb_ys (tracker_attend_clinic_symp_2y_m_hiv1_ytb_ys + 1)]
      if (breed = hiv2tb2_ms or breed = hiv2tb3_ms) [set tracker_attend_clinic_symp_2y_m_hiv2_ytb_ys (tracker_attend_clinic_symp_2y_m_hiv2_ytb_ys + 1)]
      if (breed = hiv0tb2_fs or breed = hiv0tb3_fs) [set tracker_attend_clinic_symp_2y_f_hiv0_ytb_ys (tracker_attend_clinic_symp_2y_f_hiv0_ytb_ys + 1)]
      if (breed = hiv1tb2_fs or breed = hiv1tb3_fs) [set tracker_attend_clinic_symp_2y_f_hiv1_ytb_ys (tracker_attend_clinic_symp_2y_f_hiv1_ytb_ys + 1)]
      if (breed = hiv2tb2_fs or breed = hiv2tb3_fs) [set tracker_attend_clinic_symp_2y_f_hiv2_ytb_ys (tracker_attend_clinic_symp_2y_f_hiv2_ytb_ys + 1)]

      if (breed = hiv0tb0_ms or breed = hiv0tb1_ms or breed = hiv0tb4_ms) [set tracker_attend_clinic_symp_2y_m_hiv0_ntb_ys (tracker_attend_clinic_symp_2y_m_hiv0_ntb_ys + 1)]
      if (breed = hiv1tb0_ms or breed = hiv1tb1_ms or breed = hiv1tb4_ms) [set tracker_attend_clinic_symp_2y_m_hiv1_ntb_ys (tracker_attend_clinic_symp_2y_m_hiv1_ntb_ys + 1)]
      if (breed = hiv2tb0_ms or breed = hiv2tb1_ms or breed = hiv2tb4_ms) [set tracker_attend_clinic_symp_2y_m_hiv2_ntb_ys (tracker_attend_clinic_symp_2y_m_hiv2_ntb_ys + 1)]
      if (breed = hiv0tb0_fs or breed = hiv0tb1_fs or breed = hiv0tb4_fs) [set tracker_attend_clinic_symp_2y_f_hiv0_ntb_ys (tracker_attend_clinic_symp_2y_f_hiv0_ntb_ys + 1)]
      if (breed = hiv1tb0_fs or breed = hiv1tb1_fs or breed = hiv1tb4_fs) [set tracker_attend_clinic_symp_2y_f_hiv1_ntb_ys (tracker_attend_clinic_symp_2y_f_hiv1_ntb_ys + 1)]
      if (breed = hiv2tb0_fs or breed = hiv2tb1_fs or breed = hiv2tb4_fs) [set tracker_attend_clinic_symp_2y_f_hiv2_ntb_ys (tracker_attend_clinic_symp_2y_f_hiv2_ntb_ys + 1)]
    ]
    set tb_clinic_visit_symp 1
    clinic_visit_background

    if tb_clinic_visit_symp = 1 [

      ifelse breed = hiv0tb2_ms or breed = hiv0tb2_fs or
      breed = hiv1tb2_ms or breed = hiv1tb2_fs or
      breed = hiv2tb2_ms or breed = hiv2tb2_fs or
      breed = hiv0tb3_ms or breed = hiv0tb3_fs or
      breed = hiv1tb3_ms or breed = hiv1tb3_fs or
      breed = hiv2tb3_ms or breed = hiv2tb3_fs
      [;have tb

        ifelse random-float 1 < clinic_TBsymp_diagnosis_prob
            [clinic_visit_tb_symp_tracking
              set tracker_start_treat_passive lput hiv_art_status tracker_start_treat_passive
              set start_treat_symp 1
              start_treatment]
        [disease_transition]

      ]
      [;don't have tb
       ;ifelse chronic = 1
       ;[;symp caused by chronic
       ;]
       ;[;no symp caused by tb or chronic
       ;]
        if (clinic_visit_output_year - start_year) * 12 < ticks [reset_clinic_visiting]
      ]
    ]
    set tb_clinic_visit_symp 0
  ]
end

to clinic_visit_tb_symp_tracking
  if (breed = hiv0tb2_ms or breed = hiv0tb3_ms) [set tracker_diagnosed_symp_m_hiv0_ytb_ys (tracker_diagnosed_symp_m_hiv0_ytb_ys + 1)]
  if (breed = hiv1tb2_ms or breed = hiv1tb3_ms) [set tracker_diagnosed_symp_m_hiv1_ytb_ys (tracker_diagnosed_symp_m_hiv1_ytb_ys + 1)]
  if (breed = hiv2tb2_ms or breed = hiv2tb3_ms) [set tracker_diagnosed_symp_m_hiv2_ytb_ys (tracker_diagnosed_symp_m_hiv2_ytb_ys + 1)]
  if (breed = hiv0tb2_fs or breed = hiv0tb3_fs) [set tracker_diagnosed_symp_f_hiv0_ytb_ys (tracker_diagnosed_symp_f_hiv0_ytb_ys + 1)]
  if (breed = hiv1tb2_fs or breed = hiv1tb3_fs) [set tracker_diagnosed_symp_f_hiv1_ytb_ys (tracker_diagnosed_symp_f_hiv1_ytb_ys + 1)]
  if (breed = hiv2tb2_fs or breed = hiv2tb3_fs) [set tracker_diagnosed_symp_f_hiv2_ytb_ys (tracker_diagnosed_symp_f_hiv2_ytb_ys + 1)]
end

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;interventions;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

to int_simp
end

to start_intervention
  if intervention = 1
  [
    set routine_min_month_between_xpert int_clinic_min_month_between_xpert
  ]

  if intervention = 4 or also_comm_symp = 1
  [
    time:schedule-repeating-event "observer" [ [] ->
      community_symp_screen
    ]
    ticks 1
  ]

  if intervention = 5 or also_comm_asymp = 1
  [
    time:schedule-repeating-event "observer" [ [] ->
      community_asymp_screen
    ]
    ticks 1
  ]

  if intervention = 6 or also_xray = 1
  [
    time:schedule-repeating-event "observer" [ [] ->
      community_xray
    ]
    ticks 1
  ]
end

to tutt_screen
  set tracker_tutt_eligibility_screened_year (tracker_tutt_eligibility_screened_year + 1)
  set tutt_reason 0
  ifelse ticks_at_last_xpert < (ticks - int_clinic_min_month_between_xpert) [
    ifelse ticks_at_diagnosis > (ticks - 24) or ticks_at_falsepos > (ticks - 24)
    [set tutt_reason 1
      set tracker_tutt_recenttb_screened_year (tracker_tutt_recenttb_screened_year + 1)
      ifelse (breed = hiv0tb2_ms or breed = hiv0tb3_ms or breed = hiv0tb2_fs or breed = hiv0tb3_fs or
        breed = hiv1tb2_ms or breed = hiv1tb3_ms or breed = hiv1tb2_fs or breed = hiv1tb3_fs or
        breed = hiv2tb2_ms or breed = hiv2tb3_ms or breed = hiv2tb2_fs or breed = hiv2tb3_fs)
      [
        set tutt_pos_contacts_to_screen tutt_pos_contacts_to_screen + (int_tutt_ratio_screened_contacts_prior * int_tutt_ratio_pos_contacts_prior)
        set tutt_neg_contacts_to_screen tutt_neg_contacts_to_screen + (int_tutt_ratio_screened_contacts_prior * (1 - int_tutt_ratio_pos_contacts_prior))
      ]
      [
        set tutt_neg_contacts_to_screen tutt_neg_contacts_to_screen + (int_tutt_ratio_screened_contacts_prior)
      ]
      tutt_screen_which]

    [ifelse (breed = hiv0tb2_ms or breed = hiv0tb3_ms or breed = hiv0tb2_fs or breed = hiv0tb3_fs or
      breed = hiv1tb2_ms or breed = hiv1tb3_ms or breed = hiv1tb2_fs or breed = hiv1tb3_fs or
      breed = hiv2tb2_ms or breed = hiv2tb3_ms or breed = hiv2tb2_fs or breed = hiv2tb3_fs)
      [;have tb
        ifelse tutt_pos_contacts_to_screen > -1
        [set tutt_reason 2
          set tracker_tutt_contact_screened_year (tracker_tutt_contact_screened_year + 1)
          set tutt_pos_contacts_to_screen (tutt_pos_contacts_to_screen - 1)
          tutt_screen_which
        ]
        [;check on art
          ifelse (breed = hiv2tb0_ms or breed = hiv2tb1_ms or breed = hiv2tb2_ms or breed = hiv2tb3_ms or breed = hiv2tb4_ms or
            breed = hiv2tb0_fs or breed = hiv2tb1_fs or breed = hiv2tb2_fs or breed = hiv2tb3_fs or breed = hiv2tb4_fs) and random-float 1 < 0.95
          [set tutt_reason 3
            set tracker_tutt_art_screened_year (tracker_tutt_art_screened_year + 1)
            tutt_screen_which]
          [ifelse also_clinicsymp_aftertutt = 1
            [clinic_symp_after_tutt]
            [clinic_visit_test_neg]
          ]
        ]
      ]
      [;don't have tb
        ifelse tutt_neg_contacts_to_screen > -1
        [set tutt_reason 2
          set tracker_tutt_contact_screened_year (tracker_tutt_contact_screened_year + 1)
          set tutt_neg_contacts_to_screen (tutt_neg_contacts_to_screen - 1)
          tutt_screen_which
        ]
        [;check on art
          ifelse (breed = hiv2tb0_ms or breed = hiv2tb1_ms or breed = hiv2tb2_ms or breed = hiv2tb3_ms or breed = hiv2tb4_ms or
            breed = hiv2tb0_fs or breed = hiv2tb1_fs or breed = hiv2tb2_fs or breed = hiv2tb3_fs or breed = hiv2tb4_fs) and random-float 1 < 0.95
          [set tutt_reason 3
            set tracker_tutt_art_screened_year (tracker_tutt_art_screened_year + 1)
            tutt_screen_which]
          [ifelse also_clinicsymp_aftertutt = 1
            [clinic_symp_after_tutt]
            [clinic_visit_test_neg]
          ]
        ]
      ]
    ]
  ]
  [clinic_visit_test_neg]
end

to tutt_screen_which
  ifelse intervention = 2
  [tutt_screen_sputum]
  [ifelse intervention = 3
    [tutt_screen_saliva]
    [print "error_tutt_screen_which"]]
end

to tutt_screen_sputum
  ifelse tb_clinic_visit_symp = 1
  [set tracker_clinic_active_screened_p lput hiv_art_status tracker_clinic_active_screened_p]
  [set tracker_clinic_active_screened_a lput hiv_art_status tracker_clinic_active_screened_a]
  let my_xpert_sens (1 - routine_xpert_spec)
  if (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
    breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
    breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
  [
    ifelse tb_clinic_visit_symp = 1
    [set my_xpert_sens xpert_sens_passive]
    [set my_xpert_sens xpert_sens_active]
  ]

  set my_symp 0
  ifelse breed = hiv0tb3_ms or breed = hiv0tb3_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs or chronic = 1
  [set my_symp 1]
  [
    if hiv_art_status = 0 and random-float 1 < prob_transient_clinic_hiv0
    [set my_symp 1]
    if hiv_art_status = 1 and random-float 1 < prob_transient_clinic_hiv1
    [set my_symp 1]
    if hiv_art_status = 2 and random-float 1 < prob_transient_clinic_hiv2
    [set my_symp 1]
  ]

  let my_sputum_prob 0
  let my_xray_sens 0
  ifelse (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
    breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
    breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
  [set my_sputum_prob produce_sputum_prob_tb
    set my_xray_sens routine_xray_sens]
  [set my_sputum_prob produce_sputum_prob_notb
    set my_xray_sens (1 - routine_xray_spec)]

  let my_doc_prob 0
  ifelse hiv_art_status = 0
  [set my_doc_prob 0.65]
  [ifelse hiv_art_status = 1
    [set my_doc_prob 0.8]
    [set my_doc_prob 0.75]]

  set eligible_detect_next_visit 0

  set ticks_at_last_xpert_attempt ticks
  ifelse tb_clinic_visit_symp = 1
  [set tracker_clinic_sputum_attempt_p (lput hiv_art_status tracker_clinic_sputum_attempt_p)]
  [set tracker_clinic_sputum_attempt_a (lput hiv_art_status tracker_clinic_sputum_attempt_a)]
  if year = 2026 [set sputum_attempt_2026 1]
  ifelse random-float 1 < my_sputum_prob
  [;produce sputum
    set ticks_at_last_xpert ticks
    ifelse tb_clinic_visit_symp = 1
    [set tracker_clinic_sputum_produced_p (lput hiv_art_status tracker_clinic_sputum_produced_p)]
    [set tracker_clinic_sputum_produced_a (lput hiv_art_status tracker_clinic_sputum_produced_a)]
    if year = 2026 [set sputum_produced_2026 1]
    ifelse random-float 1 < my_xpert_sens
    [;xpert pos
      ifelse tb_clinic_visit_symp = 1
      [set tracker_clinic_sputum_pos_p (tracker_clinic_sputum_pos_p + 1)]
      [set tracker_clinic_sputum_pos_a (tracker_clinic_sputum_pos_a + 1)]
      set eligible_detect_next_visit 1
      clinic_visit_test_pos
    ]
    [;xpert neg
      ifelse random-float 1 < 0.1
      [;receive xray
        ifelse tb_clinic_visit_symp = 1
        [set tracker_clinic_xray_p (tracker_clinic_xray_p + 1)]
        [set tracker_clinic_xray_a (tracker_clinic_xray_a + 1)]
        ifelse random-float 1 < my_xray_sens
        [;xray pos
          ifelse tb_clinic_visit_symp = 1
          [set tracker_clinic_xray_pos_p (tracker_clinic_xray_pos_p + 1)]
          [set tracker_clinic_xray_pos_a (tracker_clinic_xray_pos_a + 1)]
          clinic_visit_test_pos
        ]
        [;xray neg
          clinic_visit_test_neg
        ]
      ]
      [;no further tests
        clinic_visit_test_neg
      ]
    ]
  ]
  [;can't produce sputum
    ifelse tb_clinic_visit_symp = 1
    [set tracker_clinic_symp_screen_p (tracker_clinic_symp_screen_p + 1)]
    [set tracker_clinic_symp_screen_a (tracker_clinic_symp_screen_a + 1)]
    ifelse random-float 1 < my_symp
    [;symp
      ifelse tb_clinic_visit_symp = 1
      [set tracker_clinic_dr_ref_p (tracker_clinic_dr_ref_p + 1)]
      [set tracker_clinic_dr_ref_a (tracker_clinic_dr_ref_a + 1)]
      ifelse random-float 1 < my_doc_prob
      [;see doctor
        ifelse tb_clinic_visit_symp = 1
        [set tracker_clinic_dr_see_p (tracker_clinic_dr_see_p + 1)]
        [set tracker_clinic_dr_see_a (tracker_clinic_dr_see_a + 1)]
        let rand random-float 1
        ifelse rand < 0.7
        [;further investigation
          ifelse tb_clinic_visit_symp = 1
          [set tracker_clinic_dr_invest_p (tracker_clinic_dr_invest_p + 1)]
          [set tracker_clinic_dr_invest_a (tracker_clinic_dr_invest_a + 1)]
          ifelse random-float 1 < 0.05
          [;indicative of TB
            ifelse tb_clinic_visit_symp = 1
            [set tracker_clinic_dr_pos_p (tracker_clinic_dr_pos_p + 1)]
            [set tracker_clinic_dr_pos_a (tracker_clinic_dr_pos_a + 1)]
            clinic_visit_test_pos
          ]
          [;not indicative of TB
            clinic_visit_test_neg]
        ]
        [ifelse rand < 0.95
          [;no treatment
            clinic_visit_test_neg]
          [;treatment
            ifelse tb_clinic_visit_symp = 1
            [set tracker_clinic_dr_immed_treat_p (tracker_clinic_dr_immed_treat_p + 1)]
            [set tracker_clinic_dr_immed_treat_a (tracker_clinic_dr_immed_treat_a + 1)]
            set dr_diagnosed 1
          ]
        ]
      ]
      [;don't see doctor
        clinic_visit_test_neg
      ]
    ]
    [;no symp
      clinic_visit_test_neg
    ]
  ]
  if hiv_art_status = 1 [start_art]
end

to tutt_screen_saliva
  ifelse tb_clinic_visit_symp = 1
  [set tracker_clinic_active_screened_p lput hiv_art_status tracker_clinic_active_screened_p]
  [set tracker_clinic_active_screened_a lput hiv_art_status tracker_clinic_active_screened_a]
  let my_xpert_sens (1 - routine_xpert_spec)
  if (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
    breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
    breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
  [
    ifelse tb_clinic_visit_symp = 1
    [set my_xpert_sens xpert_sens_passive]
    [set my_xpert_sens xpert_sens_active]
  ]

  let my_saliva_sens (1 - routine_xpert_spec)
  if breed = hiv0tb2_ms or breed = hiv0tb2_fs or
  breed = hiv1tb2_ms or breed = hiv1tb2_fs or
  breed = hiv2tb2_ms or breed = hiv2tb2_fs or
  breed = hiv0tb3_ms or breed = hiv0tb3_fs or
  breed = hiv1tb3_ms or breed = hiv1tb3_fs or
  breed = hiv2tb3_ms or breed = hiv2tb3_fs
  [set my_saliva_sens int_saliva_sens]

  set my_symp 0
  ifelse breed = hiv0tb3_ms or breed = hiv0tb3_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs or chronic = 1
  [set my_symp 1]
  [
    if hiv_art_status = 0 and random-float 1 < prob_transient_clinic_hiv0
    [set my_symp 1]
    if hiv_art_status = 1 and random-float 1 < prob_transient_clinic_hiv1
    [set my_symp 1]
    if hiv_art_status = 2 and random-float 1 < prob_transient_clinic_hiv2
    [set my_symp 1]
  ]

  let my_sputum_prob 0
  let my_xray_sens 0
  ifelse (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
    breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
    breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
  [set my_sputum_prob produce_sputum_prob_tb
    set my_xray_sens routine_xray_sens]
  [set my_sputum_prob produce_sputum_prob_notb
    set my_xray_sens (1 - routine_xray_spec)]

  let my_xpert_sens_actual 0
  set ticks_at_last_xpert_attempt ticks
  ifelse random-float 1 < my_sputum_prob
  [set my_xpert_sens_actual my_xpert_sens]
  [set my_xpert_sens_actual my_saliva_sens]

  set eligible_detect_next_visit 0
  ifelse tb_clinic_visit_symp = 1
  [set tracker_clinic_sputum_attempt_p (lput hiv_art_status tracker_clinic_sputum_attempt_p)]
  [set tracker_clinic_sputum_attempt_a (lput hiv_art_status tracker_clinic_sputum_attempt_a)]
  if year = 2026 [set sputum_attempt_2026 1]
  set ticks_at_last_xpert_attempt ticks
  set ticks_at_last_xpert ticks
  ifelse tb_clinic_visit_symp = 1
  [set tracker_clinic_sputum_produced_p (lput hiv_art_status tracker_clinic_sputum_produced_p)]
  [set tracker_clinic_sputum_produced_a (lput hiv_art_status tracker_clinic_sputum_produced_a)]
  if year = 2026 [set sputum_produced_2026 1]
  ifelse random-float 1 < my_xpert_sens_actual
  [;xpert pos
    ifelse tb_clinic_visit_symp = 1
    [set tracker_clinic_sputum_pos_p (tracker_clinic_sputum_pos_p + 1)]
    [set tracker_clinic_sputum_pos_a (tracker_clinic_sputum_pos_a + 1)]
    set eligible_detect_next_visit 1
    clinic_visit_test_pos
  ]
  [;xpert neg
    ifelse random-float 1 < 0.1
    [;receive xray
      ifelse tb_clinic_visit_symp = 1
      [set tracker_clinic_xray_p (tracker_clinic_xray_p + 1)]
      [set tracker_clinic_xray_a (tracker_clinic_xray_a + 1)]
      ifelse random-float 1 < my_xray_sens
      [;xray pos
        ifelse tb_clinic_visit_symp = 1
        [set tracker_clinic_xray_pos_p (tracker_clinic_xray_pos_p + 1)]
        [set tracker_clinic_xray_pos_a (tracker_clinic_xray_pos_a + 1)]
        clinic_visit_test_pos
      ]
      [;xray neg
        clinic_visit_test_neg
      ]
    ]
    [;no further tests
      clinic_visit_test_neg
    ]
  ]
  if hiv_art_status = 1 [start_art]
end


to community_symp_screen
  let prev (count hiv0tb2_ms + count hiv0tb2_fs + count hiv0tb3_ms + count hiv0tb3_fs +
    count hiv1tb2_ms + count hiv1tb2_fs + count hiv1tb3_ms + count hiv1tb3_fs +
    count hiv2tb2_ms + count hiv2tb2_fs + count hiv2tb3_ms + count hiv2tb3_fs) / count turtles
  set community_screen_prop_pos (int_coverage / (prev + (1 - prev) / int_increased_cov_TB))
  set community_screen_prop_neg (int_coverage / (int_increased_cov_TB * prev + 1 - prev))
  let my_screen_prob 0
  ask turtles with [screening_month = month] [
    ifelse (breed = hiv0tb2_ms or breed = hiv0tb3_ms or breed = hiv0tb2_fs or breed = hiv0tb3_fs or
      breed = hiv1tb2_ms or breed = hiv1tb3_ms or breed = hiv1tb2_fs or breed = hiv1tb3_fs or
      breed = hiv2tb2_ms or breed = hiv2tb3_ms or breed = hiv2tb2_fs or breed = hiv1tb3_fs)
    [set my_screen_prob community_screen_prop_pos]
    [set my_screen_prob community_screen_prop_neg]
    if breed = hiv0tb4_ms or  breed = hiv0tb4_fs or breed = hiv1tb4_ms or  breed = hiv1tb4_fs or breed = hiv2tb4_ms or  breed = hiv2tb4_fs
    [set my_screen_prob 0]

    if random-float 1 < my_screen_prob
    [;people to screen

      let my_sputum_prob 0
      let my_xray_sens 0
      ifelse (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
        breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
        breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
      [set my_sputum_prob produce_sputum_prob_tb
        set my_xray_sens routine_xray_sens]
      [set my_sputum_prob produce_sputum_prob_notb
        set my_xray_sens (1 - routine_xray_spec)]

      let my_xpert_sens (1 - routine_xpert_spec)
      if breed = hiv0tb2_ms or breed = hiv0tb2_fs or
      breed = hiv1tb2_ms or breed = hiv1tb2_fs or
      breed = hiv2tb2_ms or breed = hiv2tb2_fs or
      breed = hiv0tb3_ms or breed = hiv0tb3_fs or
      breed = hiv1tb3_ms or breed = hiv1tb3_fs or
      breed = hiv2tb3_ms or breed = hiv2tb3_fs
      [
        set my_xpert_sens xpert_sens_active
      ]

      set my_symp 0
      ifelse breed = hiv0tb3_ms or breed = hiv0tb3_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs or chronic = 1
      [set my_symp 1]
      [
        if hiv_art_status = 0 and random-float 1 < prob_transient_comm_hiv0
        [set my_symp 1]
        if hiv_art_status = 1 and random-float 1 < prob_transient_comm_hiv1
        [set my_symp 1]
        if hiv_art_status = 2 and random-float 1 < prob_transient_comm_hiv2
        [set my_symp 1]
      ]
      set eligible_detect_next_visit 0

      set tracker_community_symp_screen (tracker_community_symp_screen + 1)
      ifelse my_symp = 1
      [;symptomatic
        set tracker_community_sputum_attempt (lput hiv_art_status tracker_community_sputum_attempt)
        if year = 2026 [set sputum_attempt_2026 1]
        ifelse random-float 1 < my_sputum_prob
        [;produce sputum
          set tracker_community_sputum_produced (lput hiv_art_status tracker_community_sputum_produced)
          if year = 2026 [set sputum_produced_2026 1]
          ifelse random-float 1 < my_xpert_sens
          [;xpert+
            set tracker_community_sputum_pos (tracker_community_sputum_pos + 1)
            set start_treat_symp 1
            set eligible_detect_next_visit 1
            community_test_pos
          ]
          [;xpert-
          ]
        ]
        [;can't produce sputum
          ifelse random-float 1 < 0.25
          [;referred to hospital
            ifelse random-float 1 < 0.8
            [;go to hospital
              set tracker_community_xray (tracker_community_xray + 1)
              ifelse random-float 1 < my_xray_sens
              [;xray+
                set start_treat_symp 1
                community_test_pos
              ]
              [;xray-
              ]
            ]
            [;don't go to hospital
            ]
          ]
          [;not referred
          ]
        ]
      ]
      [;asymptomatic
      ]
    ]
  ]
end

to community_asymp_screen
  let prev (count hiv0tb2_ms + count hiv0tb2_fs + count hiv0tb3_ms + count hiv0tb3_fs +
    count hiv1tb2_ms + count hiv1tb2_fs + count hiv1tb3_ms + count hiv1tb3_fs +
    count hiv2tb2_ms + count hiv2tb2_fs + count hiv2tb3_ms + count hiv2tb3_fs) / count turtles
  set community_screen_prop_pos (int_coverage / (prev + (1 - prev) / int_increased_cov_TB))
  set community_screen_prop_neg (int_coverage / (int_increased_cov_TB * prev + 1 - prev))
  ask turtles with [screening_month = month] [
    let my_screen_prob 0
    ifelse (breed = hiv0tb2_ms or breed = hiv0tb3_ms or breed = hiv0tb2_fs or breed = hiv0tb3_fs or
      breed = hiv1tb2_ms or breed = hiv1tb3_ms or breed = hiv1tb2_fs or breed = hiv1tb3_fs or
      breed = hiv2tb2_ms or breed = hiv2tb3_ms or breed = hiv2tb2_fs or breed = hiv1tb3_fs)
    [set my_screen_prob community_screen_prop_pos]
    [set my_screen_prob community_screen_prop_neg]
    if breed = hiv0tb4_ms or  breed = hiv0tb4_fs or breed = hiv1tb4_ms or  breed = hiv1tb4_fs or breed = hiv2tb4_ms or  breed = hiv2tb4_fs
    [set my_screen_prob 0]

    if random-float 1 < my_screen_prob
    [;people to screen
      let my_sputum_prob 0
      ifelse (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
        breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
        breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
      [set my_sputum_prob produce_sputum_prob_tb]
      [set my_sputum_prob produce_sputum_prob_notb]

      let my_xpert_sens (1 - routine_xpert_spec)
      if breed = hiv0tb2_ms or breed = hiv0tb2_fs or
      breed = hiv1tb2_ms or breed = hiv1tb2_fs or
      breed = hiv2tb2_ms or breed = hiv2tb2_fs or
      breed = hiv0tb3_ms or breed = hiv0tb3_fs or
      breed = hiv1tb3_ms or breed = hiv1tb3_fs or
      breed = hiv2tb3_ms or breed = hiv2tb3_fs
      [
        set my_xpert_sens xpert_sens_active
      ]

      set eligible_detect_next_visit 0

      set tracker_community_sputum_attempt (lput hiv_art_status tracker_community_sputum_attempt)
      if year = 2026 [set sputum_attempt_2026 1]

      ifelse random-float 1 < my_sputum_prob
      [;produce sputum
        set tracker_community_sputum_produced (lput hiv_art_status tracker_community_sputum_produced)
        if year = 2026 [set sputum_attempt_2026 1]
        ifelse random-float 1 < my_xpert_sens
        [;xpert+
          set tracker_community_sputum_pos (tracker_community_sputum_pos + 1)
          set eligible_detect_next_visit 1
          community_test_pos
        ]
        [;xpert-
        ]
      ]
      [;can't produce sputum
      ]
    ]
  ]
end

to community_xray
  let prev (count hiv0tb2_ms + count hiv0tb2_fs + count hiv0tb3_ms + count hiv0tb3_fs +
    count hiv1tb2_ms + count hiv1tb2_fs + count hiv1tb3_ms + count hiv1tb3_fs +
    count hiv2tb2_ms + count hiv2tb2_fs + count hiv2tb3_ms + count hiv2tb3_fs) / count turtles
  set community_screen_prop_pos (int_coverage / (prev + (1 - prev) / int_increased_cov_TB))
  set community_screen_prop_neg (int_coverage / (int_increased_cov_TB * prev + 1 - prev))

  ask turtles with [screening_month = month] [
    ;test sens and spec
    let my_sputum_prob 0
    let my_xray_sens 0
    let my_xray_prob 0
    ifelse (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
      breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
      breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
    [set my_sputum_prob produce_sputum_prob_tb
      set my_xray_sens routine_xray_sens
      set my_xray_prob community_screen_prop_pos]
    [set my_sputum_prob produce_sputum_prob_notb
      set my_xray_sens (1 - routine_xray_spec)
      set my_xray_prob community_screen_prop_neg]

    let my_xpert_sens (1 - routine_xpert_spec)
    if breed = hiv0tb2_ms or breed = hiv0tb2_fs or
    breed = hiv1tb2_ms or breed = hiv1tb2_fs or
    breed = hiv2tb2_ms or breed = hiv2tb2_fs or
    breed = hiv0tb3_ms or breed = hiv0tb3_fs or
    breed = hiv1tb3_ms or breed = hiv1tb3_fs or
    breed = hiv2tb3_ms or breed = hiv2tb3_fs
    [
      set my_xpert_sens xpert_sens_active
    ]


    set my_symp 0
    ifelse breed = hiv0tb3_ms or breed = hiv0tb3_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs or chronic = 1
    [set my_symp 1]
    [
      if hiv_art_status = 0 and random-float 1 < prob_transient_comm_hiv0
      [set my_symp 1]
      if hiv_art_status = 1 and random-float 1 < prob_transient_comm_hiv1
      [set my_symp 1]
      if hiv_art_status = 2 and random-float 1 < prob_transient_comm_hiv2
      [set my_symp 1]
    ]

    ;screening
    ifelse random-float 1 < my_xray_prob
    [;receive xray
      set tracker_community_xray_comm (tracker_community_xray_comm + 1)
      ifelse random-float 1 < my_xray_sens
      [;xray pos
        set tracker_community_sputum_attempt (lput hiv_art_status tracker_community_sputum_attempt)
        if year = 2026 [set sputum_attempt_2026 1]
        ifelse random-float 1 < my_sputum_prob
        [;produce sputum
          set tracker_community_sputum_produced (lput hiv_art_status tracker_community_sputum_produced)
          if year = 2026 [set sputum_produced_2026 1]
          ifelse random-float 1 < my_xpert_sens
          [;xpert+
            set tracker_community_sputum_pos (tracker_community_sputum_pos + 1)
            set eligible_detect_next_visit 1
            community_test_pos
          ]
          [;xpert-
           ;no further tests
          ]
        ]
        [;can't produce sputum
          set tracker_community_symp_screen (tracker_community_symp_screen + 1)
          ifelse my_symp = 1
          [;symp
            set tracker_community_dr_ref (tracker_community_dr_ref + 1)
            ifelse random-float 1 < 0.4
            [;go to health factility
              set tracker_community_sputum_attempt_clinic (lput hiv_art_status tracker_community_sputum_attempt_clinic)
              if year = 2026 [set sputum_attempt_2026 1]
              ifelse random-float 1 < my_sputum_prob
              [;produce sputum
                set tracker_community_sputum_produced_clinic (lput hiv_art_status tracker_community_sputum_produced_clinic)
                if year = 2026 [set sputum_produced_2026 1]
                ifelse random-float 1 < my_xpert_sens
                [;xpert+
                  set tracker_community_sputum_pos_clinic (tracker_community_sputum_pos_clinic + 1)
                  set eligible_detect_next_visit 1
                  community_test_pos
                ]
                [;xpert-
                 ;no further tests
                ]
              ]
              [;can't produce sputum
                ifelse random-float 1 < 0.7
                [;see a doctor
                  set tracker_community_dr_see (tracker_community_dr_see + 1)
                  let num random-float 1
                  ifelse (num < 0.5 and hiv_art_status = 0) or (num < 0.7 and hiv_art_status != 0)
                  [;further investigation
                    set tracker_community_dr_invest (tracker_community_dr_invest + 1)
                    ifelse random-float 1 < 0.05
                    [;indicative of tb
                      set tracker_community_dr_pos (tracker_community_dr_pos + 1)
                      set dr_diagnosed 1
                      community_test_pos
                    ]
                    [;not indicative of TB
                     ;no further tests
                    ]
                  ]
                  [
                    ifelse (num > (1 - 0.03) and hiv_art_status = 0) or (num > (1 - 0.05) and hiv_art_status != 0)
                    [;start treat immediately
                      set tracker_community_dr_immed_treat (tracker_community_dr_immed_treat + 1)
                      set dr_diagnosed 1
                      community_test_pos
                    ]
                    [;no further tests
                    ]
                  ]
                ]
                [;ltfu
                 ;no further tests
                ]
              ]
            ]
            [;don't go to health factility
             ;no further tests
            ]
          ]
          [;asymp
           ;no further tests
          ]
        ]
      ]
      [;xray neg
       ;no further tests
      ]
    ]
    [;don't receive xray
     ;no further tests
    ]
  ]
end

to community_test_pos
  set tracker_community_diagnosed_active lput hiv_art_status tracker_community_diagnosed_active
  if (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
    breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
    breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
  [set tracker_community_diagnosed_active_havetb lput hiv_art_status tracker_community_diagnosed_active_havetb]

  ifelse random-float 1 > routine_iltfu or dr_diagnosed = 1
  [;detected
    set tracker_community_start_treat_active lput hiv_art_status tracker_community_start_treat_active
    set detect_at_next_clinic_visit 0
    set eligible_detect_next_visit 0
    ifelse (breed = hiv0tb2_ms or breed = hiv0tb2_fs or breed = hiv0tb3_ms or breed = hiv0tb3_fs or
      breed = hiv1tb2_ms or breed = hiv1tb2_fs or breed = hiv1tb3_ms or breed = hiv1tb3_fs or
      breed = hiv2tb2_ms or breed = hiv2tb2_fs or breed = hiv2tb3_ms or breed = hiv2tb3_fs)
    [;have tb

      set tracker_community_start_treat_active_havetb lput hiv_art_status tracker_community_start_treat_active_havetb


      set correct_ticks_at_disease_transition ticks
      start_treatment
    ]
    [;don't have tb
      set no_tb_on_treat 1
      set ticks_at_falsepos ticks
      let treat_end_time 0
      ifelse hiv_art_status = 0
      [set treat_end_time (- LN (1 - random-float 1) / (TB_treatment_dropout_rate_hiv0_monthly))]
      [set treat_end_time (- LN (1 - random-float 1) / (TB_treatment_dropout_rate_hiv12_monthly))]
      set treat_end_time (min list treat_end_time 6)
      set correct_ticks_at_disease_development 0

      time:schedule-event self [ [] ->
        set no_tb_on_treat 0
      ]
      ticks + treat_end_time
    ]
  ]
  [;loss to follow up
    if eligible_detect_next_visit = 1 [
      ifelse random-float 1 < 0.5 [
        set detect_at_next_clinic_visit 1
        set eligible_detect_next_visit 0
      ]
      [
        set detect_at_next_clinic_visit 0
        set eligible_detect_next_visit 0
      ]
    ]
  ]
end


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;output;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

to setup_output
  setup_fitting_output_tracking
  output_column_names

  time:schedule-repeating-event "observer" [ [] ->
    output_mid
  ]
  min (list ((2003 - start_year) * 12 + 6) ((output_year - start_year) * 12 + 6)) 12
  ;6 12
  ;(output_year - start_year) * 12 + 6 12

  time:schedule-event "observer" [ [] ->
    ask turtles [
      if breed = hiv0tb0_ms or breed = hiv0tb1_ms or breed = hiv0tb4_ms or breed = hiv0tb0_fs or breed = hiv0tb1_fs or breed = hiv0tb4_fs or
      breed = hiv1tb0_ms or breed = hiv1tb1_ms or breed = hiv1tb4_ms or breed = hiv1tb0_fs or breed = hiv1tb1_fs or breed = hiv1tb4_fs or
      breed = hiv2tb0_ms or breed = hiv2tb1_ms or breed = hiv2tb4_ms or breed = hiv2tb0_fs or breed = hiv2tb1_fs or breed = hiv2tb4_fs
      [set correct_ticks_at_disease_transition ticks
        reset_clinic_visiting]
    ]
  ]
  (clinic_visit_output_year - start_year) * 12

  time:schedule-repeating-event "observer" [ [] ->
    output
  ]
  (output_year - start_year) * 12 + 12 12

  time:schedule-repeating-event "observer" [ [] ->
    clear_trackers_mid
  ]
  6 12

  time:schedule-repeating-event "observer" [ [] ->
    clear_trackers_end
  ]
  12 12

  time:schedule-event "observer" [ [] ->
    export-model-output
    clear-output
  ]
  end_ticks

  time:schedule-event "observer" [ [] ->
    export-fitting-output
    clear-output
  ]
  end_ticks
end


to setup_fitting_output_tracking
  time:schedule-event "observer" [ [] ->
    fitting_outputs_2000_mid
  ]
  (2000 + 1 - start_year) * 12 - 6

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2002_mid
  ]
  (2002 + 1 - start_year) * 12 - 6

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2005_end
  ]
  (2005 + 1 - start_year) * 12

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2008_mid
  ]
  (2008 + 1 - start_year) * 12 - 6

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2008_end
  ]
  (2008 + 1 - start_year) * 12

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2010_mid
  ]
  (2010 + 1 - start_year) * 12 - 6

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2010_end
  ]
  (2010 + 1 - start_year) * 12

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2011_mid
  ]
  (2011 + 1 - start_year) * 12 - 6

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2011_end
  ]
  (2011 + 1 - start_year) * 12

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2016_mid
  ]
  (2016 + 1 - start_year) * 12 - 6

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2018_mid
  ]
  (2018 + 1 - start_year) * 12 - 6

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2018_end
  ]
  (2018 + 1 - start_year) * 12

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2019_mid
  ]
  (2019 + 1 - start_year) * 12 - 6

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2019_end
  ]
  (2019 + 1 - start_year) * 12

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2020_end
  ]
  (2020 + 1 - start_year) * 12

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2021_mid
  ]
  (2021 + 1 - start_year) * 12 - 6

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2021_end
  ]
  (2021 + 1 - start_year) * 12

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2022_mid
  ]
  (2022 + 1 - start_year) * 12 - 6

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2022_end
  ]
  (2022 + 1 - start_year) * 12

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2023_mid
  ]
  (2023 + 1 - start_year) * 12 - 6

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2023_end
  ]
  (2023 + 1 - start_year) * 12

  time:schedule-event "observer" [ [] ->
    fitting_outputs_2030_mid
  ]
  (2030 + 1 - start_year) * 12 - 6
end

to fitting_outputs_2000_mid
  ifelse (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set hiv_prev_m_2000 "NA"]
  [set hiv_prev_m_2000 (
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
      count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set hiv_prev_f_2000 "NA"]
  [set hiv_prev_f_2000 (
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
      count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]
end

to fitting_outputs_2002_mid
  ifelse (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set hiv_prev_m_2002 "NA"]
  [set hiv_prev_m_2002 (
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
      count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set hiv_prev_f_2002 "NA"]
  [set hiv_prev_f_2002 (
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
      count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]
end

to fitting_outputs_2005_end
  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_2005 "NA"]
  [set tb_incidence_2005 100000 * (
    tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f +
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]
  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_2005_hivpos "NA"]
  [set tb_incidence_2005_hivpos 100000 * (
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_mort_2005 "NA"]
  [set tb_mort_2005 100000 * (
    tracker_die_tb_hiv0_m + tracker_die_tb_hiv0_f +
    tracker_die_tb_hiv1_m + tracker_die_tb_hiv1_f +
    tracker_die_tb_hiv2_m + tracker_die_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_mort_2005_hivpos "NA"]
  [set tb_mort_2005_hivpos 100000 * (
    tracker_die_tb_hiv1_m + tracker_die_tb_hiv1_f +
    tracker_die_tb_hiv2_m + tracker_die_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]
end

to fitting_outputs_2008_mid
  ifelse (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set hiv_prev_m_2008 "NA"]
  [set hiv_prev_m_2008 (
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
      count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set hiv_prev_f_2008 "NA"]
  [set hiv_prev_f_2008 (
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
      count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]
end

to fitting_outputs_2008_end
  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_2008 "NA"]
  [set tb_incidence_2008 100000 * (
    tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f +
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]
end

to fitting_outputs_2010_mid
  ifelse (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set hiv_prev_m_2010 "NA"]
  [set hiv_prev_m_2010 (
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
      count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set hiv_prev_f_2010 "NA"]
  [set hiv_prev_f_2010 (
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
      count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]
end

to fitting_outputs_2010_end
  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_2010 "NA"]
  [set tb_incidence_2010 100000 * (
    tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f +
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]
  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_2010_hivpos "NA"]
  [set tb_incidence_2010_hivpos 100000 * (
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_mort_2010 "NA"]
  [set tb_mort_2010 100000 * (
    tracker_die_tb_hiv0_m + tracker_die_tb_hiv0_f +
    tracker_die_tb_hiv1_m + tracker_die_tb_hiv1_f +
    tracker_die_tb_hiv2_m + tracker_die_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_mort_2010_hivpos "NA"]
  [set tb_mort_2010_hivpos 100000 * (
    tracker_die_tb_hiv1_m + tracker_die_tb_hiv1_f +
    tracker_die_tb_hiv2_m + tracker_die_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]
end

to fitting_outputs_2011_mid
  ifelse (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set hiv_prev_m_2011 "NA"]
  [set hiv_prev_m_2011 (
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
      count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set hiv_prev_f_2011 "NA"]
  [set hiv_prev_f_2011 (
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
      count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]

  ifelse (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set art_cov_m_2011 "NA"]
  [set art_cov_m_2011 (
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set art_cov_f_2011 "NA"]
  [set art_cov_f_2011 (
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]
end

to fitting_outputs_2011_end
  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_2011 "NA"]
  [set tb_incidence_2011 100000 * (
    tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f +
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]
  ifelse (count hiv0tb0_ms + count hiv1tb0_ms + count hiv2tb0_ms +
    count hiv0tb1_ms + count hiv1tb1_ms + count hiv2tb1_ms +
    count hiv0tb2_ms + count hiv1tb2_ms + count hiv2tb2_ms +
    count hiv0tb3_ms + count hiv1tb3_ms + count hiv2tb3_ms +
    count hiv0tb4_ms + count hiv1tb4_ms + count hiv2tb4_ms) = 0
  [set tb_notification_2011_m "NA"]
  [set tb_notification_2011_m 100000 * (tracker_treat_tb_hiv0_m + tracker_treat_tb_hiv1_m + tracker_treat_tb_hiv2_m) /
    (count hiv0tb0_ms + count hiv1tb0_ms + count hiv2tb0_ms +
      count hiv0tb1_ms + count hiv1tb1_ms + count hiv2tb1_ms +
      count hiv0tb2_ms + count hiv1tb2_ms + count hiv2tb2_ms +
      count hiv0tb3_ms + count hiv1tb3_ms + count hiv2tb3_ms +
      count hiv0tb4_ms + count hiv1tb4_ms + count hiv2tb4_ms)]
  ifelse (count hiv0tb0_fs + count hiv1tb0_fs + count hiv2tb0_fs +
    count hiv0tb1_fs + count hiv1tb1_fs + count hiv2tb1_fs +
    count hiv0tb2_fs + count hiv1tb2_fs + count hiv2tb2_fs +
    count hiv0tb3_fs + count hiv1tb3_fs + count hiv2tb3_fs +
    count hiv0tb4_fs + count hiv1tb4_fs + count hiv2tb4_fs) = 0
  [set tb_notification_2011_f "NA"]
  [set tb_notification_2011_f 100000 * (tracker_treat_tb_hiv0_f + tracker_treat_tb_hiv1_f + tracker_treat_tb_hiv2_f) /
    (count hiv0tb0_fs + count hiv1tb0_fs + count hiv2tb0_fs +
      count hiv0tb1_fs + count hiv1tb1_fs + count hiv2tb1_fs +
      count hiv0tb2_fs + count hiv1tb2_fs + count hiv2tb2_fs +
      count hiv0tb3_fs + count hiv1tb3_fs + count hiv2tb3_fs +
      count hiv0tb4_fs + count hiv1tb4_fs + count hiv2tb4_fs)]

  ifelse (count hiv0tb0_ms + count hiv1tb0_ms + count hiv2tb0_ms +
    count hiv0tb1_ms + count hiv1tb1_ms + count hiv2tb1_ms +
    count hiv0tb2_ms + count hiv1tb2_ms + count hiv2tb2_ms +
    count hiv0tb3_ms + count hiv1tb3_ms + count hiv2tb3_ms +
    count hiv0tb4_ms + count hiv1tb4_ms + count hiv2tb4_ms +
    count hiv0tb0_fs + count hiv1tb0_fs + count hiv2tb0_fs +
    count hiv0tb1_fs + count hiv1tb1_fs + count hiv2tb1_fs +
    count hiv0tb2_fs + count hiv1tb2_fs + count hiv2tb2_fs +
    count hiv0tb3_fs + count hiv1tb3_fs + count hiv2tb3_fs +
    count hiv0tb4_fs + count hiv1tb4_fs + count hiv2tb4_fs) = 0
  [set tb_notification_2011 "NA"]
  [set tb_notification_2011 100000 * (tracker_treat_tb_hiv0_m + tracker_treat_tb_hiv1_m + tracker_treat_tb_hiv2_m +
    tracker_treat_tb_hiv0_f + tracker_treat_tb_hiv1_f + tracker_treat_tb_hiv2_f) /
    (count hiv0tb0_ms + count hiv1tb0_ms + count hiv2tb0_ms +
      count hiv0tb1_ms + count hiv1tb1_ms + count hiv2tb1_ms +
      count hiv0tb2_ms + count hiv1tb2_ms + count hiv2tb2_ms +
      count hiv0tb3_ms + count hiv1tb3_ms + count hiv2tb3_ms +
      count hiv0tb4_ms + count hiv1tb4_ms + count hiv2tb4_ms +
      count hiv0tb0_fs + count hiv1tb0_fs + count hiv2tb0_fs +
      count hiv0tb1_fs + count hiv1tb1_fs + count hiv2tb1_fs +
      count hiv0tb2_fs + count hiv1tb2_fs + count hiv2tb2_fs +
      count hiv0tb3_fs + count hiv1tb3_fs + count hiv2tb3_fs +
      count hiv0tb4_fs + count hiv1tb4_fs + count hiv2tb4_fs)]
end

to fitting_outputs_2016_mid
  ifelse (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set art_cov_m_2016 "NA"]
  [set art_cov_m_2016 (
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set art_cov_f_2016 "NA"]
  [set art_cov_f_2016 (
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]
end

to fitting_outputs_2018_mid
  set n_hiv0_sub_2018 count hiv0tb2_ms +  count hiv0tb2_fs
  set n_hiv0_clin_2018 count hiv0tb3_ms +  count hiv0tb3_fs
  set n_hiv1_sub_2018 count hiv1tb2_ms +  count hiv1tb2_fs
  set n_hiv1_clin_2018 count hiv1tb3_ms +  count hiv1tb3_fs
  set n_hiv2_sub_2018 count hiv2tb2_ms +  count hiv2tb2_fs
  set n_hiv2_clin_2018 count hiv2tb3_ms +  count hiv2tb3_fs

  foreach (sublist background_risk_list 0 (12 * 10 - 1)) [ x ->
    set infection_prob_10_background_2018 infection_prob_10_background_2018 + (1 - infection_prob_10_background_2018) * x * child_trans_rate_multiplier
  ]


  ask (turtle-set
    hiv0tb2_ms hiv0tb2_fs)
  [
    let risk infection_prob_10_background_2018
    foreach (sublist my_hh_risk_list 0 (12 * 10 - 1)) [ x ->
      set risk risk + (1 - risk) * x
    ]
    set infection_prob_10_hiv0_sub_2018 (infection_prob_10_hiv0_sub_2018 + risk)
  ]
  let total_infection_prob_10_hiv0_sub_2018 infection_prob_10_hiv0_sub_2018
  ifelse count (turtle-set
    hiv0tb2_ms hiv0tb2_fs) = 0
  [set infection_prob_10_hiv0_sub_2018 "NA"]
  [set infection_prob_10_hiv0_sub_2018 infection_prob_10_hiv0_sub_2018 / count (turtle-set
    hiv0tb2_ms hiv0tb2_fs)]

  ask (turtle-set
    hiv0tb3_ms hiv0tb3_fs)
  [
    let risk infection_prob_10_background_2018
    foreach (sublist my_hh_risk_list 0 (12 * 10 - 1)) [ x ->
      set risk risk + (1 - risk) * x
    ]
    set infection_prob_10_hiv0_clin_2018 (infection_prob_10_hiv0_clin_2018 + risk)
  ]
  let total_infection_prob_10_hiv0_clin_2018 infection_prob_10_hiv0_clin_2018
  ifelse count (turtle-set
    hiv0tb3_ms hiv0tb3_fs) = 0
  [set infection_prob_10_hiv0_clin_2018 "NA"]
  [set infection_prob_10_hiv0_clin_2018 infection_prob_10_hiv0_clin_2018 / count (turtle-set
    hiv0tb3_ms hiv0tb3_fs)]


  ask (turtle-set
    hiv1tb2_ms hiv1tb2_fs)
  [
    let risk infection_prob_10_background_2018
    foreach (sublist my_hh_risk_list 0 (12 * 10 - 1)) [ x ->
      set risk risk + (1 - risk) * x
    ]
    set infection_prob_10_hiv1_sub_2018 (infection_prob_10_hiv1_sub_2018 + risk)
  ]
  let total_infection_prob_10_hiv1_sub_2018 infection_prob_10_hiv1_sub_2018
  ifelse count (turtle-set
    hiv1tb2_ms hiv1tb2_fs) = 0
  [set infection_prob_10_hiv1_sub_2018 "NA"]
  [set infection_prob_10_hiv1_sub_2018 infection_prob_10_hiv1_sub_2018 / count (turtle-set
    hiv1tb2_ms hiv1tb2_fs)]

  ask (turtle-set
    hiv1tb3_ms hiv1tb3_fs)
  [
    let risk infection_prob_10_background_2018
    foreach (sublist my_hh_risk_list 0 (12 * 10 - 1)) [ x ->
      set risk risk + (1 - risk) * x
    ]
    set infection_prob_10_hiv1_clin_2018 (infection_prob_10_hiv1_clin_2018 + risk)
  ]
  let total_infection_prob_10_hiv1_clin_2018 infection_prob_10_hiv1_clin_2018
  ifelse count (turtle-set
    hiv1tb3_ms hiv1tb3_fs) = 0
  [set infection_prob_10_hiv1_clin_2018 "NA"]
  [set infection_prob_10_hiv1_clin_2018 infection_prob_10_hiv1_clin_2018 / count (turtle-set
    hiv1tb3_ms hiv1tb3_fs)]


  ask (turtle-set
    hiv2tb2_ms hiv2tb2_fs)
  [
    let risk infection_prob_10_background_2018
    foreach (sublist my_hh_risk_list 0 (12 * 10 - 1)) [ x ->
      set risk risk + (1 - risk) * x
    ]
    set infection_prob_10_hiv2_sub_2018 (infection_prob_10_hiv2_sub_2018 + risk)
  ]
  let total_infection_prob_10_hiv2_sub_2018 infection_prob_10_hiv2_sub_2018
  ifelse count (turtle-set
    hiv2tb2_ms hiv2tb2_fs) = 0
  [set infection_prob_10_hiv2_sub_2018 "NA"]
  [set infection_prob_10_hiv2_sub_2018 infection_prob_10_hiv2_sub_2018 / count (turtle-set
    hiv2tb2_ms hiv2tb2_fs)]

  ask (turtle-set
    hiv2tb3_ms hiv2tb3_fs)
  [
    let risk infection_prob_10_background_2018
    foreach (sublist my_hh_risk_list 0 (12 * 10 - 1)) [ x ->
      set risk risk + (1 - risk) * x
    ]
    set infection_prob_10_hiv2_clin_2018 (infection_prob_10_hiv2_clin_2018 + risk)
  ]
  let total_infection_prob_10_hiv2_clin_2018 infection_prob_10_hiv2_clin_2018
  ifelse count (turtle-set
    hiv2tb3_ms hiv2tb3_fs) = 0
  [set infection_prob_10_hiv2_clin_2018 "NA"]
  [set infection_prob_10_hiv2_clin_2018 infection_prob_10_hiv2_clin_2018 / count (turtle-set
    hiv2tb3_ms hiv2tb3_fs)]

  let track_symp0 0
  ask (turtle-set
    hiv0tb2_ms hiv0tb2_fs)
  [
    if chronic = 1 or random-float 1 < prob_transient_comm_hiv0
    [
      set track_symp0 (track_symp0 + 1)
      let risk infection_prob_10_background_2018
      foreach (sublist my_hh_risk_list 0 (12 * 10 - 1)) [ x ->
        set risk risk + (1 - risk) * x
      ]
      set infection_prob_10_hiv0_symp_2018 (infection_prob_10_hiv0_symp_2018 + risk)
    ]
  ]
  set infection_prob_10_hiv0_symp_2018 infection_prob_10_hiv0_symp_2018 + total_infection_prob_10_hiv0_clin_2018
  ifelse (count (turtle-set
    hiv0tb3_ms hiv0tb3_fs) + track_symp0) = 0
  [set infection_prob_10_hiv0_symp_2018 "NA"]
  [set infection_prob_10_hiv0_symp_2018 infection_prob_10_hiv0_symp_2018 / (count (turtle-set
    hiv0tb3_ms hiv0tb3_fs) + track_symp0)]

  let track_symp1 0
  ask (turtle-set
    hiv1tb2_ms hiv1tb2_fs)
  [
    if chronic = 1 or random-float 1 < prob_transient_comm_hiv1
    [
      set track_symp1 (track_symp1 + 1)
      let risk infection_prob_10_background_2018
      foreach (sublist my_hh_risk_list 0 (12 * 10 - 1)) [ x ->
        set risk risk + (1 - risk) * x
      ]
      set infection_prob_10_hiv1_symp_2018 (infection_prob_10_hiv1_symp_2018 + risk)
    ]
  ]
  set infection_prob_10_hiv1_symp_2018 infection_prob_10_hiv1_symp_2018 + total_infection_prob_10_hiv1_clin_2018
  ifelse (count (turtle-set
    hiv1tb3_ms hiv1tb3_fs) + track_symp1) = 0
  [set infection_prob_10_hiv1_symp_2018 "NA"]
  [set infection_prob_10_hiv1_symp_2018 infection_prob_10_hiv1_symp_2018 / (count (turtle-set
    hiv1tb3_ms hiv1tb3_fs) + track_symp1)]

  let track_symp2 0
  ask (turtle-set
    hiv2tb2_ms hiv2tb2_fs)
  [
    if chronic = 1 or random-float 1 < prob_transient_comm_hiv2
    [
      set track_symp2 (track_symp2 + 1)
      let risk infection_prob_10_background_2018
      foreach (sublist my_hh_risk_list 0 (12 * 10 - 1)) [ x ->
        set risk risk + (1 - risk) * x
      ]
      set infection_prob_10_hiv2_symp_2018 (infection_prob_10_hiv2_symp_2018 + risk)
    ]
  ]
  set infection_prob_10_hiv2_symp_2018 infection_prob_10_hiv2_symp_2018 + total_infection_prob_10_hiv2_clin_2018
  ifelse (count (turtle-set
    hiv2tb3_ms hiv2tb3_fs) + track_symp2) = 0
  [set infection_prob_10_hiv2_symp_2018 "NA"]
  [set infection_prob_10_hiv2_symp_2018 infection_prob_10_hiv2_symp_2018 / (count (turtle-set
    hiv2tb3_ms hiv2tb3_fs) + track_symp2)]

  let hiv0_tb2 (turtle-set hiv0tb2_ms hiv0tb2_fs)
  if count hiv0_tb2 > 0 [
    ask hiv0_tb2 [
      if chronic = 1 or random-float 1 < prob_transient_comm_hiv0 [
        set tracker_tb2_hiv0_symp_mid (tracker_tb2_hiv0_symp_mid + 1)
      ]
    ]
  ]

  let hiv1_tb2 (turtle-set hiv1tb2_ms hiv1tb2_fs)
  if count hiv1_tb2 > 0 [
    ask hiv1_tb2 [
      if chronic = 1 or random-float 1 < prob_transient_comm_hiv1 [
        set tracker_tb2_hiv1_symp_mid (tracker_tb2_hiv1_symp_mid + 1)
        set tracker_tb2_hiv12_symp_mid (tracker_tb2_hiv12_symp_mid + 1)
      ]
    ]
  ]

  let hiv2_tb2 (turtle-set hiv2tb2_ms hiv2tb2_fs)
  if count hiv2_tb2 > 0 [
    ask hiv2_tb2 [
      if chronic = 1 or random-float 1 < prob_transient_comm_hiv2 [
        set tracker_tb2_hiv2_symp_mid (tracker_tb2_hiv2_symp_mid + 1)
        set tracker_tb2_hiv12_symp_mid (tracker_tb2_hiv12_symp_mid + 1)
      ]
    ]
  ]


  let hiv1 (turtle-set hiv1tb0_ms hiv1tb0_fs
    hiv1tb1_ms hiv1tb1_fs
    hiv1tb2_ms hiv1tb2_fs
    hiv1tb3_ms hiv1tb3_fs
    hiv1tb4_ms hiv1tb4_fs)
  if count hiv1 > 0 [
    ask hiv1 [
      if chronic = 1 or random-float 1 < prob_transient_comm_hiv1 [
        set tracker_hiv12_symp_mid (tracker_hiv12_symp_mid + 1)
      ]
    ]
  ]
  let hiv2 (turtle-set hiv2tb0_ms hiv2tb0_fs
    hiv2tb1_ms hiv2tb1_fs
    hiv2tb2_ms hiv2tb2_fs
    hiv2tb3_ms hiv2tb3_fs
    hiv2tb4_ms hiv2tb4_fs)
  if count hiv2 > 0 [
    ask hiv2 [
      if chronic = 1 or random-float 1 < prob_transient_comm_hiv2 [
        set tracker_hiv12_symp_mid (tracker_hiv12_symp_mid + 1)
      ]
    ]
  ]
end

to fitting_outputs_2018_end
  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_2018 "NA"]
  [set tb_incidence_2018 100000 * (
    tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f +
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_hivneg_2018 "NA"]
  [set tb_incidence_hivneg_2018 100000 * (
    tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_hivpos_2018 "NA"]
  [set tb_incidence_hivpos_2018 100000 * (
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f +
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) = 0
  [set prop_inc_tb_hivpos_2018 "NA"]
  [set prop_inc_tb_hivpos_2018 (
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f +
      tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
      tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f)]

  ifelse (tracker_develop_tb_hiv0_m +
    tracker_develop_tb_hiv1_m +
    tracker_develop_tb_hiv2_m) = 0
  [set ratio_inc_f_to_m "NA"]
  [set ratio_inc_f_to_m (
    tracker_develop_tb_hiv0_f +
    tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_f) /
    (tracker_develop_tb_hiv0_m +
      tracker_develop_tb_hiv1_m +
      tracker_develop_tb_hiv2_m )]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_prev_2018 "NA"]
  [set tb_prev_2018 100000 * (
    tracker_tb2_mid_hiv0_m +
    tracker_tb2_mid_hiv0_f +
    tracker_tb2_mid_hiv1_m +
    tracker_tb2_mid_hiv1_f +
    tracker_tb2_mid_hiv2_m +
    tracker_tb2_mid_hiv2_f +
    tracker_tb3_mid_hiv0_m +
    tracker_tb3_mid_hiv0_f +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv1_f +
    tracker_tb3_mid_hiv2_m +
    tracker_tb3_mid_hiv2_f
    ) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv2_m) = 0
  [set tb_prev_m_2018 "NA"]
  [set tb_prev_m_2018 100000 * (
    tracker_tb2_mid_hiv0_m +
    tracker_tb2_mid_hiv1_m +
    tracker_tb2_mid_hiv2_m +
    tracker_tb3_mid_hiv0_m +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv2_m
    ) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv2_m)]

  ifelse (tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_prev_f_2018 "NA"]
  [set tb_prev_f_2018 100000 * (
    tracker_tb2_mid_hiv0_f +
    tracker_tb2_mid_hiv1_f +
    tracker_tb2_mid_hiv2_f +
    tracker_tb3_mid_hiv0_f +
    tracker_tb3_mid_hiv1_f +
    tracker_tb3_mid_hiv2_f
    ) /
    (tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f) = 0
  [set tb_prev_hiv0_2018 "NA"]
  [set tb_prev_hiv0_2018 100000 * (
    tracker_tb2_mid_hiv0_m +
    tracker_tb2_mid_hiv0_f +
    tracker_tb3_mid_hiv0_m +
    tracker_tb3_mid_hiv0_f
    ) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f)]

  set tb_prev_hivneg_2018 tb_prev_hiv0_2018

  ifelse (tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f) = 0
  [set tb_prev_hiv1_2018 "NA"]
  [set tb_prev_hiv1_2018 100000 * (
    tracker_tb2_mid_hiv1_m +
    tracker_tb2_mid_hiv1_f +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv1_f
    ) /
    (tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f)]

  ifelse (tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_prev_hiv2_2018 "NA"]
  [set tb_prev_hiv2_2018 100000 * (
    tracker_tb2_mid_hiv2_m +
    tracker_tb2_mid_hiv2_f +
    tracker_tb3_mid_hiv2_m +
    tracker_tb3_mid_hiv2_f
    ) /
    (tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_prev_hivpos_2018 "NA"]
  [set tb_prev_hivpos_2018 100000 * (
    tracker_tb2_mid_hiv1_m +
    tracker_tb2_mid_hiv1_f +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv1_f +
    tracker_tb2_mid_hiv2_m +
    tracker_tb2_mid_hiv2_f +
    tracker_tb3_mid_hiv2_m +
    tracker_tb3_mid_hiv2_f
    ) /
    (tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_tb2_mid_hiv0_m + tracker_tb3_mid_hiv0_m +
    tracker_tb2_mid_hiv1_m + tracker_tb3_mid_hiv1_m +
    tracker_tb2_mid_hiv2_m + tracker_tb3_mid_hiv2_m +
    tracker_tb2_mid_hiv0_f + tracker_tb3_mid_hiv0_f +
    tracker_tb2_mid_hiv1_f + tracker_tb3_mid_hiv1_f +
    tracker_tb2_mid_hiv2_f + tracker_tb3_mid_hiv2_f) = 0
  [set prop_prev_tb_m "NA"]
  [
    set prop_prev_tb_m (tracker_tb2_mid_hiv0_m + tracker_tb3_mid_hiv0_m +
      tracker_tb2_mid_hiv1_m + tracker_tb3_mid_hiv1_m +
      tracker_tb2_mid_hiv2_m + tracker_tb3_mid_hiv2_m) /
    (tracker_tb2_mid_hiv0_m + tracker_tb3_mid_hiv0_m +
      tracker_tb2_mid_hiv1_m + tracker_tb3_mid_hiv1_m +
      tracker_tb2_mid_hiv2_m + tracker_tb3_mid_hiv2_m +
      tracker_tb2_mid_hiv0_f + tracker_tb3_mid_hiv0_f +
      tracker_tb2_mid_hiv1_f + tracker_tb3_mid_hiv1_f +
      tracker_tb2_mid_hiv2_f + tracker_tb3_mid_hiv2_f)
  ]

  ifelse (tracker_tb2_mid_hiv0_m + tracker_tb3_mid_hiv0_m +
    tracker_tb2_mid_hiv1_m + tracker_tb3_mid_hiv1_m +
    tracker_tb2_mid_hiv2_m + tracker_tb3_mid_hiv2_m +
    tracker_tb2_mid_hiv0_f + tracker_tb3_mid_hiv0_f +
    tracker_tb2_mid_hiv1_f + tracker_tb3_mid_hiv1_f +
    tracker_tb2_mid_hiv2_f + tracker_tb3_mid_hiv2_f) = 0
  [set prop_prev_tb_hiv "NA"]
  [set prop_prev_tb_hiv (
    tracker_tb2_mid_hiv1_m + tracker_tb3_mid_hiv1_m +
    tracker_tb2_mid_hiv2_m + tracker_tb3_mid_hiv2_m +
    tracker_tb2_mid_hiv1_f + tracker_tb3_mid_hiv1_f +
    tracker_tb2_mid_hiv2_f + tracker_tb3_mid_hiv2_f) /
    (tracker_tb2_mid_hiv0_m + tracker_tb3_mid_hiv0_m +
      tracker_tb2_mid_hiv1_m + tracker_tb3_mid_hiv1_m +
      tracker_tb2_mid_hiv2_m + tracker_tb3_mid_hiv2_m +
      tracker_tb2_mid_hiv0_f + tracker_tb3_mid_hiv0_f +
      tracker_tb2_mid_hiv1_f + tracker_tb3_mid_hiv1_f +
      tracker_tb2_mid_hiv2_f + tracker_tb3_mid_hiv2_f)]


  ifelse (tracker_tb2_mid_hiv1_m + tracker_tb3_mid_hiv1_m +
    tracker_tb2_mid_hiv2_m + tracker_tb3_mid_hiv2_m +
    tracker_tb2_mid_hiv1_f + tracker_tb3_mid_hiv1_f +
    tracker_tb2_mid_hiv2_f + tracker_tb3_mid_hiv2_f) = 0
  [set prop_prev_hivtb_art "NA"]
  [set prop_prev_hivtb_art (
    tracker_tb2_mid_hiv2_m + tracker_tb3_mid_hiv2_m +
    tracker_tb2_mid_hiv2_f + tracker_tb3_mid_hiv2_f) /
    (tracker_tb2_mid_hiv1_m + tracker_tb3_mid_hiv1_m +
      tracker_tb2_mid_hiv2_m + tracker_tb3_mid_hiv2_m +
      tracker_tb2_mid_hiv1_f + tracker_tb3_mid_hiv1_f +
      tracker_tb2_mid_hiv2_f + tracker_tb3_mid_hiv2_f)]

  ifelse (tracker_tb2_mid_hiv0_m +
    tracker_tb2_mid_hiv0_f +
    tracker_tb2_mid_hiv1_m +
    tracker_tb2_mid_hiv1_f +
    tracker_tb2_mid_hiv2_m +
    tracker_tb2_mid_hiv2_f +
    tracker_tb3_mid_hiv0_m +
    tracker_tb3_mid_hiv0_f +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv1_f +
    tracker_tb3_mid_hiv2_m +
    tracker_tb3_mid_hiv2_f) = 0
  [set prop_prev_tb_hiv_2018 "NA"]
  [set prop_prev_tb_hiv_2018 (
    tracker_tb2_mid_hiv1_m +
    tracker_tb2_mid_hiv1_f +
    tracker_tb2_mid_hiv2_m +
    tracker_tb2_mid_hiv2_f +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv1_f +
    tracker_tb3_mid_hiv2_m +
    tracker_tb3_mid_hiv2_f
    ) / (
    tracker_tb2_mid_hiv0_m +
    tracker_tb2_mid_hiv0_f +
    tracker_tb2_mid_hiv1_m +
    tracker_tb2_mid_hiv1_f +
    tracker_tb2_mid_hiv2_m +
    tracker_tb2_mid_hiv2_f +
    tracker_tb3_mid_hiv0_m +
    tracker_tb3_mid_hiv0_f +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv1_f +
    tracker_tb3_mid_hiv2_m +
    tracker_tb3_mid_hiv2_f
  )]

  ifelse (tracker_tb2_mid_hiv0_m +
    tracker_tb2_mid_hiv0_f +
    tracker_tb3_mid_hiv0_m +
    tracker_tb3_mid_hiv0_f) = 0
  [set prop_prev_tb_symp_hiv0_2018 "NA"]
  [set prop_prev_tb_symp_hiv0_2018 (
    tracker_tb2_hiv0_symp_mid +
    tracker_tb3_mid_hiv0_m +
    tracker_tb3_mid_hiv0_f
    ) / (
    tracker_tb2_mid_hiv0_m +
    tracker_tb2_mid_hiv0_f +
    tracker_tb3_mid_hiv0_m +
    tracker_tb3_mid_hiv0_f
  )]

  ifelse (tracker_tb2_mid_hiv1_m +
    tracker_tb2_mid_hiv1_f +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv1_f) = 0
  [set prop_prev_tb_symp_hiv1_2018 "NA"]
  [set prop_prev_tb_symp_hiv1_2018 (
    tracker_tb2_hiv1_symp_mid +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv1_f
    ) / (
    tracker_tb2_mid_hiv1_m +
    tracker_tb2_mid_hiv1_f +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv1_f
  )]

  ifelse (tracker_tb2_mid_hiv2_m +
    tracker_tb2_mid_hiv2_f +
    tracker_tb3_mid_hiv2_m +
    tracker_tb3_mid_hiv2_f) = 0
  [set prop_prev_tb_symp_hiv2_2018 "NA"]
  [set prop_prev_tb_symp_hiv2_2018 (
    tracker_tb2_hiv2_symp_mid +
    tracker_tb3_mid_hiv2_m +
    tracker_tb3_mid_hiv2_f
    ) / (
    tracker_tb2_mid_hiv2_m +
    tracker_tb2_mid_hiv2_f +
    tracker_tb3_mid_hiv2_m +
    tracker_tb3_mid_hiv2_f
  )]

  ifelse (tracker_tb2_mid_hiv1_m +
    tracker_tb2_mid_hiv1_f +
    tracker_tb2_mid_hiv2_m +
    tracker_tb2_mid_hiv2_f +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv1_f +
    tracker_tb3_mid_hiv2_m +
    tracker_tb3_mid_hiv2_f) = 0
  [set prop_prev_tb_symp_hiv12_2018 "NA"]
  [set prop_prev_tb_symp_hiv12_2018 (
    tracker_tb2_hiv12_symp_mid +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv1_f +
    tracker_tb3_mid_hiv2_m +
    tracker_tb3_mid_hiv2_f
    ) / (
    tracker_tb2_mid_hiv1_m +
    tracker_tb2_mid_hiv1_f +
    tracker_tb2_mid_hiv2_m +
    tracker_tb2_mid_hiv2_f +
    tracker_tb3_mid_hiv1_m +
    tracker_tb3_mid_hiv1_f +
    tracker_tb3_mid_hiv2_m +
    tracker_tb3_mid_hiv2_f
  )]

  ifelse (tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set prop_pop_with_symp_hiv12_2018 "NA"]
  [set prop_pop_with_symp_hiv12_2018 tracker_hiv12_symp_mid /
    (tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_mort_2018_hivneg "NA"]
  [set tb_mort_2018_hivneg 100000 * (
    tracker_die_tb_hiv0_m + tracker_die_tb_hiv0_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_mort_2018_hivpos "NA"]
  [set tb_mort_2018_hivpos 100000 * (
    tracker_die_tb_hiv1_m + tracker_die_tb_hiv1_f +
    tracker_die_tb_hiv2_m + tracker_die_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  set tb_not_2018 100000 * (length(tracker_clinic_start_treat_active_p) + length(tracker_clinic_start_treat_active_a) + length(tracker_start_treat_passive) + length(tracker_community_start_treat_active))
  / initial_pop_size

  ifelse (tracker_treat_tb_hiv0_m + tracker_treat_tb_hiv0_f +
    tracker_treat_tb_hiv1_m + tracker_treat_tb_hiv1_f +
    tracker_treat_tb_hiv2_m + tracker_treat_tb_hiv2_f) = 0
  [set prop_start_treat_hivpos_2018 "NA"]
  [set prop_start_treat_hivpos_2018 (
    tracker_treat_tb_hiv1_m + tracker_treat_tb_hiv1_f +
    tracker_treat_tb_hiv2_m + tracker_treat_tb_hiv2_f) /
    (tracker_treat_tb_hiv0_m + tracker_treat_tb_hiv0_f +
      tracker_treat_tb_hiv1_m + tracker_treat_tb_hiv1_f +
      tracker_treat_tb_hiv2_m + tracker_treat_tb_hiv2_f)]

  ifelse (tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f +
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) = 0
  [set treatment_coverage_2018 "NA"]
  [set treatment_coverage_2018
    (tracker_treat_tb_hiv0_m + tracker_treat_tb_hiv0_f +
      tracker_treat_tb_hiv1_m + tracker_treat_tb_hiv1_f +
      tracker_treat_tb_hiv2_m + tracker_treat_tb_hiv2_f) /
    (tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f +
      tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
      tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f)]

  ;  ifelse (tracker_treat_success +  tracker_treat_die_tb + tracker_treat_dropout) = 0
  ;  [set treatment_success "NA"]
  ;  [set treatment_success tracker_treat_success /
  ;    (tracker_treat_success +  tracker_treat_die_tb + tracker_treat_dropout)]
  ;
  ;  ifelse (tracker_treat_success +  tracker_treat_die_tb + tracker_treat_dropout) = 0
  ;  [set treatment_dropout "NA"]
  ;  [set treatment_dropout tracker_treat_dropout /
  ;    (tracker_treat_success +  tracker_treat_die_tb + tracker_treat_dropout)]
  ;
  ;  ifelse (tracker_treat_success +  tracker_treat_die_tb + tracker_treat_dropout) = 0
  ;  [set treatment_death "NA"]
  ;  [set treatment_death tracker_treat_die_tb /
  ;    (tracker_treat_success +  tracker_treat_die_tb + tracker_treat_dropout)]

  ifelse (count hiv0tb0_ms + count hiv1tb0_ms + count hiv2tb0_ms +
    count hiv0tb1_ms + count hiv1tb1_ms + count hiv2tb1_ms +
    count hiv0tb2_ms + count hiv1tb2_ms + count hiv2tb2_ms +
    count hiv0tb3_ms + count hiv1tb3_ms + count hiv2tb3_ms +
    count hiv0tb4_ms + count hiv1tb4_ms + count hiv2tb4_ms) = 0
  [set tb_notification_2018_m "NA"]
  [set tb_notification_2018_m 100000 * (tracker_treat_tb_hiv0_m + tracker_treat_tb_hiv1_m + tracker_treat_tb_hiv2_m) /
    (count hiv0tb0_ms + count hiv1tb0_ms + count hiv2tb0_ms +
      count hiv0tb1_ms + count hiv1tb1_ms + count hiv2tb1_ms +
      count hiv0tb2_ms + count hiv1tb2_ms + count hiv2tb2_ms +
      count hiv0tb3_ms + count hiv1tb3_ms + count hiv2tb3_ms +
      count hiv0tb4_ms + count hiv1tb4_ms + count hiv2tb4_ms)]
  ifelse (count hiv0tb0_fs + count hiv1tb0_fs + count hiv2tb0_fs +
    count hiv0tb1_fs + count hiv1tb1_fs + count hiv2tb1_fs +
    count hiv0tb2_fs + count hiv1tb2_fs + count hiv2tb2_fs +
    count hiv0tb3_fs + count hiv1tb3_fs + count hiv2tb3_fs +
    count hiv0tb4_fs + count hiv1tb4_fs + count hiv2tb4_fs) = 0
  [set tb_notification_2018_f "NA"]
  [set tb_notification_2018_f 100000 * (tracker_treat_tb_hiv0_f + tracker_treat_tb_hiv1_f + tracker_treat_tb_hiv2_f) /
    (count hiv0tb0_fs + count hiv1tb0_fs + count hiv2tb0_fs +
      count hiv0tb1_fs + count hiv1tb1_fs + count hiv2tb1_fs +
      count hiv0tb2_fs + count hiv1tb2_fs + count hiv2tb2_fs +
      count hiv0tb3_fs + count hiv1tb3_fs + count hiv2tb3_fs +
      count hiv0tb4_fs + count hiv1tb4_fs + count hiv2tb4_fs)]

  ifelse (count hiv0tb0_ms + count hiv1tb0_ms + count hiv2tb0_ms +
    count hiv0tb1_ms + count hiv1tb1_ms + count hiv2tb1_ms +
    count hiv0tb2_ms + count hiv1tb2_ms + count hiv2tb2_ms +
    count hiv0tb3_ms + count hiv1tb3_ms + count hiv2tb3_ms +
    count hiv0tb4_ms + count hiv1tb4_ms + count hiv2tb4_ms +
    count hiv0tb0_fs + count hiv1tb0_fs + count hiv2tb0_fs +
    count hiv0tb1_fs + count hiv1tb1_fs + count hiv2tb1_fs +
    count hiv0tb2_fs + count hiv1tb2_fs + count hiv2tb2_fs +
    count hiv0tb3_fs + count hiv1tb3_fs + count hiv2tb3_fs +
    count hiv0tb4_fs + count hiv1tb4_fs + count hiv2tb4_fs) = 0
  [set tb_notification_2018 "NA"]
  [set tb_notification_2018 100000 * (tracker_treat_tb_hiv0_m + tracker_treat_tb_hiv1_m + tracker_treat_tb_hiv2_m +
    tracker_treat_tb_hiv0_f + tracker_treat_tb_hiv1_f + tracker_treat_tb_hiv2_f) /
    (count hiv0tb0_ms + count hiv1tb0_ms + count hiv2tb0_ms +
      count hiv0tb1_ms + count hiv1tb1_ms + count hiv2tb1_ms +
      count hiv0tb2_ms + count hiv1tb2_ms + count hiv2tb2_ms +
      count hiv0tb3_ms + count hiv1tb3_ms + count hiv2tb3_ms +
      count hiv0tb4_ms + count hiv1tb4_ms + count hiv2tb4_ms +
      count hiv0tb0_fs + count hiv1tb0_fs + count hiv2tb0_fs +
      count hiv0tb1_fs + count hiv1tb1_fs + count hiv2tb1_fs +
      count hiv0tb2_fs + count hiv1tb2_fs + count hiv2tb2_fs +
      count hiv0tb3_fs + count hiv1tb3_fs + count hiv2tb3_fs +
      count hiv0tb4_fs + count hiv1tb4_fs + count hiv2tb4_fs)]

  ifelse (count hiv0tb0_ms +
    count hiv0tb1_ms +
    count hiv0tb2_ms +
    count hiv0tb3_ms +
    count hiv0tb4_ms +
    count hiv0tb0_fs +
    count hiv0tb1_fs +
    count hiv0tb2_fs +
    count hiv0tb3_fs +
    count hiv0tb4_fs) = 0
  [set not_2018_hiv0 "NA"]
  [set not_2018_hiv0 100000 * (tracker_treat_tb_hiv0_m +
    tracker_treat_tb_hiv0_f) /
    (count hiv0tb0_ms +
      count hiv0tb1_ms +
      count hiv0tb2_ms +
      count hiv0tb3_ms +
      count hiv0tb4_ms +
      count hiv0tb0_fs +
      count hiv0tb1_fs +
      count hiv0tb2_fs +
      count hiv0tb3_fs +
      count hiv0tb4_fs)]

  ifelse (count hiv1tb0_ms +
    count hiv1tb1_ms +
    count hiv1tb2_ms +
    count hiv1tb3_ms +
    count hiv1tb4_ms +
    count hiv1tb0_fs +
    count hiv1tb1_fs +
    count hiv1tb2_fs +
    count hiv1tb3_fs +
    count hiv1tb4_fs) = 0
  [set not_2018_hiv1 "NA"]
  [set not_2018_hiv1 100000 * (tracker_treat_tb_hiv1_m +
    tracker_treat_tb_hiv1_f) /
    (count hiv1tb0_ms +
      count hiv1tb1_ms +
      count hiv1tb2_ms +
      count hiv1tb3_ms +
      count hiv1tb4_ms +
      count hiv1tb0_fs +
      count hiv1tb1_fs +
      count hiv1tb2_fs +
      count hiv1tb3_fs +
      count hiv1tb4_fs)]

  ifelse (count hiv2tb0_ms +
    count hiv2tb1_ms +
    count hiv2tb2_ms +
    count hiv2tb3_ms +
    count hiv2tb4_ms +
    count hiv2tb0_fs +
    count hiv2tb1_fs +
    count hiv2tb2_fs +
    count hiv2tb3_fs +
    count hiv2tb4_fs) = 0
  [set not_2018_hiv2 "NA"]
  [set not_2018_hiv2 100000 * (tracker_treat_tb_hiv2_m +
    tracker_treat_tb_hiv2_f) /
    (count hiv2tb0_ms +
      count hiv2tb1_ms +
      count hiv2tb2_ms +
      count hiv2tb3_ms +
      count hiv2tb4_ms +
      count hiv2tb0_fs +
      count hiv2tb1_fs +
      count hiv2tb2_fs +
      count hiv2tb3_fs +
      count hiv2tb4_fs)]

  set treat_2018_m (tracker_treat_tb_hiv0_m + tracker_treat_tb_hiv1_m + tracker_treat_tb_hiv2_m)
  set treat_2018_f (tracker_treat_tb_hiv0_f + tracker_treat_tb_hiv1_f + tracker_treat_tb_hiv2_f)

  ifelse (
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_2018_hivpos_denom "NA"]
  [set tb_incidence_2018_hivpos_denom 100000 * (
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (
    tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f) = 0
  [set tb_incidence_2018_hivneg_denom "NA"]
  [set tb_incidence_2018_hivneg_denom 100000 * (
    tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f) /
    (
      tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f)]

  set hiv0_asymp_2018_mid ((tracker_tb2_mid_hiv0_m + tracker_tb2_mid_hiv0_f) - tracker_tb2_hiv0_symp_mid)
  set hiv1_asymp_2018_mid ((tracker_tb2_mid_hiv1_m + tracker_tb2_mid_hiv1_f) - tracker_tb2_hiv1_symp_mid)
  set hiv2_asymp_2018_mid ((tracker_tb2_mid_hiv2_m + tracker_tb2_mid_hiv2_f) - tracker_tb2_hiv2_symp_mid)
  set hiv0_symp_2018_mid (tracker_tb2_hiv0_symp_mid + tracker_tb3_mid_hiv0_m + tracker_tb3_mid_hiv0_f)
  set hiv1_symp_2018_mid (tracker_tb2_hiv1_symp_mid + tracker_tb3_mid_hiv1_m + tracker_tb3_mid_hiv1_f)
  set hiv2_symp_2018_mid (tracker_tb2_hiv2_symp_mid + tracker_tb3_mid_hiv2_m + tracker_tb3_mid_hiv2_f)
end

to fitting_outputs_2019_mid
  ifelse (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set art_cov_m_2019 "NA"]
  [set art_cov_m_2019 (
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set art_cov_f_2019 "NA"]
  [set art_cov_f_2019 (
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]
end

to fitting_outputs_2019_end
end

to fitting_outputs_2020_end
end

to fitting_outputs_2021_mid
  ifelse (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set hiv_prev_m_2021 "NA"]
  [set hiv_prev_m_2021 (
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
      count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set hiv_prev_f_2021 "NA"]
  [set hiv_prev_f_2021 (
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
      count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]

  ifelse (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set art_cov_m_2021 "NA"]
  [set art_cov_m_2021 (
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set art_cov_f_2021 "NA"]
  [set art_cov_f_2021 (
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]
end

to fitting_outputs_2021_end
  ifelse (count hiv0tb0_ms + count hiv1tb0_ms + count hiv2tb0_ms +
    count hiv0tb1_ms + count hiv1tb1_ms + count hiv2tb1_ms +
    count hiv0tb2_ms + count hiv1tb2_ms + count hiv2tb2_ms +
    count hiv0tb3_ms + count hiv1tb3_ms + count hiv2tb3_ms +
    count hiv0tb4_ms + count hiv1tb4_ms + count hiv2tb4_ms) = 0
  [set tb_notification_2021_m "NA"]
  [set tb_notification_2021_m 100000 * (tracker_treat_tb_hiv0_m + tracker_treat_tb_hiv1_m + tracker_treat_tb_hiv2_m) /
    (count hiv0tb0_ms + count hiv1tb0_ms + count hiv2tb0_ms +
      count hiv0tb1_ms + count hiv1tb1_ms + count hiv2tb1_ms +
      count hiv0tb2_ms + count hiv1tb2_ms + count hiv2tb2_ms +
      count hiv0tb3_ms + count hiv1tb3_ms + count hiv2tb3_ms +
      count hiv0tb4_ms + count hiv1tb4_ms + count hiv2tb4_ms)]
  ifelse (count hiv0tb0_fs + count hiv1tb0_fs + count hiv2tb0_fs +
    count hiv0tb1_fs + count hiv1tb1_fs + count hiv2tb1_fs +
    count hiv0tb2_fs + count hiv1tb2_fs + count hiv2tb2_fs +
    count hiv0tb3_fs + count hiv1tb3_fs + count hiv2tb3_fs +
    count hiv0tb4_fs + count hiv1tb4_fs + count hiv2tb4_fs) = 0
  [set tb_notification_2021_f "NA"]
  [set tb_notification_2021_f 100000 * (tracker_treat_tb_hiv0_f + tracker_treat_tb_hiv1_f + tracker_treat_tb_hiv2_f) /
    (count hiv0tb0_fs + count hiv1tb0_fs + count hiv2tb0_fs +
      count hiv0tb1_fs + count hiv1tb1_fs + count hiv2tb1_fs +
      count hiv0tb2_fs + count hiv1tb2_fs + count hiv2tb2_fs +
      count hiv0tb3_fs + count hiv1tb3_fs + count hiv2tb3_fs +
      count hiv0tb4_fs + count hiv1tb4_fs + count hiv2tb4_fs)]

  ifelse (
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_2021_hivpos_denom "NA"]
  [set tb_incidence_2021_hivpos_denom 100000 * (
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (
    tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f) = 0
  [set tb_incidence_2021_hivneg_denom "NA"]
  [set tb_incidence_2021_hivneg_denom 100000 * (
    tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f) /
    (
      tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv2_m) = 0
  [set tb_incidence_2021_m "NA"]
  [set tb_incidence_2021_m 100000 * (
    tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv2_m) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv2_m)]

  ifelse (tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_2021_f "NA"]
  [set tb_incidence_2021_f 100000 * (
    tracker_develop_tb_hiv0_f + tracker_develop_tb_hiv1_f + tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_f)]


  ifelse (
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_mort_2021_hivpos_denom "NA"]
  [set tb_mort_2021_hivpos_denom 100000 * (
    tracker_die_tb_hiv1_m + tracker_die_tb_hiv1_f +
    tracker_die_tb_hiv2_m + tracker_die_tb_hiv2_f) /
    (
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f) = 0
  [set tb_mort_2021_hivneg_denom "NA"]
  [set tb_mort_2021_hivneg_denom 100000 * (
    tracker_die_tb_hiv0_m + tracker_die_tb_hiv0_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f)]

  ifelse (tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv2_m +
    tracker_develop_tb_hiv0_f + tracker_develop_tb_hiv1_f + tracker_develop_tb_hiv2_f) = 0
  [set tb_treat_inc_ratio_2021 "NA"]
  [set tb_treat_inc_ratio_2021 (
    tracker_treat_tb_hiv0_m + tracker_treat_tb_hiv1_m + tracker_treat_tb_hiv2_m +
    tracker_treat_tb_hiv0_f + tracker_treat_tb_hiv1_f + tracker_treat_tb_hiv2_f) /
    (tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv2_m +
      tracker_develop_tb_hiv0_f + tracker_develop_tb_hiv1_f + tracker_develop_tb_hiv2_f)]
end

to fitting_outputs_2022_mid
  set age_list_2022_m n-values 500 [0]
  set age_list_2022_f n-values 500 [0]
  set age_list_2022_m n-values (max_age / 12 - min_age / 12) [0]
  set age_list_2022_f n-values (max_age / 12 - min_age / 12) [0]
  ask turtles [
    let my_age floor (ticks - ticks_at_birth) / 12
    ;if my_age > 80 [print (word who " " breed " " my_age " " ticks_at_birth)]
    ifelse sex = 0
    [set age_list_2022_m replace-item my_age age_list_2022_m (item my_age age_list_2022_m + 1)]
    [set age_list_2022_f replace-item my_age age_list_2022_f (item my_age age_list_2022_f + 1)]
  ]

end

to fitting_outputs_2022_end
  set tracker_clinic_visits_2022
  tracker_attend_clinic_bg_nr_m_hiv0_ntb_ns +
  tracker_attend_clinic_bg_nr_m_hiv1_ntb_ns +
  tracker_attend_clinic_bg_nr_m_hiv2_ntb_ns +
  tracker_attend_clinic_bg_nr_m_hiv0_ytb_ns +
  tracker_attend_clinic_bg_nr_m_hiv1_ytb_ns +
  tracker_attend_clinic_bg_nr_m_hiv2_ytb_ns +
  tracker_attend_clinic_bg_nr_f_hiv0_ntb_ns +
  tracker_attend_clinic_bg_nr_f_hiv1_ntb_ns +
  tracker_attend_clinic_bg_nr_f_hiv2_ntb_ns +
  tracker_attend_clinic_bg_nr_f_hiv0_ytb_ns +
  tracker_attend_clinic_bg_nr_f_hiv1_ytb_ns +
  tracker_attend_clinic_bg_nr_f_hiv2_ytb_ns +
  tracker_attend_clinic_bg_nr_m_hiv0_ntb_ys +
  tracker_attend_clinic_bg_nr_m_hiv1_ntb_ys +
  tracker_attend_clinic_bg_nr_m_hiv2_ntb_ys +
  tracker_attend_clinic_bg_nr_m_hiv0_ytb_ys +
  tracker_attend_clinic_bg_nr_m_hiv1_ytb_ys +
  tracker_attend_clinic_bg_nr_m_hiv2_ytb_ys +
  tracker_attend_clinic_bg_nr_f_hiv0_ntb_ys +
  tracker_attend_clinic_bg_nr_f_hiv1_ntb_ys +
  tracker_attend_clinic_bg_nr_f_hiv2_ntb_ys +
  tracker_attend_clinic_bg_nr_f_hiv0_ytb_ys +
  tracker_attend_clinic_bg_nr_f_hiv1_ytb_ys +
  tracker_attend_clinic_bg_nr_f_hiv2_ytb_ys +

  tracker_attend_clinic_bg_2y_m_hiv0_ntb_ns +
  tracker_attend_clinic_bg_2y_m_hiv1_ntb_ns +
  tracker_attend_clinic_bg_2y_m_hiv2_ntb_ns +
  tracker_attend_clinic_bg_2y_m_hiv0_ytb_ns +
  tracker_attend_clinic_bg_2y_m_hiv1_ytb_ns +
  tracker_attend_clinic_bg_2y_m_hiv2_ytb_ns +
  tracker_attend_clinic_bg_2y_f_hiv0_ntb_ns +
  tracker_attend_clinic_bg_2y_f_hiv1_ntb_ns +
  tracker_attend_clinic_bg_2y_f_hiv2_ntb_ns +
  tracker_attend_clinic_bg_2y_f_hiv0_ytb_ns +
  tracker_attend_clinic_bg_2y_f_hiv1_ytb_ns +
  tracker_attend_clinic_bg_2y_f_hiv2_ytb_ns +
  tracker_attend_clinic_bg_2y_m_hiv0_ntb_ys +
  tracker_attend_clinic_bg_2y_m_hiv1_ntb_ys +
  tracker_attend_clinic_bg_2y_m_hiv2_ntb_ys +
  tracker_attend_clinic_bg_2y_m_hiv0_ytb_ys +
  tracker_attend_clinic_bg_2y_m_hiv1_ytb_ys +
  tracker_attend_clinic_bg_2y_m_hiv2_ytb_ys +
  tracker_attend_clinic_bg_2y_f_hiv0_ntb_ys +
  tracker_attend_clinic_bg_2y_f_hiv1_ntb_ys +
  tracker_attend_clinic_bg_2y_f_hiv2_ntb_ys +
  tracker_attend_clinic_bg_2y_f_hiv0_ytb_ys +
  tracker_attend_clinic_bg_2y_f_hiv1_ytb_ys +
  tracker_attend_clinic_bg_2y_f_hiv2_ytb_ys +

  tracker_attend_clinic_symp_nr_m_hiv0_ntb_ns +
  tracker_attend_clinic_symp_nr_m_hiv1_ntb_ns +
  tracker_attend_clinic_symp_nr_m_hiv2_ntb_ns +
  tracker_attend_clinic_symp_nr_m_hiv0_ytb_ns +
  tracker_attend_clinic_symp_nr_m_hiv1_ytb_ns +
  tracker_attend_clinic_symp_nr_m_hiv2_ytb_ns +
  tracker_attend_clinic_symp_nr_f_hiv0_ntb_ns +
  tracker_attend_clinic_symp_nr_f_hiv1_ntb_ns +
  tracker_attend_clinic_symp_nr_f_hiv2_ntb_ns +
  tracker_attend_clinic_symp_nr_f_hiv0_ytb_ns +
  tracker_attend_clinic_symp_nr_f_hiv1_ytb_ns +
  tracker_attend_clinic_symp_nr_f_hiv2_ytb_ns +
  tracker_attend_clinic_symp_nr_m_hiv0_ntb_ys +
  tracker_attend_clinic_symp_nr_m_hiv1_ntb_ys +
  tracker_attend_clinic_symp_nr_m_hiv2_ntb_ys +
  tracker_attend_clinic_symp_nr_m_hiv0_ytb_ys +
  tracker_attend_clinic_symp_nr_m_hiv1_ytb_ys +
  tracker_attend_clinic_symp_nr_m_hiv2_ytb_ys +
  tracker_attend_clinic_symp_nr_f_hiv0_ntb_ys +
  tracker_attend_clinic_symp_nr_f_hiv1_ntb_ys +
  tracker_attend_clinic_symp_nr_f_hiv2_ntb_ys +
  tracker_attend_clinic_symp_nr_f_hiv0_ytb_ys +
  tracker_attend_clinic_symp_nr_f_hiv1_ytb_ys +
  tracker_attend_clinic_symp_nr_f_hiv2_ytb_ys +

  tracker_attend_clinic_symp_2y_m_hiv0_ntb_ns +
  tracker_attend_clinic_symp_2y_m_hiv1_ntb_ns +
  tracker_attend_clinic_symp_2y_m_hiv2_ntb_ns +
  tracker_attend_clinic_symp_2y_m_hiv0_ytb_ns +
  tracker_attend_clinic_symp_2y_m_hiv1_ytb_ns +
  tracker_attend_clinic_symp_2y_m_hiv2_ytb_ns +
  tracker_attend_clinic_symp_2y_f_hiv0_ntb_ns +
  tracker_attend_clinic_symp_2y_f_hiv1_ntb_ns +
  tracker_attend_clinic_symp_2y_f_hiv2_ntb_ns +
  tracker_attend_clinic_symp_2y_f_hiv0_ytb_ns +
  tracker_attend_clinic_symp_2y_f_hiv1_ytb_ns +
  tracker_attend_clinic_symp_2y_f_hiv2_ytb_ns +
  tracker_attend_clinic_symp_2y_m_hiv0_ntb_ys +
  tracker_attend_clinic_symp_2y_m_hiv1_ntb_ys +
  tracker_attend_clinic_symp_2y_m_hiv2_ntb_ys +
  tracker_attend_clinic_symp_2y_m_hiv0_ytb_ys +
  tracker_attend_clinic_symp_2y_m_hiv1_ytb_ys +
  tracker_attend_clinic_symp_2y_m_hiv2_ytb_ys +
  tracker_attend_clinic_symp_2y_f_hiv0_ntb_ys +
  tracker_attend_clinic_symp_2y_f_hiv1_ntb_ys +
  tracker_attend_clinic_symp_2y_f_hiv2_ntb_ys +
  tracker_attend_clinic_symp_2y_f_hiv0_ytb_ys +
  tracker_attend_clinic_symp_2y_f_hiv1_ytb_ys +
  tracker_attend_clinic_symp_2y_f_hiv2_ytb_ys

  set tracker_clinic_symp_prev_2022 (
    tracker_attend_clinic_bg_nr_m_hiv0_ntb_ys +
    tracker_attend_clinic_bg_nr_m_hiv1_ntb_ys +
    tracker_attend_clinic_bg_nr_m_hiv2_ntb_ys +
    tracker_attend_clinic_bg_nr_m_hiv0_ytb_ys +
    tracker_attend_clinic_bg_nr_m_hiv1_ytb_ys +
    tracker_attend_clinic_bg_nr_m_hiv2_ytb_ys +
    tracker_attend_clinic_bg_nr_f_hiv0_ntb_ys +
    tracker_attend_clinic_bg_nr_f_hiv1_ntb_ys +
    tracker_attend_clinic_bg_nr_f_hiv2_ntb_ys +
    tracker_attend_clinic_bg_nr_f_hiv0_ytb_ys +
    tracker_attend_clinic_bg_nr_f_hiv1_ytb_ys +
    tracker_attend_clinic_bg_nr_f_hiv2_ytb_ys +
    tracker_attend_clinic_bg_2y_m_hiv0_ntb_ys +
    tracker_attend_clinic_bg_2y_m_hiv1_ntb_ys +
    tracker_attend_clinic_bg_2y_m_hiv2_ntb_ys +
    tracker_attend_clinic_bg_2y_m_hiv0_ytb_ys +
    tracker_attend_clinic_bg_2y_m_hiv1_ytb_ys +
    tracker_attend_clinic_bg_2y_m_hiv2_ytb_ys +
    tracker_attend_clinic_bg_2y_f_hiv0_ntb_ys +
    tracker_attend_clinic_bg_2y_f_hiv1_ntb_ys +
    tracker_attend_clinic_bg_2y_f_hiv2_ntb_ys +
    tracker_attend_clinic_bg_2y_f_hiv0_ytb_ys +
    tracker_attend_clinic_bg_2y_f_hiv1_ytb_ys +
    tracker_attend_clinic_bg_2y_f_hiv2_ytb_ys +
    tracker_attend_clinic_symp_nr_m_hiv0_ntb_ys +
    tracker_attend_clinic_symp_nr_m_hiv1_ntb_ys +
    tracker_attend_clinic_symp_nr_m_hiv2_ntb_ys +
    tracker_attend_clinic_symp_nr_m_hiv0_ytb_ys +
    tracker_attend_clinic_symp_nr_m_hiv1_ytb_ys +
    tracker_attend_clinic_symp_nr_m_hiv2_ytb_ys +
    tracker_attend_clinic_symp_nr_f_hiv0_ntb_ys +
    tracker_attend_clinic_symp_nr_f_hiv1_ntb_ys +
    tracker_attend_clinic_symp_nr_f_hiv2_ntb_ys +
    tracker_attend_clinic_symp_nr_f_hiv0_ytb_ys +
    tracker_attend_clinic_symp_nr_f_hiv1_ytb_ys +
    tracker_attend_clinic_symp_nr_f_hiv2_ytb_ys +
    tracker_attend_clinic_symp_2y_m_hiv0_ntb_ys +
    tracker_attend_clinic_symp_2y_m_hiv1_ntb_ys +
    tracker_attend_clinic_symp_2y_m_hiv2_ntb_ys +
    tracker_attend_clinic_symp_2y_m_hiv0_ytb_ys +
    tracker_attend_clinic_symp_2y_m_hiv1_ytb_ys +
    tracker_attend_clinic_symp_2y_m_hiv2_ytb_ys +
    tracker_attend_clinic_symp_2y_f_hiv0_ntb_ys +
    tracker_attend_clinic_symp_2y_f_hiv1_ntb_ys +
    tracker_attend_clinic_symp_2y_f_hiv2_ntb_ys +
    tracker_attend_clinic_symp_2y_f_hiv0_ytb_ys +
    tracker_attend_clinic_symp_2y_f_hiv1_ytb_ys +
    tracker_attend_clinic_symp_2y_f_hiv2_ytb_ys
  ) /
  tracker_clinic_visits_2022

  let tracker_tb_prev_in_clinic_2022 (
    tracker_attend_clinic_bg_nr_m_hiv0_ytb_ns +
    tracker_attend_clinic_bg_nr_m_hiv1_ytb_ns +
    tracker_attend_clinic_bg_nr_m_hiv2_ytb_ns +
    tracker_attend_clinic_bg_nr_f_hiv0_ytb_ns +
    tracker_attend_clinic_bg_nr_f_hiv1_ytb_ns +
    tracker_attend_clinic_bg_nr_f_hiv2_ytb_ns +
    tracker_attend_clinic_bg_nr_m_hiv0_ytb_ys +
    tracker_attend_clinic_bg_nr_m_hiv1_ytb_ys +
    tracker_attend_clinic_bg_nr_m_hiv2_ytb_ys +
    tracker_attend_clinic_bg_nr_f_hiv0_ytb_ys +
    tracker_attend_clinic_bg_nr_f_hiv1_ytb_ys +
    tracker_attend_clinic_bg_nr_f_hiv2_ytb_ys +

    tracker_attend_clinic_bg_2y_m_hiv0_ytb_ns +
    tracker_attend_clinic_bg_2y_m_hiv1_ytb_ns +
    tracker_attend_clinic_bg_2y_m_hiv2_ytb_ns +
    tracker_attend_clinic_bg_2y_f_hiv0_ytb_ns +
    tracker_attend_clinic_bg_2y_f_hiv1_ytb_ns +
    tracker_attend_clinic_bg_2y_f_hiv2_ytb_ns +
    tracker_attend_clinic_bg_2y_m_hiv0_ytb_ys +
    tracker_attend_clinic_bg_2y_m_hiv1_ytb_ys +
    tracker_attend_clinic_bg_2y_m_hiv2_ytb_ys +
    tracker_attend_clinic_bg_2y_f_hiv0_ytb_ys +
    tracker_attend_clinic_bg_2y_f_hiv1_ytb_ys +
    tracker_attend_clinic_bg_2y_f_hiv2_ytb_ys +

    tracker_attend_clinic_symp_nr_m_hiv0_ytb_ns +
    tracker_attend_clinic_symp_nr_m_hiv1_ytb_ns +
    tracker_attend_clinic_symp_nr_m_hiv2_ytb_ns +
    tracker_attend_clinic_symp_nr_f_hiv0_ytb_ns +
    tracker_attend_clinic_symp_nr_f_hiv1_ytb_ns +
    tracker_attend_clinic_symp_nr_f_hiv2_ytb_ns +
    tracker_attend_clinic_symp_nr_m_hiv0_ytb_ys +
    tracker_attend_clinic_symp_nr_m_hiv1_ytb_ys +
    tracker_attend_clinic_symp_nr_m_hiv2_ytb_ys +
    tracker_attend_clinic_symp_nr_f_hiv0_ytb_ys +
    tracker_attend_clinic_symp_nr_f_hiv1_ytb_ys +
    tracker_attend_clinic_symp_nr_f_hiv2_ytb_ys +

    tracker_attend_clinic_symp_2y_m_hiv0_ytb_ns +
    tracker_attend_clinic_symp_2y_m_hiv1_ytb_ns +
    tracker_attend_clinic_symp_2y_m_hiv2_ytb_ns +
    tracker_attend_clinic_symp_2y_f_hiv0_ytb_ns +
    tracker_attend_clinic_symp_2y_f_hiv1_ytb_ns +
    tracker_attend_clinic_symp_2y_f_hiv2_ytb_ns +
    tracker_attend_clinic_symp_2y_m_hiv0_ytb_ys +
    tracker_attend_clinic_symp_2y_m_hiv1_ytb_ys +
    tracker_attend_clinic_symp_2y_m_hiv2_ytb_ys +
    tracker_attend_clinic_symp_2y_f_hiv0_ytb_ys +
    tracker_attend_clinic_symp_2y_f_hiv1_ytb_ys +
    tracker_attend_clinic_symp_2y_f_hiv2_ytb_ys
    ) / (
    tracker_clinic_visits_2022
  )


  let tracker_tb_prev_in_clinic_symp_2022 (
    tracker_attend_clinic_bg_nr_m_hiv0_ytb_ys +
    tracker_attend_clinic_bg_nr_m_hiv1_ytb_ys +
    tracker_attend_clinic_bg_nr_m_hiv2_ytb_ys +
    tracker_attend_clinic_bg_nr_f_hiv0_ytb_ys +
    tracker_attend_clinic_bg_nr_f_hiv1_ytb_ys +
    tracker_attend_clinic_bg_nr_f_hiv2_ytb_ys +
    tracker_attend_clinic_symp_nr_m_hiv0_ytb_ys +
    tracker_attend_clinic_symp_nr_m_hiv1_ytb_ys +
    tracker_attend_clinic_symp_nr_m_hiv2_ytb_ys +
    tracker_attend_clinic_symp_nr_f_hiv0_ytb_ys +
    tracker_attend_clinic_symp_nr_f_hiv1_ytb_ys +
    tracker_attend_clinic_symp_nr_f_hiv2_ytb_ys +
    tracker_attend_clinic_bg_2y_m_hiv0_ytb_ys +
    tracker_attend_clinic_bg_2y_m_hiv1_ytb_ys +
    tracker_attend_clinic_bg_2y_m_hiv2_ytb_ys +
    tracker_attend_clinic_bg_2y_f_hiv0_ytb_ys +
    tracker_attend_clinic_bg_2y_f_hiv1_ytb_ys +
    tracker_attend_clinic_bg_2y_f_hiv2_ytb_ys +
    tracker_attend_clinic_symp_2y_m_hiv0_ytb_ys +
    tracker_attend_clinic_symp_2y_m_hiv1_ytb_ys +
    tracker_attend_clinic_symp_2y_m_hiv2_ytb_ys +
    tracker_attend_clinic_symp_2y_f_hiv0_ytb_ys +
    tracker_attend_clinic_symp_2y_f_hiv1_ytb_ys +
    tracker_attend_clinic_symp_2y_f_hiv2_ytb_ys

  ) /
  (tracker_attend_clinic_bg_nr_m_hiv0_ntb_ys +
    tracker_attend_clinic_bg_nr_m_hiv1_ntb_ys +
    tracker_attend_clinic_bg_nr_m_hiv2_ntb_ys +
    tracker_attend_clinic_bg_nr_m_hiv0_ytb_ys +
    tracker_attend_clinic_bg_nr_m_hiv1_ytb_ys +
    tracker_attend_clinic_bg_nr_m_hiv2_ytb_ys +
    tracker_attend_clinic_bg_nr_f_hiv0_ntb_ys +
    tracker_attend_clinic_bg_nr_f_hiv1_ntb_ys +
    tracker_attend_clinic_bg_nr_f_hiv2_ntb_ys +
    tracker_attend_clinic_bg_nr_f_hiv0_ytb_ys +
    tracker_attend_clinic_bg_nr_f_hiv1_ytb_ys +
    tracker_attend_clinic_bg_nr_f_hiv2_ytb_ys +
    tracker_attend_clinic_symp_nr_m_hiv0_ntb_ys +
    tracker_attend_clinic_symp_nr_m_hiv1_ntb_ys +
    tracker_attend_clinic_symp_nr_m_hiv2_ntb_ys +
    tracker_attend_clinic_symp_nr_m_hiv0_ytb_ys +
    tracker_attend_clinic_symp_nr_m_hiv1_ytb_ys +
    tracker_attend_clinic_symp_nr_m_hiv2_ytb_ys +
    tracker_attend_clinic_symp_nr_f_hiv0_ntb_ys +
    tracker_attend_clinic_symp_nr_f_hiv1_ntb_ys +
    tracker_attend_clinic_symp_nr_f_hiv2_ntb_ys +
    tracker_attend_clinic_symp_nr_f_hiv0_ytb_ys +
    tracker_attend_clinic_symp_nr_f_hiv1_ytb_ys +
    tracker_attend_clinic_symp_nr_f_hiv2_ytb_ys +
    tracker_attend_clinic_bg_2y_m_hiv0_ntb_ys +
    tracker_attend_clinic_bg_2y_m_hiv1_ntb_ys +
    tracker_attend_clinic_bg_2y_m_hiv2_ntb_ys +
    tracker_attend_clinic_bg_2y_m_hiv0_ytb_ys +
    tracker_attend_clinic_bg_2y_m_hiv1_ytb_ys +
    tracker_attend_clinic_bg_2y_m_hiv2_ytb_ys +
    tracker_attend_clinic_bg_2y_f_hiv0_ntb_ys +
    tracker_attend_clinic_bg_2y_f_hiv1_ntb_ys +
    tracker_attend_clinic_bg_2y_f_hiv2_ntb_ys +
    tracker_attend_clinic_bg_2y_f_hiv0_ytb_ys +
    tracker_attend_clinic_bg_2y_f_hiv1_ytb_ys +
    tracker_attend_clinic_bg_2y_f_hiv2_ytb_ys +
    tracker_attend_clinic_symp_2y_m_hiv0_ntb_ys +
    tracker_attend_clinic_symp_2y_m_hiv1_ntb_ys +
    tracker_attend_clinic_symp_2y_m_hiv2_ntb_ys +
    tracker_attend_clinic_symp_2y_m_hiv0_ytb_ys +
    tracker_attend_clinic_symp_2y_m_hiv1_ytb_ys +
    tracker_attend_clinic_symp_2y_m_hiv2_ytb_ys +
    tracker_attend_clinic_symp_2y_f_hiv0_ntb_ys +
    tracker_attend_clinic_symp_2y_f_hiv1_ntb_ys +
    tracker_attend_clinic_symp_2y_f_hiv2_ntb_ys +
    tracker_attend_clinic_symp_2y_f_hiv0_ytb_ys +
    tracker_attend_clinic_symp_2y_f_hiv1_ytb_ys +
    tracker_attend_clinic_symp_2y_f_hiv2_ytb_ys)

  let tb_prev_com (
    count hiv0tb2_ms + count hiv0tb2_fs + count hiv0tb3_ms + count hiv0tb3_fs +
    count hiv1tb2_ms + count hiv1tb2_fs + count hiv1tb3_ms + count hiv1tb3_fs +
    count hiv2tb2_ms + count hiv2tb2_fs + count hiv2tb3_ms + count hiv2tb3_fs
  ) / count turtles

  let tb_prev_in_symp_com (
    count hiv0tb2_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv0] +
    count hiv0tb2_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv0] +
    count hiv1tb2_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv1] +
    count hiv1tb2_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv1] +
    count hiv2tb2_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv2] +
    count hiv2tb2_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv2] +
    count hiv0tb3_ms + count hiv0tb3_fs + count hiv1tb3_ms + count hiv1tb3_fs + count hiv1tb3_ms + count hiv1tb3_fs
    ) / (
    count hiv0tb0_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv0] +
    count hiv0tb0_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv0] +
    count hiv1tb0_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv1] +
    count hiv1tb0_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv1] +
    count hiv2tb0_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv2] +
    count hiv2tb0_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv2] +
    count hiv0tb1_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv0] +
    count hiv0tb1_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv0] +
    count hiv1tb1_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv1] +
    count hiv1tb1_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv1] +
    count hiv2tb1_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv2] +
    count hiv2tb1_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv2] +
    count hiv0tb2_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv0] +
    count hiv0tb2_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv0] +
    count hiv1tb2_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv1] +
    count hiv1tb2_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv1] +
    count hiv2tb2_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv2] +
    count hiv2tb2_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv2] +
    count hiv0tb4_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv0] +
    count hiv0tb4_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv0] +
    count hiv1tb4_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv1] +
    count hiv1tb4_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv1] +
    count hiv2tb4_ms with [chronic = 1 or random-float 1 < prob_transient_comm_hiv2] +
    count hiv2tb4_fs with [chronic = 1 or random-float 1 < prob_transient_comm_hiv2] +
    count hiv0tb3_ms + count hiv0tb3_fs + count hiv1tb3_ms + count hiv1tb3_fs + count hiv1tb3_ms + count hiv1tb3_fs
  )

  ifelse tb_prev_in_symp_com > 0
  [set tracker_increased_tb_prev_in_clinic_symp_2022 (tracker_tb_prev_in_clinic_symp_2022 / tb_prev_in_symp_com)]
  [set tracker_increased_tb_prev_in_clinic_symp_2022 "NA"]

  ifelse tb_prev_com > 0
  [set tracker_increased_tb_prev_in_clinic_2022 (tracker_tb_prev_in_clinic_2022 / tb_prev_com)]
  [set tracker_increased_tb_prev_in_clinic_2022 "NA"]

  set tracker_treat_success_hiv0_2022 tracker_treat_success_hiv0
  set tracker_treat_die_tb_hiv0_2022 tracker_treat_die_tb_hiv0
  set tracker_treat_dropout_hiv0_2022 tracker_treat_dropout_hiv0
  set tracker_treat_success_hiv12_2022 (tracker_treat_success_hiv1 + tracker_treat_success_hiv2)
  set tracker_treat_die_tb_hiv12_2022 tracker_treat_die_tb_hiv12
  set tracker_treat_dropout_hiv12_2022 tracker_treat_dropout_hiv12

  set tb_mort_2022_hivneg_num (tracker_die_tb_hiv0_m + tracker_die_tb_hiv0_f)
  set tb_mort_2022_hivpos_num (tracker_die_tb_hiv1_m + tracker_die_tb_hiv1_f +
    tracker_die_tb_hiv2_m + tracker_die_tb_hiv2_f)
end

to fitting_outputs_2023_mid

  ifelse (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set hiv_prev_m_2023 "NA"]
  [set hiv_prev_m_2023 (
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
      count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set hiv_prev_f_2023 "NA"]
  [set hiv_prev_f_2023 (
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
      count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]

  ifelse (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set art_cov_m_2023 "NA"]
  [set art_cov_m_2023 (
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set art_cov_f_2023 "NA"]
  [set art_cov_f_2023 (
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]

  set n_prev_hiv0_clin_2023 count hiv0tb3_ms + count hiv0tb3_fs
  set n_prev_hiv1_clin_2023 count hiv1tb3_ms + count hiv1tb3_fs
  set n_prev_hiv2_clin_2023 count hiv2tb3_ms + count hiv2tb3_fs

  foreach (sublist background_risk_list 0 (12 * 9 - 1)) [ x ->
    set infection_prob_9_background_2023 infection_prob_9_background_2023 + (1 - infection_prob_9_background_2023) * x * child_trans_rate_multiplier
  ]


  ask (turtle-set
    hiv0tb3_ms hiv0tb3_fs)
  [
    let risk infection_prob_9_background_2023
    foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
      set risk risk + (1 - risk) * x
    ]
    set inf9_prev_hiv0_clin_2023 (inf9_prev_hiv0_clin_2023 + risk)
  ]
  ifelse n_prev_hiv0_clin_2023 = 0
  [set inf9_prev_hiv0_clin_2023 "NA"]
  [set inf9_prev_hiv0_clin_2023 inf9_prev_hiv0_clin_2023 / n_prev_hiv0_clin_2023]

  ask (turtle-set hiv0tb2_ms hiv0tb2_fs)
  [
    let risk infection_prob_9_background_2023
    foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
      set risk risk + (1 - risk) * x
    ]
    ifelse chronic = 1 or random-float 1 < prob_transient_comm_hiv0
    [set n_prev_hiv0_sub_symp_2023 (n_prev_hiv0_sub_symp_2023 + 1)
      set inf9_prev_hiv0_sub_symp_2023 (inf9_prev_hiv0_sub_symp_2023 + risk)]
    [set n_prev_hiv0_sub_asymp_2023 (n_prev_hiv0_sub_asymp_2023 + 1)
      set inf9_prev_hiv0_sub_asymp_2023 (inf9_prev_hiv0_sub_asymp_2023 + risk)]
  ]

  ifelse n_prev_hiv0_sub_symp_2023 = 0
  [set inf9_prev_hiv0_sub_symp_2023 "NA"]
  [set inf9_prev_hiv0_sub_symp_2023 (inf9_prev_hiv0_sub_symp_2023 / n_prev_hiv0_sub_symp_2023)]
  ifelse n_prev_hiv0_sub_asymp_2023 = 0
  [set inf9_prev_hiv0_sub_asymp_2023 "NA"]
  [set inf9_prev_hiv0_sub_asymp_2023 (inf9_prev_hiv0_sub_asymp_2023 / n_prev_hiv0_sub_asymp_2023)]

  ask (turtle-set
    hiv1tb3_ms hiv1tb3_fs)
  [
    let risk infection_prob_9_background_2023
    foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
      set risk risk + (1 - risk) * x
    ]
    set inf9_prev_hiv1_clin_2023 (inf9_prev_hiv1_clin_2023 + risk)
  ]
  ifelse n_prev_hiv1_clin_2023 = 0
  [set inf9_prev_hiv1_clin_2023 "NA"]
  [set inf9_prev_hiv1_clin_2023 inf9_prev_hiv1_clin_2023 / n_prev_hiv1_clin_2023]

  ask (turtle-set hiv1tb2_ms hiv1tb2_fs)
  [
    let risk infection_prob_9_background_2023
    foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
      set risk risk + (1 - risk) * x
    ]
    ifelse chronic = 1 or random-float 1 < prob_transient_comm_hiv1
    [set n_prev_hiv1_sub_symp_2023 (n_prev_hiv1_sub_symp_2023 + 1)
      set inf9_prev_hiv1_sub_symp_2023 (inf9_prev_hiv1_sub_symp_2023 + risk)]
    [set n_prev_hiv1_sub_asymp_2023 (n_prev_hiv1_sub_asymp_2023 + 1)
      set inf9_prev_hiv1_sub_asymp_2023 (inf9_prev_hiv1_sub_asymp_2023 + risk)]
  ]

  ifelse n_prev_hiv1_sub_symp_2023 = 0
  [set inf9_prev_hiv1_sub_symp_2023 "NA"]
  [set inf9_prev_hiv1_sub_symp_2023 (inf9_prev_hiv1_sub_symp_2023 / n_prev_hiv1_sub_symp_2023)]
  ifelse n_prev_hiv1_sub_asymp_2023 = 0
  [set inf9_prev_hiv1_sub_asymp_2023 "NA"]
  [set inf9_prev_hiv1_sub_asymp_2023 (inf9_prev_hiv1_sub_asymp_2023 / n_prev_hiv1_sub_asymp_2023)]

  ask (turtle-set
    hiv2tb3_ms hiv2tb3_fs)
  [
    let risk infection_prob_9_background_2023
    foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
      set risk risk + (1 - risk) * x
    ]
    set inf9_prev_hiv2_clin_2023 (inf9_prev_hiv2_clin_2023 + risk)
  ]
  ifelse n_prev_hiv2_clin_2023 = 0
  [set inf9_prev_hiv2_clin_2023 "NA"]
  [set inf9_prev_hiv2_clin_2023 inf9_prev_hiv2_clin_2023 / n_prev_hiv2_clin_2023]

  ask (turtle-set hiv2tb2_ms hiv2tb2_fs)
  [
    let risk infection_prob_9_background_2023
    foreach (sublist my_hh_risk_list 0 (12 * 9 - 1)) [ x ->
      set risk risk + (1 - risk) * x
    ]
    ifelse chronic = 1 or random-float 1 < prob_transient_comm_hiv2
    [set n_prev_hiv2_sub_symp_2023 (n_prev_hiv2_sub_symp_2023 + 1)
      set inf9_prev_hiv2_sub_symp_2023 (inf9_prev_hiv2_sub_symp_2023 + risk)]
    [set n_prev_hiv2_sub_asymp_2023 (n_prev_hiv2_sub_asymp_2023 + 1)
      set inf9_prev_hiv2_sub_asymp_2023 (inf9_prev_hiv2_sub_asymp_2023 + risk)]
  ]

  ifelse n_prev_hiv2_sub_symp_2023 = 0
  [set inf9_prev_hiv2_sub_symp_2023 "NA"]
  [set inf9_prev_hiv2_sub_symp_2023 (inf9_prev_hiv2_sub_symp_2023 / n_prev_hiv2_sub_symp_2023)]
  ifelse n_prev_hiv2_sub_asymp_2023 = 0
  [set inf9_prev_hiv2_sub_asymp_2023 "NA"]
  [set inf9_prev_hiv2_sub_asymp_2023 (inf9_prev_hiv2_sub_asymp_2023 / n_prev_hiv2_sub_asymp_2023)]

end

to fitting_outputs_2023_end
  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_2023 "NA"]
  [set tb_incidence_2023 100000 * (
    tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f +
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_incidence_2023_hivpos "NA"]
  [set tb_incidence_2023_hivpos 100000 * (
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_mort_2023 "NA"]
  [set tb_mort_2023 100000 * (
    tracker_die_tb_hiv0_m + tracker_die_tb_hiv0_f +
    tracker_die_tb_hiv1_m + tracker_die_tb_hiv1_f +
    tracker_die_tb_hiv2_m + tracker_die_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [set tb_mort_2023_hivpos "NA"]
  [set tb_mort_2023_hivpos 100000 * (
    tracker_die_tb_hiv1_m + tracker_die_tb_hiv1_f +
    tracker_die_tb_hiv2_m + tracker_die_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)]

  set tracker_inc_tb_23 (
    tracker_develop_tb_hiv0_m + tracker_develop_tb_hiv0_f +
    tracker_develop_tb_hiv1_m + tracker_develop_tb_hiv1_f +
    tracker_develop_tb_hiv2_m + tracker_develop_tb_hiv2_f)
  set tracker_treat_tb_23 (length(tracker_clinic_start_treat_active_p) + length(tracker_clinic_start_treat_active_a) + length(tracker_start_treat_passive) + length(tracker_community_start_treat_active))

  set tb_not_23 100000 * ((length(tracker_clinic_start_treat_active_p) + length(tracker_clinic_start_treat_active_a) + length(tracker_start_treat_passive) + length(tracker_community_start_treat_active))
  ) / initial_pop_size

  ifelse (length(tracker_clinic_start_treat_active_p) + length(tracker_clinic_start_treat_active_a) + length(tracker_start_treat_passive) + length(tracker_community_start_treat_active)) = 0
  [set prop_start_treat_hivpos_2023 "NA"]
  [
    set prop_start_treat_hivpos_2023 (
      length(filter [ i -> i = 1 ] tracker_clinic_start_treat_active_p) + length(filter [ i -> i = 2 ] tracker_clinic_start_treat_active_p) +
      length(filter [ i -> i = 1 ] tracker_clinic_start_treat_active_a) + length(filter [ i -> i = 2 ] tracker_clinic_start_treat_active_a) +
      length(filter [ i -> i = 1 ] tracker_start_treat_passive) + length(filter [ i -> i = 2 ] tracker_start_treat_passive) +
      length(filter [ i -> i = 1 ] tracker_community_start_treat_active) + length(filter [ i -> i = 2 ] tracker_community_start_treat_active)
    ) /
    (length(tracker_clinic_start_treat_active_p) + length(tracker_clinic_start_treat_active_a) + length(tracker_start_treat_passive) + length(tracker_community_start_treat_active))
  ]

  ifelse (
    length(filter [ i -> i = 1 ] tracker_clinic_start_treat_active_p) + length(filter [ i -> i = 2 ] tracker_clinic_start_treat_active_p) +
    length(filter [ i -> i = 1 ] tracker_clinic_start_treat_active_a) + length(filter [ i -> i = 2 ] tracker_clinic_start_treat_active_a) +
    length(filter [ i -> i = 1 ] tracker_start_treat_passive) + length(filter [ i -> i = 2 ] tracker_start_treat_passive) +
    length(filter [ i -> i = 1 ] tracker_community_start_treat_active) + length(filter [ i -> i = 2 ] tracker_community_start_treat_active)
  ) = 0
  [set prop_start_treat_art_2023 "NA"]
  [
    set prop_start_treat_art_2023 (
      length(filter [ i -> i = 2 ] tracker_clinic_start_treat_active_p) +
      length(filter [ i -> i = 2 ] tracker_clinic_start_treat_active_a) +
      length(filter [ i -> i = 2 ] tracker_start_treat_passive) +
      length(filter [ i -> i = 2 ] tracker_community_start_treat_active)
    ) /
    (
      length(filter [ i -> i = 1 ] tracker_clinic_start_treat_active_p) + length(filter [ i -> i = 2 ] tracker_clinic_start_treat_active_p) +
      length(filter [ i -> i = 1 ] tracker_clinic_start_treat_active_a) + length(filter [ i -> i = 2 ] tracker_clinic_start_treat_active_a) +
      length(filter [ i -> i = 1 ] tracker_start_treat_passive) + length(filter [ i -> i = 2 ] tracker_start_treat_passive) +
      length(filter [ i -> i = 1 ] tracker_community_start_treat_active) + length(filter [ i -> i = 2 ] tracker_community_start_treat_active)
    )
  ]
end

to fitting_outputs_2030_mid
  ifelse (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) = 0
  [set hiv_prev_m_2030 "NA"]
  [set hiv_prev_m_2030 (
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
    (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
      count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)]

  ifelse (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) = 0
  [set hiv_prev_f_2030 "NA"]
  [set hiv_prev_f_2030 (
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
    (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
      count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)]
end

to output_column_names
  output-type (word "year" ",")
  output_hiv_summary_names
  output_tb_summary_names
  output_breeds_names
  output_clinic_visit_names
  output_tb_previous_tb_names
  output_popsize_vars_names
  output_econ_column_names
  output_tutt_symp_comparison_column_names
  output-print (word ",")
end

to output
  output-type (word (year - 1) ",")
  output_hiv_summary
  output_tb_summary
  output_breeds
  output_clinic_visit
  output_tb_previous_tb
  output_popsize_vars
  output_econ
  output_tutt_symp_comparison
  output-print (word ",")
end

To output_tutt_symp_comparison_column_names
  output-type (word "die_tb_hiv0" ",")
  output-type (word "die_tb_hiv1" ",")
  output-type (word "die_tb_hiv2" ",")
  output-type (word "die_tb_hiv0_notreat" ",")
  output-type (word "die_tb_hiv1_notreat" ",")
  output-type (word "die_tb_hiv2_notreat" ",")
  output-type (word "die_tb_hiv0_ontreat" ",")
  output-type (word "die_tb_hiv1_ontreat" ",")
  output-type (word "die_tb_hiv2_ontreat" ",")
  output-type (word "treat_end_tb_hiv0" ",")
  output-type (word "treat_end_tb_hiv1" ",")
  output-type (word "treat_end_tb_hiv2" ",")
  output-type (word "treat_start_tb_hiv0" ",")
  output-type (word "treat_start_tb_hiv1" ",")
  output-type (word "treat_start_tb_hiv2" ",")
  output-type (word "selfcure_tb_hiv0" ",")
  output-type (word "selfcure_tb_hiv1" ",")
  output-type (word "selfcure_tb_hiv2" ",")
  output-type (word "mean_pm_before_treat_hiv0" ",")
  output-type (word "mean_pm_before_treat_hiv1" ",")
  output-type (word "mean_pm_before_treat_hiv2" ",")
  output-type (word "mean_pm_resolve_hiv0" ",")
  output-type (word "mean_pm_resolve_hiv1" ",")
  output-type (word "mean_pm_resolve_hiv2" ",")

  output-type (word "start_treat_pm_2026_hiv0" ",")
  output-type (word "start_treat_pm_2026_hiv1" ",")
  output-type (word "start_treat_pm_2026_hiv2" ",")
  output-type (word "resolve_pm_2026_hiv0" ",")
  output-type (word "resolve_pm_2026_hiv1" ",")
  output-type (word "resolve_pm_2026_hiv2" ",")
  output-type (word "start_treat_2026_hiv0" ",")
  output-type (word "start_treat_2026_hiv1" ",")
  output-type (word "start_treat_2026_hiv2" ",")
  output-type (word "dietb_notreat_2026_hiv0" ",")
  output-type (word "dietb_notreat_2026_hiv1" ",")
  output-type (word "dietb_notreat_2026_hiv2" ",")
  output-type (word "dietb_ontreat_2026_hiv0" ",")
  output-type (word "dietb_ontreat_2026_hiv1" ",")
  output-type (word "dietb_ontreat_2026_hiv2" ",")
  output-type (word "dienottb_2026_hiv0" ",")
  output-type (word "dienottb_2026_hiv1" ",")
  output-type (word "dienottb_2026_hiv2" ",")
  output-type (word "selfcure_2026_hiv0" ",")
  output-type (word "selfcure_2026_hiv1" ",")
  output-type (word "selfcure_2026_hiv2" ",")
  output-type (word "sputum_attempt_hiv0" ",")
  output-type (word "sputum_attempt_hiv1" ",")
  output-type (word "sputum_attempt_hiv2" ",")
  output-type (word "sputum_produced_hiv0" ",")
  output-type (word "sputum_produced_hiv1" ",")
  output-type (word "sputum_produced_hiv2" ",")
  output-type (word "popsize_end_hiv0" ",")
  output-type (word "popsize_end_hiv1" ",")
  output-type (word "popsize_end_hiv2" ",")
end

to output_tutt_symp_comparison
  output-type (word (tracker_die_tb_hiv0_m + tracker_die_tb_hiv0_f) ",")
  output-type (word (tracker_die_tb_hiv1_m + tracker_die_tb_hiv1_f) ",")
  output-type (word (tracker_die_tb_hiv2_m + tracker_die_tb_hiv2_f) ",")
  output-type (word tracker_die_tb_hiv0_notreat ",")
  output-type (word tracker_die_tb_hiv1_notreat ",")
  output-type (word tracker_die_tb_hiv2_notreat ",")
  output-type (word tracker_die_tb_hiv0_ontreat ",")
  output-type (word tracker_die_tb_hiv1_ontreat ",")
  output-type (word tracker_die_tb_hiv2_ontreat ",")
  output-type (word tracker_treat_success_hiv0 ",")
  output-type (word tracker_treat_success_hiv1 ",")
  output-type (word tracker_treat_success_hiv2 ",")
  output-type (word (tracker_treat_tb_hiv0_m + tracker_treat_tb_hiv0_f) ",")
  output-type (word (tracker_treat_tb_hiv1_m + tracker_treat_tb_hiv1_f) ",")
  output-type (word (tracker_treat_tb_hiv2_m + tracker_treat_tb_hiv2_f) ",")
  output-type (word tracker_selfcure_hiv0 ",")
  output-type (word tracker_selfcure_hiv1 ",")
  output-type (word tracker_selfcure_hiv2 ",")
  ifelse length tracker_start_treat_pm_hiv0 = 0
  [output-type (word "NA" ",")]
  [output-type (word mean tracker_start_treat_pm_hiv0 ",")]
  ifelse length tracker_start_treat_pm_hiv1 = 0
  [output-type (word "NA" ",")]
  [output-type (word mean tracker_start_treat_pm_hiv1 ",")]
  ifelse length tracker_start_treat_pm_hiv2 = 0
  [output-type (word "NA" ",")]
  [output-type (word mean tracker_start_treat_pm_hiv2 ",")]
  ifelse length tracker_resolve_pm_hiv0 = 0
  [output-type (word "NA" ",")]
  [output-type (word mean tracker_resolve_pm_hiv0 ",")]
  ifelse length tracker_resolve_pm_hiv1 = 0
  [output-type (word "NA" ",")]
  [output-type (word mean tracker_resolve_pm_hiv1 ",")]
  ifelse length tracker_resolve_pm_hiv2 = 0
  [output-type (word "NA" ",")]
  [output-type (word mean tracker_resolve_pm_hiv2 ",")]
  ifelse length tracker_start_treat_pm_2026_hiv0 = 0
  [output-type (word "NA" ",")]
  [output-type (word mean tracker_start_treat_pm_2026_hiv0 ",")]
  ifelse length tracker_start_treat_pm_2026_hiv1 = 0
  [output-type (word "NA" ",")]
  [output-type (word mean tracker_start_treat_pm_2026_hiv1 ",")]
  ifelse length tracker_start_treat_pm_2026_hiv2 = 0
  [output-type (word "NA" ",")]
  [output-type (word mean tracker_start_treat_pm_2026_hiv2 ",")]
  ifelse length tracker_resolve_pm_2026_hiv0 = 0
  [output-type (word "NA" ",")]
  [output-type (word mean tracker_resolve_pm_2026_hiv0 ",")]
  ifelse length tracker_resolve_pm_2026_hiv1 = 0
  [output-type (word "NA" ",")]
  [output-type (word mean tracker_resolve_pm_2026_hiv1 ",")]
  ifelse length tracker_resolve_pm_2026_hiv2 = 0
  [output-type (word "NA" ",")]
  [output-type (word mean tracker_resolve_pm_2026_hiv2 ",")]
  output-type (word tracker_start_treat_2026_hiv0 ",")
  output-type (word tracker_start_treat_2026_hiv1 ",")
  output-type (word tracker_start_treat_2026_hiv2 ",")
  output-type (word tracker_dietb_notreat_2026_hiv0 ",")
  output-type (word tracker_dietb_notreat_2026_hiv1 ",")
  output-type (word tracker_dietb_notreat_2026_hiv2 ",")
  output-type (word tracker_dietb_ontreat_2026_hiv0 ",")
  output-type (word tracker_dietb_ontreat_2026_hiv1 ",")
  output-type (word tracker_dietb_ontreat_2026_hiv2 ",")
  output-type (word tracker_dienottb_2026_hiv0 ",")
  output-type (word tracker_dienottb_2026_hiv1 ",")
  output-type (word tracker_dienottb_2026_hiv2 ",")
  output-type (word tracker_selfcure_2026_hiv0 ",")
  output-type (word tracker_selfcure_2026_hiv1 ",")
  output-type (word tracker_selfcure_2026_hiv2 ",")

  output-type (word (count turtles with [hiv_art_status = 0 and sputum_attempt_2026 = 1]) ",")
  output-type (word (count turtles with [hiv_art_status = 1 and sputum_attempt_2026 = 1]) ",")
  output-type (word (count turtles with [hiv_art_status = 2 and sputum_attempt_2026 = 1]) ",")
  output-type (word (count turtles with [hiv_art_status = 0 and sputum_produced_2026 = 1]) ",")
  output-type (word (count turtles with [hiv_art_status = 1 and sputum_produced_2026 = 1]) ",")
  output-type (word (count turtles with [hiv_art_status = 2 and sputum_produced_2026 = 1]) ",")
  output-type (word (count turtles with [hiv_art_status = 0]) ",")
  output-type (word (count turtles with [hiv_art_status = 1]) ",")
  output-type (word (count turtles with [hiv_art_status = 2]) ",")
end

to output_clinic_visit_names
  output-type (word "attend_clinic_bg_nr_m_hiv0_ntb_ns" ",")
  output-type (word "attend_clinic_bg_nr_m_hiv1_ntb_ns" ",")
  output-type (word "attend_clinic_bg_nr_m_hiv2_ntb_ns" ",")
  output-type (word "attend_clinic_bg_nr_m_hiv0_ytb_ns" ",")
  output-type (word "attend_clinic_bg_nr_m_hiv1_ytb_ns" ",")
  output-type (word "attend_clinic_bg_nr_m_hiv2_ytb_ns" ",")
  output-type (word "attend_clinic_bg_nr_f_hiv0_ntb_ns" ",")
  output-type (word "attend_clinic_bg_nr_f_hiv1_ntb_ns" ",")
  output-type (word "attend_clinic_bg_nr_f_hiv2_ntb_ns" ",")
  output-type (word "attend_clinic_bg_nr_f_hiv0_ytb_ns" ",")
  output-type (word "attend_clinic_bg_nr_f_hiv1_ytb_ns" ",")
  output-type (word "attend_clinic_bg_nr_f_hiv2_ytb_ns" ",")
  output-type (word "attend_clinic_bg_nr_m_hiv0_ntb_ys" ",")
  output-type (word "attend_clinic_bg_nr_m_hiv1_ntb_ys" ",")
  output-type (word "attend_clinic_bg_nr_m_hiv2_ntb_ys" ",")
  output-type (word "attend_clinic_bg_nr_m_hiv0_ytb_ys" ",")
  output-type (word "attend_clinic_bg_nr_m_hiv1_ytb_ys" ",")
  output-type (word "attend_clinic_bg_nr_m_hiv2_ytb_ys" ",")
  output-type (word "attend_clinic_bg_nr_f_hiv0_ntb_ys" ",")
  output-type (word "attend_clinic_bg_nr_f_hiv1_ntb_ys" ",")
  output-type (word "attend_clinic_bg_nr_f_hiv2_ntb_ys" ",")
  output-type (word "attend_clinic_bg_nr_f_hiv0_ytb_ys" ",")
  output-type (word "attend_clinic_bg_nr_f_hiv1_ytb_ys" ",")
  output-type (word "attend_clinic_bg_nr_f_hiv2_ytb_ys" ",")
  output-type (word "attend_clinic_bg_2y_m_hiv0_ntb_ns" ",")
  output-type (word "attend_clinic_bg_2y_m_hiv1_ntb_ns" ",")
  output-type (word "attend_clinic_bg_2y_m_hiv2_ntb_ns" ",")
  output-type (word "attend_clinic_bg_2y_m_hiv0_ytb_ns" ",")
  output-type (word "attend_clinic_bg_2y_m_hiv1_ytb_ns" ",")
  output-type (word "attend_clinic_bg_2y_m_hiv2_ytb_ns" ",")
  output-type (word "attend_clinic_bg_2y_f_hiv0_ntb_ns" ",")
  output-type (word "attend_clinic_bg_2y_f_hiv1_ntb_ns" ",")
  output-type (word "attend_clinic_bg_2y_f_hiv2_ntb_ns" ",")
  output-type (word "attend_clinic_bg_2y_f_hiv0_ytb_ns" ",")
  output-type (word "attend_clinic_bg_2y_f_hiv1_ytb_ns" ",")
  output-type (word "attend_clinic_bg_2y_f_hiv2_ytb_ns" ",")
  output-type (word "attend_clinic_bg_2y_m_hiv0_ntb_ys" ",")
  output-type (word "attend_clinic_bg_2y_m_hiv1_ntb_ys" ",")
  output-type (word "attend_clinic_bg_2y_m_hiv2_ntb_ys" ",")
  output-type (word "attend_clinic_bg_2y_m_hiv0_ytb_ys" ",")
  output-type (word "attend_clinic_bg_2y_m_hiv1_ytb_ys" ",")
  output-type (word "attend_clinic_bg_2y_m_hiv2_ytb_ys" ",")
  output-type (word "attend_clinic_bg_2y_f_hiv0_ntb_ys" ",")
  output-type (word "attend_clinic_bg_2y_f_hiv1_ntb_ys" ",")
  output-type (word "attend_clinic_bg_2y_f_hiv2_ntb_ys" ",")
  output-type (word "attend_clinic_bg_2y_f_hiv0_ytb_ys" ",")
  output-type (word "attend_clinic_bg_2y_f_hiv1_ytb_ys" ",")
  output-type (word "attend_clinic_bg_2y_f_hiv2_ytb_ys" ",")
  output-type (word "attend_clinic_symp_nr_m_hiv0_ntb_ys" ",")
  output-type (word "attend_clinic_symp_nr_m_hiv1_ntb_ys" ",")
  output-type (word "attend_clinic_symp_nr_m_hiv2_ntb_ys" ",")
  output-type (word "attend_clinic_symp_nr_m_hiv0_ytb_ys" ",")
  output-type (word "attend_clinic_symp_nr_m_hiv1_ytb_ys" ",")
  output-type (word "attend_clinic_symp_nr_m_hiv2_ytb_ys" ",")
  output-type (word "attend_clinic_symp_nr_f_hiv0_ntb_ys" ",")
  output-type (word "attend_clinic_symp_nr_f_hiv1_ntb_ys" ",")
  output-type (word "attend_clinic_symp_nr_f_hiv2_ntb_ys" ",")
  output-type (word "attend_clinic_symp_nr_f_hiv0_ytb_ys" ",")
  output-type (word "attend_clinic_symp_nr_f_hiv1_ytb_ys" ",")
  output-type (word "attend_clinic_symp_nr_f_hiv2_ytb_ys" ",")
  output-type (word "attend_clinic_symp_2y_m_hiv0_ntb_ys" ",")
  output-type (word "attend_clinic_symp_2y_m_hiv1_ntb_ys" ",")
  output-type (word "attend_clinic_symp_2y_m_hiv2_ntb_ys" ",")
  output-type (word "attend_clinic_symp_2y_m_hiv0_ytb_ys" ",")
  output-type (word "attend_clinic_symp_2y_m_hiv1_ytb_ys" ",")
  output-type (word "attend_clinic_symp_2y_m_hiv2_ytb_ys" ",")
  output-type (word "attend_clinic_symp_2y_f_hiv0_ntb_ys" ",")
  output-type (word "attend_clinic_symp_2y_f_hiv1_ntb_ys" ",")
  output-type (word "attend_clinic_symp_2y_f_hiv2_ntb_ys" ",")
  output-type (word "attend_clinic_symp_2y_f_hiv0_ytb_ys" ",")
  output-type (word "attend_clinic_symp_2y_f_hiv1_ytb_ys" ",")
  output-type (word "attend_clinic_symp_2y_f_hiv2_ytb_ys" ",")

  output-type (word "diagnosed_bg_m_hiv0_ytb_ns" ",")
  output-type (word "diagnosed_bg_m_hiv1_ytb_ns" ",")
  output-type (word "diagnosed_bg_m_hiv2_ytb_ns" ",")
  output-type (word "diagnosed_bg_f_hiv0_ytb_ns" ",")
  output-type (word "diagnosed_bg_f_hiv1_ytb_ns" ",")
  output-type (word "diagnosed_bg_f_hiv2_ytb_ns" ",")
  output-type (word "diagnosed_bg_m_hiv0_ytb_ys" ",")
  output-type (word "diagnosed_bg_m_hiv1_ytb_ys" ",")
  output-type (word "diagnosed_bg_m_hiv2_ytb_ys" ",")
  output-type (word "diagnosed_bg_f_hiv0_ytb_ys" ",")
  output-type (word "diagnosed_bg_f_hiv1_ytb_ys" ",")
  output-type (word "diagnosed_bg_f_hiv2_ytb_ys" ",")
  output-type (word "diagnosed_symp_active_m_hiv0_ytb_ys" ",")
  output-type (word "diagnosed_symp_active_m_hiv1_ytb_ys" ",")
  output-type (word "diagnosed_symp_active_m_hiv2_ytb_ys" ",")
  output-type (word "diagnosed_symp_active_f_hiv0_ytb_ys" ",")
  output-type (word "diagnosed_symp_active_f_hiv1_ytb_ys" ",")
  output-type (word "diagnosed_symp_active_f_hiv2_ytb_ys" ",")
  output-type (word "diagnosed_symp_m_hiv0_ytb_ys" ",")
  output-type (word "diagnosed_symp_m_hiv1_ytb_ys" ",")
  output-type (word "diagnosed_symp_m_hiv2_ytb_ys" ",")
  output-type (word "diagnosed_symp_f_hiv0_ytb_ys" ",")
  output-type (word "diagnosed_symp_f_hiv1_ytb_ys" ",")
  output-type (word "diagnosed_symp_f_hiv2_ytb_ys" ",")

  output-type (word "tutt_eligibility_screened" ",")
  output-type (word "tutt_recenttb_screened" ",")
  output-type (word "tutt_recenttb_detected" ",")
  output-type (word "tutt_recenttb_truepos" ",")
  output-type (word "tutt_contact_screened" ",")
  output-type (word "tutt_contact_detected" ",")
  output-type (word "tutt_contact_truepos" ",")
  output-type (word "tutt_art_screened" ",")
  output-type (word "tutt_art_detected" ",")
  output-type (word "tutt_art_truepos" ",")

  output-type (word "false_pos_annual_xpertpos" ",")
  output-type (word "false_pos_annual_doc_immed" ",")
  output-type (word "false_pos_annual_doc_test" ",")
  output-type (word "false_pos_other_xpertpos" ",")
  output-type (word "false_pos_other_doc_immed" ",")
  output-type (word "false_pos_other_doc_test" ",")
end



to output_clinic_visit
  output-type (word tracker_attend_clinic_bg_nr_m_hiv0_ntb_ns ",")
  output-type (word tracker_attend_clinic_bg_nr_m_hiv1_ntb_ns ",")
  output-type (word tracker_attend_clinic_bg_nr_m_hiv2_ntb_ns ",")
  output-type (word tracker_attend_clinic_bg_nr_m_hiv0_ytb_ns ",")
  output-type (word tracker_attend_clinic_bg_nr_m_hiv1_ytb_ns ",")
  output-type (word tracker_attend_clinic_bg_nr_m_hiv2_ytb_ns ",")
  output-type (word tracker_attend_clinic_bg_nr_f_hiv0_ntb_ns ",")
  output-type (word tracker_attend_clinic_bg_nr_f_hiv1_ntb_ns ",")
  output-type (word tracker_attend_clinic_bg_nr_f_hiv2_ntb_ns ",")
  output-type (word tracker_attend_clinic_bg_nr_f_hiv0_ytb_ns ",")
  output-type (word tracker_attend_clinic_bg_nr_f_hiv1_ytb_ns ",")
  output-type (word tracker_attend_clinic_bg_nr_f_hiv2_ytb_ns ",")
  output-type (word tracker_attend_clinic_bg_nr_m_hiv0_ntb_ys ",")
  output-type (word tracker_attend_clinic_bg_nr_m_hiv1_ntb_ys ",")
  output-type (word tracker_attend_clinic_bg_nr_m_hiv2_ntb_ys ",")
  output-type (word tracker_attend_clinic_bg_nr_m_hiv0_ytb_ys ",")
  output-type (word tracker_attend_clinic_bg_nr_m_hiv1_ytb_ys ",")
  output-type (word tracker_attend_clinic_bg_nr_m_hiv2_ytb_ys ",")
  output-type (word tracker_attend_clinic_bg_nr_f_hiv0_ntb_ys ",")
  output-type (word tracker_attend_clinic_bg_nr_f_hiv1_ntb_ys ",")
  output-type (word tracker_attend_clinic_bg_nr_f_hiv2_ntb_ys ",")
  output-type (word tracker_attend_clinic_bg_nr_f_hiv0_ytb_ys ",")
  output-type (word tracker_attend_clinic_bg_nr_f_hiv1_ytb_ys ",")
  output-type (word tracker_attend_clinic_bg_nr_f_hiv2_ytb_ys ",")
  output-type (word tracker_attend_clinic_bg_2y_m_hiv0_ntb_ns ",")
  output-type (word tracker_attend_clinic_bg_2y_m_hiv1_ntb_ns ",")
  output-type (word tracker_attend_clinic_bg_2y_m_hiv2_ntb_ns ",")
  output-type (word tracker_attend_clinic_bg_2y_m_hiv0_ytb_ns ",")
  output-type (word tracker_attend_clinic_bg_2y_m_hiv1_ytb_ns ",")
  output-type (word tracker_attend_clinic_bg_2y_m_hiv2_ytb_ns ",")
  output-type (word tracker_attend_clinic_bg_2y_f_hiv0_ntb_ns ",")
  output-type (word tracker_attend_clinic_bg_2y_f_hiv1_ntb_ns ",")
  output-type (word tracker_attend_clinic_bg_2y_f_hiv2_ntb_ns ",")
  output-type (word tracker_attend_clinic_bg_2y_f_hiv0_ytb_ns ",")
  output-type (word tracker_attend_clinic_bg_2y_f_hiv1_ytb_ns ",")
  output-type (word tracker_attend_clinic_bg_2y_f_hiv2_ytb_ns ",")
  output-type (word tracker_attend_clinic_bg_2y_m_hiv0_ntb_ys ",")
  output-type (word tracker_attend_clinic_bg_2y_m_hiv1_ntb_ys ",")
  output-type (word tracker_attend_clinic_bg_2y_m_hiv2_ntb_ys ",")
  output-type (word tracker_attend_clinic_bg_2y_m_hiv0_ytb_ys ",")
  output-type (word tracker_attend_clinic_bg_2y_m_hiv1_ytb_ys ",")
  output-type (word tracker_attend_clinic_bg_2y_m_hiv2_ytb_ys ",")
  output-type (word tracker_attend_clinic_bg_2y_f_hiv0_ntb_ys ",")
  output-type (word tracker_attend_clinic_bg_2y_f_hiv1_ntb_ys ",")
  output-type (word tracker_attend_clinic_bg_2y_f_hiv2_ntb_ys ",")
  output-type (word tracker_attend_clinic_bg_2y_f_hiv0_ytb_ys ",")
  output-type (word tracker_attend_clinic_bg_2y_f_hiv1_ytb_ys ",")
  output-type (word tracker_attend_clinic_bg_2y_f_hiv2_ytb_ys ",")
  output-type (word tracker_attend_clinic_symp_nr_m_hiv0_ntb_ys ",")
  output-type (word tracker_attend_clinic_symp_nr_m_hiv1_ntb_ys ",")
  output-type (word tracker_attend_clinic_symp_nr_m_hiv2_ntb_ys ",")
  output-type (word tracker_attend_clinic_symp_nr_m_hiv0_ytb_ys ",")
  output-type (word tracker_attend_clinic_symp_nr_m_hiv1_ytb_ys ",")
  output-type (word tracker_attend_clinic_symp_nr_m_hiv2_ytb_ys ",")
  output-type (word tracker_attend_clinic_symp_nr_f_hiv0_ntb_ys ",")
  output-type (word tracker_attend_clinic_symp_nr_f_hiv1_ntb_ys ",")
  output-type (word tracker_attend_clinic_symp_nr_f_hiv2_ntb_ys ",")
  output-type (word tracker_attend_clinic_symp_nr_f_hiv0_ytb_ys ",")
  output-type (word tracker_attend_clinic_symp_nr_f_hiv1_ytb_ys ",")
  output-type (word tracker_attend_clinic_symp_nr_f_hiv2_ytb_ys ",")
  output-type (word tracker_attend_clinic_symp_2y_m_hiv0_ntb_ys ",")
  output-type (word tracker_attend_clinic_symp_2y_m_hiv1_ntb_ys ",")
  output-type (word tracker_attend_clinic_symp_2y_m_hiv2_ntb_ys ",")
  output-type (word tracker_attend_clinic_symp_2y_m_hiv0_ytb_ys ",")
  output-type (word tracker_attend_clinic_symp_2y_m_hiv1_ytb_ys ",")
  output-type (word tracker_attend_clinic_symp_2y_m_hiv2_ytb_ys ",")
  output-type (word tracker_attend_clinic_symp_2y_f_hiv0_ntb_ys ",")
  output-type (word tracker_attend_clinic_symp_2y_f_hiv1_ntb_ys ",")
  output-type (word tracker_attend_clinic_symp_2y_f_hiv2_ntb_ys ",")
  output-type (word tracker_attend_clinic_symp_2y_f_hiv0_ytb_ys ",")
  output-type (word tracker_attend_clinic_symp_2y_f_hiv1_ytb_ys ",")
  output-type (word tracker_attend_clinic_symp_2y_f_hiv2_ytb_ys ",")

  output-type (word tracker_diagnosed_bg_m_hiv0_ytb_ns ",")
  output-type (word tracker_diagnosed_bg_m_hiv1_ytb_ns ",")
  output-type (word tracker_diagnosed_bg_m_hiv2_ytb_ns ",")
  output-type (word tracker_diagnosed_bg_f_hiv0_ytb_ns ",")
  output-type (word tracker_diagnosed_bg_f_hiv1_ytb_ns ",")
  output-type (word tracker_diagnosed_bg_f_hiv2_ytb_ns ",")
  output-type (word tracker_diagnosed_bg_m_hiv0_ytb_ys ",")
  output-type (word tracker_diagnosed_bg_m_hiv1_ytb_ys ",")
  output-type (word tracker_diagnosed_bg_m_hiv2_ytb_ys ",")
  output-type (word tracker_diagnosed_bg_f_hiv0_ytb_ys ",")
  output-type (word tracker_diagnosed_bg_f_hiv1_ytb_ys ",")
  output-type (word tracker_diagnosed_bg_f_hiv2_ytb_ys ",")
  output-type (word tracker_diagnosed_symp_active_m_hiv0_ytb_ys ",")
  output-type (word tracker_diagnosed_symp_active_m_hiv1_ytb_ys ",")
  output-type (word tracker_diagnosed_symp_active_m_hiv2_ytb_ys ",")
  output-type (word tracker_diagnosed_symp_active_f_hiv0_ytb_ys ",")
  output-type (word tracker_diagnosed_symp_active_f_hiv1_ytb_ys ",")
  output-type (word tracker_diagnosed_symp_active_f_hiv2_ytb_ys ",")
  output-type (word tracker_diagnosed_symp_m_hiv0_ytb_ys ",")
  output-type (word tracker_diagnosed_symp_m_hiv1_ytb_ys ",")
  output-type (word tracker_diagnosed_symp_m_hiv2_ytb_ys ",")
  output-type (word tracker_diagnosed_symp_f_hiv0_ytb_ys ",")
  output-type (word tracker_diagnosed_symp_f_hiv1_ytb_ys ",")
  output-type (word tracker_diagnosed_symp_f_hiv2_ytb_ys ",")

  output-type (word tracker_tutt_eligibility_screened_year ",")
  output-type (word tracker_tutt_recenttb_screened_year ",")
  output-type (word tracker_tutt_recenttb_detected_year ",")
  output-type (word tracker_tutt_recenttb_truepos_year ",")
  output-type (word tracker_tutt_contact_screened_year ",")
  output-type (word tracker_tutt_contact_detected_year ",")
  output-type (word tracker_tutt_contact_truepos_year ",")
  output-type (word tracker_tutt_art_screened_year ",")
  output-type (word tracker_tutt_art_detected_year ",")
  output-type (word tracker_tutt_art_truepos_year ",")

  output-type (word length filter [i -> i = "annual_xpertpos"] tracker_falsepos_route ",")
  output-type (word length filter [i -> i = "annual_doc_immed"] tracker_falsepos_route ",")
  output-type (word length filter [i -> i = "annual_doc_test"] tracker_falsepos_route ",")
  output-type (word length filter [i -> i = "other_xpertpos"] tracker_falsepos_route ",")
  output-type (word length filter [i -> i = "other_doc_immed"] tracker_falsepos_route ",")
  output-type (word length filter [i -> i = "other_doc_test"] tracker_falsepos_route ",")
end

to output_popsize_vars_names
  output-type (word "popsize_mid_hiv0_ntb_ntr_nch_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv0_ntb_ntr_nch_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv0_ntb_ntr_ych_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv0_ntb_ntr_ych_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv0_ntb_ytr_nch_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv0_ntb_ytr_nch_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv0_ntb_ytr_ych_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv0_ntb_ytr_ych_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ntr_nch_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ntr_nch_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ntr_nch_ytbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ntr_nch_ytbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ntr_ych_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ntr_ych_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ntr_ych_ytbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ntr_ych_ytbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ytr_nch_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ytr_nch_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ytr_nch_ytbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ytr_nch_ytbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ytr_ych_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ytr_ych_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ytr_ych_ytbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv0_ytb_ytr_ych_ytbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv1_ntb_ntr_nch_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv1_ntb_ntr_nch_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv1_ntb_ntr_ych_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv1_ntb_ntr_ych_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv1_ntb_ytr_nch_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv1_ntb_ytr_nch_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv1_ntb_ytr_ych_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv1_ntb_ytr_ych_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ntr_nch_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ntr_nch_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ntr_nch_ytbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ntr_nch_ytbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ntr_ych_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ntr_ych_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ntr_ych_ytbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ntr_ych_ytbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ytr_nch_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ytr_nch_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ytr_nch_ytbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ytr_nch_ytbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ytr_ych_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ytr_ych_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ytr_ych_ytbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv1_ytb_ytr_ych_ytbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv2_ntb_ntr_nch_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv2_ntb_ntr_nch_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv2_ntb_ntr_ych_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv2_ntb_ntr_ych_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv2_ntb_ytr_nch_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv2_ntb_ytr_nch_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv2_ntb_ytr_ych_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv2_ntb_ytr_ych_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ntr_nch_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ntr_nch_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ntr_nch_ytbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ntr_nch_ytbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ntr_ych_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ntr_ych_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ntr_ych_ytbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ntr_ych_ytbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ytr_nch_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ytr_nch_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ytr_nch_ytbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ytr_nch_ytbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ytr_ych_ntbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ytr_ych_ntbsymp_y2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ytr_ych_ytbsymp_n2y" ",")
  output-type (word "popsize_mid_hiv2_ytb_ytr_ych_ytbsymp_y2y" ",")
end

to output_popsize_vars
  output-type (word tracker_popsize_mid_hiv0_ntb_ntr_nch_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv0_ntb_ntr_nch_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv0_ntb_ntr_ych_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv0_ntb_ntr_ych_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv0_ntb_ytr_nch_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv0_ntb_ytr_nch_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv0_ntb_ytr_ych_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv0_ntb_ytr_ych_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ntr_nch_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ntr_nch_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ntr_nch_ytbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ntr_nch_ytbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ntr_ych_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ntr_ych_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ntr_ych_ytbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ntr_ych_ytbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ytr_nch_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ytr_nch_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ytr_nch_ytbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ytr_nch_ytbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ytr_ych_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ytr_ych_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ytr_ych_ytbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv0_ytb_ytr_ych_ytbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv1_ntb_ntr_nch_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv1_ntb_ntr_nch_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv1_ntb_ntr_ych_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv1_ntb_ntr_ych_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv1_ntb_ytr_nch_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv1_ntb_ytr_nch_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv1_ntb_ytr_ych_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv1_ntb_ytr_ych_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ntr_nch_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ntr_nch_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ntr_nch_ytbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ntr_nch_ytbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ntr_ych_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ntr_ych_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ntr_ych_ytbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ntr_ych_ytbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ytr_nch_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ytr_nch_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ytr_nch_ytbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ytr_nch_ytbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ytr_ych_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ytr_ych_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ytr_ych_ytbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv1_ytb_ytr_ych_ytbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv2_ntb_ntr_nch_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv2_ntb_ntr_nch_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv2_ntb_ntr_ych_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv2_ntb_ntr_ych_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv2_ntb_ytr_nch_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv2_ntb_ytr_nch_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv2_ntb_ytr_ych_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv2_ntb_ytr_ych_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ntr_nch_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ntr_nch_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ntr_nch_ytbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ntr_nch_ytbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ntr_ych_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ntr_ych_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ntr_ych_ytbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ntr_ych_ytbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ytr_nch_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ytr_nch_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ytr_nch_ytbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ytr_nch_ytbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ytr_ych_ntbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ytr_ych_ntbsymp_y2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ytr_ych_ytbsymp_n2y ",")
  output-type (word tracker_popsize_mid_hiv2_ytb_ytr_ych_ytbsymp_y2y ",")
end

to output_econ_column_names
  output-type (word "popsize_mid_hiv1_age0" ",")
  output-type (word "popsize_mid_hiv1_age1" ",")
  output-type (word "popsize_mid_hiv1_age2" ",")
  output-type (word "popsize_mid_hiv2_age0" ",")
  output-type (word "popsize_mid_hiv2_age1" ",")
  output-type (word "popsize_mid_hiv2_age2" ",")
  output-type (word "start_art" ",")
  output-type (word "on_art_mid_year" ",")
  output-type (word "on_tb_treat_mid_year" ",")

  output-type (word "die_tb_hiv0_age0" ",")
  output-type (word "die_tb_hiv0_age1" ",")
  output-type (word "die_tb_hiv0_age2" ",")
  output-type (word "die_tb_hiv1_age0" ",")
  output-type (word "die_tb_hiv1_age1" ",")
  output-type (word "die_tb_hiv1_age2" ",")
  output-type (word "die_tb_hiv2_age0" ",")
  output-type (word "die_tb_hiv2_age1" ",")
  output-type (word "die_tb_hiv2_age2" ",")
  output-type (word "die_hiv_age0" ",")
  output-type (word "die_hiv_age1" ",")
  output-type (word "die_hiv_age2" ",")
  output-type (word "die_other_age0" ",")
  output-type (word "die_other_age1" ",")
  output-type (word "die_other_age2" ",")


  output-type (word "clinic_active_screened_hiv0_p" ",")
  output-type (word "clinic_active_screened_hiv1_p" ",")
  output-type (word "clinic_active_screened_hiv2_p" ",")
  output-type (word "clinic_art_visit_p" ",")
  output-type (word "clinic_symp_screen_p" ",")
  output-type (word "clinic_sputum_attempt_hiv0_p" ",")
  output-type (word "clinic_sputum_attempt_hiv1_p" ",")
  output-type (word "clinic_sputum_attempt_hiv2_p" ",")
  output-type (word "clinic_sputum_produced_hiv0_p" ",")
  output-type (word "clinic_sputum_produced_hiv1_p" ",")
  output-type (word "clinic_sputum_produced_hiv2_p" ",")
  output-type (word "clinic_sputum_pos_p" ",")
  output-type (word "clinic_xray_p" ",")
  output-type (word "clinic_xray_pos_p" ",")
  output-type (word "clinic_dr_ref_p" ",")
  output-type (word "clinic_dr_see_p" ",")
  output-type (word "clinic_dr_invest_p" ",")
  output-type (word "clinic_dr_pos_p" ",")
  output-type (word "clinic_dr_immed_treat_p" ",")
  output-type (word "clinic_diagnosed_active_hiv0_p" ",")
  output-type (word "clinic_diagnosed_active_hiv1_p" ",")
  output-type (word "clinic_diagnosed_active_hiv2_p" ",")
  output-type (word "clinic_diagnosed_active_hiv0_havetb_p" ",")
  output-type (word "clinic_diagnosed_active_hiv1_havetb_p" ",")
  output-type (word "clinic_diagnosed_active_hiv2_havetb_p" ",")
  output-type (word "clinic_start_treat_active_hiv0_p" ",")
  output-type (word "clinic_start_treat_after_iltfu_hiv0_p" ",")
  output-type (word "clinic_start_treat_active_hiv1_p" ",")
  output-type (word "clinic_start_treat_after_iltfu_hiv1_p" ",")
  output-type (word "clinic_start_treat_active_hiv2_p" ",")
  output-type (word "clinic_start_treat_after_iltfu_hiv2_p" ",")
  output-type (word "clinic_start_treat_active_hiv0_havetb_p" ",")
  output-type (word "clinic_start_treat_active_hiv1_havetb_p" ",")
  output-type (word "clinic_start_treat_active_hiv2_havetb_p" ",")

  output-type (word "clinic_active_screened_hiv0_a" ",")
  output-type (word "clinic_active_screened_hiv1_a" ",")
  output-type (word "clinic_active_screened_hiv2_a" ",")
  output-type (word "clinic_art_visit_a" ",")
  output-type (word "clinic_symp_screen_a" ",")
  output-type (word "clinic_sputum_attempt_hiv0_a" ",")
  output-type (word "clinic_sputum_attempt_hiv1_a" ",")
  output-type (word "clinic_sputum_attempt_hiv2_a" ",")
  output-type (word "clinic_sputum_produced_hiv0_a" ",")
  output-type (word "clinic_sputum_produced_hiv1_a" ",")
  output-type (word "clinic_sputum_produced_hiv2_a" ",")
  output-type (word "clinic_sputum_pos_a" ",")
  output-type (word "clinic_xray_a" ",")
  output-type (word "clinic_xray_pos_a" ",")
  output-type (word "clinic_dr_ref_a" ",")
  output-type (word "clinic_dr_see_a" ",")
  output-type (word "clinic_dr_invest_a" ",")
  output-type (word "clinic_dr_pos_a" ",")
  output-type (word "clinic_dr_immed_treat_a" ",")
  output-type (word "clinic_diagnosed_active_hiv0_a" ",")
  output-type (word "clinic_diagnosed_active_hiv1_a" ",")
  output-type (word "clinic_diagnosed_active_hiv2_a" ",")
  output-type (word "clinic_diagnosed_active_hiv0_havetb_a" ",")
  output-type (word "clinic_diagnosed_active_hiv1_havetb_a" ",")
  output-type (word "clinic_diagnosed_active_hiv2_havetb_a" ",")
  output-type (word "clinic_start_treat_active_hiv0_a" ",")
  output-type (word "clinic_start_treat_after_iltfu_hiv0_a" ",")
  output-type (word "clinic_start_treat_active_hiv1_a" ",")
  output-type (word "clinic_start_treat_after_iltfu_hiv1_a" ",")
  output-type (word "clinic_start_treat_active_hiv2_a" ",")
  output-type (word "clinic_start_treat_after_iltfu_hiv2_a" ",")
  output-type (word "clinic_start_treat_active_hiv0_havetb_a" ",")
  output-type (word "clinic_start_treat_active_hiv1_havetb_a" ",")
  output-type (word "clinic_start_treat_active_hiv2_havetb_a" ",")

  output-type (word "clinic_start_treat_passive_hiv0" ",")
  output-type (word "clinic_start_treat_passive_hiv1" ",")
  output-type (word "clinic_start_treat_passive_hiv2" ",")

  output-type (word "community_symp_screen" ",")
  output-type (word "community_xray" ",")
  output-type (word "community_sputum_attempt_hiv0" ",")
  output-type (word "community_sputum_attempt_hiv1" ",")
  output-type (word "community_sputum_attempt_hiv2" ",")
  output-type (word "community_sputum_produced_hiv0" ",")
  output-type (word "community_sputum_produced_hiv1" ",")
  output-type (word "community_sputum_produced_hiv2" ",")
  output-type (word "community_sputum_pos" ",")
  output-type (word "community_sputum_attempt_clinic_hiv0" ",")
  output-type (word "community_sputum_attempt_clinic_hiv1" ",")
  output-type (word "community_sputum_attempt_clinic_hiv2" ",")
  output-type (word "community_sputum_produced_clinic_hiv0" ",")
  output-type (word "community_sputum_produced_clinic_hiv1" ",")
  output-type (word "community_sputum_produced_clinic_hiv2" ",")
  output-type (word "community_sputum_pos_clinic" ",")
  output-type (word "community_xray_comm" ",")
  output-type (word "community_dr_ref" ",")
  output-type (word "community_dr_see" ",")
  output-type (word "community_dr_invest" ",")
  output-type (word "community_dr_pos" ",")
  output-type (word "community_dr_immed_treat" ",")
  output-type (word "community_start_treat_active_hiv0" ",")
  output-type (word "community_start_treat_active_hiv1" ",")
  output-type (word "community_start_treat_active_hiv2" ",")
  output-type (word "community_start_treat_active_hiv0_havetb" ",")
  output-type (word "community_start_treat_active_hiv1_havetb" ",")
  output-type (word "community_start_treat_active_hiv2_havetb" ",")
  output-type (word "community_diagnosed_active_hiv0" ",")
  output-type (word "community_diagnosed_active_hiv1" ",")
  output-type (word "community_diagnosed_active_hiv2" ",")
  output-type (word "community_diagnosed_active_hiv0_havetb" ",")
  output-type (word "community_diagnosed_active_hiv1_havetb" ",")
  output-type (word "community_diagnosed_active_hiv2_havetb" ",")
end

to output_econ
  output-type (word tracker_mid_hiv1_age0 ",")
  output-type (word tracker_mid_hiv1_age1 ",")
  output-type (word tracker_mid_hiv1_age2 ",")
  output-type (word tracker_mid_hiv2_age0 ",")
  output-type (word tracker_mid_hiv2_age1 ",")
  output-type (word tracker_mid_hiv2_age2 ",")
  output-type (word tracker_start_art  ",")
  output-type (word (tracker_popsize_mid_hiv2_m + tracker_popsize_mid_hiv2_f)  ",")
  output-type (word tracker_ontreat_mid  ",")

  output-type (word tracker_die_tb_hiv0_age0 ",")
  output-type (word tracker_die_tb_hiv0_age1 ",")
  output-type (word tracker_die_tb_hiv0_age2 ",")
  output-type (word tracker_die_tb_hiv1_age0 ",")
  output-type (word tracker_die_tb_hiv1_age1 ",")
  output-type (word tracker_die_tb_hiv1_age2 ",")
  output-type (word tracker_die_tb_hiv2_age0 ",")
  output-type (word tracker_die_tb_hiv2_age1 ",")
  output-type (word tracker_die_tb_hiv2_age2 ",")
  output-type (word tracker_die_hiv_age0 ",")
  output-type (word tracker_die_hiv_age1 ",")
  output-type (word tracker_die_hiv_age2 ",")
  output-type (word tracker_die_other_age0 ",")
  output-type (word tracker_die_other_age1 ",")
  output-type (word tracker_die_other_age2 ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_active_screened_p)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_active_screened_p)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_active_screened_p)  ",")
  output-type (word tracker_clinic_art_visit_p ",")
  output-type (word tracker_clinic_symp_screen_p ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_sputum_attempt_p)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_sputum_attempt_p)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_sputum_attempt_p)  ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_sputum_produced_p)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_sputum_produced_p)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_sputum_produced_p)  ",")
  output-type (word tracker_clinic_sputum_pos_p ",")
  output-type (word tracker_clinic_xray_p ",")
  output-type (word tracker_clinic_xray_pos_p ",")
  output-type (word tracker_clinic_dr_ref_p ",")
  output-type (word tracker_clinic_dr_see_p ",")
  output-type (word tracker_clinic_dr_invest_p ",")
  output-type (word tracker_clinic_dr_pos_p ",")
  output-type (word tracker_clinic_dr_immed_treat_p ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_diagnosed_active_p)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_diagnosed_active_p)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_diagnosed_active_p)  ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_diagnosed_active_havetb_p)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_diagnosed_active_havetb_p)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_diagnosed_active_havetb_p)  ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_start_treat_active_p)  ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_start_treat_after_iltfu_p)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_start_treat_active_p)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_start_treat_after_iltfu_p)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_start_treat_active_p)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_start_treat_after_iltfu_p)  ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_start_treat_active_havetb_p)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_start_treat_active_havetb_p)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_start_treat_active_havetb_p)  ",")


  output-type (word (length filter [i -> i = 0] tracker_clinic_active_screened_a)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_active_screened_a)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_active_screened_a)  ",")
  output-type (word tracker_clinic_art_visit_a ",")
  output-type (word tracker_clinic_symp_screen_a ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_sputum_attempt_a)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_sputum_attempt_a)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_sputum_attempt_a)  ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_sputum_produced_a)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_sputum_produced_a)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_sputum_produced_a)  ",")
  output-type (word tracker_clinic_sputum_pos_a ",")
  output-type (word tracker_clinic_xray_a ",")
  output-type (word tracker_clinic_xray_pos_a ",")
  output-type (word tracker_clinic_dr_ref_a ",")
  output-type (word tracker_clinic_dr_see_a ",")
  output-type (word tracker_clinic_dr_invest_a ",")
  output-type (word tracker_clinic_dr_pos_a ",")
  output-type (word tracker_clinic_dr_immed_treat_a ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_diagnosed_active_a)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_diagnosed_active_a)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_diagnosed_active_a)  ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_diagnosed_active_havetb_a)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_diagnosed_active_havetb_a)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_diagnosed_active_havetb_a)  ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_start_treat_active_a)  ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_start_treat_after_iltfu_a)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_start_treat_active_a)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_start_treat_after_iltfu_a)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_start_treat_active_a)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_start_treat_after_iltfu_a)  ",")
  output-type (word (length filter [i -> i = 0] tracker_clinic_start_treat_active_havetb_a)  ",")
  output-type (word (length filter [i -> i = 1] tracker_clinic_start_treat_active_havetb_a)  ",")
  output-type (word (length filter [i -> i = 2] tracker_clinic_start_treat_active_havetb_a)  ",")

  output-type (word (length filter [i -> i = 0] tracker_start_treat_passive) ",")
  output-type (word (length filter [i -> i = 1] tracker_start_treat_passive) ",")
  output-type (word (length filter [i -> i = 2] tracker_start_treat_passive) ",")

  output-type (word tracker_community_symp_screen ",")
  output-type (word tracker_community_xray ",")
  output-type (word (length filter [i -> i = 0] tracker_community_sputum_attempt) ",")
  output-type (word (length filter [i -> i = 1] tracker_community_sputum_attempt) ",")
  output-type (word (length filter [i -> i = 2] tracker_community_sputum_attempt) ",")
  output-type (word (length filter [i -> i = 0] tracker_community_sputum_produced) ",")
  output-type (word (length filter [i -> i = 1] tracker_community_sputum_produced) ",")
  output-type (word (length filter [i -> i = 2] tracker_community_sputum_produced) ",")
  output-type (word tracker_community_sputum_pos ",")
  output-type (word (length filter [i -> i = 0] tracker_community_sputum_attempt_clinic) ",")
  output-type (word (length filter [i -> i = 1] tracker_community_sputum_attempt_clinic) ",")
  output-type (word (length filter [i -> i = 2] tracker_community_sputum_attempt_clinic) ",")
  output-type (word (length filter [i -> i = 0] tracker_community_sputum_produced_clinic) ",")
  output-type (word (length filter [i -> i = 1] tracker_community_sputum_produced_clinic) ",")
  output-type (word (length filter [i -> i = 2] tracker_community_sputum_produced_clinic) ",")
  output-type (word tracker_community_sputum_pos_clinic ",")
  output-type (word tracker_community_xray_comm ",")
  output-type (word tracker_community_dr_ref ",")
  output-type (word tracker_community_dr_see ",")
  output-type (word tracker_community_dr_invest ",")
  output-type (word tracker_community_dr_pos ",")
  output-type (word tracker_community_dr_immed_treat ",")
  output-type (word (length filter [i -> i = 0] tracker_community_start_treat_active)  ",")
  output-type (word (length filter [i -> i = 1] tracker_community_start_treat_active)  ",")
  output-type (word (length filter [i -> i = 2] tracker_community_start_treat_active)  ",")
  output-type (word (length filter [i -> i = 0] tracker_community_start_treat_active_havetb)  ",")
  output-type (word (length filter [i -> i = 1] tracker_community_start_treat_active_havetb)  ",")
  output-type (word (length filter [i -> i = 2] tracker_community_start_treat_active_havetb)  ",")
  output-type (word (length filter [i -> i = 0] tracker_community_diagnosed_active)  ",")
  output-type (word (length filter [i -> i = 1] tracker_community_diagnosed_active)  ",")
  output-type (word (length filter [i -> i = 2] tracker_community_diagnosed_active)  ",")
  output-type (word (length filter [i -> i = 0] tracker_community_diagnosed_active_havetb)  ",")
  output-type (word (length filter [i -> i = 1] tracker_community_diagnosed_active_havetb)  ",")
  output-type (word (length filter [i -> i = 2] tracker_community_diagnosed_active_havetb)  ",")
end


to output_breeds_names
  output-type (word "hiv0tb0_ms" ",")
  output-type (word "hiv0tb1_ms" ",")
  output-type (word "hiv0tb2_ms" ",")
  output-type (word "hiv0tb3_ms" ",")
  output-type (word "hiv0tb4_ms" ",")
  output-type (word "hiv1tb0_ms" ",")
  output-type (word "hiv1tb1_ms" ",")
  output-type (word "hiv1tb2_ms" ",")
  output-type (word "hiv1tb3_ms" ",")
  output-type (word "hiv1tb4_ms" ",")
  output-type (word "hiv2tb0_ms" ",")
  output-type (word "hiv2tb1_ms" ",")
  output-type (word "hiv2tb2_ms" ",")
  output-type (word "hiv2tb3_ms" ",")
  output-type (word "hiv2tb4_ms" ",")
  output-type (word "hiv0tb0_fs" ",")
  output-type (word "hiv0tb1_fs" ",")
  output-type (word "hiv0tb2_fs" ",")
  output-type (word "hiv0tb3_fs" ",")
  output-type (word "hiv0tb4_fs" ",")
  output-type (word "hiv1tb0_fs" ",")
  output-type (word "hiv1tb1_fs" ",")
  output-type (word "hiv1tb2_fs" ",")
  output-type (word "hiv1tb3_fs" ",")
  output-type (word "hiv1tb4_fs" ",")
  output-type (word "hiv2tb0_fs" ",")
  output-type (word "hiv2tb1_fs" ",")
  output-type (word "hiv2tb2_fs" ",")
  output-type (word "hiv2tb3_fs" ",")
  output-type (word "hiv2tb4_fs" ",")
end

to output_breeds
  output-type (word count hiv0tb0_ms ",")
  output-type (word count hiv0tb1_ms ",")
  output-type (word count hiv0tb2_ms ",")
  output-type (word count hiv0tb3_ms ",")
  output-type (word count hiv0tb4_ms ",")
  output-type (word count hiv1tb0_ms ",")
  output-type (word count hiv1tb1_ms ",")
  output-type (word count hiv1tb2_ms ",")
  output-type (word count hiv1tb3_ms ",")
  output-type (word count hiv1tb4_ms ",")
  output-type (word count hiv2tb0_ms ",")
  output-type (word count hiv2tb1_ms ",")
  output-type (word count hiv2tb2_ms ",")
  output-type (word count hiv2tb3_ms ",")
  output-type (word count hiv2tb4_ms ",")
  output-type (word count hiv0tb0_fs ",")
  output-type (word count hiv0tb1_fs ",")
  output-type (word count hiv0tb2_fs ",")
  output-type (word count hiv0tb3_fs ",")
  output-type (word count hiv0tb4_fs ",")
  output-type (word count hiv1tb0_fs ",")
  output-type (word count hiv1tb1_fs ",")
  output-type (word count hiv1tb2_fs ",")
  output-type (word count hiv1tb3_fs ",")
  output-type (word count hiv1tb4_fs ",")
  output-type (word count hiv2tb0_fs ",")
  output-type (word count hiv2tb1_fs ",")
  output-type (word count hiv2tb2_fs ",")
  output-type (word count hiv2tb3_fs ",")
  output-type (word count hiv2tb4_fs ",")
end

to output_tb_previous_tb_names
  output-type (word "mid_ever_diagnosed" ",")
  output-type (word "mid_ever_diagnosed_tb" ",")
  output-type (word "mid_diagnosed_2y" ",")
  output-type (word "mid_diagnosed_2y_tb" ",")

  output-type (word "develop_tb_hiv0_m_nr_nc" ",")
  output-type (word "develop_tb_hiv0_m_nr_yc" ",")
  output-type (word "develop_tb_hiv0_m_2y_nc" ",")
  output-type (word "develop_tb_hiv0_m_2y_yc" ",")
  output-type (word "develop_tb_hiv0_f_nr_nc" ",")
  output-type (word "develop_tb_hiv0_f_nr_yc" ",")
  output-type (word "develop_tb_hiv0_f_2y_nc" ",")
  output-type (word "develop_tb_hiv0_f_2y_yc" ",")
  output-type (word "develop_tb_hiv1_m_nr_nc" ",")
  output-type (word "develop_tb_hiv1_m_nr_yc" ",")
  output-type (word "develop_tb_hiv1_m_2y_nc" ",")
  output-type (word "develop_tb_hiv1_m_2y_yc" ",")
  output-type (word "develop_tb_hiv1_f_nr_nc" ",")
  output-type (word "develop_tb_hiv1_f_nr_yc" ",")
  output-type (word "develop_tb_hiv1_f_2y_nc" ",")
  output-type (word "develop_tb_hiv1_f_2y_yc" ",")
  output-type (word "develop_tb_hiv2_m_nr_nc" ",")
  output-type (word "develop_tb_hiv2_m_nr_yc" ",")
  output-type (word "develop_tb_hiv2_m_2y_nc" ",")
  output-type (word "develop_tb_hiv2_m_2y_yc" ",")
  output-type (word "develop_tb_hiv2_f_nr_nc" ",")
  output-type (word "develop_tb_hiv2_f_nr_yc" ",")
  output-type (word "develop_tb_hiv2_f_2y_nc" ",")
  output-type (word "develop_tb_hiv2_f_2y_yc" ",")
end

to output_tb_previous_tb
  output-type (word tracker_mid_ever_diagnosed ",")
  output-type (word tracker_mid_ever_diagnosed_tb ",")
  output-type (word tracker_mid_diagnosed_2y ",")
  output-type (word tracker_mid_diagnosed_2y_tb ",")

  output-type (word tracker_develop_tb_hiv0_m_nr_nc ",")
  output-type (word tracker_develop_tb_hiv0_m_nr_yc ",")
  output-type (word tracker_develop_tb_hiv0_m_2y_nc ",")
  output-type (word tracker_develop_tb_hiv0_m_2y_yc ",")
  output-type (word tracker_develop_tb_hiv0_f_nr_nc ",")
  output-type (word tracker_develop_tb_hiv0_f_nr_yc ",")
  output-type (word tracker_develop_tb_hiv0_f_2y_nc ",")
  output-type (word tracker_develop_tb_hiv0_f_2y_yc ",")
  output-type (word tracker_develop_tb_hiv1_m_nr_nc ",")
  output-type (word tracker_develop_tb_hiv1_m_nr_yc ",")
  output-type (word tracker_develop_tb_hiv1_m_2y_nc ",")
  output-type (word tracker_develop_tb_hiv1_m_2y_yc ",")
  output-type (word tracker_develop_tb_hiv1_f_nr_nc ",")
  output-type (word tracker_develop_tb_hiv1_f_nr_yc ",")
  output-type (word tracker_develop_tb_hiv1_f_2y_nc ",")
  output-type (word tracker_develop_tb_hiv1_f_2y_yc ",")
  output-type (word tracker_develop_tb_hiv2_m_nr_nc ",")
  output-type (word tracker_develop_tb_hiv2_m_nr_yc ",")
  output-type (word tracker_develop_tb_hiv2_m_2y_nc ",")
  output-type (word tracker_develop_tb_hiv2_m_2y_yc ",")
  output-type (word tracker_develop_tb_hiv2_f_nr_nc ",")
  output-type (word tracker_develop_tb_hiv2_f_nr_yc ",")
  output-type (word tracker_develop_tb_hiv2_f_2y_nc ",")
  output-type (word tracker_develop_tb_hiv2_f_2y_yc ",")
end

to output_hiv_summary_names
  output-type (word "hiv_prev_m" ",")
  output-type (word "hiv_prev_f" ",")
  output-type (word "art_coverage_m" ",")
  output-type (word "art_coverage_f" ",")
end

to output_hiv_summary
  ifelse (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) > 0
  [output-type (word
    ((count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
      count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
      (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
        count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
        count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms))
    ",")]
  [output-type (word "NA" ",")]
  ifelse (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) > 0
  [output-type (word
    ((count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
      count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
      (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
        count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
        count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs))
    ",")]
  [output-type (word "NA" ",")]
  ifelse (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) > 0
  [output-type (word
    ((count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms) /
      (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
        count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms))
    ",")]
  [output-type (word "NA" ",")]
  ifelse (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) > 0
  [output-type (word
    ((count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs) /
      (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
        count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs))
    ",")]
  [output-type (word "NA" ",")]
end

to output_tb_summary_names
  output-type (word "tb_prev" ",")
  output-type (word "tb_prev_m" ",")
  output-type (word "tb_prev_f" ",")
  output-type (word "tb_prev_hiv0" ",")
  output-type (word "tb_prev_hiv1" ",")
  output-type (word "tb_prev_hiv2" ",")
  output-type (word "tb_prop_sub" ",")
  output-type (word "tb_prop_sub_m" ",")
  output-type (word "tb_prop_sub_f" ",")
  output-type (word "tb_prop_sub_hiv0" ",")
  output-type (word "tb_prop_sub_hiv1" ",")
  output-type (word "tb_prop_sub_hiv2" ",")
  output-type (word "tb_inc" ",")
  output-type (word "tb_inc_m" ",")
  output-type (word "tb_inc_f" ",")
  output-type (word "tb_inc_hiv0" ",")
  output-type (word "tb_inc_hiv1" ",")
  output-type (word "tb_inc_hiv2" ",")
  output-type (word "tb_inc_hivneg_who" ",")
  output-type (word "tb_inc_hivpos_who" ",")
  output-type (word "tb_mort" ",")
  output-type (word "tb_mort_hivpos_who" ",")
  output-type (word "tb_mort_m" ",")
  output-type (word "tb_mort_f" ",")
  output-type (word "tb_mort_hiv0" ",")
  output-type (word "tb_mort_hiv1" ",")
  output-type (word "tb_mort_hiv2" ",")
  output-type (word "tb_treat" ",")
  output-type (word "tb_treat_m" ",")
  output-type (word "tb_treat_f" ",")
  output-type (word "tb_treat_hiv0" ",")
  output-type (word "tb_treat_hiv1" ",")
  output-type (word "tb_treat_hiv2" ",")
end



to output_tb_summary
  let num_males (
    count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms
  )
  let num_females (
    count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs +
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs
  )
  let num_hiv0 (
    count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms +
    count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs
  )

  let num_hiv1 (
    count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms +
    count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs
  )

  let num_hiv2 (
    count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms +
    count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs
  )

  ifelse count turtles = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 * (
    count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb2_fs + count hiv0tb3_fs +
    count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb2_fs + count hiv1tb3_fs +
    count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb2_fs + count hiv2tb3_fs) /
    count turtles)
    ",")]
  ifelse num_males = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 * (
    count hiv0tb2_ms + count hiv0tb3_ms +
    count hiv1tb2_ms + count hiv1tb3_ms +
    count hiv2tb2_ms + count hiv2tb3_ms) /
    num_males)
    ",")]
  ifelse num_females = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 * (
    count hiv0tb2_fs + count hiv0tb3_fs +
    count hiv1tb2_fs + count hiv1tb3_fs +
    count hiv2tb2_fs + count hiv2tb3_fs) /
    num_females)
    ",")]
  ifelse num_hiv0 = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 * (
    count hiv0tb2_ms + count hiv0tb3_ms +
    count hiv0tb2_fs + count hiv0tb3_fs) /
    num_hiv0)
    ",")]
  ifelse num_hiv1 = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 * (
    count hiv1tb2_ms + count hiv1tb3_ms +
    count hiv1tb2_fs + count hiv1tb3_fs) /
    num_hiv1)
    ",")]
  ifelse num_hiv2 = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 * (
    count hiv2tb2_ms + count hiv2tb3_ms +
    count hiv2tb2_fs + count hiv2tb3_fs) /
    num_hiv2)
    ",")]

  ifelse (count hiv0tb2_ms + count hiv0tb2_fs +
    count hiv1tb2_ms + count hiv1tb2_fs +
    count hiv2tb2_ms + count hiv2tb2_fs +
    count hiv0tb3_ms + count hiv0tb3_fs +
    count hiv1tb3_ms + count hiv1tb3_fs +
    count hiv2tb3_ms + count hiv2tb3_fs) = 0
  [output-type (word "NA" ",")]
  [output-type (word ((
    count hiv0tb2_ms + count hiv0tb2_fs +
    count hiv1tb2_ms + count hiv1tb2_fs +
    count hiv2tb2_ms + count hiv2tb2_fs) /
    (count hiv0tb2_ms + count hiv0tb2_fs +
      count hiv1tb2_ms + count hiv1tb2_fs +
      count hiv2tb2_ms + count hiv2tb2_fs +
      count hiv0tb3_ms + count hiv0tb3_fs +
      count hiv1tb3_ms + count hiv1tb3_fs +
      count hiv2tb3_ms + count hiv2tb3_fs))
    ",")]

  ifelse (count hiv0tb2_ms +
    count hiv1tb2_ms +
    count hiv2tb2_ms +
    count hiv0tb3_ms +
    count hiv1tb3_ms +
    count hiv2tb3_ms) = 0
  [output-type (word "NA" ",")]
  [output-type (word ((
    count hiv0tb2_ms +
    count hiv1tb2_ms +
    count hiv2tb2_ms) /
    (count hiv0tb2_ms +
      count hiv1tb2_ms +
      count hiv2tb2_ms +
      count hiv0tb3_ms +
      count hiv1tb3_ms +
      count hiv2tb3_ms))
    ",")]

  ifelse (count hiv0tb2_fs +
    count hiv1tb2_fs +
    count hiv2tb2_fs +
    count hiv0tb3_fs +
    count hiv1tb3_fs +
    count hiv2tb3_fs) = 0
  [output-type (word "NA" ",")]
  [output-type (word ((
    count hiv0tb2_fs +
    count hiv1tb2_fs +
    count hiv2tb2_fs) /
    (count hiv0tb2_fs +
      count hiv1tb2_fs +
      count hiv2tb2_fs +
      count hiv0tb3_fs +
      count hiv1tb3_fs +
      count hiv2tb3_fs))
    ",")]

  ifelse (count hiv0tb2_ms + count hiv0tb2_fs +
    count hiv0tb3_ms + count hiv0tb3_fs) = 0
  [output-type (word "NA" ",")]
  [output-type (word ((
    count hiv0tb2_ms + count hiv0tb2_fs) /
    (count hiv0tb2_ms + count hiv0tb2_fs +
      count hiv0tb3_ms + count hiv0tb3_fs))
    ",")]

  ifelse (count hiv1tb2_ms + count hiv1tb2_fs +
    count hiv1tb3_ms + count hiv1tb3_fs) = 0
  [output-type (word "NA" ",")]
  [output-type (word ((
    count hiv1tb2_ms + count hiv1tb2_fs) /
    (count hiv1tb2_ms + count hiv1tb2_fs +
      count hiv1tb3_ms + count hiv1tb3_fs))
    ",")]

  ifelse (count hiv2tb2_ms + count hiv2tb2_fs +
    count hiv2tb3_ms + count hiv2tb3_fs) = 0
  [output-type (word "NA" ",")]
  [output-type (word ((
    count hiv2tb2_ms + count hiv2tb2_fs) /
    (count hiv2tb2_ms + count hiv2tb2_fs +
      count hiv2tb3_ms + count hiv2tb3_fs))
    ",")]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_develop_tb_hiv0_m +
      tracker_develop_tb_hiv0_f +
      tracker_develop_tb_hiv1_m +
      tracker_develop_tb_hiv1_f +
      tracker_develop_tb_hiv2_m +
      tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)) ",")]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv2_m) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_develop_tb_hiv0_m +
      tracker_develop_tb_hiv1_m +
      tracker_develop_tb_hiv2_m) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv2_m)) ",")]

  ifelse (tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_develop_tb_hiv0_f +
      tracker_develop_tb_hiv1_f +
      tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_f)) ",")]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_develop_tb_hiv0_m +
      tracker_develop_tb_hiv0_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f)) ",")]

  ifelse (tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_develop_tb_hiv1_m +
      tracker_develop_tb_hiv1_f) /
    (tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f)) ",")]

  ifelse (tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_develop_tb_hiv2_m +
      tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)) ",")]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_develop_tb_hiv0_m +
      tracker_develop_tb_hiv0_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)) ",")]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_develop_tb_hiv1_m +
      tracker_develop_tb_hiv1_f +
      tracker_develop_tb_hiv2_m +
      tracker_develop_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)) ",")]


  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_die_tb_hiv0_m +
      tracker_die_tb_hiv0_f +
      tracker_die_tb_hiv1_m +
      tracker_die_tb_hiv1_f +
      tracker_die_tb_hiv2_m +
      tracker_die_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)) ",")]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_die_tb_hiv1_m +
      tracker_die_tb_hiv1_f +
      tracker_die_tb_hiv2_m +
      tracker_die_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)) ",")]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv2_m) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_die_tb_hiv0_m +
      tracker_die_tb_hiv1_m +
      tracker_die_tb_hiv2_m) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv2_m)) ",")]

  ifelse (tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_die_tb_hiv0_f +
      tracker_die_tb_hiv1_f +
      tracker_die_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_f)) ",")]


  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_die_tb_hiv0_m +
      tracker_die_tb_hiv0_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f)) ",")]

  ifelse (tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_die_tb_hiv1_m +
      tracker_die_tb_hiv1_f) /
    (tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f)) ",")]

  ifelse (tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_die_tb_hiv2_m +
      tracker_die_tb_hiv2_f) /
    (tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)) ",")]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_treat_tb_hiv0_m +
      tracker_treat_tb_hiv0_f +
      tracker_treat_tb_hiv1_m +
      tracker_treat_tb_hiv1_f +
      tracker_treat_tb_hiv2_m +
      tracker_treat_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)) ",")]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv2_m) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_treat_tb_hiv0_m +
      tracker_treat_tb_hiv1_m +
      tracker_treat_tb_hiv2_m) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv2_m)) ",")]

  ifelse (tracker_popsize_mid_hiv0_f +
    tracker_popsize_mid_hiv1_f +
    tracker_popsize_mid_hiv2_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_treat_tb_hiv0_f +
      tracker_treat_tb_hiv1_f +
      tracker_treat_tb_hiv2_f) /
    (tracker_popsize_mid_hiv0_f +
      tracker_popsize_mid_hiv1_f +
      tracker_popsize_mid_hiv2_f)) ",")]

  ifelse (tracker_popsize_mid_hiv0_m +
    tracker_popsize_mid_hiv0_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_treat_tb_hiv0_m +
      tracker_treat_tb_hiv0_f) /
    (tracker_popsize_mid_hiv0_m +
      tracker_popsize_mid_hiv0_f)) ",")]

  ifelse (tracker_popsize_mid_hiv1_m +
    tracker_popsize_mid_hiv1_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_treat_tb_hiv1_m +
      tracker_treat_tb_hiv1_f) /
    (tracker_popsize_mid_hiv1_m +
      tracker_popsize_mid_hiv1_f)) ",")]

  ifelse (tracker_popsize_mid_hiv2_m +
    tracker_popsize_mid_hiv2_f) = 0
  [output-type (word "NA" ",")]
  [output-type (word (100000 *
    (tracker_treat_tb_hiv2_m +
      tracker_treat_tb_hiv2_f) /
    (tracker_popsize_mid_hiv2_m +
      tracker_popsize_mid_hiv2_f)) ",")]
end



to output_mid
  set tracker_popsize_mid_hiv0_m (count hiv0tb0_ms + count hiv0tb1_ms + count hiv0tb2_ms + count hiv0tb3_ms + count hiv0tb4_ms)
  set tracker_popsize_mid_hiv0_f (count hiv0tb0_fs + count hiv0tb1_fs + count hiv0tb2_fs + count hiv0tb3_fs + count hiv0tb4_fs)
  set tracker_popsize_mid_hiv1_m (count hiv1tb0_ms + count hiv1tb1_ms + count hiv1tb2_ms + count hiv1tb3_ms + count hiv1tb4_ms)
  set tracker_popsize_mid_hiv1_f (count hiv1tb0_fs + count hiv1tb1_fs + count hiv1tb2_fs + count hiv1tb3_fs + count hiv1tb4_fs)
  set tracker_popsize_mid_hiv2_m (count hiv2tb0_ms + count hiv2tb1_ms + count hiv2tb2_ms + count hiv2tb3_ms + count hiv2tb4_ms)
  set tracker_popsize_mid_hiv2_f (count hiv2tb0_fs + count hiv2tb1_fs + count hiv2tb2_fs + count hiv2tb3_fs + count hiv2tb4_fs)

  set tracker_tb2_mid_hiv0_m count hiv0tb2_ms
  set tracker_tb2_mid_hiv0_f count hiv0tb2_fs
  set tracker_tb2_mid_hiv1_m count hiv1tb2_ms
  set tracker_tb2_mid_hiv1_f count hiv1tb2_fs
  set tracker_tb2_mid_hiv2_m count hiv2tb2_ms
  set tracker_tb2_mid_hiv2_f count hiv2tb2_fs
  set tracker_tb3_mid_hiv0_m count hiv0tb3_ms
  set tracker_tb3_mid_hiv0_f count hiv0tb3_fs
  set tracker_tb3_mid_hiv1_m count hiv1tb3_ms
  set tracker_tb3_mid_hiv1_f count hiv1tb3_fs
  set tracker_tb3_mid_hiv2_m count hiv2tb3_ms
  set tracker_tb3_mid_hiv2_f count hiv2tb3_fs



  set tracker_ontreat_mid count hiv0tb4_ms + count hiv0tb4_fs + count hiv1tb4_ms + count hiv1tb4_fs + count hiv2tb4_ms + count hiv2tb4_fs +
  count turtles with [no_tb_on_treat = 1]



  set tracker_mid_hiv1_age0 count turtles with [hiv_art_status = 1 and ((ticks - ticks_at_birth) < (29 - 15) * 12)]
  set tracker_mid_hiv1_age1 count turtles with [hiv_art_status = 1 and ((ticks - ticks_at_birth) > (29 - 15) * 12) and ((ticks - ticks_at_birth) < (49 - 15) * 12)]
  set tracker_mid_hiv1_age2 count turtles with [hiv_art_status = 1 and ((ticks - ticks_at_birth) > (49 - 15) * 12)]
  set tracker_mid_hiv2_age0 count turtles with [hiv_art_status = 2 and ((ticks - ticks_at_birth) < (29 - 15) * 12)]
  set tracker_mid_hiv2_age1 count turtles with [hiv_art_status = 2 and ((ticks - ticks_at_birth) > (29 - 15) * 12) and ((ticks - ticks_at_birth) < (49 - 15) * 12)]
  set tracker_mid_hiv2_age2 count turtles with [hiv_art_status = 2 and ((ticks - ticks_at_birth) > (49 - 15) * 12)]

  set tracker_popsize_mid_hiv0_ntb_ntr_nch_ntbsymp_n2y (
    count hiv0tb0_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv0tb1_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv0tb0_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv0tb1_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0]
  )
  set tracker_popsize_mid_hiv0_ntb_ntr_nch_ntbsymp_y2y (
    count hiv0tb0_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv0tb1_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv0tb0_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv0tb1_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0]
  )
  set tracker_popsize_mid_hiv0_ntb_ntr_ych_ntbsymp_n2y (
    count hiv0tb0_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv0tb1_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv0tb0_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv0tb1_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0]
  )
  set tracker_popsize_mid_hiv0_ntb_ntr_ych_ntbsymp_y2y (
    count hiv0tb0_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv0tb1_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv0tb0_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv0tb1_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0]
  )

  set tracker_popsize_mid_hiv0_ntb_ytr_nch_ntbsymp_n2y (
    count hiv0tb0_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv0tb1_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv0tb0_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv0tb1_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1]
  )
  set tracker_popsize_mid_hiv0_ntb_ytr_nch_ntbsymp_y2y (
    count hiv0tb0_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv0tb1_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv0tb0_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv0tb1_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1]
  )
  set tracker_popsize_mid_hiv0_ntb_ytr_ych_ntbsymp_n2y (
    count hiv0tb0_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv0tb1_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv0tb0_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv0tb1_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1]
  )
  set tracker_popsize_mid_hiv0_ntb_ytr_ych_ntbsymp_y2y (
    count hiv0tb0_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv0tb1_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv0tb0_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv0tb1_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1]
  )

  set tracker_popsize_mid_hiv0_ytb_ntr_nch_ntbsymp_n2y (
    count hiv0tb2_ms with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv0tb2_fs with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv0_ytb_ntr_nch_ntbsymp_y2y (
    count hiv0tb2_ms with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv0tb2_fs with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
  set tracker_popsize_mid_hiv0_ytb_ntr_nch_ytbsymp_n2y (
    count hiv0tb3_ms with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv0tb3_fs with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv0_ytb_ntr_nch_ytbsymp_y2y (
    count hiv0tb3_ms with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv0tb3_fs with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 <= 24]
  )

  set tracker_popsize_mid_hiv0_ytb_ntr_ych_ntbsymp_n2y (
    count hiv0tb2_ms with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv0tb2_fs with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv0_ytb_ntr_ych_ntbsymp_y2y (
    count hiv0tb2_ms with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv0tb2_fs with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
  set tracker_popsize_mid_hiv0_ytb_ntr_ych_ytbsymp_n2y (
    count hiv0tb3_ms with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv0tb3_fs with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv0_ytb_ntr_ych_ytbsymp_y2y (
    count hiv0tb3_ms with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv0tb3_fs with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 <= 24]
  )

  set tracker_popsize_mid_hiv0_ytb_ytr_nch_ntbsymp_n2y (
    count hiv0tb4_ms with [chronic = 0 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv0tb4_fs with [chronic = 0 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv0_ytb_ytr_nch_ntbsymp_y2y (
    count hiv0tb4_ms with [chronic = 0 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv0tb4_fs with [chronic = 0 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
  set tracker_popsize_mid_hiv0_ytb_ytr_nch_ytbsymp_n2y (
    count hiv0tb4_ms with [chronic = 0 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv0tb4_fs with [chronic = 0 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv0_ytb_ytr_nch_ytbsymp_y2y (
    count hiv0tb4_ms with [chronic = 0 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv0tb4_fs with [chronic = 0 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 <= 24]
  )

  set tracker_popsize_mid_hiv0_ytb_ytr_ych_ntbsymp_n2y (
    count hiv0tb4_ms with [chronic = 1 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv0tb4_fs with [chronic = 1 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv0_ytb_ytr_ych_ntbsymp_y2y (
    count hiv0tb4_ms with [chronic = 1 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv0tb4_fs with [chronic = 1 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
  set tracker_popsize_mid_hiv0_ytb_ytr_ych_ytbsymp_n2y (
    count hiv0tb4_ms with [chronic = 1 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv0tb4_fs with [chronic = 1 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv0_ytb_ytr_ych_ytbsymp_y2y (
    count hiv0tb4_ms with [chronic = 1 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv0tb4_fs with [chronic = 1 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 <= 24]
  )

  set tracker_popsize_mid_hiv1_ntb_ntr_nch_ntbsymp_n2y (
    count hiv1tb0_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv1tb1_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv1tb0_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv1tb1_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0]
  )
  set tracker_popsize_mid_hiv1_ntb_ntr_nch_ntbsymp_y2y (
    count hiv1tb0_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv1tb1_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv1tb0_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv1tb1_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0]
  )
  set tracker_popsize_mid_hiv1_ntb_ntr_ych_ntbsymp_n2y (
    count hiv1tb0_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv1tb1_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv1tb0_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv1tb1_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0]
  )
  set tracker_popsize_mid_hiv1_ntb_ntr_ych_ntbsymp_y2y (
    count hiv1tb0_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv1tb1_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv1tb0_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv1tb1_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0]
  )

  set tracker_popsize_mid_hiv1_ntb_ytr_nch_ntbsymp_n2y (
    count hiv1tb0_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv1tb1_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv1tb0_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv1tb1_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1]
  )
  set tracker_popsize_mid_hiv1_ntb_ytr_nch_ntbsymp_y2y (
    count hiv1tb0_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv1tb1_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv1tb0_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv1tb1_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1]
  )
  set tracker_popsize_mid_hiv1_ntb_ytr_ych_ntbsymp_n2y (
    count hiv1tb0_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv1tb1_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv1tb0_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv1tb1_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1]
  )
  set tracker_popsize_mid_hiv1_ntb_ytr_ych_ntbsymp_y2y (
    count hiv1tb0_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv1tb1_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv1tb0_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv1tb1_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1]
  )

  set tracker_popsize_mid_hiv1_ytb_ntr_nch_ntbsymp_n2y (
    count hiv1tb2_ms with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv1tb2_fs with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv1_ytb_ntr_nch_ntbsymp_y2y (
    count hiv1tb2_ms with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv1tb2_fs with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
  set tracker_popsize_mid_hiv1_ytb_ntr_nch_ytbsymp_n2y (
    count hiv1tb3_ms with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv1tb3_fs with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv1_ytb_ntr_nch_ytbsymp_y2y (
    count hiv1tb3_ms with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv1tb3_fs with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 <= 24]
  )

  set tracker_popsize_mid_hiv1_ytb_ntr_ych_ntbsymp_n2y (
    count hiv1tb2_ms with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv1tb2_fs with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv1_ytb_ntr_ych_ntbsymp_y2y (
    count hiv1tb2_ms with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv1tb2_fs with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
  set tracker_popsize_mid_hiv1_ytb_ntr_ych_ytbsymp_n2y (
    count hiv1tb3_ms with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv1tb3_fs with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv1_ytb_ntr_ych_ytbsymp_y2y (
    count hiv1tb3_ms with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv1tb3_fs with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 <= 24]
  )

  set tracker_popsize_mid_hiv1_ytb_ytr_nch_ntbsymp_n2y (
    count hiv1tb4_ms with [chronic = 0 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv1tb4_fs with [chronic = 0 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv1_ytb_ytr_nch_ntbsymp_y2y (
    count hiv1tb4_ms with [chronic = 0 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv1tb4_fs with [chronic = 0 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
  set tracker_popsize_mid_hiv1_ytb_ytr_nch_ytbsymp_n2y (
    count hiv1tb4_ms with [chronic = 0 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv1tb4_fs with [chronic = 0 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv1_ytb_ytr_nch_ytbsymp_y2y (
    count hiv1tb4_ms with [chronic = 0 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv1tb4_fs with [chronic = 0 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 <= 24]
  )

  set tracker_popsize_mid_hiv1_ytb_ytr_ych_ntbsymp_n2y (
    count hiv1tb4_ms with [chronic = 1 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv1tb4_fs with [chronic = 1 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv1_ytb_ytr_ych_ntbsymp_y2y (
    count hiv1tb4_ms with [chronic = 1 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv1tb4_fs with [chronic = 1 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
  set tracker_popsize_mid_hiv1_ytb_ytr_ych_ytbsymp_n2y (
    count hiv1tb4_ms with [chronic = 1 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv1tb4_fs with [chronic = 1 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv1_ytb_ytr_ych_ytbsymp_y2y (
    count hiv1tb4_ms with [chronic = 1 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv1tb4_fs with [chronic = 1 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 <= 24]
  )

  set tracker_popsize_mid_hiv2_ntb_ntr_nch_ntbsymp_n2y (
    count hiv2tb0_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv2tb1_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv2tb0_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv2tb1_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0]
  )
  set tracker_popsize_mid_hiv2_ntb_ntr_nch_ntbsymp_y2y (
    count hiv2tb0_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv2tb1_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv2tb0_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv2tb1_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0]
  )
  set tracker_popsize_mid_hiv2_ntb_ntr_ych_ntbsymp_n2y (
    count hiv2tb0_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv2tb1_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv2tb0_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0] +
    count hiv2tb1_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 0]
  )
  set tracker_popsize_mid_hiv2_ntb_ntr_ych_ntbsymp_y2y (
    count hiv2tb0_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv2tb1_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv2tb0_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0] +
    count hiv2tb1_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 0]
  )

  set tracker_popsize_mid_hiv2_ntb_ytr_nch_ntbsymp_n2y (
    count hiv2tb0_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv2tb1_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv2tb0_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv2tb1_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1]
  )
  set tracker_popsize_mid_hiv2_ntb_ytr_nch_ntbsymp_y2y (
    count hiv2tb0_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv2tb1_ms with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv2tb0_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv2tb1_fs with [chronic = 0 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1]
  )
  set tracker_popsize_mid_hiv2_ntb_ytr_ych_ntbsymp_n2y (
    count hiv2tb0_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv2tb1_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv2tb0_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1] +
    count hiv2tb1_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 > 24 and no_tb_on_treat = 1]
  )
  set tracker_popsize_mid_hiv2_ntb_ytr_ych_ntbsymp_y2y (
    count hiv2tb0_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv2tb1_ms with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv2tb0_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1] +
    count hiv2tb1_fs with [chronic = 1 and ticks - ticks_at_last_resolved_tb3 <= 24 and no_tb_on_treat = 1]
  )

  set tracker_popsize_mid_hiv2_ytb_ntr_nch_ntbsymp_n2y (
    count hiv2tb2_ms with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv2tb2_fs with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv2_ytb_ntr_nch_ntbsymp_y2y (
    count hiv2tb2_ms with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv2tb2_fs with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
  set tracker_popsize_mid_hiv2_ytb_ntr_nch_ytbsymp_n2y (
    count hiv2tb3_ms with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv2tb3_fs with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv2_ytb_ntr_nch_ytbsymp_y2y (
    count hiv2tb3_ms with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv2tb3_fs with [chronic = 0  and ticks - ticks_at_last_resolved_tb3 <= 24]
  )

  set tracker_popsize_mid_hiv2_ytb_ntr_ych_ntbsymp_n2y (
    count hiv2tb2_ms with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv2tb2_fs with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv2_ytb_ntr_ych_ntbsymp_y2y (
    count hiv2tb2_ms with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv2tb2_fs with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
  set tracker_popsize_mid_hiv2_ytb_ntr_ych_ytbsymp_n2y (
    count hiv2tb3_ms with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv2tb3_fs with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv2_ytb_ntr_ych_ytbsymp_y2y (
    count hiv2tb3_ms with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv2tb3_fs with [chronic = 1  and ticks - ticks_at_last_resolved_tb3 <= 24]
  )

  set tracker_popsize_mid_hiv2_ytb_ytr_nch_ntbsymp_n2y (
    count hiv2tb4_ms with [chronic = 0 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv2tb4_fs with [chronic = 0 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv2_ytb_ytr_nch_ntbsymp_y2y (
    count hiv2tb4_ms with [chronic = 0 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv2tb4_fs with [chronic = 0 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
  set tracker_popsize_mid_hiv2_ytb_ytr_nch_ytbsymp_n2y (
    count hiv2tb4_ms with [chronic = 0 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv2tb4_fs with [chronic = 0 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv2_ytb_ytr_nch_ytbsymp_y2y (
    count hiv2tb4_ms with [chronic = 0 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv2tb4_fs with [chronic = 0 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 <= 24]
  )

  set tracker_popsize_mid_hiv2_ytb_ytr_ych_ntbsymp_n2y (
    count hiv2tb4_ms with [chronic = 1 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv2tb4_fs with [chronic = 1 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv2_ytb_ytr_ych_ntbsymp_y2y (
    count hiv2tb4_ms with [chronic = 1 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv2tb4_fs with [chronic = 1 and tb2_tb3_at_start_treat = 2 and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
  set tracker_popsize_mid_hiv2_ytb_ytr_ych_ytbsymp_n2y (
    count hiv2tb4_ms with [chronic = 1 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 > 24] +
    count hiv2tb4_fs with [chronic = 1 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 > 24]
  )
  set tracker_popsize_mid_hiv2_ytb_ytr_ych_ytbsymp_y2y (
    count hiv2tb4_ms with [chronic = 1 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 <= 24] +
    count hiv2tb4_fs with [chronic = 1 and tb2_tb3_at_start_treat = 3 and ticks - ticks_at_last_resolved_tb3 <= 24]
  )
end

to clear_trackers_mid
end

to clear_trackers_end
  set tracker_develop_tb_hiv0_m 0
  set tracker_develop_tb_hiv0_f 0
  set tracker_develop_tb_hiv1_m 0
  set tracker_develop_tb_hiv1_f 0
  set tracker_develop_tb_hiv2_m 0
  set tracker_develop_tb_hiv2_f 0
  set tracker_die_tb_hiv0_m 0
  set tracker_die_tb_hiv0_f 0
  set tracker_die_tb_hiv1_m 0
  set tracker_die_tb_hiv1_f 0
  set tracker_die_tb_hiv2_m 0
  set tracker_die_tb_hiv2_f 0
  set tracker_treat_tb_hiv0_m 0
  set tracker_treat_tb_hiv0_f 0
  set tracker_treat_tb_hiv1_m 0
  set tracker_treat_tb_hiv1_f 0
  set tracker_treat_tb_hiv2_m 0
  set tracker_treat_tb_hiv2_f 0
  set tracker_treat_success_hiv0 0
  set tracker_treat_die_tb_hiv0 0
  set tracker_treat_dropout_hiv0 0
  set tracker_treat_success_hiv1 0
  set tracker_treat_success_hiv2 0
  set tracker_treat_die_tb_hiv12 0
  set tracker_treat_dropout_hiv12 0
  set tracker_selfcure_hiv0 0
  set tracker_selfcure_hiv1 0
  set tracker_selfcure_hiv2 0
  set tracker_die_tb_hiv0_notreat 0
  set tracker_die_tb_hiv1_notreat 0
  set tracker_die_tb_hiv2_notreat 0
  set tracker_die_tb_hiv0_ontreat 0
  set tracker_die_tb_hiv1_ontreat 0
  set tracker_die_tb_hiv2_ontreat 0
  set tracker_start_treat_pm_hiv0 []
  set tracker_start_treat_pm_hiv1 []
  set tracker_start_treat_pm_hiv2 []
  set tracker_resolve_pm_hiv0 []
  set tracker_resolve_pm_hiv1 []
  set tracker_resolve_pm_hiv2 []
  set tracker_start_treat_passive []
  set tracker_falsepos_route []

  set tracker_int_simp 0

  set tracker_start_treat_symp_hiv0 0
  set tracker_start_treat_symp_hiv1 0
  set tracker_start_treat_symp_hiv2 0

  set tracker_tutt_eligibility_screened_year 0
  set tracker_tutt_recenttb_screened_year 0
  set tracker_tutt_recenttb_detected_year 0
  set tracker_tutt_contact_screened_year 0
  set tracker_tutt_contact_detected_year 0
  set tracker_tutt_art_screened_year 0
  set tracker_tutt_art_detected_year 0
  set tracker_tutt_recenttb_truepos_year 0
  set tracker_tutt_contact_truepos_year 0
  set tracker_tutt_art_truepos_year 0

  set tracker_start_art 0

  set tracker_community_start_treat_active []
  set tracker_community_start_treat_active_havetb []

  set tracker_clinic_start_treat_active_p []
  set tracker_clinic_start_treat_active_havetb_p []
  set tracker_clinic_start_treat_after_iltfu_p []
  set tracker_clinic_start_treat_active_a []
  set tracker_clinic_start_treat_active_havetb_a []
  set tracker_clinic_start_treat_after_iltfu_a []

  set tracker_community_diagnosed_active []
  set tracker_community_diagnosed_active_havetb []
  set tracker_clinic_diagnosed_active_p []
  set tracker_clinic_diagnosed_active_havetb_p []
  set tracker_clinic_active_screened_p []
  set tracker_clinic_diagnosed_active_a []
  set tracker_clinic_diagnosed_active_havetb_a []
  set tracker_clinic_active_screened_a []

  set tracker_clinic_art_visit_p 0
  set tracker_clinic_symp_screen_p 0
  set tracker_clinic_sputum_attempt_p []
  set tracker_clinic_sputum_produced_p []
  set tracker_clinic_sputum_pos_p 0
  set tracker_clinic_xray_p 0
  set tracker_clinic_xray_pos_p 0
  set tracker_clinic_dr_ref_p 0
  set tracker_clinic_dr_see_p 0
  set tracker_clinic_dr_invest_p 0
  set tracker_clinic_dr_pos_p 0
  set tracker_clinic_dr_immed_treat_p 0

  set tracker_clinic_art_visit_a 0
  set tracker_clinic_symp_screen_a 0
  set tracker_clinic_sputum_attempt_a []
  set tracker_clinic_sputum_produced_a []
  set tracker_clinic_sputum_pos_a 0
  set tracker_clinic_xray_a 0
  set tracker_clinic_xray_pos_a 0
  set tracker_clinic_dr_ref_a 0
  set tracker_clinic_dr_see_a 0
  set tracker_clinic_dr_invest_a 0
  set tracker_clinic_dr_pos_a 0
  set tracker_clinic_dr_immed_treat_a 0

  set tracker_community_xray 0
  set tracker_community_sputum_attempt []
  set tracker_community_sputum_produced []
  set tracker_community_sputum_pos 0
  set tracker_community_sputum_attempt_clinic []
  set tracker_community_sputum_produced_clinic []
  set tracker_community_sputum_pos_clinic 0
  set tracker_community_symp_screen 0
  set tracker_community_xray_comm 0
  set tracker_community_dr_ref 0
  set tracker_community_dr_see 0
  set tracker_community_dr_invest 0
  set tracker_community_dr_pos 0
  set tracker_community_dr_immed_treat 0



  set tracker_attend_clinic_bg_nr_m_hiv0_ntb_ns 0
  set tracker_attend_clinic_bg_nr_m_hiv1_ntb_ns 0
  set tracker_attend_clinic_bg_nr_m_hiv2_ntb_ns 0
  set tracker_attend_clinic_bg_nr_m_hiv0_ytb_ns 0
  set tracker_attend_clinic_bg_nr_m_hiv1_ytb_ns 0
  set tracker_attend_clinic_bg_nr_m_hiv2_ytb_ns 0
  set tracker_attend_clinic_bg_nr_f_hiv0_ntb_ns 0
  set tracker_attend_clinic_bg_nr_f_hiv1_ntb_ns 0
  set tracker_attend_clinic_bg_nr_f_hiv2_ntb_ns 0
  set tracker_attend_clinic_bg_nr_f_hiv0_ytb_ns 0
  set tracker_attend_clinic_bg_nr_f_hiv1_ytb_ns 0
  set tracker_attend_clinic_bg_nr_f_hiv2_ytb_ns 0
  set tracker_attend_clinic_bg_nr_m_hiv0_ntb_ys 0
  set tracker_attend_clinic_bg_nr_m_hiv1_ntb_ys 0
  set tracker_attend_clinic_bg_nr_m_hiv2_ntb_ys 0
  set tracker_attend_clinic_bg_nr_m_hiv0_ytb_ys 0
  set tracker_attend_clinic_bg_nr_m_hiv1_ytb_ys 0
  set tracker_attend_clinic_bg_nr_m_hiv2_ytb_ys 0
  set tracker_attend_clinic_bg_nr_f_hiv0_ntb_ys 0
  set tracker_attend_clinic_bg_nr_f_hiv1_ntb_ys 0
  set tracker_attend_clinic_bg_nr_f_hiv2_ntb_ys 0
  set tracker_attend_clinic_bg_nr_f_hiv0_ytb_ys 0
  set tracker_attend_clinic_bg_nr_f_hiv1_ytb_ys 0
  set tracker_attend_clinic_bg_nr_f_hiv2_ytb_ys 0

  set tracker_attend_clinic_bg_2y_m_hiv0_ntb_ns 0
  set tracker_attend_clinic_bg_2y_m_hiv1_ntb_ns 0
  set tracker_attend_clinic_bg_2y_m_hiv2_ntb_ns 0
  set tracker_attend_clinic_bg_2y_m_hiv0_ytb_ns 0
  set tracker_attend_clinic_bg_2y_m_hiv1_ytb_ns 0
  set tracker_attend_clinic_bg_2y_m_hiv2_ytb_ns 0
  set tracker_attend_clinic_bg_2y_f_hiv0_ntb_ns 0
  set tracker_attend_clinic_bg_2y_f_hiv1_ntb_ns 0
  set tracker_attend_clinic_bg_2y_f_hiv2_ntb_ns 0
  set tracker_attend_clinic_bg_2y_f_hiv0_ytb_ns 0
  set tracker_attend_clinic_bg_2y_f_hiv1_ytb_ns 0
  set tracker_attend_clinic_bg_2y_f_hiv2_ytb_ns 0
  set tracker_attend_clinic_bg_2y_m_hiv0_ntb_ys 0
  set tracker_attend_clinic_bg_2y_m_hiv1_ntb_ys 0
  set tracker_attend_clinic_bg_2y_m_hiv2_ntb_ys 0
  set tracker_attend_clinic_bg_2y_m_hiv0_ytb_ys 0
  set tracker_attend_clinic_bg_2y_m_hiv1_ytb_ys 0
  set tracker_attend_clinic_bg_2y_m_hiv2_ytb_ys 0
  set tracker_attend_clinic_bg_2y_f_hiv0_ntb_ys 0
  set tracker_attend_clinic_bg_2y_f_hiv1_ntb_ys 0
  set tracker_attend_clinic_bg_2y_f_hiv2_ntb_ys 0
  set tracker_attend_clinic_bg_2y_f_hiv0_ytb_ys 0
  set tracker_attend_clinic_bg_2y_f_hiv1_ytb_ys 0
  set tracker_attend_clinic_bg_2y_f_hiv2_ytb_ys 0

  set tracker_attend_clinic_symp_nr_m_hiv0_ntb_ns 0
  set tracker_attend_clinic_symp_nr_m_hiv1_ntb_ns 0
  set tracker_attend_clinic_symp_nr_m_hiv2_ntb_ns 0
  set tracker_attend_clinic_symp_nr_m_hiv0_ytb_ns 0
  set tracker_attend_clinic_symp_nr_m_hiv1_ytb_ns 0
  set tracker_attend_clinic_symp_nr_m_hiv2_ytb_ns 0
  set tracker_attend_clinic_symp_nr_f_hiv0_ntb_ns 0
  set tracker_attend_clinic_symp_nr_f_hiv1_ntb_ns 0
  set tracker_attend_clinic_symp_nr_f_hiv2_ntb_ns 0
  set tracker_attend_clinic_symp_nr_f_hiv0_ytb_ns 0
  set tracker_attend_clinic_symp_nr_f_hiv1_ytb_ns 0
  set tracker_attend_clinic_symp_nr_f_hiv2_ytb_ns 0
  set tracker_attend_clinic_symp_nr_m_hiv0_ntb_ys 0
  set tracker_attend_clinic_symp_nr_m_hiv1_ntb_ys 0
  set tracker_attend_clinic_symp_nr_m_hiv2_ntb_ys 0
  set tracker_attend_clinic_symp_nr_m_hiv0_ytb_ys 0
  set tracker_attend_clinic_symp_nr_m_hiv1_ytb_ys 0
  set tracker_attend_clinic_symp_nr_m_hiv2_ytb_ys 0
  set tracker_attend_clinic_symp_nr_f_hiv0_ntb_ys 0
  set tracker_attend_clinic_symp_nr_f_hiv1_ntb_ys 0
  set tracker_attend_clinic_symp_nr_f_hiv2_ntb_ys 0
  set tracker_attend_clinic_symp_nr_f_hiv0_ytb_ys 0
  set tracker_attend_clinic_symp_nr_f_hiv1_ytb_ys 0
  set tracker_attend_clinic_symp_nr_f_hiv2_ytb_ys 0

  set tracker_attend_clinic_symp_2y_m_hiv0_ntb_ns 0
  set tracker_attend_clinic_symp_2y_m_hiv1_ntb_ns 0
  set tracker_attend_clinic_symp_2y_m_hiv2_ntb_ns 0
  set tracker_attend_clinic_symp_2y_m_hiv0_ytb_ns 0
  set tracker_attend_clinic_symp_2y_m_hiv1_ytb_ns 0
  set tracker_attend_clinic_symp_2y_m_hiv2_ytb_ns 0
  set tracker_attend_clinic_symp_2y_f_hiv0_ntb_ns 0
  set tracker_attend_clinic_symp_2y_f_hiv1_ntb_ns 0
  set tracker_attend_clinic_symp_2y_f_hiv2_ntb_ns 0
  set tracker_attend_clinic_symp_2y_f_hiv0_ytb_ns 0
  set tracker_attend_clinic_symp_2y_f_hiv1_ytb_ns 0
  set tracker_attend_clinic_symp_2y_f_hiv2_ytb_ns 0
  set tracker_attend_clinic_symp_2y_m_hiv0_ntb_ys 0
  set tracker_attend_clinic_symp_2y_m_hiv1_ntb_ys 0
  set tracker_attend_clinic_symp_2y_m_hiv2_ntb_ys 0
  set tracker_attend_clinic_symp_2y_m_hiv0_ytb_ys 0
  set tracker_attend_clinic_symp_2y_m_hiv1_ytb_ys 0
  set tracker_attend_clinic_symp_2y_m_hiv2_ytb_ys 0
  set tracker_attend_clinic_symp_2y_f_hiv0_ntb_ys 0
  set tracker_attend_clinic_symp_2y_f_hiv1_ntb_ys 0
  set tracker_attend_clinic_symp_2y_f_hiv2_ntb_ys 0
  set tracker_attend_clinic_symp_2y_f_hiv0_ytb_ys 0
  set tracker_attend_clinic_symp_2y_f_hiv1_ytb_ys 0
  set tracker_attend_clinic_symp_2y_f_hiv2_ytb_ys 0
  set tracker_diagnosed_bg_m_hiv0_ytb_ns 0
  set tracker_diagnosed_bg_m_hiv1_ytb_ns 0
  set tracker_diagnosed_bg_m_hiv2_ytb_ns 0
  set tracker_diagnosed_bg_f_hiv0_ytb_ns 0
  set tracker_diagnosed_bg_f_hiv1_ytb_ns 0
  set tracker_diagnosed_bg_f_hiv2_ytb_ns 0
  set tracker_diagnosed_bg_m_hiv0_ytb_ys 0
  set tracker_diagnosed_bg_m_hiv1_ytb_ys 0
  set tracker_diagnosed_bg_m_hiv2_ytb_ys 0
  set tracker_diagnosed_bg_f_hiv0_ytb_ys 0
  set tracker_diagnosed_bg_f_hiv1_ytb_ys 0
  set tracker_diagnosed_bg_f_hiv2_ytb_ys 0
  set tracker_diagnosed_symp_m_hiv0_ytb_ys 0
  set tracker_diagnosed_symp_m_hiv1_ytb_ys 0
  set tracker_diagnosed_symp_m_hiv2_ytb_ys 0
  set tracker_diagnosed_symp_f_hiv0_ytb_ys 0
  set tracker_diagnosed_symp_f_hiv1_ytb_ys 0
  set tracker_diagnosed_symp_f_hiv2_ytb_ys 0

  set tracker_develop_tb_hiv0_m_nr_nc 0
  set tracker_develop_tb_hiv0_m_nr_yc 0
  set tracker_develop_tb_hiv0_m_2y_nc 0
  set tracker_develop_tb_hiv0_m_2y_yc 0
  set tracker_develop_tb_hiv0_f_nr_nc 0
  set tracker_develop_tb_hiv0_f_nr_yc 0
  set tracker_develop_tb_hiv0_f_2y_nc 0
  set tracker_develop_tb_hiv0_f_2y_yc 0
  set tracker_develop_tb_hiv1_m_nr_nc 0
  set tracker_develop_tb_hiv1_m_nr_yc 0
  set tracker_develop_tb_hiv1_m_2y_nc 0
  set tracker_develop_tb_hiv1_m_2y_yc 0
  set tracker_develop_tb_hiv1_f_nr_nc 0
  set tracker_develop_tb_hiv1_f_nr_yc 0
  set tracker_develop_tb_hiv1_f_2y_nc 0
  set tracker_develop_tb_hiv1_f_2y_yc 0
  set tracker_develop_tb_hiv2_m_nr_nc 0
  set tracker_develop_tb_hiv2_m_nr_yc 0
  set tracker_develop_tb_hiv2_m_2y_nc 0
  set tracker_develop_tb_hiv2_m_2y_yc 0
  set tracker_develop_tb_hiv2_f_nr_nc 0
  set tracker_develop_tb_hiv2_f_nr_yc 0
  set tracker_develop_tb_hiv2_f_2y_nc 0
  set tracker_develop_tb_hiv2_f_2y_yc 0

  set tracker_die_tb_hiv0_age0 0
  set tracker_die_tb_hiv0_age1 0
  set tracker_die_tb_hiv0_age2 0
  set tracker_die_tb_hiv1_age0 0
  set tracker_die_tb_hiv1_age1 0
  set tracker_die_tb_hiv1_age2 0
  set tracker_die_tb_hiv2_age0 0
  set tracker_die_tb_hiv2_age1 0
  set tracker_die_tb_hiv2_age2 0
  set tracker_die_hiv_age0 0
  set tracker_die_hiv_age1 0
  set tracker_die_hiv_age2 0
  set tracker_die_other_age0 0
  set tracker_die_other_age1 0
  set tracker_die_other_age2 0
end


to export-fitting-output
  output-type (word "hiv_prev_m_2000" ",")
  output-print (word hiv_prev_m_2000 ",")
  output-type (word "hiv_prev_f_2000" ",")
  output-print (word hiv_prev_f_2000 ",")
  output-type (word "hiv_prev_m_2010" ",")
  output-print (word hiv_prev_m_2010 ",")
  output-type (word "hiv_prev_f_2010" ",")
  output-print (word hiv_prev_f_2010 ",")
  output-type (word "hiv_prev_m_2023" ",")
  output-print (word hiv_prev_m_2023 ",")
  output-type (word "hiv_prev_f_2023" ",")
  output-print (word hiv_prev_f_2023 ",")
  output-type (word "hiv_prev_m_2030" ",")
  output-print (word hiv_prev_m_2030 ",")
  output-type (word "hiv_prev_f_2030" ",")
  output-print (word hiv_prev_f_2030 ",")
  output-type (word "art_cov_m_2016" ",")
  output-print (word art_cov_m_2016 ",")
  output-type (word "art_cov_f_2016" ",")
  output-print (word art_cov_f_2016 ",")
  output-type (word "art_cov_m_2023" ",")
  output-print (word art_cov_m_2023 ",")
  output-type (word "art_cov_f_2023" ",")
  output-print (word art_cov_f_2023 ",")
  output-type (word "art_cov_m_2019vs2023" ",")
  ifelse art_cov_m_2023 = 0
  [output-print (word "NA" ",")]
  [output-print (word (art_cov_m_2019 / art_cov_m_2023) ",")]
  output-type (word "art_cov_f_2019vs2023" ",")
  ifelse art_cov_f_2023 = 0
  [output-print (word "NA" ",")]
  [output-print (word (art_cov_f_2019 / art_cov_f_2023) ",")]
  output-type (word "tb_incidence_2005" ",")
  output-print (word tb_incidence_2005 ",")
  output-type (word "tb_incidence_2005_hivpos" ",")
  output-print (word tb_incidence_2005_hivpos ",")
  output-type (word "tb_incidence_2023" ",")
  output-print (word tb_incidence_2023 ",")
  output-type (word "tb_incidence_2023_hivpos" ",")
  output-print (word tb_incidence_2023_hivpos ",")
  output-type (word "tb_mort_2005" ",")
  output-print (word tb_mort_2005 ",")
  output-type (word "tb_mort_2005_hivpos" ",")
  output-print (word tb_mort_2005_hivpos ",")
  output-type (word "tb_mort_2023" ",")
  output-print (word tb_mort_2023 ",")
  output-type (word "tb_mort_2023_hivpos" ",")
  output-print (word tb_mort_2023_hivpos ",")
  output-type (word "tb_treat_inc_ratio_23" ",")
  ifelse tracker_inc_tb_23 = 0
  [output-print (word "NA" ",")]
  [output-print (word (tracker_treat_tb_23 / tracker_inc_tb_23) ",")]

  output-type (word "prop_start_treat_hivpos_2023" ",")
  output-print (word prop_start_treat_hivpos_2023",")
  output-type (word "prop_start_treat_art_2023" ",")
  output-print (word prop_start_treat_art_2023",")
  output-type (word "tb_not_2018" ",")
  output-print (word tb_not_2018 ",")
  output-type (word "tb_not_2023" ",")
  output-print (word tb_not_23 ",")
  output-type (word "tb_prev_m_2018" ",")
  output-print (word tb_prev_m_2018 ",")
  output-type (word "tb_prev_f_2018" ",")
  output-print (word tb_prev_f_2018 ",")
  output-type (word "tb_prev_hivpos_2018" ",")
  output-print (word tb_prev_hivpos_2018 ",")
  output-type (word "tb_prev_hivneg_2018" ",")
  output-print (word tb_prev_hivneg_2018 ",")
  output-type (word "prop_prev_tb_symp_hiv0_2018" ",")
  output-print (word prop_prev_tb_symp_hiv0_2018 ",")
  output-type (word "prop_prev_tb_symp_hiv12_2018" ",")
  output-print (word prop_prev_tb_symp_hiv12_2018 ",")
  output-type (word "prop_pop_with_symp_hiv12_2018" ",")
  output-print (word prop_pop_with_symp_hiv12_2018 ",")

  output-type (word "clinic_visits_2022" ",")
  output-print (word tracker_clinic_visits_2022 ",")
  output-type (word "clinic_symp_prev_2022" ",")
  output-print (word tracker_clinic_symp_prev_2022 ",")
  output-type (word "increased_tb_prev_in_clinic_symp_2022" ",")
  output-print (word tracker_increased_tb_prev_in_clinic_symp_2022 ",")
  output-type (word "increased_tb_prev_in_clinic_2022" ",")
  output-print (word tracker_increased_tb_prev_in_clinic_2022 ",")

  output-type (word "prop_hiv0_death_ontreat_2022" ",")
  ifelse tb_mort_2022_hivneg_num = 0
  [output-print (word "NA" ",")]
  [output-print (word (tracker_treat_die_tb_hiv0_2022 / tb_mort_2022_hivneg_num) ",")]
  output-type (word "prop_hiv12_death_ontreat_2022" ",")
  ifelse tb_mort_2022_hivpos_num = 0
  [output-print (word "NA" ",")]
  [output-print (word (tracker_treat_die_tb_hiv12_2022 / tb_mort_2022_hivpos_num) ",")]

  output-type (word "treat_2018_m" ",")
  output-print (word treat_2018_m ",")
  output-type (word "treat_2018_f" ",")
  output-print (word treat_2018_f ",")

  output-type (word "n_diagnosed_hiv0_sub_asymp_2023" ",")
  output-print (word n_diagnosed_hiv0_sub_asymp_2023 ",")
  output-type (word "n_diagnosed_hiv0_sub_symp_2023" ",")
  output-print (word n_diagnosed_hiv0_sub_symp_2023 ",")
  output-type (word "n_diagnosed_hiv0_clin_2023" ",")
  output-print (word n_diagnosed_hiv0_clin_2023 ",")
  output-type (word "n_diagnosed_hiv1_sub_asymp_2023" ",")
  output-print (word n_diagnosed_hiv1_sub_asymp_2023 ",")
  output-type (word "n_diagnosed_hiv1_sub_symp_2023" ",")
  output-print (word n_diagnosed_hiv1_sub_symp_2023 ",")
  output-type (word "n_diagnosed_hiv1_clin_2023" ",")
  output-print (word n_diagnosed_hiv1_clin_2023 ",")
  output-type (word "n_diagnosed_hiv2_sub_asymp_2023" ",")
  output-print (word n_diagnosed_hiv2_sub_asymp_2023 ",")
  output-type (word "n_diagnosed_hiv2_sub_symp_2023" ",")
  output-print (word n_diagnosed_hiv2_sub_symp_2023 ",")
  output-type (word "n_diagnosed_hiv2_clin_2023" ",")
  output-print (word n_diagnosed_hiv2_clin_2023 ",")
  output-type (word "n_prev_hiv0_sub_asymp_2023" ",")
  output-print (word n_prev_hiv0_sub_asymp_2023 ",")
  output-type (word "n_prev_hiv0_sub_symp_2023" ",")
  output-print (word n_prev_hiv0_sub_symp_2023 ",")
  output-type (word "n_prev_hiv0_clin_2023" ",")
  output-print (word n_prev_hiv0_clin_2023 ",")
  output-type (word "n_prev_hiv1_sub_asymp_2023" ",")
  output-print (word n_prev_hiv1_sub_asymp_2023 ",")
  output-type (word "n_prev_hiv1_sub_symp_2023" ",")
  output-print (word n_prev_hiv1_sub_symp_2023 ",")
  output-type (word "n_prev_hiv1_clin_2023" ",")
  output-print (word n_prev_hiv1_clin_2023 ",")
  output-type (word "n_prev_hiv2_sub_asymp_2023" ",")
  output-print (word n_prev_hiv2_sub_asymp_2023 ",")
  output-type (word "n_prev_hiv2_sub_symp_2023" ",")
  output-print (word n_prev_hiv2_sub_symp_2023 ",")
  output-type (word "n_prev_hiv2_clin_2023" ",")
  output-print (word n_prev_hiv2_clin_2023 ",")
  ;
  ifelse n_diagnosed_hiv0_sub_asymp_2023 = 0
  [set inf9_diagnosed_hiv0_sub_asymp_2023 "NA"]
  [set inf9_diagnosed_hiv0_sub_asymp_2023 (inf9_diagnosed_hiv0_sub_asymp_2023 / n_diagnosed_hiv0_sub_asymp_2023)]
  ifelse n_diagnosed_hiv0_sub_symp_2023 = 0
  [set inf9_diagnosed_hiv0_sub_symp_2023 "NA"]
  [set inf9_diagnosed_hiv0_sub_symp_2023 (inf9_diagnosed_hiv0_sub_symp_2023 / n_diagnosed_hiv0_sub_symp_2023)]
  ifelse n_diagnosed_hiv0_clin_2023 = 0
  [set inf9_diagnosed_hiv0_clin_2023 "NA"]
  [set inf9_diagnosed_hiv0_clin_2023 (inf9_diagnosed_hiv0_clin_2023 / n_diagnosed_hiv0_clin_2023)]
  ifelse n_diagnosed_hiv1_sub_asymp_2023 = 0
  [set inf9_diagnosed_hiv1_sub_asymp_2023 "NA"]
  [set inf9_diagnosed_hiv1_sub_asymp_2023 (inf9_diagnosed_hiv1_sub_asymp_2023 / n_diagnosed_hiv1_sub_asymp_2023)]
  ifelse n_diagnosed_hiv1_sub_symp_2023 = 0
  [set inf9_diagnosed_hiv1_sub_symp_2023 "NA"]
  [set inf9_diagnosed_hiv1_sub_symp_2023 (inf9_diagnosed_hiv1_sub_symp_2023 / n_diagnosed_hiv1_sub_symp_2023)]
  ifelse n_diagnosed_hiv1_clin_2023 = 0
  [set inf9_diagnosed_hiv1_clin_2023 "NA"]
  [set inf9_diagnosed_hiv1_clin_2023 (inf9_diagnosed_hiv1_clin_2023 / n_diagnosed_hiv1_clin_2023)]
  ifelse n_diagnosed_hiv2_sub_asymp_2023 = 0
  [set inf9_diagnosed_hiv2_sub_asymp_2023 "NA"]
  [set inf9_diagnosed_hiv2_sub_asymp_2023 (inf9_diagnosed_hiv2_sub_asymp_2023 / n_diagnosed_hiv2_sub_asymp_2023)]
  ifelse n_diagnosed_hiv2_sub_symp_2023 = 0
  [set inf9_diagnosed_hiv2_sub_symp_2023 "NA"]
  [set inf9_diagnosed_hiv2_sub_symp_2023 (inf9_diagnosed_hiv2_sub_symp_2023 / n_diagnosed_hiv2_sub_symp_2023)]
  ifelse n_diagnosed_hiv2_clin_2023 = 0
  [set inf9_diagnosed_hiv2_clin_2023 "NA"]
  [set inf9_diagnosed_hiv2_clin_2023 (inf9_diagnosed_hiv2_clin_2023 / n_diagnosed_hiv2_clin_2023)]


  output-type (word "infection_prob_9_background_2023" ",")
  output-print (word infection_prob_9_background_2023 ",")
  output-type (word "inf9_diagnosed_hiv0_sub_asymp_2023" ",")
  output-print (word inf9_diagnosed_hiv0_sub_asymp_2023 ",")
  output-type (word "inf9_diagnosed_hiv0_sub_symp_2023" ",")
  output-print (word inf9_diagnosed_hiv0_sub_symp_2023 ",")
  output-type (word "inf9_diagnosed_hiv0_clin_2023" ",")
  output-print (word inf9_diagnosed_hiv0_clin_2023 ",")
  output-type (word "inf9_diagnosed_hiv1_sub_asymp_2023" ",")
  output-print (word inf9_diagnosed_hiv1_sub_asymp_2023 ",")
  output-type (word "inf9_diagnosed_hiv1_sub_symp_2023" ",")
  output-print (word inf9_diagnosed_hiv1_sub_symp_2023 ",")
  output-type (word "inf9_diagnosed_hiv1_clin_2023" ",")
  output-print (word inf9_diagnosed_hiv1_clin_2023 ",")
  output-type (word "inf9_diagnosed_hiv2_sub_asymp_2023" ",")
  output-print (word inf9_diagnosed_hiv2_sub_asymp_2023 ",")
  output-type (word "inf9_diagnosed_hiv2_sub_symp_2023" ",")
  output-print (word inf9_diagnosed_hiv2_sub_symp_2023 ",")
  output-type (word "inf9_diagnosed_hiv2_clin_2023" ",")
  output-print (word inf9_diagnosed_hiv2_clin_2023 ",")
  output-type (word "inf9_prev_hiv0_sub_asymp_2023" ",")
  output-print (word inf9_prev_hiv0_sub_asymp_2023 ",")
  output-type (word "inf9_prev_hiv0_sub_symp_2023" ",")
  output-print (word inf9_prev_hiv0_sub_symp_2023 ",")
  output-type (word "inf9_prev_hiv0_clin_2023" ",")
  output-print (word inf9_prev_hiv0_clin_2023 ",")
  output-type (word "inf9_prev_hiv1_sub_asymp_2023" ",")
  output-print (word inf9_prev_hiv1_sub_asymp_2023 ",")
  output-type (word "inf9_prev_hiv1_sub_symp_2023" ",")
  output-print (word inf9_prev_hiv1_sub_symp_2023 ",")
  output-type (word "inf9_prev_hiv1_clin_2023" ",")
  output-print (word inf9_prev_hiv1_clin_2023 ",")
  output-type (word "inf9_prev_hiv2_sub_asymp_2023" ",")
  output-print (word inf9_prev_hiv2_sub_asymp_2023 ",")
  output-type (word "inf9_prev_hiv2_sub_symp_2023" ",")
  output-print (word inf9_prev_hiv2_sub_symp_2023 ",")
  output-type (word "inf9_prev_hiv2_clin_2023" ",")
  output-print (word inf9_prev_hiv2_clin_2023 ",")

  if hpc = 1 [
    ifelse input_number < 10
    [export-output (word "/valhalla/projects/ehpc-reg-2024r02-205/Nicky/NetLogo-6.2.0/runs/Fitting_output_0000" input_number "_" seed ".csv")]
    [ifelse input_number < 100
      [export-output (word "/valhalla/projects/ehpc-reg-2024r02-205/Nicky/NetLogo-6.2.0/runs/Fitting_output_000" input_number "_" seed ".csv")]
      [ifelse input_number < 1000
        [export-output (word "/valhalla/projects/ehpc-reg-2024r02-205/Nicky/NetLogo-6.2.0/runs/Fitting_output_00" input_number "_" seed ".csv")]
        [ifelse input_number < 10000
          [export-output (word "/valhalla/projects/ehpc-reg-2024r02-205/Nicky/NetLogo-6.2.0/runs/Fitting_output_0" input_number "_" seed ".csv")]
          [export-output (word "/valhalla/projects/ehpc-reg-2024r02-205/Nicky/NetLogo-6.2.0/runs/Fitting_output_" input_number "_" seed ".csv")]]
      ]
    ]
  ]

  if hpc = 0 [
    ifelse input_number < 10
    [export-output (word "Fitting_output_0000" input_number "_" seed ".csv")]
    [ifelse input_number < 100
      [export-output (word "Fitting_output_000" input_number "_" seed ".csv")]
      [ifelse input_number < 1000
        [export-output (word "Fitting_output_00" input_number "_" seed ".csv")]
        [ifelse input_number < 10000
          [export-output (word "Fitting_output_0" input_number "_" seed ".csv")]
          [export-output (word "Fitting_output_" input_number "_" seed ".csv")]]
      ]
    ]
  ]
end


to export-model-output
  if year >= output_year [
    if hpc = 1 [
      with-local-randomness [
        ifelse input_number < 10
        [export-output (word "/valhalla/projects/ehpc-reg-2024r02-205/Nicky/NetLogo-6.2.0/runs/Output_0000" input_number "_" seed ".csv")]
        [ifelse input_number < 100
          [export-output (word "/valhalla/projects/ehpc-reg-2024r02-205/Nicky/NetLogo-6.2.0/runs/Output_000" input_number "_" seed ".csv")]
          [ifelse input_number < 1000
            [export-output (word "/valhalla/projects/ehpc-reg-2024r02-205/Nicky/NetLogo-6.2.0/runs/Output_00" input_number "_" seed ".csv")]
            [ifelse input_number < 10000
              [export-output (word "/valhalla/projects/ehpc-reg-2024r02-205/Nicky/NetLogo-6.2.0/runs/Output_0" input_number "_" seed ".csv")]
              [export-output (word "/valhalla/projects/ehpc-reg-2024r02-205/Nicky/NetLogo-6.2.0/runs/Output_" input_number "_" seed ".csv")]]
          ]
        ]
      ]
    ]
    if hpc = 0 [
      with-local-randomness [
        ifelse input_number < 10
        [export-output (word "Output_0000" input_number "_" seed ".csv")]
        [ifelse input_number < 100
          [export-output (word "Output_000" input_number "_" seed ".csv")]
          [ifelse input_number < 1000
            [export-output (word "Output_00" input_number "_" seed ".csv")]
            [ifelse input_number < 10000
              [export-output (word "Output_0" input_number "_" seed ".csv")]
              [export-output (word "Output_" input_number "_" seed ".csv")]]
          ]
        ]
      ]
    ]
  ]
end
@#$#@#$#@
GRAPHICS-WINDOW
745
21
1182
459
-1
-1
13.0
1
10
1
1
1
0
1
1
1
-16
16
-16
16
0
0
1
ticks
30.0

BUTTON
134
91
276
124
NIL
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
288
105
351
138
NIL
go
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
0

BUTTON
146
184
217
217
profiler
;setup                  ;; set up the model\nprofiler:start         ;; start profiling\nrepeat 1 [setup go]     ;; run something you want to measure\n;setup\n;go\n;repeat 60 [go-once]\n;while [count turtles with [infection_status = 1 or infection_status = 2] > 0] [go]\nprofiler:stop          ;; stop profiling\nprint profiler:report  ;; view the results\nprofiler:reset         ;; clear the data\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
266
181
421
241
input_number
7.0
1
0
Number

OUTPUT
188
269
428
323
11

INPUTBOX
422
106
577
166
seed
12.0
1
0
Number

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.2.0
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="experiment" repetitions="1" runMetricsEveryStep="false">
    <setup>setup</setup>
    <go>go</go>
    <enumeratedValueSet variable="input_number">
      <value value="1"/>
    </enumeratedValueSet>
    <steppedValueSet variable="seed" first="1" step="1" last="200"/>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
