@.str = private unnamed_addr constant [13 x i8] c"\1Bc\1B[42;30m%d\00", align 1
declare i32 @printf(i8* nocapture readonly, ...) #0
define i32 @printn(i32 %n) #0 {
  %1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %n)
  ret i32 0
}

define i32 @main() #2 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 50, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i32 (i32) @printn(i32 %2) #1
  store i32 %3, i32* %i, align 4
  ret i32 0
}

