INTERFACE if_xco_cp_gen_xslt_d_o_put_sct PUBLIC.
  METHODS:
    add_object
      IMPORTING
        iv_name          TYPE sxco_tf_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_xslt_d_o_put_obj,
    get_object
      IMPORTING
        iv_name          TYPE sxco_tf_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_xslt_d_o_put_obj,
    remove_object
      IMPORTING
        iv_name TYPE sxco_tf_object_name.
ENDINTERFACE.