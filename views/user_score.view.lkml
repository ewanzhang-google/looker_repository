view: user_score {
  sql_table_name: `dwh_poc.user_score`
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
