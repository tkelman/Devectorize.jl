module DeExpr
	
export
	# classes to express delayed expressions
	AbstractDeExpr,
	DeNumber,
	DeInt,
	DeTerminal,
	DeRef,
	DeCall,
	DeAssign,

	# function traits
	TCall,
	TFun,
	register_ewise_mathop,
	register_ewise_pred,
	
	# helper functions
	fsym,
	pretty,
	de_expr,
	ewise_shape,
	result_type,
	
	# core functions
	de_wrap,
	de_compile,
	get,
	
	# evaluation context abstract classes
	EvalContext,
	CPUContext,
	GPUContext,
	
	# Scalar back-end
	ScalarContext,
	de_vec_reader,
	de_col_reader,
	de_row_reader,
	
	# macros
	@devec,
	@inspect_devec
	
include("fun_traits.jl")
include("de_expr_base.jl")
include("de_compile_base.jl")
include("scalar_backend.jl")

end
