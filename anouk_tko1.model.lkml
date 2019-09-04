connection: "flightstats"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
explore: flights {
  join: airports_origin {
    from: airports
    type: left_outer
    sql_on: ${flights.origin}=${airports_origin.code};;
    relationship: one_to_one
    fields: [airports_origin.full_name, airports_origin.city, airports_origin.state, airports_origin.code]
  }
  join: airports_destination {
    from: airports
    type: left_outer
    sql_on: ${flights.destination}=${airports_destination.code} ;;
    relationship: one_to_one
    fields: [airports_destination.full_name, airports_destination.city, airports_destination.state, airports_destination.code]
  }
}

explore: airports {
}

explore: ontime{

}
