view: dwh_poc_dataset2_enriched {
  sql_table_name: `dwh_poc.dwh_poc_dataset2_enriched`
    ;;

  dimension: score {
    type: string
    sql: ${TABLE}.Score ;;
  }

  dimension: team_nr {
    type: string
    sql: ${TABLE}.TeamNr ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
