- dashboard: core_digital_advertising_kpis
  title: Core Digital Advertising KPIs
  layout: newspaper
  elements:
  - title: Clicks by Platform
    name: Clicks by Platform
    model: # your model name here
    explore: ad_performance
    type: looker_line
    fields:
    - ad_performance.campaign_date
    - ad_performance.platform
    - ad_performance.clicks
    pivots:
    - ad_performance.platform
    fill_fields:
    - ad_performance.campaign_date
    sorts:
    - ad_performance.campaign_date desc
    - ad_performance.platform
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: adwords - ad_performance.clicks
        name: adwords
        axisId: ad_performance.clicks
      - id: bing ads - ad_performance.clicks
        name: bing ads
        axisId: ad_performance.clicks
      - id: facebook ads - ad_performance.clicks
        name: facebook ads
        axisId: ad_performance.clicks
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Campaign Date: ad_performance.campaign_date
    row: 0
    col: 8
    width: 8
    height: 6
    
  - title: Impressions by Platform
    name: Impressions by Platform
    model:  # your model name here
    explore: ad_performance
    type: looker_line
    fields:
    - ad_performance.campaign_date
    - ad_performance.impressions
    - ad_performance.platform
    pivots:
    - ad_performance.platform
    fill_fields:
    - ad_performance.campaign_date
    sorts:
    - ad_performance.campaign_date desc
    - ad_performance.platform
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: adwords - ad_performance.impressions
        name: adwords
        axisId: ad_performance.impressions
      - id: bing ads - ad_performance.impressions
        name: bing ads
        axisId: ad_performance.impressions
      - id: facebook ads - ad_performance.impressions
        name: facebook ads
        axisId: ad_performance.impressions
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Campaign Date: ad_performance.campaign_date
    row: 0
    col: 0
    width: 8
    height: 6
    
  - title: Spend by Platform
    name: Spend by Platform
    model:  # your model name here
    explore: ad_performance
    type: looker_line
    fields:
    - ad_performance.campaign_date
    - ad_performance.platform
    - ad_performance.spend
    pivots:
    - ad_performance.platform
    fill_fields:
    - ad_performance.campaign_date
    sorts:
    - ad_performance.campaign_date desc
    - ad_performance.platform
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: adwords - ad_performance.spend
        name: adwords
        axisId: ad_performance.spend
      - id: bing ads - ad_performance.spend
        name: bing ads
        axisId: ad_performance.spend
      - id: facebook ads - ad_performance.spend
        name: facebook ads
        axisId: ad_performance.spend
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Campaign Date: ad_performance.campaign_date
    row: 0
    col: 16
    width: 8
    height: 6
    
  - title: CPM by Platform
    name: CPM by Platform
    model: # your model name here
    explore: ad_performance
    type: looker_line
    fields:
    - ad_performance.campaign_date
    - ad_performance.platform
    - ad_performance.cpm
    pivots:
    - ad_performance.platform
    fill_fields:
    - ad_performance.campaign_date
    sorts:
    - ad_performance.campaign_date desc
    - ad_performance.platform
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: adwords - ad_performance.cpm
        name: adwords
        axisId: ad_performance.cpm
      - id: bing ads - ad_performance.cpm
        name: bing ads
        axisId: ad_performance.cpm
      - id: facebook ads - ad_performance.cpm
        name: facebook ads
        axisId: ad_performance.cpm
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Campaign Date: ad_performance.campaign_date
    row: 6
    col: 8
    width: 8
    height: 6
    
  - title: CTR by Platform
    name: CTR by Platform
    model: # your model name here
    explore: ad_performance
    type: looker_line
    fields:
    - ad_performance.campaign_date
    - ad_performance.platform
    - ad_performance.ctr
    pivots:
    - ad_performance.platform
    fill_fields:
    - ad_performance.campaign_date
    sorts:
    - ad_performance.campaign_date desc
    - ad_performance.platform
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: adwords - ad_performance.ctr
        name: adwords
        axisId: ad_performance.ctr
      - id: bing ads - ad_performance.ctr
        name: bing ads
        axisId: ad_performance.ctr
      - id: facebook ads - ad_performance.ctr
        name: facebook ads
        axisId: ad_performance.ctr
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Campaign Date: ad_performance.campaign_date
    row: 6
    col: 0
    width: 8
    height: 6
    
  - title: CPC by Platform
    name: CPC by Platform
    model: # your model name here
    explore: ad_performance
    type: looker_line
    fields:
    - ad_performance.campaign_date
    - ad_performance.platform
    - ad_performance.cpc
    pivots:
    - ad_performance.platform
    fill_fields:
    - ad_performance.campaign_date
    sorts:
    - ad_performance.campaign_date desc
    - ad_performance.platform
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: adwords - ad_performance.cpc
        name: adwords
        axisId: ad_performance.cpc
      - id: bing ads - ad_performance.cpc
        name: bing ads
        axisId: ad_performance.cpc
      - id: facebook ads - ad_performance.cpc
        name: facebook ads
        axisId: ad_performance.cpc
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Campaign Date: ad_performance.campaign_date
    row: 6
    col: 16
    width: 8
    height: 6
    
  - title: Facebook and Adwords Daily Performance KPIs
    name: Facebook and Adwords Daily Performance KPIs
    model: # your model name here
    explore: ad_performance
    type: table
    fields:
    - ad_performance.platform
    - ad_performance.campaign_date
    - ad_performance.spend
    - ad_performance.impressions
    - ad_performance.clicks
    - ad_performance.cpm
    - ad_performance.cpc
    - ad_performance.ctr
    pivots:
    - ad_performance.platform
    fill_fields:
    - ad_performance.campaign_date
    filters:
      ad_performance.platform: adwords,facebook ads
    sorts:
    - ad_performance.campaign_date desc
    - ad_performance.platform desc
    limit: 500
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Campaign Date: ad_performance.campaign_date
    row: 12
    col: 0
    width: 24
    height: 9
    
  filters:
  - name: Campaign Date
    title: Campaign Date
    type: field_filter
    default_value: 90 days ago for 90 days
    allow_multiple_values: true
    required: false
    model: # your model name here
    explore: ad_performance
    listens_to_filters: []
    field: ad_performance.campaign_date
