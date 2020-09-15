view: purchases_details {
  sql_table_name: `dl_webinar.purchases_details`
    ;;

  dimension: age_range {
    type: string
    sql: ${TABLE}.age_range ;;
  }

  dimension: city {
    type: number
    sql: ${TABLE}.city ;;
  }

  dimension: contributive_line_amount {
    type: number
    sql: ${TABLE}.contributive_line_amount ;;
  }

  dimension: country {
    type: number
    sql: ${TABLE}.country ;;
  }

  dimension: country_code {
    type: number
    sql: ${TABLE}.country_code ;;
  }

  dimension: customer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_value {
    type: number
    sql: ${TABLE}.customer_value ;;
  }

  dimension: customer_value_ratio {
    type: number
    sql: ${TABLE}.customer_value_ratio ;;
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

  dimension: is_active_contact {
    type: yesno
    sql: ${TABLE}.is_active_contact ;;
  }

  dimension: is_cancelled {
    type: yesno
    sql: ${TABLE}.is_cancelled ;;
  }

  dimension: is_known {
    type: yesno
    sql: ${TABLE}.is_known ;;
  }

  dimension: is_known_customer {
    type: yesno
    sql: ${TABLE}.is_known_customer ;;
  }

  dimension: is_mobile_client {
    type: number
    sql: ${TABLE}.is_mobile_client ;;
  }

  dimension: is_pm {
    type: yesno
    sql: ${TABLE}.is_pm ;;
  }

  dimension: is_purchase_in_ref_period {
    type: yesno
    sql: ${TABLE}.is_purchase_in_ref_period ;;
  }

  dimension: is_store_client {
    type: string
    sql: ${TABLE}.is_store_client ;;
  }

  dimension: is_web_client {
    type: string
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

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: line_amount {
    type: number
    sql: ${TABLE}.line_amount ;;
  }

  dimension: line_custom_1 {
    type: number
    sql: ${TABLE}.line_custom_1 ;;
  }

  dimension: line_custom_2 {
    type: number
    sql: ${TABLE}.line_custom_2 ;;
  }

  dimension: line_custom_3 {
    type: number
    sql: ${TABLE}.line_custom_3 ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: loyalty_card {
    type: string
    sql: ${TABLE}.loyalty_card ;;
  }

  dimension: mixity {
    type: string
    sql: ${TABLE}.mixity ;;
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

  dimension: nb_contributive_visits {
    type: number
    sql: ${TABLE}.nb_contributive_visits ;;
  }

  dimension: optin_email {
    type: string
    sql: ${TABLE}.optin_email ;;
  }

  dimension: order_discount_tf {
    type: number
    sql: ${TABLE}.order_discount_tf ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_rank {
    type: number
    sql: ${TABLE}.order_rank ;;
  }

  dimension: pm_customer_id_master {
    type: string
    sql: ${TABLE}.pm_customer_id_master ;;
  }

  dimension: postal_code {
    type: number
    sql: ${TABLE}.postal_code ;;
  }

  dimension: price_rank {
    type: number
    sql: ${TABLE}.price_rank ;;
  }

  dimension: product_brand {
    type: string
    sql: ${TABLE}.product_brand ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_nature {
    type: string
    sql: ${TABLE}.product_nature ;;
  }

  dimension: product_qty {
    type: number
    sql: ${TABLE}.product_qty ;;
  }

  dimension: product_ranking {
    type: number
    sql: ${TABLE}.product_ranking ;;
  }

  dimension: product_type {
    type: number
    sql: ${TABLE}.product_type ;;
  }

  dimension: product_unit_discount_tf {
    type: number
    sql: ${TABLE}.product_unit_discount_tf ;;
  }

  dimension: product_unit_price_tf {
    type: number
    sql: ${TABLE}.product_unit_price_tf ;;
  }

  dimension: product_universe {
    type: string
    sql: ${TABLE}.product_universe ;;
    drill_fields: [product_name]
  }

  dimension_group: purchase {
    type: time
    timeframes: [
      raw,
      date,
      time_of_day,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.purchase_date ;;
  }

  dimension_group: purchases_datetime {
    type: time
    timeframes: [
      raw,
      date,
      time,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.purchase_date ;;
  }

  dimension: purchase_type {
    type: string
    sql: ${TABLE}.purchase_type ;;
  }

  dimension: sales_type {
    type: string
    sql: ${TABLE}.sales_type ;;
  }

  dimension: sales_type_identified {
    type: string
    sql: ${TABLE}.sales_type_identified ;;
  }

  dimension: sales_type_omnichannel {
    type: string
    sql: ${TABLE}.sales_type_omnichannel ;;
  }

  dimension: segment_1 {
    type: string
    sql: ${TABLE}.segment_1 ;;
  }

  dimension: segment_2 {
    type: string
    sql: ${TABLE}.segment_2 ;;
  }

  dimension: status_ropo {
    type: string
    sql: ${TABLE}.status_ropo ;;
  }

  dimension: store_country_code {
    type: string
    sql: ${TABLE}.store_country_code ;;
  }

  dimension: store_group_code {
    type: number
    sql: ${TABLE}.store_group_code ;;
  }

  dimension: store_group_name {
    type: number
    sql: ${TABLE}.store_group_name ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: store_name {
    type: number
    sql: ${TABLE}.store_name ;;
  }

  dimension: store_type {
    type: string
    sql: ${TABLE}.store_type ;;
  }

  dimension: top_product_10rk {
    type: yesno
    sql: ${TABLE}.top_product_10rk ;;
  }

  dimension: top_product_80pct {
    type: yesno
    sql: ${TABLE}.top_product_80pct ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: with_card {
    type: yesno
    sql: ${TABLE}.with_card ;;
  }

  dimension: with_contributive_visits {
    type: yesno
    sql: ${TABLE}.with_contributive_visits ;;
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
    drill_fields: [product_name, store_group_name, store_name, customers.customer_id_with_mail]
  }

  measure: Nbre_clients_call {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID ;;
    filters: [mixity: "CALL"]
  }

  measure: Nbre_clients_internet {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID ;;
    filters: [mixity: "INT"]
  }

  measure: Nbre_clients_mail {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID ;;
    filters: [mixity: "MAIL"]
  }

  measure: Nbre_clientss_mixtes {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID ;;
    filters: [mixity: "mixte"]
  }

  measure: panier_moyen_mixite_non_null {
    type: number
    sql: ${CA_mixite_non_null} / ${Nbre_commandes_mixite_non_null} ;;
  }

  measure: Nbre_commandes_mixite_non_null {
    type: count_distinct
    sql: ${TABLE}.ORDER_ID ;;
    filters: [mixity: "-NULL"]
  }

  measure: valeur_client {
    type: number
    sql: ${CA} / ${nb_clients} ;;
  }

  measure: CA {
    type: sum
    sql: ${TABLE}.LINE_AMOUNT ;;
  }


  measure: frequence_d_achat {
    type: number
    sql: ${Nbre_commandes} / ${nb_clients} ;;
  }

  measure: panier_moyen {
    type: number
    sql: ${CA} / ${Nbre_commandes} ;;
  }

  measure: moyenne_des_interactions_digitales {
    type: average
    sql: ${nb_contributive_visits} ;;
  }

  measure: Nbre_commandes {
    type: count_distinct
    sql: ${TABLE}.ORDER_ID ;;
  }

  measure: nb_clients {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID;;
  }

  measure: Onboarding_CRM {
    type: number
    sql: ${CA_know} / ${nb_clients_actifs} ;;
  }

  measure: CA_know {
    type: sum
    sql: ${TABLE}.LINE_AMOUNT ;;
    filters: [is_known: "Yes"]
  }

  measure: nb_clients_actifs {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID ;;
    filters: [is_active_contact: "Yes"]
  }

  measure: valeur_client_mixite_non_null {
    type: number
    sql: ${CA_mixite_non_null} / ${nb_clients_actifs_mixite_non_null} ;;
  }

  measure: CA_mixite_non_null {
    type: sum
    sql: ${TABLE}.LINE_AMOUNT ;;
    filters: [mixity: "-NULL" ]
  }

  measure: CA_client {
    type: sum
    sql: ${TABLE}.CUSTOMER_VALUE ;;
    filters: [mixity: "-NULL" ]
   # html: {{ rendered_value | replace: ‘,’, ' ' | replace: ‘.’,‘,’ }} ;;
  }

  measure: nb_clients_actifs_mixite_non_null {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID ;;
    filters: [mixity: "-NULL"]
  }

  measure: nb_contacts_profil_matche {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID ;;
    filters: [with_email: "Yes", is_pm: "Yes"]
  }

  measure: contacts_profil_matche_optin {
    type: count_distinct
    sql: ${TABLE}.CUSTOMER_ID ;;
    filters: [with_email: "Yes", is_pm: "Yes", optin_email: "Optin"]
  }

  measure: frequence_d_achat_mixite_non_null {
    type: number
    sql: ${nbre_commandes_mixite_non_null} / ${nb_clients_actifs_mixite_non_null} ;;
  }

  measure: nbre_commandes_mixite_non_null {
    type: count_distinct
    sql: ${TABLE}.ORDER_ID ;;
    filters: [mixity: "-NULL" ]
  }

  measure: ca_mail_influence {
    type: sum
    sql: ${TABLE}.LINE_AMOUNT ;;
    filters: [with_contributive_visits: "Yes"]
  }

  measure: ca_call {
    type: sum
    sql: ${TABLE}.LINE_AMOUNT ;;
    filters: [mixity: "CALL"]
  }

  measure: ca_internet {
    type: sum
    sql: ${TABLE}.LINE_AMOUNT ;;
    filters: [mixity: "INT"]
  }

  measure: ca_mail {
    type: sum
    sql: ${TABLE}.LINE_AMOUNT ;;
    filters: [mixity: "MAIL"]
  }

  measure: ca_mixtes {
    type: sum
    sql: ${TABLE}.LINE_AMOUNT ;;
    filters: [mixity: "mixte"]
  }

  measure: Nbre_commandes_call {
    type: count_distinct
    sql: ${TABLE}.ORDER_ID ;;
    filters: [mixity: "CALL"]
  }

  measure: Nbre_commandes_internet {
    type: count_distinct
    sql: ${TABLE}.ORDER_ID ;;
    filters: [mixity: "INT"]
  }

  measure: Nbre_commandes_mail {
    type: count_distinct
    sql: ${TABLE}.ORDER_ID ;;
    filters: [mixity: "MAIL"]
  }

  measure: Nbre_commandes_mixtes {
    type: count_distinct
    sql: ${TABLE}.ORDER_ID ;;
    filters: [mixity: "mixte"]
  }

  measure: CA_Periode_reference{
    type: sum
    sql: ${TABLE}.LINE_AMOUNT ;;
    filters: [is_purchase_in_ref_period: "Yes", top_product_10rk: "Yes"]
  }

  measure: max_date {
    type: date
    sql: MAX(${purchase_date}) ;;
    convert_tz: no
  }

  measure: min_date {
    type: date
    sql: MIN(${purchase_date}) ;;
    convert_tz: no
  }

}
