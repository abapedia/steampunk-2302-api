CLASS cl_xco_ad_built_in_type DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_xco_printable.
    INTERFACES if_xco_gen_doma_format.
    INTERFACES if_xco_domain_format.
    INTERFACES if_xco_gen_dtel_data_type.
    INTERFACES if_xco_dtel_data_type.
    INTERFACES if_xco_gen_tabl_field_type_str.
    INTERFACES if_xco_str_component_type.

    INTERFACES if_xco_aps_component_type.
    INTERFACES if_xco_gen_tabl_field_type_dbt.
    INTERFACES if_xco_dbt_field_type.
    INTERFACES if_xco_gen_tabl_field_type_gtt.
    INTERFACES if_xco_gtt_field_type.
    INTERFACES if_xco_gen_ttyp_row_type.
    INTERFACES if_xco_ttyp_row_type.
    INTERFACES if_xco_gen_drty_std_type.
    INTERFACES if_xco_ddl_expr_cast_dtype.
    INTERFACES if_xco_gen_ddls_param_dtype.
    INTERFACES if_xco_gen_ddls_field_type.

    TYPES tv_type TYPE c LENGTH 4.
    TYPES tv_length TYPE n LENGTH 6.
    TYPES tv_decimals TYPE n LENGTH 6.
    DATA type TYPE tv_type READ-ONLY.
    DATA length TYPE tv_length READ-ONLY.
    DATA decimals TYPE tv_decimals READ-ONLY.
    DATA abap_type TYPE REF TO cl_xco_abap_t_built_in READ-ONLY.
ENDCLASS.

CLASS cl_xco_ad_built_in_type IMPLEMENTATION.
ENDCLASS.