view: property_list__annette {
  sql_table_name: training."2020.06.30 Property List - Annette" ;;

  dimension: acquisition_date {
    type: string
    sql: ${TABLE}.Acquisition_Date ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: am_compliance_specialist {
    type: string
    sql: ${TABLE}.AM_Compliance_Specialist ;;
  }

  dimension: area_type {
    type: string
    sql: ${TABLE}.Area_Type ;;
  }

  dimension: area_unit {
    type: string
    sql: ${TABLE}.Area_Unit ;;
  }

  dimension: asset_analyst {
    type: string
    sql: ${TABLE}.Asset_Analyst ;;
  }

  dimension: asset_manager {
    type: string
    sql: ${TABLE}.Asset_Manager ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: investment_type_prop {
    type: string
    sql: ${TABLE}.Investment_Type_Prop ;;
  }

  dimension: investment_vehicle {
    type: string
    sql: ${TABLE}.Investment_Vehicle ;;
  }

  dimension: leasing_company {
    type: string
    sql: ${TABLE}.Leasing_Company ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.Location_Type ;;
  }

  dimension: msa {
    type: string
    sql: ${TABLE}.MSA ;;
  }

  dimension: ownership {
    type: string
    sql: ${TABLE}.Ownership ;;
  }

  dimension: portfolio_manager {
    type: string
    sql: ${TABLE}.Portfolio_Manager ;;
  }

  dimension: property_manager {
    type: string
    sql: ${TABLE}.Property_Manager ;;
  }

  dimension: property_name {
    type: string
    sql: ${TABLE}.Property_Name ;;
  }

  dimension: property_status {
    type: string
    sql: ${TABLE}.Property_Status ;;
  }

  dimension: property_subtype {
    type: string
    sql: ${TABLE}.Property_Subtype ;;
  }

  dimension: property_type {
    type: string
    sql: ${TABLE}.Property_Type ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [property_name]
  }
}
