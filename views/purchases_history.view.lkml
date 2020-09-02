view: purchases_history {
  sql_table_name: `dl_webinar.purchases_history`
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: age_range {
    type: string
    sql: ${TABLE}.age_range ;;
  }

  dimension_group: current {
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
    sql: ${TABLE}.current_date ;;
  }

  dimension: customer_id_master {
    type: string
    sql: ${TABLE}.customer_id_master ;;
  }

  dimension: customer_value {
    type: number
    sql: ${TABLE}.customer_value ;;
  }

  dimension: delta_12 {
    type: number
    sql: ${TABLE}.delta_12 ;;
  }

  dimension: delta_12_range {
    type: string
    sql: ${TABLE}.delta_12_range ;;
  }

  dimension: delta_last {
    type: number
    sql: ${TABLE}.delta_last ;;
  }

  dimension: delta_last_range {
    type: number
    sql: ${TABLE}.delta_last_range ;;
  }

  dimension: first_city {
    type: number
    sql: ${TABLE}.first_city ;;
  }

  dimension: first_country {
    type: number
    sql: ${TABLE}.first_country ;;
  }

  dimension: first_discount {
    type: number
    sql: ${TABLE}.first_discount ;;
  }

  dimension: first_latitude {
    type: number
    sql: ${TABLE}.first_latitude ;;
  }

  dimension: first_longitude {
    type: number
    sql: ${TABLE}.first_longitude ;;
  }

  dimension: first_margin {
    type: number
    sql: ${TABLE}.first_margin ;;
  }

  dimension: first_most_expensive_product_price {
    type: number
    sql: ${TABLE}.first_most_expensive_product_price ;;
  }

  dimension: first_nb_articles {
    type: number
    sql: ${TABLE}.first_nb_articles ;;
  }

  dimension: first_order_id {
    type: string
    sql: ${TABLE}.first_order_id ;;
  }

  dimension: first_postal_code {
    type: number
    sql: ${TABLE}.first_postal_code ;;
  }

  dimension: first_product_id {
    type: string
    sql: ${TABLE}.first_product_id ;;
  }

  dimension: first_product_name {
    type: string
    sql: ${TABLE}.first_product_name ;;
  }

  dimension: first_product_nature {
    type: string
    sql: ${TABLE}.first_product_nature ;;
  }

  dimension: first_product_universe {
    type: string
    sql: ${TABLE}.first_product_universe ;;
  }

  dimension: first_product_universe_nb_orders {
    type: number
    sql: ${TABLE}.first_product_universe_nb_orders ;;
  }

  dimension: first_product_universe_simplified {
    type: string
    sql: ${TABLE}.first_product_universe_simplified ;;
  }

  dimension_group: first_purchase {
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
    sql: ${TABLE}.first_purchase_date ;;
  }

  dimension: first_store_id {
    type: number
    sql: ${TABLE}.first_store_id ;;
  }

  dimension: first_store_name {
    type: number
    sql: ${TABLE}.first_store_name ;;
  }

  dimension: first_store_type {
    type: string
    sql: ${TABLE}.first_store_type ;;
  }

  dimension: first_store_type_ext {
    type: string
    sql: ${TABLE}.first_store_type_ext ;;
  }

  dimension: first_total_amount {
    type: number
    sql: ${TABLE}.first_total_amount ;;
  }

  dimension: is_known {
    type: yesno
    sql: ${TABLE}.is_known ;;
  }

  dimension: is_mono_buyer {
    type: yesno
    sql: ${TABLE}.is_mono_buyer ;;
  }

  dimension: is_pm {
    type: yesno
    sql: ${TABLE}.is_pm ;;
  }

  dimension: optin_email {
    type: string
    sql: ${TABLE}.optin_email ;;
  }

  dimension: optin_sms {
    type: string
    sql: ${TABLE}.optin_sms ;;
  }

  dimension: second_city {
    type: number
    sql: ${TABLE}.second_city ;;
  }

  dimension: second_country {
    type: number
    sql: ${TABLE}.second_country ;;
  }

  dimension: second_discount {
    type: number
    sql: ${TABLE}.second_discount ;;
  }

  dimension: second_latitude {
    type: number
    sql: ${TABLE}.second_latitude ;;
  }

  dimension: second_longitude {
    type: number
    sql: ${TABLE}.second_longitude ;;
  }

  dimension: second_margin {
    type: number
    sql: ${TABLE}.second_margin ;;
  }

  dimension: second_most_expensive_product_price {
    type: number
    sql: ${TABLE}.second_most_expensive_product_price ;;
  }

  dimension: second_nb_articles {
    type: number
    sql: ${TABLE}.second_nb_articles ;;
  }

  dimension: second_order_customer_id_master {
    type: string
    sql: ${TABLE}.second_order_customer_id_master ;;
  }

  dimension: second_order_id {
    type: string
    sql: ${TABLE}.second_order_id ;;
  }

  dimension: second_postal_code {
    type: number
    sql: ${TABLE}.second_postal_code ;;
  }

  dimension: second_product_id {
    type: string
    sql: ${TABLE}.second_product_id ;;
  }

  dimension: second_product_name {
    type: string
    sql: ${TABLE}.second_product_name ;;
  }

  dimension: second_product_nature {
    type: string
    sql: ${TABLE}.second_product_nature ;;
  }

  dimension: second_product_universe {
    type: string
    sql: ${TABLE}.second_product_universe ;;
  }

  dimension: second_product_universe_simplified {
    type: string
    sql: ${TABLE}.second_product_universe_simplified ;;
  }

  dimension_group: second_purchase {
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
    sql: ${TABLE}.second_purchase_date ;;
  }

  dimension: second_store_id {
    type: number
    sql: ${TABLE}.second_store_id ;;
  }

  dimension: second_store_name {
    type: number
    sql: ${TABLE}.second_store_name ;;
  }

  dimension: second_store_type {
    type: string
    sql: ${TABLE}.second_store_type ;;
  }

  dimension: second_store_type_ext {
    type: string
    sql: ${TABLE}.second_store_type_ext ;;
  }

  dimension: second_total_amount {
    type: number
    sql: ${TABLE}.second_total_amount ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}.target ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  dimension: total_amount_mag {
    type: number
    sql: ${TABLE}.total_amount_mag ;;
  }

  dimension: total_amount_web {
    type: number
    sql: ${TABLE}.total_amount_web ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [first_store_name, second_store_name, second_product_name, first_product_name]
  }

  measure: Nbre_de_reacheteurs {
    type: count_distinct
    sql: ${TABLE}.SECOND_ORDER_CUSTOMER_ID_MASTER ;;
  }

  measure: Nbre_de_reachat {
    type: count_distinct
    sql: ${TABLE}.SECOND_ORDER_ID ;;
  }

  measure: Nbre_contacts_maitres {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID_MASTER ;;
  }

  measure: Taux_de_reachat {
    type: number
    sql: ${Nbre_de_reacheteurs} / ${Nbre_contacts_maitres} ;;
  }

  measure: Montant_1er_achat {
    type: average
    sql: ${TABLE}.FIRST_TOTAL_AMOUNT ;;
    filters: [second_order_id: "-NULL"]
  }

  measure: Montant_2eme_achat {
    type: average
    sql: ${TABLE}.SECOND_TOTAL_AMOUNT ;;
    filters: [second_order_id: "-NULL"]
  }

  measure: Delai_de_reachat_j {
    type: average
    sql: ${TABLE}.DELTA_12 ;;
  }

  measure: Nb_1er_achat {
    type: count_distinct
    sql: ${TABLE}.FIRST_ORDER_ID ;;
  }

  measure: CA_1er_achat {
    type: sum
    sql: ${TABLE}.FIRST_TOTAL_AMOUNT ;;
  }

  measure: CA_reachat {
    type: sum
    sql: ${TABLE}.SECOND_TOTAL_AMOUNT ;;
  }

  measure: Taux_de_reachat_univers {
    type: number
    sql: ${Nbre_de_reacheteurs_first} / ${Nbre_contacts_first_product} ;;
  }

  measure: Nbre_de_reacheteurs_first {
    type: count_distinct
    sql: ${TABLE}.SECOND_ORDER_CUSTOMER_ID ;;
    filters: [first_product_universe: "-NULL", first_product_nature: "-NULL", first_product_nature: "N.R", first_product_universe_nb_orders: ">=50" ]
  }

  measure: Nbre_contacts_first_product {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID_MASTER ;;
    filters: [first_product_universe: "-NULL", first_product_nature: "-NULL", first_product_nature: "N.R", first_product_universe_nb_orders: ">=50" ]
  }

  measure: Nbre_reachat {
    type: count_distinct
    sql: ${TABLE}.SECOND_ORDER_ID ;;
    filters: [first_product_universe: "-NULL", second_order_id: "-NULL"]
  }

}
