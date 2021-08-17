using Base: Int64
using DelimitedFiles

readdlm("Euler70Keylog.txt",'', Int64, '\n'; header=false, skipstart=0, skipblanks=true, use_mmap, quotes=true, dims, comments=false, comment_char='#')


