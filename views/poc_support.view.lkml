view: poc_support {
  sql_table_name: `dwh_poc.poc_support`
    ;;

  dimension_group: created_date {
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
    primary_key: yes
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

  measure: count {
    type: count
    drill_fields: []
  }
}
