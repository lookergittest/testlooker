view: dynamo_property {
  sql_table_name: training.dynamo_property ;;

  dimension: _es {
    type: string
    sql: ${TABLE}._es ;;
  }

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: acquisitiondate {
    type: string
    sql: ${TABLE}.Acquisitiondate ;;
  }

  dimension: asset_reference {
    type: string
    sql: ${TABLE}.AssetReference ;;
  }

  dimension: asset_region {
    type: string
    sql: ${TABLE}.AssetRegion ;;
  }

  dimension: assetclass {
    type: string
    sql: ${TABLE}.Assetclass ;;
  }

  dimension: broker {
    type: string
    sql: ${TABLE}.Broker ;;
  }

  dimension: building_quality {
    type: string
    sql: ${TABLE}.BuildingQuality ;;
  }

  dimension: business_zip {
    type: string
    sql: ${TABLE}.BusinessZIP ;;
  }

  dimension: businessaddress {
    type: string
    sql: ${TABLE}.Businessaddress ;;
  }

  dimension: businesscity {
    type: string
    sql: ${TABLE}.Businesscity ;;
  }

  dimension: businesscountry {
    type: string
    sql: ${TABLE}.Businesscountry ;;
  }

  dimension: businessfax {
    type: string
    sql: ${TABLE}.Businessfax ;;
  }

  dimension: businessphone {
    type: string
    sql: ${TABLE}.Businessphone ;;
  }

  dimension: businessstate {
    type: string
    sql: ${TABLE}.Businessstate ;;
  }

  dimension: businessstreet {
    type: string
    sql: ${TABLE}.Businessstreet ;;
  }

  dimension: businessstreet2 {
    type: string
    sql: ${TABLE}.Businessstreet2 ;;
  }

  dimension: calculationstatus {
    type: string
    sql: ${TABLE}.Calculationstatus ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: contact_info_business_address_latitude {
    type: string
    sql: ${TABLE}.ContactInfo_BusinessAddress_Latitude ;;
  }

  dimension: contact_info_business_address_longitude {
    type: string
    sql: ${TABLE}.ContactInfo_BusinessAddress_Longitude ;;
  }

  dimension: contact_info_business_address_street3 {
    type: string
    sql: ${TABLE}.ContactInfo_BusinessAddress_Street3 ;;
  }

  dimension: contact_info_primary_address_geo_radius {
    type: string
    sql: ${TABLE}.ContactInfo_PrimaryAddress_GeoRadius ;;
  }

  dimension: contact_info_primary_address_latitude {
    type: string
    sql: ${TABLE}.ContactInfo_PrimaryAddress_Latitude ;;
  }

  dimension: contact_info_primary_address_longitude {
    type: string
    sql: ${TABLE}.ContactInfo_PrimaryAddress_Longitude ;;
  }

  dimension: contact_info_primary_address_street3 {
    type: string
    sql: ${TABLE}.ContactInfo_PrimaryAddress_Street3 ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: dynamo_follow_me {
    type: string
    sql: ${TABLE}.DynamoFollowMe ;;
  }

  dimension: endofinspectiondate {
    type: string
    sql: ${TABLE}.Endofinspectiondate ;;
  }

  dimension: entity_key {
    type: string
    sql: ${TABLE}.EntityKey ;;
  }

  dimension: estimatedvalue {
    type: string
    sql: ${TABLE}.Estimatedvalue ;;
  }

  dimension: european_market {
    type: string
    sql: ${TABLE}.EuropeanMarket ;;
  }

  dimension: exitstrategy {
    type: string
    sql: ${TABLE}.Exitstrategy ;;
  }

  dimension: expansionareaavailable {
    type: string
    sql: ${TABLE}.Expansionareaavailable ;;
  }

  dimension: expansionareasqft {
    type: string
    sql: ${TABLE}.Expansionareasqft ;;
  }

  dimension: flag_complete {
    type: string
    sql: ${TABLE}.FlagComplete ;;
  }

  dimension: flag_complete_date {
    type: string
    sql: ${TABLE}.FlagCompleteDate ;;
  }

  dimension: flag_created_by {
    type: string
    sql: ${TABLE}.FlagCreatedBy ;;
  }

  dimension: flag_date_created {
    type: string
    sql: ${TABLE}.FlagDateCreated ;;
  }

  dimension: flag_due_date {
    type: string
    sql: ${TABLE}.FlagDueDate ;;
  }

  dimension: flag_last_modified {
    type: string
    sql: ${TABLE}.FlagLastModified ;;
  }

  dimension: flag_notes {
    type: string
    sql: ${TABLE}.FlagNotes ;;
  }

  dimension: flag_reminder {
    type: string
    sql: ${TABLE}.FlagReminder ;;
  }

  dimension: flag_reminder_date {
    type: string
    sql: ${TABLE}.FlagReminderDate ;;
  }

  dimension: flag_status_icon {
    type: string
    sql: ${TABLE}.FlagStatusIcon ;;
  }

  dimension: flag_to {
    type: string
    sql: ${TABLE}.FlagTo ;;
  }

  dimension: horizon_ref {
    type: string
    sql: ${TABLE}.HorizonRef ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.Identifier ;;
  }

  dimension: item_type {
    type: string
    sql: ${TABLE}.ItemType ;;
  }

  dimension: land_area {
    type: string
    sql: ${TABLE}.LandArea ;;
  }

  dimension: last_activity_date {
    type: string
    sql: ${TABLE}.LastActivityDate ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.LastModified ;;
  }

  dimension: lastactivityby {
    type: string
    sql: ${TABLE}.Lastactivityby ;;
  }

  dimension: lastactivitysubject {
    type: string
    sql: ${TABLE}.Lastactivitysubject ;;
  }

  dimension: lastactivitytype {
    type: string
    sql: ${TABLE}.Lastactivitytype ;;
  }

  dimension: lastyearrenovated0 {
    type: string
    sql: ${TABLE}.Lastyearrenovated0 ;;
  }

  dimension: location_classification {
    type: string
    sql: ${TABLE}.LocationClassification ;;
  }

  dimension: market_type {
    type: string
    sql: ${TABLE}.MarketType ;;
  }

  dimension: metropolitain_area {
    type: string
    sql: ${TABLE}.MetropolitainArea ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.ModifiedBy ;;
  }

  dimension: my_favorite {
    type: string
    sql: ${TABLE}.MyFavorite ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: north_american_market {
    type: string
    sql: ${TABLE}.NorthAmericanMarket ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: numberof_floors {
    type: string
    sql: ${TABLE}.NumberofFloors ;;
  }

  dimension: occupancy {
    type: string
    sql: ${TABLE}.Occupancy ;;
  }

  dimension: parking_ratio {
    type: string
    sql: ${TABLE}.ParkingRatio ;;
  }

  dimension: parking_space {
    type: string
    sql: ${TABLE}.ParkingSpace ;;
  }

  dimension: personal_notes {
    type: string
    sql: ${TABLE}.PersonalNotes ;;
  }

  dimension: portfolioor_single_asset {
    type: string
    sql: ${TABLE}.PortfolioorSingleAsset ;;
  }

  dimension: primary_address_city {
    type: string
    sql: ${TABLE}.PrimaryAddress_City ;;
  }

  dimension: primary_address_country {
    type: string
    sql: ${TABLE}.PrimaryAddress_Country ;;
  }

  dimension: primary_address_full_address {
    type: string
    sql: ${TABLE}.PrimaryAddress_FullAddress ;;
  }

  dimension: primary_address_state {
    type: string
    sql: ${TABLE}.PrimaryAddress_State ;;
  }

  dimension: primary_address_street {
    type: string
    sql: ${TABLE}.PrimaryAddress_Street ;;
  }

  dimension: primary_address_street2 {
    type: string
    sql: ${TABLE}.PrimaryAddress_Street2 ;;
  }

  dimension: primary_address_zip {
    type: string
    sql: ${TABLE}.PrimaryAddress_Zip ;;
  }

  dimension: primarycontactcity {
    type: string
    sql: ${TABLE}.Primarycontactcity ;;
  }

  dimension: primarycontactemail {
    type: string
    sql: ${TABLE}.Primarycontactemail ;;
  }

  dimension: primarycontactphone {
    type: string
    sql: ${TABLE}.Primarycontactphone ;;
  }

  dimension: property_description_overviewandspecification {
    type: string
    sql: ${TABLE}.PropertyDescriptionOverviewandspecification ;;
  }

  dimension: property_picture {
    type: string
    sql: ${TABLE}.PropertyPicture ;;
  }

  dimension: property_region {
    type: string
    sql: ${TABLE}.PropertyRegion ;;
  }

  dimension: property_subregion {
    type: string
    sql: ${TABLE}.PropertySubregion ;;
  }

  dimension: propertysub_type0 {
    type: string
    sql: ${TABLE}.Propertysub_type0 ;;
  }

  dimension: propertytype {
    type: string
    sql: ${TABLE}.Propertytype ;;
  }

  dimension: r {
    type: string
    sql: ${TABLE}.R ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: rent_rsf {
    type: string
    sql: ${TABLE}.Rent_RSF ;;
  }

  dimension: rentable_area {
    type: string
    sql: ${TABLE}.RentableArea ;;
  }

  dimension: simple_search_field {
    type: string
    sql: ${TABLE}.SimpleSearchField ;;
  }

  dimension: sub_use {
    type: string
    sql: ${TABLE}.SubUse ;;
  }

  dimension: submarket {
    type: string
    sql: ${TABLE}.Submarket ;;
  }

  dimension: suites {
    type: string
    sql: ${TABLE}.Suites ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.Tags ;;
  }

  dimension: target_latest_investment_date {
    type: string
    sql: ${TABLE}.TargetLatestInvestmentDate ;;
  }

  dimension: target_value {
    type: string
    sql: ${TABLE}.TargetValue ;;
  }

  dimension: tax_id {
    type: string
    sql: ${TABLE}.TaxID ;;
  }

  dimension: team_location {
    type: string
    sql: ${TABLE}.TeamLocation ;;
  }

  dimension: totalinvestmentamount {
    type: string
    sql: ${TABLE}.Totalinvestmentamount ;;
  }

  dimension: underwrite {
    type: string
    sql: ${TABLE}.Underwrite ;;
  }

  dimension: unitof_measure_land {
    type: string
    sql: ${TABLE}.UnitofMeasure_Land ;;
  }

  dimension: unitofmeasure_rentable_area_ {
    type: string
    sql: ${TABLE}.Unitofmeasure_RentableArea_ ;;
  }

  dimension: unitofmeasurestallunits {
    type: string
    sql: ${TABLE}.Unitofmeasurestallunits ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.Units ;;
  }

  dimension: year_built {
    type: string
    sql: ${TABLE}.YearBuilt ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
