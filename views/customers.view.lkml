view: customers {
  sql_table_name: `dl_webinar.customers`
    ;;
  drill_fields: [customer_id_with_mail]

  dimension: customer_id_with_mail {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id_with_mail ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: age_range {
    type: string
    sql: ${TABLE}.age_range ;;
  }

  dimension_group: birthdate {
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
    sql: ${TABLE}.birthdate ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: cluster {
    type: string
    sql: ${TABLE}.cluster ;;
  }

  dimension: cluster_detail {
    type: string
    sql: ${TABLE}.cluster_detail ;;
  }

  dimension: column63 {
    type: string
    sql: ${TABLE}.Column63 ;;
  }

  dimension: column64 {
    type: string
    sql: ${TABLE}.Column64 ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: customer_age {
    type: tier
    tiers: [30, 40, 50, 60, 70]
    style: interval
    sql: ${TABLE}.customer_age ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_id_master {
    type: number
    value_format_name: id
    sql: ${TABLE}.customer_id_master ;;
  }

  dimension: customer_id_with_card {
    type: number
    value_format_name: id
    sql: ${TABLE}.customer_id_with_card ;;
  }


  dimension: customer_id_with_mail_optin {
    type: number
    value_format_name: id
    sql: ${TABLE}.customer_id_with_mail_optin ;;
  }

  dimension: customer_id_with_sms {
    type: number
    value_format_name: id
    sql: ${TABLE}.customer_id_with_sms ;;
  }

  dimension: customer_id_with_sms_optin {
    type: string
    sql: ${TABLE}.customer_id_with_sms_optin ;;
  }

  dimension: customer_value {
    type: number
    sql: ${TABLE}.customer_value ;;
  }

  dimension: customer_value_180_days {
    type: number
    sql: ${TABLE}.customer_value_180_days ;;
  }

  dimension: customer_value_30_days {
    type: number
    sql: ${TABLE}.customer_value_30_days ;;
  }

  dimension: customer_value_365_days {
    type: number
    sql: ${TABLE}.customer_value_365_days ;;
  }

  dimension: customer_value_90_days {
    type: number
    sql: ${TABLE}.customer_value_90_days ;;
  }

  dimension: customer_value_ratio {
    type: number
    sql: ${TABLE}.customer_value_ratio ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension_group: first_buy {
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
    sql: ${TABLE}.first_buy_date ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: is_active_contact {
    type: yesno
    sql: ${TABLE}.is_active_contact ;;
  }

  dimension: is_active_customer {
    type: yesno
    sql: ${TABLE}.is_active_customer ;;
  }

  dimension: is_known {
    type: yesno
    sql: ${TABLE}.is_known ;;
  }

  dimension: is_master_contact {
    type: yesno
    sql: ${TABLE}.is_master_contact ;;
  }

  dimension: is_mobile_client {
    type: string
    sql: ${TABLE}.is_mobile_client ;;
  }

  dimension: is_pm {
    type: yesno
    sql: ${TABLE}.is_pm ;;
  }

  dimension: is_store_client {
    type: number
    sql: ${TABLE}.is_store_client ;;
  }

  dimension: is_web_client {
    type: number
    sql: ${TABLE}.is_web_client ;;
  }

  dimension_group: last_buy {
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
    sql: ${TABLE}.last_buy_date ;;
  }

  dimension: loyalty_card {
    type: string
    sql: ${TABLE}.loyalty_card ;;
  }

  dimension: mixity {
    type: string
    sql: ${TABLE}.mixity ;;
  }

  dimension: mobile_number_intl {
    type: string
    sql: ${TABLE}.mobile_number_intl ;;
  }

  dimension: mobile_number_local {
    type: string
    sql: ${TABLE}.mobile_number_local ;;
  }

  dimension: nb_buys {
    type: number
    sql: ${TABLE}.nb_buys ;;
  }

  dimension: nb_buys_in_store {
    type: number
    sql: ${TABLE}.nb_buys_in_store ;;
  }

  dimension: nb_buys_in_web {
    type: number
    sql: ${TABLE}.nb_buys_in_web ;;
  }

  dimension: nb_orders {
    type: number
    sql: ${TABLE}.nb_orders ;;
  }

  dimension: nb_orders_with_discount {
    type: number
    sql: ${TABLE}.nb_orders_with_discount ;;
  }

  dimension: nb_visits {
    type: number
    sql: ${TABLE}.nb_visits ;;
  }

  dimension: nb_visits_180_days {
    type: number
    sql: ${TABLE}.nb_visits_180_days ;;
  }

  dimension: nb_visits_30_days {
    type: number
    sql: ${TABLE}.nb_visits_30_days ;;
  }

  dimension: nb_visits_365_days {
    type: number
    sql: ${TABLE}.nb_visits_365_days ;;
  }

  dimension: nb_visits_90_days {
    type: number
    sql: ${TABLE}.nb_visits_90_days ;;
  }

  dimension: nb_visits_after_last_purchase {
    type: number
    sql: ${TABLE}.nb_visits_after_last_purchase ;;
  }

  dimension: optin_email {
    type: string
    sql: ${TABLE}.optin_email ;;
  }

  dimension: optin_sms {
    type: string
    sql: ${TABLE}.optin_sms ;;
  }

  dimension: order_discount_tf {
    type: number
    sql: ${TABLE}.order_discount_tf ;;
  }

  dimension: pct_orders_with_discount {
    type: number
    sql: ${TABLE}.pct_orders_with_discount ;;
  }

  dimension: pm_customer_id_master {
    type: number
    value_format_name: id
    sql: ${TABLE}.pm_customer_id_master ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: segment_1 {
    type: number
    sql: ${TABLE}.segment_1 ;;
  }

  dimension: segment_2 {
    type: number
    sql: ${TABLE}.segment_2 ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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

  dimension: total_discount {
    type: number
    sql: ${TABLE}.total_discount ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: with_card {
    type: yesno
    sql: ${TABLE}.with_card ;;
  }

  dimension: with_email {
    type: yesno
    sql: ${TABLE}.with_email ;;
  }

  dimension: with_sms {
    type: yesno
    sql: ${TABLE}.with_sms ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_id_with_mail, customers.customer_id_with_mail, customers.count, purchases_details.count]
  }

  measure: nb_total_de_contacts {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  measure: nb_clients {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID_MASTER ;;
    filters: [mixity: "-NULL"]
  }

  measure: nb_total_de_contacts_maitres {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID_MASTER ;;
  }

  measure: Onboarding_CRM {
    type: number
    sql: ${nb_clients_actifs_profils_matches} / ${nb_clients_actifs} ;;
  }

  measure: nb_clients_actifs_profils_matches {
    type: count_distinct
    sql: ${TABLE}.PM_CUSTOMER_ID_MASTER ;;
    filters: [is_active_contact : "Yes"]
  }

  measure: nb_clients_actifs {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID_MASTER ;;
    filters: [is_active_contact: "Yes"]
  }

  measure: CA_total_clients {
    type: sum
    sql: ${TABLE}.CUSTOMER_VALUE ;;
    value_format: "euro"
  }

  measure: CA_total_mixite_non_null {
    type: sum
    sql: ${TABLE}.CUSTOMER_VALUE ;;
    filters: [mixity: "-NULL"]
  }

}
