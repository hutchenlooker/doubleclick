view: match_table_browsers {
  sql_table_name: (select * from `ca-pr-mrk.Doubleclick.match_table_browsers_226602` where _LATEST_DATE = _DATA_DATE)
    ;;

  dimension: browser_platform {
    type: string
    sql: ${TABLE}.Browser_Platform ;;
  }

  dimension: browser_platform_id {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.Browser_Platform_ID ;;
  }
}