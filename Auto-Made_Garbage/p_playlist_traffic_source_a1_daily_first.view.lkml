view: p_playlist_traffic_source_a1_daily_first {
  sql_table_name: YoutubeData.p_playlist_traffic_source_a1_daily_first ;;

  dimension: average_view_duration_seconds {
    type: number
    sql: ${TABLE}.average_view_duration_seconds ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.channel_id ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: live_or_on_demand {
    type: string
    sql: ${TABLE}.live_or_on_demand ;;
  }

  dimension: playlist_id {
    type: string
    sql: ${TABLE}.playlist_id ;;
  }

  dimension: playlist_saves_added {
    type: number
    sql: ${TABLE}.playlist_saves_added ;;
  }

  dimension: playlist_saves_removed {
    type: number
    sql: ${TABLE}.playlist_saves_removed ;;
  }

  dimension: playlist_starts {
    type: number
    sql: ${TABLE}.playlist_starts ;;
  }

  dimension: subscribed_status {
    type: string
    sql: ${TABLE}.subscribed_status ;;
  }

  dimension: traffic_source_detail {
    type: string
    sql: ${TABLE}.traffic_source_detail ;;
  }

  dimension: traffic_source_type {
    type: number
    sql: ${TABLE}.traffic_source_type ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  dimension: watch_time_minutes {
    type: number
    sql: ${TABLE}.watch_time_minutes ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
