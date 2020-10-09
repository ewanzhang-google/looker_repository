view: poc_support_enhanced {
  sql_table_name: `dwh_poc.poc_support_enhanced`
    ;;

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_date ;;
  }

  dimension: doc_id {
    type: number
    sql: ${TABLE}.doc_id ;;
  }

  dimension: poc_text {
    type: string
    sql: ${TABLE}.poc_text ;;
  }

  dimension: revision_guid {
    type: string
    sql: ${TABLE}.revision_guid ;;
  }

  dimension: text_id {
    type: number
    sql: ${TABLE}.text_id ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
