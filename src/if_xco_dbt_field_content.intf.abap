INTERFACE if_xco_dbt_field_content
  PUBLIC.
  TYPES tv_short_description TYPE c LENGTH 60.
  TYPES:
    BEGIN OF ts_content,
      short_description  TYPE tv_short_description,
      key_indicator      TYPE abap_bool,
      not_null           TYPE abap_bool,
      type               TYPE REF TO if_xco_dbt_field_type,
      language_indicator TYPE abap_bool,
      currency_quantity  TYPE if_xco_tab_field_content=>ts_currency_quantity,
    END OF ts_content.
  DATA field TYPE REF TO if_xco_dbt_field READ-ONLY.
  DATA read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.
  METHODS get_short_description
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rv_short_description) TYPE tv_short_description.
  METHODS get_key_indicator
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rv_key_indicator) TYPE abap_bool.
  METHODS get_not_null
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rv_not_null) TYPE abap_bool.
  METHODS get_type
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(ro_type) TYPE REF TO if_xco_dbt_field_type.
  METHODS get_language_indicator
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rv_language_indicator) TYPE abap_bool.
  METHODS get_currency_quantity
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rs_currency_quantity) TYPE if_xco_tab_field_content=>ts_currency_quantity.
  METHODS get
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rs_content) TYPE ts_content.
  METHODS get_underlying_built_in_type
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(ro_underlying_built_in_type) TYPE REF TO cl_xco_ad_built_in_type.
ENDINTERFACE.