view: natality_test {
  sql_table_name: `dwh_poc.natality_test`
    ;;

  dimension: gestation_weeks {
    type: number
    sql: ${TABLE}.gestation_weeks ;;
  }

  dimension: is_male {
    type: yesno
    sql: ${TABLE}.is_male ;;
  }

  dimension: mother_age {
    type: number
    sql: ${TABLE}.mother_age ;;
  }

  dimension: mother_race {
    type: number
    sql: ${TABLE}.mother_race ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
