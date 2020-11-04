connection: "bigquery_customers_analytics"

# include all the views
include: "/views/**/*.view"

datagroup: customers_analytics_bigquery_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: customers_analytics_bigquery_default_datagroup

explore: customers {

#explore: customers {

  join: purchases_details {
    type: left_outer
    relationship: one_to_many
    sql_on: CAST(${customers.customer_id}  as string) = ${purchases_details.customer_id} ;;
  }

 join: purchases_history {
    type: left_outer
    relationship: many_to_many
   sql_on: CAST(${customers.customer_id_master} as string) = ${purchases_history.customer_id_master} ;;
  }

}

explore: purchases_details {

  join: store {
    type: left_outer
    relationship: many_to_one
    sql_on: ${purchases_details.store_id} = ${store.store_id} ;;
  }
}

explore: purchases_history {}

explore: visits {}
