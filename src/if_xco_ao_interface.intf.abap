INTERFACE if_xco_ao_interface PUBLIC.
  INTERFACES:
    if_xco_ao_object.

  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_ao_interface WITH DEFAULT KEY.

  ALIASES:
    name FOR if_xco_ao_object~name,

    check_syntax FOR if_xco_ao_object~check_syntax,

    type FOR if_xco_ao_object~type.

  DATA:
    component       TYPE REF TO if_xco_intf_component_factory READ-ONLY,
    components      TYPE REF TO if_xco_intf_components_factory READ-ONLY,
    implementations TYPE REF TO if_xco_intf_implementations_fc READ-ONLY.

  METHODS:
    set_api_state
      IMPORTING
        io_release_contract TYPE REF TO cl_xco_ars_release_contract OPTIONAL
        io_change_scenario  TYPE REF TO if_xco_cts_change_scenario
        io_api_state        TYPE REF TO cl_xco_ars_api_state,
    get_api_state
      IMPORTING
        io_release_contract TYPE REF TO cl_xco_ars_release_contract OPTIONAL
      RETURNING
        VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state,
    exists
      IMPORTING
        io_version       TYPE REF TO cl_xco_ao_version OPTIONAL
        io_origin        TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    content
      IMPORTING
        io_version        TYPE REF TO cl_xco_ao_version OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_intf_content.
ENDINTERFACE.