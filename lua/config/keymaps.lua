-- Изменение клавиши <leader> на пробел
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- Выход из режима вставки
map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

-- Копирование и вставка из буфера
map('v', '<C-c>', '"+yi', {noremap = true, silent = false})
map('v', '<C-x>', '"+c', {noremap = true, silent = false})
map('v', '<C-v>', 'c<ESC>"+p', {noremap = true, silent = false})
map('i', '<C-v>', '<ESC>"+pa', {noremap = true, silent = false})

--Undo и redo
map('i', '<C-z>', '<Cmd>undo<CR>', {noremap = true, silent = false})
map('i', '<C-y>', '<Cmd>redo<CR>', {noremap = true, silent = false})

-- Табуляция блока выделенного текста
map('v', '<Tab>', '>gv', {noremap = true, silent = false})
map('v', '<S-Tab>', '<gv', {noremap = true, silent = false})

-- Переход в режим вставки левой клавишей мыши
-- map('n', '<LeftMouse>', 'i', {noremap = true, silent = false})

-- Сохранить файл по Ctrl+S
map('i', '<C-s>', '<Cmd>w<CR>', {noremap = true, silent = false})
map('n', '<C-s>', '<Cmd>w<CR>', {noremap = true, silent = false})

-- Выход из nvim двойным esc
map('n', '<ESC><ESC>', '<Cmd>q<CR>', {noremap = true, silent = false})
-- map('i', '<ESC><ESC>', '<Cmd>q<CR>', {noremap = true, silent = false})

-- Переключение между буферами
map('n', '<Tab>', '<Cmd>bn<CR>', {noremap = true, silent = false})
map('n', '<S-Tab>', '<Cmd>bp<CR>', {noremap = true, silent = false})

-- Комбинация gc работает, а # нет!?
-- map('v', '#', 'gc', {noremap = true, silent = false})

-- Удаление строки двойным d
map('i', 'dd', '<Cmd>d<CR>', {noremap = true, silent = false})

-- Показать/Скрыть Neotree
-- map('n', '<C-t>', '<Cmd>Neotree toggle<CR>', {noremap = true, silent = false})
map('n', '<F3>', '<Cmd>Neotree toggle<CR>', {noremap = true, silent = false})

-- Открыть/Закрыть терминал
map('n', '<F4>', '<Cmd>BufTermToggle<CR>', {noremap = true, silent = false})
map('t', '<F4>', '<Cmd>BufTermToggle<CR>', {noremap = true, silent = false})
map('t', '<ESC>', '<Cmd>BufTermToggle<CR>', {noremap = true, silent = false})
