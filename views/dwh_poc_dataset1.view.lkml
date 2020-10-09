view: dwh_poc_dataset1 {
  sql_table_name: `dwh_poc.dwh_poc_dataset1`
    ;;

  dimension: created_date {
    type: string
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

  measure: count {
    type: count
    drill_fields: []
  }
}
