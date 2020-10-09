view: teradata_view {
  sql_table_name: `dwh_poc.teradata_view`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: case_day {
    type: number
    sql: ${TABLE}.Case_Day ;;
  }

  dimension: rn {
    type: number
    sql: ${TABLE}.RN ;;
  }

  dimension: total_cases {
    type: number
    sql: ${TABLE}.Total_cases ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
