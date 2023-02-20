CLASS cl_xco_dtel_o_local DEFINITION
  PUBLIC INHERITING FROM cl_xco_dtel_origin
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    INTERFACES:
      if_xco_dtel_cacheable_origin FINAL METHODS enable_caching disable_caching.

    INTERFACES if_xco_gen_dtel_origin.
  PROTECTED SECTION.
    METHODS:
      get_read_access REDEFINITION,

      get_cache REDEFINITION.

ENDCLASS.

CLASS cl_xco_dtel_o_local IMPLEMENTATION.
ENDCLASS.