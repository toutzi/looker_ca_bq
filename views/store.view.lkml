view: store {
  sql_table_name: `dl_webinar.store`
    ;;
  drill_fields: [store_id]

  dimension: store_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: xy_location {
    type: location
    sql_latitude:${latitude} ;;
    sql_longitude:${longitude} ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
    drill_fields : [xy_location, purchases_details.product_universe ]
  }

  measure: count {
    type: count
    drill_fields: [store_id, store_name]
  }
}
