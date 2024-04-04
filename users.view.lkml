include: "//customer/views/hub_users.view.lkml"
connection: "rachana-bq-public-dataset-customer"

view: +users {
  dimension: full_name{
    type: string
    sql:  Concat(${first_name} , ' ',${last_name}) ;;
  }
 }

explore: users {}
