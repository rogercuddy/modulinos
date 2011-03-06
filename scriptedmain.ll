@msg_directory = internal constant [15 x i8] c"Directory: %s\0A\00"
@msg_program = internal constant [13 x i8] c"Program: %s\0A\00"
@msg_argc = internal constant [20 x i8] c"Number of Args: %d\0A\00"
@msg_arg = internal constant [10 x i8] c"Arg = %s\0A\00"

declare i32 @printf(i8* noalias nocapture, ...)
declare i8* @getcwd(i8*, i32)

define i32 @main(i32 %argc, i8** %argv) {
	%cwd = alloca [1024 x i8]

	%cwd_ptr = getelementptr inbounds [1024 x i8]* %cwd, i32 0, i32 0

	call i8* @getcwd(i8* %cwd_ptr, i32 1024)

	call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @msg_directory, i32 0, i32 0), i8* %cwd_ptr)

	%program_ptr = getelementptr inbounds i8** %argv, i32 0

	%program = load i8** %program_ptr

	call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @msg_program, i32 0, i32 0), i8* %program)

	call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @msg_argc, i32 0, i32 0), i32 %argc)

	%i = alloca i32
	store i32 0, i32* %i
	br label %for_args

	for_args:

		%i_val = load i32* %i

		%arg_ptr = getelementptr inbounds i8** %argv, i32 %i_val
		%arg = load i8** %arg_ptr
		call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @msg_arg, i32 0, i32 0), i8* %arg)

		%new_i_val = add i32 %i_val, 1
		store i32 %new_i_val, i32* %i

		%more_args = icmp slt i32 %new_i_val, %argc
		br i1 %more_args, label %for_args, label %end_for_args

	end_for_args:

	ret i32 0
}