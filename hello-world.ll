; llvm ir hello world

declare i32 @printf(ptr, ...)
@str = global [ 13 x i8 ] c"hello world\0a\00"

define i32 @main(){

    %result = call i32 @printf(ptr @str)
    %check = icmp eq i32 %result, 12

    br i1 %check, label %success, label %fail 

success:
    ret i32 0

fail:
    ret i32 %result
}