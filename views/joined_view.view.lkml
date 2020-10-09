view: joined_view {
  sql_table_name: `dwh_poc.joined_view`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

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

  dimension: scilearn_mention {
    type: number
    sql: ${TABLE}.scilearn_mention ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: team {
    type: number
    sql: ${TABLE}.team ;;
  }

  dimension: text_id {
    type: number
    sql: ${TABLE}.text_id ;;
  }

  dimension: tf_mention {
    type: number
    sql: ${TABLE}.tf_mention ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
