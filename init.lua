require("config.lazy")
require("config.keymaps")

-- Вместо ошибок о попытках выйти без сохранения выдавать запрос с подтверждением дейситвий
-- Можно установить запрос на конкретное действие, например, :confirm quitall
vim.opt.confirm = true

-- Использовать системный буфер обмена
vim.opt.clipboard = "unnamedplus"

-- Установить опцию termguicolors для правильного отображения цветов в терминале
vim.opt.termguicolors = true

-- Показывать абсолютные (number) или относительные (relativenumber) номера строк
-- Плагин vim-numbertoggle автоматически переключает режим отображения строк
vim.opt.number = true

-- Подсветить текущую строку
vim.opt.cursorline = true

-- Переносить длинные строки
vim.opt.wrap = true

-- Заменять таб на tabstop пробелов
vim.opt.expandtab = true
vim.opt.tabstop = 4
-- Заменять таб в начале строки на shiftwidth пробелов
vim.opt.smarttab = true
vim.opt.shiftwidth = 4

-- Подстраивать новые строки под предыдущий отступ
vim.opt.smartindent = true

-- Устанавливать в качестве текущей дирекорию редактируемого файла
-- NB! При установке этой опции некоторые плагины могут работать некорректно, если они делают предположения о текущем каталоге 
-- см.: https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
vim.opt.autochdir = true

-- Включить хоткеи для кириллической раскладки (при использовании плагина vimplugin-ruscmd не требуется)
-- vim.opt.langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

-- Отображать непечатаемые символы пробелов и конца строк
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

-- При открытии терминала переключиться в режим вставки (при использовании плагина bufterm не требуется)
-- vim.api.nvim_command("autocmd TermOpen,BufEnter * if &buftype == 'terminal' | :startinsert | endif")
--[[
vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
    pattern = { "*" },
    callback = function()
        if vim.opt.buftype:get() == "terminal" then
            vim.cmd(":startinsert")
        end
    end
})
]]

