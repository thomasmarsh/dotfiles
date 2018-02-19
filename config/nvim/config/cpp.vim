au BufNewFile,BufRead *.mm  setf objcpp
au BufNewFile,BufRead *.cpp set syntax=cpp11
au BufNewFile,BufRead *.cc  set syntax=cpp11

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++1z -stdlib=libc++'
