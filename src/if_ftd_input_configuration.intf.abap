INTERFACE if_ftd_input_configuration
  PUBLIC.
  METHODS set_importing_parameter
    IMPORTING
      name  TYPE abap_parmname
      value TYPE any
    RETURNING
      VALUE(self) TYPE REF TO if_ftd_input_configuration
    RAISING
      cx_ftd_parameter_not_found.
  METHODS set_changing_parameter
    IMPORTING
      name  TYPE abap_parmname
      value TYPE any
    RETURNING
      VALUE(self) TYPE REF TO if_ftd_input_configuration
    RAISING
      cx_ftd_parameter_not_found.
  METHODS set_table_parameter
    IMPORTING
      name  TYPE abap_parmname
      value TYPE any
    RETURNING
      VALUE(self) TYPE REF TO if_ftd_input_configuration
    RAISING
      cx_ftd_parameter_not_found.

ENDINTERFACE.