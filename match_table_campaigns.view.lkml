view: match_table_campaigns {
  sql_table_name: (select * from `canada-poc17000083.Doubleclick.match_table_campaigns_226602` where _LATEST_DATE = _DATA_DATE)
    ;;

  dimension: advertiser_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Advertiser_ID ;;
  }

  dimension: billing_invoice_code {
    type: string
    sql: ${TABLE}.Billing_Invoice_Code ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.Campaign ;;
  }

  dimension_group: campaign_end {
    type: time
    datatype: yyyymmdd
    timeframes: [date, week, month, year]
    sql: ${TABLE}.Campaign_End_Date ;;
  }

  dimension: campaign_id {
    hidden: yes
    type: string
    sql: ${TABLE}.Campaign_ID ;;
  }

  dimension_group: campaign_start {
    type: time
    datatype: yyyymmdd
    timeframes: [date, week, month, year]
    sql: ${TABLE}.Campaign_Start_Date ;;
  }

  dimension_group: today {
    type: time
    timeframes: [raw, date]
    sql: current_date() ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${today_date} between ${campaign_start_date} and ${campaign_end_date} ;;
  }

}
