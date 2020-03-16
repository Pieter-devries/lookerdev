explore: liquidsqltable {}

view: liquidsqltable {
  sql_table_name: demo_db.{% parameter tablename %} ;;

parameter: tablename {
  type: unquoted
  allowed_value: {
    label: "Orders"
    value: "orders"
  }
}
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
    html: <a href= "/explore/testpieter/orders?fields=orders.user_id,orders.status,orders.count&f[orders.status]={{value}}&f[orders.created_date]={{_filters['orders.created_date']}}"
      </a> {{value}};;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
    link: {
      label: "Jump to User ID number {{ value }}"
      url: "/dashboards-next/248?User+ID={{value}}&Status={{orders.status._value}}&Created+Date={{_filters['orders.created_date']}}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  measure: count {
    type: count
    drill_fields: [id, users.last_name, users.id, users.first_name, order_items.count]
  }
 }
