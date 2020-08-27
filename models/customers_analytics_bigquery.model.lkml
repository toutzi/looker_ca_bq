connection: "bigquery_customers_analytics"

# include all the views
include: "/views/**/*.view"

datagroup: customers_analytics_bigquery_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: customers_analytics_bigquery_default_datagroup

explore: customers {

}

explore: purchases_details {
 # join: customers {
 #   type: left_outer
 #   sql_on: ${purchases_details.customer_id} = ${customers.customer_id_with_mail} ;;
 #   relationship: many_to_one
 # }
  # join: customers {
  #  type: left_outer
  #  sql_on: ${purchases_details.customer_id} = ${customers.customer_id_with_mail} ;;
  #  relationship: many_to_one
  # }
}

explore: purchases_history {}

explore: visits {}
