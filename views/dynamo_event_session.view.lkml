view: dynamo_event_session {
  sql_table_name: training.dynamo_event_session ;;

  dimension: _es {
    type: string
    sql: ${TABLE}._es ;;
  }

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: addr {
    type: string
    sql: ${TABLE}.Addr ;;
  }

  dimension: addr_city {
    type: string
    sql: ${TABLE}.AddrCity ;;
  }

  dimension: addr_country {
    type: string
    sql: ${TABLE}.AddrCountry ;;
  }

  dimension: addr_is_geo_processed {
    type: string
    sql: ${TABLE}.AddrIsGeoProcessed ;;
  }

  dimension: addr_latitude {
    type: string
    sql: ${TABLE}.AddrLatitude ;;
  }

  dimension: addr_longitude {
    type: string
    sql: ${TABLE}.AddrLongitude ;;
  }

  dimension: addr_state {
    type: string
    sql: ${TABLE}.AddrState ;;
  }

  dimension: addr_street {
    type: string
    sql: ${TABLE}.AddrStreet ;;
  }

  dimension: addr_street2 {
    type: string
    sql: ${TABLE}.AddrStreet2 ;;
  }

  dimension: addr_street3 {
    type: string
    sql: ${TABLE}.AddrStreet3 ;;
  }

  dimension: addr_zip {
    type: string
    sql: ${TABLE}.AddrZIP ;;
  }

  dimension: attire {
    type: string
    sql: ${TABLE}.Attire ;;
  }

  dimension: businessphone {
    type: string
    sql: ${TABLE}.Businessphone ;;
  }

  dimension: conference_feedback {
    type: string
    sql: ${TABLE}.ConferenceFeedback ;;
  }

  dimension: conference_feedback_plain_text {
    type: string
    sql: ${TABLE}.ConferenceFeedback_PlainText ;;
  }

  dimension: contact_info_primary_address_geo_radius {
    type: string
    sql: ${TABLE}.ContactInfo_PrimaryAddress_GeoRadius ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension: data_provider_id {
    type: string
    sql: ${TABLE}.DataProviderId ;;
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

  dimension: description_plain_text {
    type: string
    sql: ${TABLE}.Description_PlainText ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.Duration ;;
  }

  dimension: entity_key {
    type: string
    sql: ${TABLE}.EntityKey ;;
  }

  dimension: eslocation {
    type: string
    sql: ${TABLE}.ESLocation ;;
  }

  dimension: essessionname {
    type: string
    sql: ${TABLE}.ESSessionname ;;
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

  dimension: identifier {
    type: string
    sql: ${TABLE}.Identifier ;;
  }

  dimension: item_type {
    type: string
    sql: ${TABLE}.ItemType ;;
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

  dimension: location_plain_text {
    type: string
    sql: ${TABLE}.Location_PlainText ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.ModifiedBy ;;
  }

  dimension: opentoattendeesoftype {
    type: string
    sql: ${TABLE}.Opentoattendeesoftype ;;
  }

  dimension: personal_notes {
    type: string
    sql: ${TABLE}.PersonalNotes ;;
  }

  dimension: picture {
    type: string
    sql: ${TABLE}.Picture ;;
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

  dimension: primary_address_street3 {
    type: string
    sql: ${TABLE}.PrimaryAddress_Street3 ;;
  }

  dimension: primary_address_zip {
    type: string
    sql: ${TABLE}.PrimaryAddress_Zip ;;
  }

  dimension: session_endtime {
    type: string
    sql: ${TABLE}.SessionEndtime ;;
  }

  dimension_group: session_starttime {
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
    sql: ${TABLE}.SessionStarttime ;;
  }

  dimension: simple_search_field {
    type: string
    sql: ${TABLE}.SimpleSearchField ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.Tags ;;
  }

  measure: count {
    type: count
    drill_fields: [essessionname]
  }
}
