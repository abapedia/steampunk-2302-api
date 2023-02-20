INTERFACE if_xco_aps_component_content
  PUBLIC.

  TYPES:
    BEGIN OF ts_content,
      type               TYPE REF TO if_xco_aps_component_type,
      language_indicator TYPE abap_bool,
      currency_quantity  TYPE if_xco_tab_field_content=>ts_currency_quantity,
    END OF ts_content.

  DATA component TYPE REF TO if_xco_aps_component READ-ONLY.
  DATA read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS get_type
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(ro_type) TYPE REF TO if_xco_aps_component_type.
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
ENDINTERFACE.