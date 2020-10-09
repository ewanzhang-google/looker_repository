view: user_score_enhanced {
  sql_table_name: `dwh_poc.user_score_enhanced`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: team {
    type: number
    sql: ${TABLE}.team ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
