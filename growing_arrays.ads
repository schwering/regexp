-- Abstract:
--
-- Some utility functions for dynamically growing arrays.
--
-- Copyright 2010 Christoph Schwering

package Growing_Arrays is
   pragma Pure;

   generic
      type Index_Type is range <>;
      type Element is private;
      type Array_Type is array (Index_Type range <>) of Element;
      type Array_Access is access Array_Type;
      Default_Element : in Element;
   procedure Gen_Grow
     (Arr   : in out Array_Access;
      Index : in     Index_Type);

   generic
      type First_Index_Type is range <>;
      type Second_Index_Type is range <>;
      type Element is private;
      type Array_Type is array (First_Index_Type range <>,
                                Second_Index_Type range <>) of Element;
      type Array_Access is access Array_Type;
      Default_Element : in Element;
   procedure Gen_Grow_2d
     (Arr    : in out Array_Access;
      Index1 : in     First_Index_Type;
      Index2 : in     Second_Index_Type);

end Growing_Arrays;

