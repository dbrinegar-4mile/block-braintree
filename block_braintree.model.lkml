connection: "@{CONNECTION_NAME}"
label: "Braintree Block"

include: "views/*.view.lkml"
include: "*.explore.lkml"
include: "*.dashboard.lookml"
include: "//@{CONFIG_PROJECT_NAME}/views/*.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.model.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.dashboard"

explore: transaction {
  join: credit_card {
    sql_on: ${credit_card.transaction_id} = ${transaction.id} ;;
  }
}