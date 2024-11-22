-- The return statement is returning a table of tables. The outer table is a list of plugin specifications. Each entry in the list is a single plugin specification.
-- The first entry in the plugin specification is the name of the plugin to load, specified in short URL form. The next two entries in the table, name and opts are Lazy recognized keys that direct Lazy on how to configure this plugin. opts can be a table or a function (opts is a table in the example above) that contains the configuration for the plugin. The structure of what is inside of opts is up to each plugin.
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
}
