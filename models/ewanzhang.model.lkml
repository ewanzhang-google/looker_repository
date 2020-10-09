connection: "ewanzhang"

# include all the views
include: "/views/**/*.view"

datagroup: ewanzhang_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ewanzhang_default_datagroup

explore: dwh_poc_dataset1 {}

explore: dwh_poc_dataset2 {}

explore: dwh_poc_dataset2_enriched {}

explore: joined_view {}

explore: natality_test {}

explore: poc_support {
  join: user_score {
    type: left_outer
    relationship: one_to_one
    sql_on: ${poc_support.doc_id} = ${user_score.id} ;;
  }
}

explore: poc_support_enhanced {}

explore: teradata_view {}

explore: user_score {}

explore: user_score_enhanced {}
