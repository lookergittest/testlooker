view: chart_results {
  sql_table_name: training.ChartResults ;;

  dimension: account_key {
    type: number
    sql: ${TABLE}.AccountKey ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.AccountNumber ;;
  }

  dimension: account_type_id {
    type: number
    sql: ${TABLE}.AccountTypeID ;;
  }

  dimension: chart_account_id {
    type: number
    sql: ${TABLE}.ChartAccountID ;;
  }

  dimension: database_id {
    type: number
    sql: ${TABLE}.DatabaseId ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: generic_type {
    type: string
    sql: ${TABLE}.GenericType ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: parent_account_key {
    type: string
    sql: ${TABLE}.ParentAccountKey ;;
  }

  dimension_group: t_stamp {
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
    sql: ${TABLE}.tStamp ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
