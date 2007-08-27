; RUN: llvm-as < %s | llc -march=x86 | grep {call	memmove}

declare void @llvm.memmove.i64(i8* %d, i8* %s, i64 %l, i32 %a)

define void @foo(i8* %d, i8* %s, i64 %l)
{
  call void @llvm.memmove.i64(i8* %d, i8* %s, i64 %l, i32 1)
  ret void
}
