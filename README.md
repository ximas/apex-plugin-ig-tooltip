# apex-plugin-ig-tooltip
Tooltip plugin for Oracle APEX Interactive Grid

Install Steps
- import xs-plugin-ig-tooltip-install.sql as a plugin to the target app

Usage Steps
- ensure the Interactive Grid source's tooltip column is a string containing two values separated by a double colon (::). The first value is the cell value, the second is the tooltip; e.g. `select cell_value || '::' || cell_tooltip my_tooltip_col, ... from ...`
- select "XS ig-plugin" as the column type for the Interactive Grid tooltip column and set "Read Only -> Type" to always

Known issues
- The tooltip can go off the page when placed on the right side

TODOs
- add attribute for custom split value instead of "::"
- add attribute for custom tooltip colour
- raiser error if Read Only is not set
