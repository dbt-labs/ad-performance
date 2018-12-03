# -------------------------------------------------------- AD PERFORMANCE

view: ad_performance {
  extends: [ad_performance_core]
  sql_table_name: {{_user_attributes['dbt_schema']}}.fct_ad_performance ;;

  dimension: id {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: criteria_id {
    label: "Criteria ID"
    group_label: "Campaign Parameters"
    type: number
    sql: ${TABLE}.criteria_id ;;
  }

  dimension: ad_group_id {
    label: "Ad Group ID"
    group_label: "Campaign Parameters"
    type: number
    sql: ${TABLE}.ad_group_id ;;
  }

  dimension: ad_group_name {
    group_label: "Campaign Parameters"
    type: string
    sql: ${TABLE}.ad_group_name ;;
  }

  dimension: campaign_id {
    label: "Campaign ID"
    group_label: "Campaign Parameters"
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    group_label: "Campaign Parameters"
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

}

# -------------------------------------------------------- AD PERFORMANCE CORE

view: ad_performance_core {
  extension: required

  # ----------------------------------------------------- DIMENSIONS

  dimension_group: campaign {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.campaign_date ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: url_host {
    type: string
    sql: ${TABLE}.url_host ;;
  }

  dimension: url_path {
    type: string
    sql: ${TABLE}.url_path ;;
  }

  dimension: utm_campaign {
    label: "utm_campaign"
    group_label: "Attribution"
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_content {
    label: "utm_content"
    group_label: "Attribution"
    type: string
    sql: ${TABLE}.utm_content ;;
  }

  dimension: utm_medium {
    label: "utm_medium"
    group_label: "Attribution"
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    label: "utm_source"
    group_label: "Attribution"
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  dimension: utm_term {
    label: "utm_term"
    group_label: "Attribution"
    type: string
    sql: ${TABLE}.utm_term ;;
  }

  # ----------------------------------------------------- RAW NUMBERS

  dimension: clicks_raw {
    type: number
    sql: ${TABLE}.clicks ;;
    hidden: yes
  }

  dimension: impressions_raw {
    type: number
    sql: ${TABLE}.impressions ;;
    hidden: yes
  }

  dimension: spend_raw {
    type: number
    sql: ${TABLE}.spend ;;
    hidden: yes
  }

  # ----------------------------------------------------- MEASURES

  measure: impressions {
    type: sum
    sql: ${impressions_raw} ;;
    value_format_name: decimal_0
  }

  measure: clicks {
    type: sum
    sql: ${clicks_raw} ;;
    value_format_name: decimal_0
  }

  measure: spend {
    type: sum
    sql: ${spend_raw} ;;
    value_format_name: usd_0
  }

  measure: ctr {
    label: "CTR"
    description: "Click-Through Rate"
    type: number
    sql:  ${clicks}::float / nullif(${impressions}, 0) ;;
    value_format_name: percent_2
  }

  measure: cpc {
    label: "CPC"
    description: "Cost per Click"
    type: number
    sql:  ${spend}::float / nullif(${clicks}, 0) ;;
    value_format_name: usd
  }

  measure: cpm {
    label: "CPM"
    description: "Cost per Thousand Impressions"
    type: number
    sql:  ${spend}::float / nullif(${impressions}, 0) * 1000 ;;
    value_format_name: usd
  }
}
