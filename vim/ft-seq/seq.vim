se sw=2 ts=2 et
set number
autocmd! BufWritePost *.seq silent exec "!ruby seq_socket.rb"
