INTERFACE if_xco_cp_gen_ttyp_d_o_put_sct PUBLIC.
  METHODS:
    add_object
      IMPORTING
        iv_name          TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_ttyp_d_o_put_obj,
    get_object
      IMPORTING
        iv_name          TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_ttyp_d_o_put_obj,
    remove_object
      IMPORTING
        iv_name TYPE sxco_ad_object_name.
ENDINTERFACE.