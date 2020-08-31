view: visits {
  sql_table_name: `dl_webinar.visits`
    ;;

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: domain_id {
    type: number
    sql: ${TABLE}.domain_id ;;
  }

  dimension: domain_session_key {
    type: string
    sql: ${TABLE}.domain_session_key ;;
  }

  dimension: head_visitor_id {
    type: number
    sql: ${TABLE}.head_visitor_id ;;
  }

  dimension_group: hit {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hit_date ;;
  }

  dimension: tracking_method_campaign {
    type: string
    sql: ${TABLE}.tracking_method_campaign ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
