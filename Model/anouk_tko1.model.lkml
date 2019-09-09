connection: "flightstats"

include: "/**/*.view"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# explore: flights {
#   label: "Flights and Delays"
#   join: airports_origin {
#     from: airports
#     type: left_outer
#     sql_on: ${flights.origin}=${airports_origin.code};;
#     relationship: one_to_one
#     #fields: [ontime.delayed_flight_count,airports_origin.full_name, airports_origin.city, airports_origin.state, airports_origin.code, ontime.percentage_delayed]
#   }
#   join: airports_destination {
#     from: airports
#     type: left_outer
#     sql_on: ${flights.destination}=${airports_destination.code} ;;
#     relationship: one_to_one
#     #fields: [ontime.delayed_flight_count,airports_destination.full_name, airports_destination.city, airports_destination.state, airports_destination.code, ontime.percentage_delayed]
#   }
#   join: ontime {
#     type: left_outer
#     sql_on: ${flights.id2}=${ontime.id2} ;;
#     relationship: one_to_one
#     #fields: [ontime.delayed_flight_count,airports_destination.full_name, airports_destination.city, airports_destination.state, airports_destination.code, ontime.percentage_delayed]
#   }
# }

explore: flights {
}

explore: airports {
}

explore: ontime{

}
