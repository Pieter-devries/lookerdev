connection: "lan_bq"
include: "/2_bq/*"              # include all views in the views/ folder in this project
include: "/2_bq/*/*"                # include all views in the views/ folder in this project

explore: orders {
  from:  orders
}
