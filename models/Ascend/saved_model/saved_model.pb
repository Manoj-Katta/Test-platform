кт	
╩н
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.02unknown8пФ
Ж
Adam/Item-Vector/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/Item-Vector/bias/v

+Adam/Item-Vector/bias/v/Read/ReadVariableOpReadVariableOpAdam/Item-Vector/bias/v*
_output_shapes
:*
dtype0
О
Adam/Item-Vector/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_nameAdam/Item-Vector/kernel/v
З
-Adam/Item-Vector/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Item-Vector/kernel/v*
_output_shapes

: *
dtype0
Ж
Adam/User-Vector/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/User-Vector/bias/v

+Adam/User-Vector/bias/v/Read/ReadVariableOpReadVariableOpAdam/User-Vector/bias/v*
_output_shapes
:*
dtype0
О
Adam/User-Vector/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_nameAdam/User-Vector/kernel/v
З
-Adam/User-Vector/kernel/v/Read/ReadVariableOpReadVariableOpAdam/User-Vector/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
: *
dtype0
З
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А *&
shared_nameAdam/dense_3/kernel/v
А
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	А *
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
: *
dtype0
З
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А *&
shared_nameAdam/dense_1/kernel/v
А
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	А *
dtype0

Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_2/bias/v
x
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes	
:А*
dtype0
З
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_2/kernel/v
А
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	А*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:А*
dtype0
Г
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	А*
dtype0
Ж
Adam/Item-Vector/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/Item-Vector/bias/m

+Adam/Item-Vector/bias/m/Read/ReadVariableOpReadVariableOpAdam/Item-Vector/bias/m*
_output_shapes
:*
dtype0
О
Adam/Item-Vector/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_nameAdam/Item-Vector/kernel/m
З
-Adam/Item-Vector/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Item-Vector/kernel/m*
_output_shapes

: *
dtype0
Ж
Adam/User-Vector/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/User-Vector/bias/m

+Adam/User-Vector/bias/m/Read/ReadVariableOpReadVariableOpAdam/User-Vector/bias/m*
_output_shapes
:*
dtype0
О
Adam/User-Vector/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_nameAdam/User-Vector/kernel/m
З
-Adam/User-Vector/kernel/m/Read/ReadVariableOpReadVariableOpAdam/User-Vector/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
: *
dtype0
З
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А *&
shared_nameAdam/dense_3/kernel/m
А
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	А *
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
: *
dtype0
З
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А *&
shared_nameAdam/dense_1/kernel/m
А
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	А *
dtype0

Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_2/bias/m
x
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes	
:А*
dtype0
З
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_2/kernel/m
А
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	А*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:А*
dtype0
Г
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	А*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
x
Item-Vector/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameItem-Vector/bias
q
$Item-Vector/bias/Read/ReadVariableOpReadVariableOpItem-Vector/bias*
_output_shapes
:*
dtype0
А
Item-Vector/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *#
shared_nameItem-Vector/kernel
y
&Item-Vector/kernel/Read/ReadVariableOpReadVariableOpItem-Vector/kernel*
_output_shapes

: *
dtype0
x
User-Vector/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameUser-Vector/bias
q
$User-Vector/bias/Read/ReadVariableOpReadVariableOpUser-Vector/bias*
_output_shapes
:*
dtype0
А
User-Vector/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *#
shared_nameUser-Vector/kernel
y
&User-Vector/kernel/Read/ReadVariableOpReadVariableOpUser-Vector/kernel*
_output_shapes

: *
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
: *
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А *
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	А *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
: *
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А *
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А *
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:А*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	А*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	А*
dtype0
}
serving_default_Item-InputPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
}
serving_default_User-InputPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
к
StatefulPartitionedCallStatefulPartitionedCallserving_default_Item-Inputserving_default_User-Inputdense_2/kerneldense_2/biasdense/kernel
dense/biasdense_3/kerneldense_3/biasdense_1/kerneldense_1/biasUser-Vector/kernelUser-Vector/biasItem-Vector/kernelItem-Vector/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_365302

NoOpNoOp
╤Q
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*МQ
valueВQB P B°P
▌
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
ж
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
ж
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias*
ж
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias*
ж
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias*
ж
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias*
ж
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias*
О
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
Z
0
1
!2
"3
)4
*5
16
27
98
:9
A10
B11*
Z
0
1
!2
"3
)4
*5
16
27
98
:9
A10
B11*
* 
░
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
6
Rtrace_0
Strace_1
Ttrace_2
Utrace_3* 
* 
┤
Viter

Wbeta_1

Xbeta_2
	Ydecay
Zlearning_ratemТmУ!mФ"mХ)mЦ*mЧ1mШ2mЩ9mЪ:mЫAmЬBmЭvЮvЯ!vа"vб)vв*vг1vд2vе9vж:vзAvиBvй*

[serving_default* 

0
1*

0
1*
* 
У
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

atrace_0* 

btrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

!0
"1*

!0
"1*
* 
У
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

htrace_0* 

itrace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

)0
*1*

)0
*1*
* 
У
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

otrace_0* 

ptrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

10
21*

10
21*
* 
У
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

vtrace_0* 

wtrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

90
:1*

90
:1*
* 
У
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

}trace_0* 

~trace_0* 
b\
VARIABLE_VALUEUser-Vector/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEUser-Vector/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

A0
B1*

A0
B1*
* 
Ч
non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

Дtrace_0* 

Еtrace_0* 
b\
VARIABLE_VALUEItem-Vector/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEItem-Vector/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

Лtrace_0* 

Мtrace_0* 
* 
C
0
1
2
3
4
5
6
7
	8*

Н0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
О	variables
П	keras_api

Рtotal

Сcount*

Р0
С1*

О	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/User-Vector/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/User-Vector/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/Item-Vector/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/Item-Vector/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/User-Vector/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/User-Vector/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/Item-Vector/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/Item-Vector/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
▌
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp&User-Vector/kernel/Read/ReadVariableOp$User-Vector/bias/Read/ReadVariableOp&Item-Vector/kernel/Read/ReadVariableOp$Item-Vector/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp-Adam/User-Vector/kernel/m/Read/ReadVariableOp+Adam/User-Vector/bias/m/Read/ReadVariableOp-Adam/Item-Vector/kernel/m/Read/ReadVariableOp+Adam/Item-Vector/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp-Adam/User-Vector/kernel/v/Read/ReadVariableOp+Adam/User-Vector/bias/v/Read/ReadVariableOp-Adam/Item-Vector/kernel/v/Read/ReadVariableOp+Adam/Item-Vector/bias/v/Read/ReadVariableOpConst*8
Tin1
/2-	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_365761
№
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_2/kerneldense_2/biasdense_1/kerneldense_1/biasdense_3/kerneldense_3/biasUser-Vector/kernelUser-Vector/biasItem-Vector/kernelItem-Vector/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/User-Vector/kernel/mAdam/User-Vector/bias/mAdam/Item-Vector/kernel/mAdam/Item-Vector/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/User-Vector/kernel/vAdam/User-Vector/bias/vAdam/Item-Vector/kernel/vAdam/Item-Vector/bias/v*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_365900м╨
Ю

°
G__inference_Item-Vector_layer_call_and_return_conditional_losses_364951

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
Ю

ї
C__inference_dense_1_layer_call_and_return_conditional_losses_364917

inputs1
matmul_readvariableop_resource:	А -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:          a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
├
Ц
(__inference_dense_3_layer_call_fn_365539

inputs
unknown:	А 
	unknown_0: 
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_364900o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ї<
║	
A__inference_model_layer_call_and_return_conditional_losses_365470
inputs_0
inputs_19
&dense_2_matmul_readvariableop_resource:	А6
'dense_2_biasadd_readvariableop_resource:	А7
$dense_matmul_readvariableop_resource:	А4
%dense_biasadd_readvariableop_resource:	А9
&dense_3_matmul_readvariableop_resource:	А 5
'dense_3_biasadd_readvariableop_resource: 9
&dense_1_matmul_readvariableop_resource:	А 5
'dense_1_biasadd_readvariableop_resource: <
*user_vector_matmul_readvariableop_resource: 9
+user_vector_biasadd_readvariableop_resource:<
*item_vector_matmul_readvariableop_resource: 9
+item_vector_biasadd_readvariableop_resource:
identityИв"Item-Vector/BiasAdd/ReadVariableOpв!Item-Vector/MatMul/ReadVariableOpв"User-Vector/BiasAdd/ReadVariableOpв!User-Vector/MatMul/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0|
dense_2/MatMulMatMulinputs_1%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         АБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0x
dense/MatMulMatMulinputs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЕ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	А *
dtype0Н
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          В
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          `
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:          Е
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А *
dtype0Л
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          `
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:          М
!User-Vector/MatMul/ReadVariableOpReadVariableOp*user_vector_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Х
User-Vector/MatMulMatMuldense_1/Relu:activations:0)User-Vector/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         К
"User-Vector/BiasAdd/ReadVariableOpReadVariableOp+user_vector_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
User-Vector/BiasAddBiasAddUser-Vector/MatMul:product:0*User-Vector/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
User-Vector/ReluReluUser-Vector/BiasAdd:output:0*
T0*'
_output_shapes
:         М
!Item-Vector/MatMul/ReadVariableOpReadVariableOp*item_vector_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Х
Item-Vector/MatMulMatMuldense_3/Relu:activations:0)Item-Vector/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         К
"Item-Vector/BiasAdd/ReadVariableOpReadVariableOp+item_vector_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
Item-Vector/BiasAddBiasAddItem-Vector/MatMul:product:0*Item-Vector/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
Item-Vector/ReluReluItem-Vector/BiasAdd:output:0*
T0*'
_output_shapes
:         \
Dot-Product/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Я
Dot-Product/ExpandDims
ExpandDimsUser-Vector/Relu:activations:0#Dot-Product/ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ^
Dot-Product/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :г
Dot-Product/ExpandDims_1
ExpandDimsItem-Vector/Relu:activations:0%Dot-Product/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Э
Dot-Product/MatMulBatchMatMulV2Dot-Product/ExpandDims:output:0!Dot-Product/ExpandDims_1:output:0*
T0*+
_output_shapes
:         \
Dot-Product/ShapeShapeDot-Product/MatMul:output:0*
T0*
_output_shapes
:Д
Dot-Product/SqueezeSqueezeDot-Product/MatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
k
IdentityIdentityDot-Product/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:         ╪
NoOpNoOp#^Item-Vector/BiasAdd/ReadVariableOp"^Item-Vector/MatMul/ReadVariableOp#^User-Vector/BiasAdd/ReadVariableOp"^User-Vector/MatMul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:         :         : : : : : : : : : : : : 2H
"Item-Vector/BiasAdd/ReadVariableOp"Item-Vector/BiasAdd/ReadVariableOp2F
!Item-Vector/MatMul/ReadVariableOp!Item-Vector/MatMul/ReadVariableOp2H
"User-Vector/BiasAdd/ReadVariableOp"User-Vector/BiasAdd/ReadVariableOp2F
!User-Vector/MatMul/ReadVariableOp!User-Vector/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
∙
╝
&__inference_model_layer_call_fn_365192

user_input

item_input
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А 
	unknown_4: 
	unknown_5:	А 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10:
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCall
user_input
item_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_365135o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:         :         : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:         
$
_user_specified_name
User-Input:SO
'
_output_shapes
:         
$
_user_specified_name
Item-Input
─
Ч
(__inference_dense_2_layer_call_fn_365499

inputs
unknown:	А
	unknown_0:	А
identityИвStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_364866p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╫
║
$__inference_signature_wrapper_365302

item_input

user_input
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А 
	unknown_4: 
	unknown_5:	А 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10:
identityИвStatefulPartitionedCall╩
StatefulPartitionedCallStatefulPartitionedCall
user_input
item_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_364846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:         :         : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:         
$
_user_specified_name
Item-Input:SO
'
_output_shapes
:         
$
_user_specified_name
User-Input
Щ$
╥
A__inference_model_layer_call_and_return_conditional_losses_365135

inputs
inputs_1!
dense_2_365103:	А
dense_2_365105:	А
dense_365108:	А
dense_365110:	А!
dense_3_365113:	А 
dense_3_365115: !
dense_1_365118:	А 
dense_1_365120: $
user_vector_365123:  
user_vector_365125:$
item_vector_365128:  
item_vector_365130:
identityИв#Item-Vector/StatefulPartitionedCallв#User-Vector/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallя
dense_2/StatefulPartitionedCallStatefulPartitionedCallinputs_1dense_2_365103dense_2_365105*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_364866х
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_365108dense_365110*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_364883О
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_365113dense_3_365115*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_364900М
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_365118dense_1_365120*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_364917Ю
#User-Vector/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0user_vector_365123user_vector_365125*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_User-Vector_layer_call_and_return_conditional_losses_364934Ю
#Item-Vector/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0item_vector_365128item_vector_365130*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Item-Vector_layer_call_and_return_conditional_losses_364951У
Dot-Product/PartitionedCallPartitionedCall,User-Vector/StatefulPartitionedCall:output:0,Item-Vector/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Dot-Product_layer_call_and_return_conditional_losses_364969s
IdentityIdentity$Dot-Product/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ш
NoOpNoOp$^Item-Vector/StatefulPartitionedCall$^User-Vector/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:         :         : : : : : : : : : : : : 2J
#Item-Vector/StatefulPartitionedCall#Item-Vector/StatefulPartitionedCall2J
#User-Vector/StatefulPartitionedCall#User-Vector/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
∙
╝
&__inference_model_layer_call_fn_364999

user_input

item_input
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А 
	unknown_4: 
	unknown_5:	А 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10:
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCall
user_input
item_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_364972o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:         :         : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:         
$
_user_specified_name
User-Input:SO
'
_output_shapes
:         
$
_user_specified_name
Item-Input
ї<
║	
A__inference_model_layer_call_and_return_conditional_losses_365416
inputs_0
inputs_19
&dense_2_matmul_readvariableop_resource:	А6
'dense_2_biasadd_readvariableop_resource:	А7
$dense_matmul_readvariableop_resource:	А4
%dense_biasadd_readvariableop_resource:	А9
&dense_3_matmul_readvariableop_resource:	А 5
'dense_3_biasadd_readvariableop_resource: 9
&dense_1_matmul_readvariableop_resource:	А 5
'dense_1_biasadd_readvariableop_resource: <
*user_vector_matmul_readvariableop_resource: 9
+user_vector_biasadd_readvariableop_resource:<
*item_vector_matmul_readvariableop_resource: 9
+item_vector_biasadd_readvariableop_resource:
identityИв"Item-Vector/BiasAdd/ReadVariableOpв!Item-Vector/MatMul/ReadVariableOpв"User-Vector/BiasAdd/ReadVariableOpв!User-Vector/MatMul/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0|
dense_2/MatMulMatMulinputs_1%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         АБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0x
dense/MatMulMatMulinputs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЕ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	А *
dtype0Н
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          В
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          `
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:          Е
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А *
dtype0Л
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          `
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:          М
!User-Vector/MatMul/ReadVariableOpReadVariableOp*user_vector_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Х
User-Vector/MatMulMatMuldense_1/Relu:activations:0)User-Vector/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         К
"User-Vector/BiasAdd/ReadVariableOpReadVariableOp+user_vector_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
User-Vector/BiasAddBiasAddUser-Vector/MatMul:product:0*User-Vector/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
User-Vector/ReluReluUser-Vector/BiasAdd:output:0*
T0*'
_output_shapes
:         М
!Item-Vector/MatMul/ReadVariableOpReadVariableOp*item_vector_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Х
Item-Vector/MatMulMatMuldense_3/Relu:activations:0)Item-Vector/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         К
"Item-Vector/BiasAdd/ReadVariableOpReadVariableOp+item_vector_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
Item-Vector/BiasAddBiasAddItem-Vector/MatMul:product:0*Item-Vector/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
Item-Vector/ReluReluItem-Vector/BiasAdd:output:0*
T0*'
_output_shapes
:         \
Dot-Product/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Я
Dot-Product/ExpandDims
ExpandDimsUser-Vector/Relu:activations:0#Dot-Product/ExpandDims/dim:output:0*
T0*+
_output_shapes
:         ^
Dot-Product/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :г
Dot-Product/ExpandDims_1
ExpandDimsItem-Vector/Relu:activations:0%Dot-Product/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Э
Dot-Product/MatMulBatchMatMulV2Dot-Product/ExpandDims:output:0!Dot-Product/ExpandDims_1:output:0*
T0*+
_output_shapes
:         \
Dot-Product/ShapeShapeDot-Product/MatMul:output:0*
T0*
_output_shapes
:Д
Dot-Product/SqueezeSqueezeDot-Product/MatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
k
IdentityIdentityDot-Product/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:         ╪
NoOpNoOp#^Item-Vector/BiasAdd/ReadVariableOp"^Item-Vector/MatMul/ReadVariableOp#^User-Vector/BiasAdd/ReadVariableOp"^User-Vector/MatMul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:         :         : : : : : : : : : : : : 2H
"Item-Vector/BiasAdd/ReadVariableOp"Item-Vector/BiasAdd/ReadVariableOp2F
!Item-Vector/MatMul/ReadVariableOp!Item-Vector/MatMul/ReadVariableOp2H
"User-Vector/BiasAdd/ReadVariableOp"User-Vector/BiasAdd/ReadVariableOp2F
!User-Vector/MatMul/ReadVariableOp!User-Vector/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
Щ$
╥
A__inference_model_layer_call_and_return_conditional_losses_364972

inputs
inputs_1!
dense_2_364867:	А
dense_2_364869:	А
dense_364884:	А
dense_364886:	А!
dense_3_364901:	А 
dense_3_364903: !
dense_1_364918:	А 
dense_1_364920: $
user_vector_364935:  
user_vector_364937:$
item_vector_364952:  
item_vector_364954:
identityИв#Item-Vector/StatefulPartitionedCallв#User-Vector/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallя
dense_2/StatefulPartitionedCallStatefulPartitionedCallinputs_1dense_2_364867dense_2_364869*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_364866х
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_364884dense_364886*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_364883О
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_364901dense_3_364903*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_364900М
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_364918dense_1_364920*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_364917Ю
#User-Vector/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0user_vector_364935user_vector_364937*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_User-Vector_layer_call_and_return_conditional_losses_364934Ю
#Item-Vector/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0item_vector_364952item_vector_364954*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Item-Vector_layer_call_and_return_conditional_losses_364951У
Dot-Product/PartitionedCallPartitionedCall,User-Vector/StatefulPartitionedCall:output:0,Item-Vector/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Dot-Product_layer_call_and_return_conditional_losses_364969s
IdentityIdentity$Dot-Product/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ш
NoOpNoOp$^Item-Vector/StatefulPartitionedCall$^User-Vector/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:         :         : : : : : : : : : : : : 2J
#Item-Vector/StatefulPartitionedCall#Item-Vector/StatefulPartitionedCall2J
#User-Vector/StatefulPartitionedCall#User-Vector/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
э
╕
&__inference_model_layer_call_fn_365362
inputs_0
inputs_1
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А 
	unknown_4: 
	unknown_5:	А 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10:
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_365135o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:         :         : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
╨C
о

!__inference__wrapped_model_364846

user_input

item_input?
,model_dense_2_matmul_readvariableop_resource:	А<
-model_dense_2_biasadd_readvariableop_resource:	А=
*model_dense_matmul_readvariableop_resource:	А:
+model_dense_biasadd_readvariableop_resource:	А?
,model_dense_3_matmul_readvariableop_resource:	А ;
-model_dense_3_biasadd_readvariableop_resource: ?
,model_dense_1_matmul_readvariableop_resource:	А ;
-model_dense_1_biasadd_readvariableop_resource: B
0model_user_vector_matmul_readvariableop_resource: ?
1model_user_vector_biasadd_readvariableop_resource:B
0model_item_vector_matmul_readvariableop_resource: ?
1model_item_vector_biasadd_readvariableop_resource:
identityИв(model/Item-Vector/BiasAdd/ReadVariableOpв'model/Item-Vector/MatMul/ReadVariableOpв(model/User-Vector/BiasAdd/ReadVariableOpв'model/User-Vector/MatMul/ReadVariableOpв"model/dense/BiasAdd/ReadVariableOpв!model/dense/MatMul/ReadVariableOpв$model/dense_1/BiasAdd/ReadVariableOpв#model/dense_1/MatMul/ReadVariableOpв$model/dense_2/BiasAdd/ReadVariableOpв#model/dense_2/MatMul/ReadVariableOpв$model/dense_3/BiasAdd/ReadVariableOpв#model/dense_3/MatMul/ReadVariableOpС
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0К
model/dense_2/MatMulMatMul
item_input+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АП
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0б
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аm
model/dense_2/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         АН
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ж
model/dense/MatMulMatMul
user_input)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЛ
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ы
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аi
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АС
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes
:	А *
dtype0Я
model/dense_3/MatMulMatMul model/dense_2/Relu:activations:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          О
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0а
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          l
model/dense_3/ReluRelumodel/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:          С
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А *
dtype0Э
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          О
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0а
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          l
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:          Ш
'model/User-Vector/MatMul/ReadVariableOpReadVariableOp0model_user_vector_matmul_readvariableop_resource*
_output_shapes

: *
dtype0з
model/User-Vector/MatMulMatMul model/dense_1/Relu:activations:0/model/User-Vector/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ц
(model/User-Vector/BiasAdd/ReadVariableOpReadVariableOp1model_user_vector_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0м
model/User-Vector/BiasAddBiasAdd"model/User-Vector/MatMul:product:00model/User-Vector/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         t
model/User-Vector/ReluRelu"model/User-Vector/BiasAdd:output:0*
T0*'
_output_shapes
:         Ш
'model/Item-Vector/MatMul/ReadVariableOpReadVariableOp0model_item_vector_matmul_readvariableop_resource*
_output_shapes

: *
dtype0з
model/Item-Vector/MatMulMatMul model/dense_3/Relu:activations:0/model/Item-Vector/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ц
(model/Item-Vector/BiasAdd/ReadVariableOpReadVariableOp1model_item_vector_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0м
model/Item-Vector/BiasAddBiasAdd"model/Item-Vector/MatMul:product:00model/Item-Vector/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         t
model/Item-Vector/ReluRelu"model/Item-Vector/BiasAdd:output:0*
T0*'
_output_shapes
:         b
 model/Dot-Product/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :▒
model/Dot-Product/ExpandDims
ExpandDims$model/User-Vector/Relu:activations:0)model/Dot-Product/ExpandDims/dim:output:0*
T0*+
_output_shapes
:         d
"model/Dot-Product/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :╡
model/Dot-Product/ExpandDims_1
ExpandDims$model/Item-Vector/Relu:activations:0+model/Dot-Product/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         п
model/Dot-Product/MatMulBatchMatMulV2%model/Dot-Product/ExpandDims:output:0'model/Dot-Product/ExpandDims_1:output:0*
T0*+
_output_shapes
:         h
model/Dot-Product/ShapeShape!model/Dot-Product/MatMul:output:0*
T0*
_output_shapes
:Р
model/Dot-Product/SqueezeSqueeze!model/Dot-Product/MatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
q
IdentityIdentity"model/Dot-Product/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:         а
NoOpNoOp)^model/Item-Vector/BiasAdd/ReadVariableOp(^model/Item-Vector/MatMul/ReadVariableOp)^model/User-Vector/BiasAdd/ReadVariableOp(^model/User-Vector/MatMul/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:         :         : : : : : : : : : : : : 2T
(model/Item-Vector/BiasAdd/ReadVariableOp(model/Item-Vector/BiasAdd/ReadVariableOp2R
'model/Item-Vector/MatMul/ReadVariableOp'model/Item-Vector/MatMul/ReadVariableOp2T
(model/User-Vector/BiasAdd/ReadVariableOp(model/User-Vector/BiasAdd/ReadVariableOp2R
'model/User-Vector/MatMul/ReadVariableOp'model/User-Vector/MatMul/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp:S O
'
_output_shapes
:         
$
_user_specified_name
User-Input:SO
'
_output_shapes
:         
$
_user_specified_name
Item-Input
Ю

ї
C__inference_dense_1_layer_call_and_return_conditional_losses_365530

inputs1
matmul_readvariableop_resource:	А -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:          a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Пм
Т
"__inference__traced_restore_365900
file_prefix0
assignvariableop_dense_kernel:	А,
assignvariableop_1_dense_bias:	А4
!assignvariableop_2_dense_2_kernel:	А.
assignvariableop_3_dense_2_bias:	А4
!assignvariableop_4_dense_1_kernel:	А -
assignvariableop_5_dense_1_bias: 4
!assignvariableop_6_dense_3_kernel:	А -
assignvariableop_7_dense_3_bias: 7
%assignvariableop_8_user_vector_kernel: 1
#assignvariableop_9_user_vector_bias:8
&assignvariableop_10_item_vector_kernel: 2
$assignvariableop_11_item_vector_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: :
'assignvariableop_19_adam_dense_kernel_m:	А4
%assignvariableop_20_adam_dense_bias_m:	А<
)assignvariableop_21_adam_dense_2_kernel_m:	А6
'assignvariableop_22_adam_dense_2_bias_m:	А<
)assignvariableop_23_adam_dense_1_kernel_m:	А 5
'assignvariableop_24_adam_dense_1_bias_m: <
)assignvariableop_25_adam_dense_3_kernel_m:	А 5
'assignvariableop_26_adam_dense_3_bias_m: ?
-assignvariableop_27_adam_user_vector_kernel_m: 9
+assignvariableop_28_adam_user_vector_bias_m:?
-assignvariableop_29_adam_item_vector_kernel_m: 9
+assignvariableop_30_adam_item_vector_bias_m::
'assignvariableop_31_adam_dense_kernel_v:	А4
%assignvariableop_32_adam_dense_bias_v:	А<
)assignvariableop_33_adam_dense_2_kernel_v:	А6
'assignvariableop_34_adam_dense_2_bias_v:	А<
)assignvariableop_35_adam_dense_1_kernel_v:	А 5
'assignvariableop_36_adam_dense_1_bias_v: <
)assignvariableop_37_adam_dense_3_kernel_v:	А 5
'assignvariableop_38_adam_dense_3_bias_v: ?
-assignvariableop_39_adam_user_vector_kernel_v: 9
+assignvariableop_40_adam_user_vector_bias_v:?
-assignvariableop_41_adam_item_vector_kernel_v: 9
+assignvariableop_42_adam_item_vector_bias_v:
identity_44ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9║
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*р
value╓B╙,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╚
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¤
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╞
_output_shapes│
░::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_8AssignVariableOp%assignvariableop_8_user_vector_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_9AssignVariableOp#assignvariableop_9_user_vector_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_10AssignVariableOp&assignvariableop_10_item_vector_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_11AssignVariableOp$assignvariableop_11_item_vector_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_20AssignVariableOp%assignvariableop_20_adam_dense_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_2_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_2_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_3_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_3_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_27AssignVariableOp-assignvariableop_27_adam_user_vector_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_user_vector_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adam_item_vector_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_item_vector_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_dense_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_2_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_2_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_1_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_1_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_3_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_3_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_39AssignVariableOp-assignvariableop_39_adam_user_vector_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_user_vector_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_41AssignVariableOp-assignvariableop_41_adam_item_vector_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_item_vector_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Б
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_44IdentityIdentity_43:output:0^NoOp_1*
T0*
_output_shapes
: ю
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_44Identity_44:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
в

Ў
C__inference_dense_2_layer_call_and_return_conditional_losses_365510

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╚
Щ
,__inference_Item-Vector_layer_call_fn_365579

inputs
unknown: 
	unknown_0:
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Item-Vector_layer_call_and_return_conditional_losses_364951o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
н$
╪
A__inference_model_layer_call_and_return_conditional_losses_365264

user_input

item_input!
dense_2_365232:	А
dense_2_365234:	А
dense_365237:	А
dense_365239:	А!
dense_3_365242:	А 
dense_3_365244: !
dense_1_365247:	А 
dense_1_365249: $
user_vector_365252:  
user_vector_365254:$
item_vector_365257:  
item_vector_365259:
identityИв#Item-Vector/StatefulPartitionedCallв#User-Vector/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallё
dense_2/StatefulPartitionedCallStatefulPartitionedCall
item_inputdense_2_365232dense_2_365234*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_364866щ
dense/StatefulPartitionedCallStatefulPartitionedCall
user_inputdense_365237dense_365239*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_364883О
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_365242dense_3_365244*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_364900М
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_365247dense_1_365249*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_364917Ю
#User-Vector/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0user_vector_365252user_vector_365254*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_User-Vector_layer_call_and_return_conditional_losses_364934Ю
#Item-Vector/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0item_vector_365257item_vector_365259*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Item-Vector_layer_call_and_return_conditional_losses_364951У
Dot-Product/PartitionedCallPartitionedCall,User-Vector/StatefulPartitionedCall:output:0,Item-Vector/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Dot-Product_layer_call_and_return_conditional_losses_364969s
IdentityIdentity$Dot-Product/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ш
NoOpNoOp$^Item-Vector/StatefulPartitionedCall$^User-Vector/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:         :         : : : : : : : : : : : : 2J
#Item-Vector/StatefulPartitionedCall#Item-Vector/StatefulPartitionedCall2J
#User-Vector/StatefulPartitionedCall#User-Vector/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:S O
'
_output_shapes
:         
$
_user_specified_name
User-Input:SO
'
_output_shapes
:         
$
_user_specified_name
Item-Input
н$
╪
A__inference_model_layer_call_and_return_conditional_losses_365228

user_input

item_input!
dense_2_365196:	А
dense_2_365198:	А
dense_365201:	А
dense_365203:	А!
dense_3_365206:	А 
dense_3_365208: !
dense_1_365211:	А 
dense_1_365213: $
user_vector_365216:  
user_vector_365218:$
item_vector_365221:  
item_vector_365223:
identityИв#Item-Vector/StatefulPartitionedCallв#User-Vector/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallё
dense_2/StatefulPartitionedCallStatefulPartitionedCall
item_inputdense_2_365196dense_2_365198*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_364866щ
dense/StatefulPartitionedCallStatefulPartitionedCall
user_inputdense_365201dense_365203*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_364883О
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_365206dense_3_365208*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_364900М
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_365211dense_1_365213*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_364917Ю
#User-Vector/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0user_vector_365216user_vector_365218*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_User-Vector_layer_call_and_return_conditional_losses_364934Ю
#Item-Vector/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0item_vector_365221item_vector_365223*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Item-Vector_layer_call_and_return_conditional_losses_364951У
Dot-Product/PartitionedCallPartitionedCall,User-Vector/StatefulPartitionedCall:output:0,Item-Vector/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Dot-Product_layer_call_and_return_conditional_losses_364969s
IdentityIdentity$Dot-Product/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ш
NoOpNoOp$^Item-Vector/StatefulPartitionedCall$^User-Vector/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:         :         : : : : : : : : : : : : 2J
#Item-Vector/StatefulPartitionedCall#Item-Vector/StatefulPartitionedCall2J
#User-Vector/StatefulPartitionedCall#User-Vector/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:S O
'
_output_shapes
:         
$
_user_specified_name
User-Input:SO
'
_output_shapes
:         
$
_user_specified_name
Item-Input
╕	
s
G__inference_Dot-Product_layer_call_and_return_conditional_losses_365608
inputs_0
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :q

ExpandDims
ExpandDimsinputs_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:         D
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
Ю

°
G__inference_User-Vector_layer_call_and_return_conditional_losses_364934

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
Ю

°
G__inference_Item-Vector_layer_call_and_return_conditional_losses_365590

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
э
╕
&__inference_model_layer_call_fn_365332
inputs_0
inputs_1
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А 
	unknown_4: 
	unknown_5:	А 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10:
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_364972o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:         :         : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
╚
Щ
,__inference_User-Vector_layer_call_fn_365559

inputs
unknown: 
	unknown_0:
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_User-Vector_layer_call_and_return_conditional_losses_364934o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
░	
q
G__inference_Dot-Product_layer_call_and_return_conditional_losses_364969

inputs
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:         D
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
в

Ў
C__inference_dense_2_layer_call_and_return_conditional_losses_364866

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
а

Ї
A__inference_dense_layer_call_and_return_conditional_losses_364883

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
а

Ї
A__inference_dense_layer_call_and_return_conditional_losses_365490

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ю

ї
C__inference_dense_3_layer_call_and_return_conditional_losses_365550

inputs1
matmul_readvariableop_resource:	А -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:          a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
└
Х
&__inference_dense_layer_call_fn_365479

inputs
unknown:	А
	unknown_0:	А
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_364883p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
мX
▄
__inference__traced_save_365761
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop1
-savev2_user_vector_kernel_read_readvariableop/
+savev2_user_vector_bias_read_readvariableop1
-savev2_item_vector_kernel_read_readvariableop/
+savev2_item_vector_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop8
4savev2_adam_user_vector_kernel_m_read_readvariableop6
2savev2_adam_user_vector_bias_m_read_readvariableop8
4savev2_adam_item_vector_kernel_m_read_readvariableop6
2savev2_adam_item_vector_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop8
4savev2_adam_user_vector_kernel_v_read_readvariableop6
2savev2_adam_user_vector_bias_v_read_readvariableop8
4savev2_adam_item_vector_kernel_v_read_readvariableop6
2savev2_adam_item_vector_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ╖
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*р
value╓B╙,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┼
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Я
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop-savev2_user_vector_kernel_read_readvariableop+savev2_user_vector_bias_read_readvariableop-savev2_item_vector_kernel_read_readvariableop+savev2_item_vector_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop4savev2_adam_user_vector_kernel_m_read_readvariableop2savev2_adam_user_vector_bias_m_read_readvariableop4savev2_adam_item_vector_kernel_m_read_readvariableop2savev2_adam_item_vector_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop4savev2_adam_user_vector_kernel_v_read_readvariableop2savev2_adam_user_vector_bias_v_read_readvariableop4savev2_adam_item_vector_kernel_v_read_readvariableop2savev2_adam_item_vector_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*┘
_input_shapes╟
─: :	А:А:	А:А:	А : :	А : : :: :: : : : : : : :	А:А:	А:А:	А : :	А : : :: ::	А:А:	А:А:	А : :	А : : :: :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	А:!

_output_shapes	
:А:%!

_output_shapes
:	А:!

_output_shapes	
:А:%!

_output_shapes
:	А : 

_output_shapes
: :%!

_output_shapes
:	А : 

_output_shapes
: :$	 

_output_shapes

: : 


_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	А:!

_output_shapes	
:А:%!

_output_shapes
:	А:!

_output_shapes	
:А:%!

_output_shapes
:	А : 

_output_shapes
: :%!

_output_shapes
:	А : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::% !

_output_shapes
:	А:!!

_output_shapes	
:А:%"!

_output_shapes
:	А:!#

_output_shapes	
:А:%$!

_output_shapes
:	А : %

_output_shapes
: :%&!

_output_shapes
:	А : '

_output_shapes
: :$( 

_output_shapes

: : )

_output_shapes
::$* 

_output_shapes

: : +

_output_shapes
::,

_output_shapes
: 
и
X
,__inference_Dot-Product_layer_call_fn_365596
inputs_0
inputs_1
identity┐
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Dot-Product_layer_call_and_return_conditional_losses_364969`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
├
Ц
(__inference_dense_1_layer_call_fn_365519

inputs
unknown:	А 
	unknown_0: 
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_364917o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ю

°
G__inference_User-Vector_layer_call_and_return_conditional_losses_365570

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
Ю

ї
C__inference_dense_3_layer_call_and_return_conditional_losses_364900

inputs1
matmul_readvariableop_resource:	А -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:          a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs"╡	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ў
serving_defaultу
A

Item-Input3
serving_default_Item-Input:0         
A

User-Input3
serving_default_User-Input:0         ?
Dot-Product0
StatefulPartitionedCall:0         tensorflow/serving/predict:¤╣
Ї
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
╗
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
╗
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
╗
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias"
_tf_keras_layer
╗
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias"
_tf_keras_layer
╗
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias"
_tf_keras_layer
╗
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias"
_tf_keras_layer
е
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
v
0
1
!2
"3
)4
*5
16
27
98
:9
A10
B11"
trackable_list_wrapper
v
0
1
!2
"3
)4
*5
16
27
98
:9
A10
B11"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
═
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32т
&__inference_model_layer_call_fn_364999
&__inference_model_layer_call_fn_365332
&__inference_model_layer_call_fn_365362
&__inference_model_layer_call_fn_365192┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
╣
Rtrace_0
Strace_1
Ttrace_2
Utrace_32╬
A__inference_model_layer_call_and_return_conditional_losses_365416
A__inference_model_layer_call_and_return_conditional_losses_365470
A__inference_model_layer_call_and_return_conditional_losses_365228
A__inference_model_layer_call_and_return_conditional_losses_365264┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
█B╪
!__inference__wrapped_model_364846
User-Input
Item-Input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
├
Viter

Wbeta_1

Xbeta_2
	Ydecay
Zlearning_ratemТmУ!mФ"mХ)mЦ*mЧ1mШ2mЩ9mЪ:mЫAmЬBmЭvЮvЯ!vа"vб)vв*vг1vд2vе9vж:vзAvиBvй"
	optimizer
,
[serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ъ
atrace_02═
&__inference_dense_layer_call_fn_365479в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zatrace_0
Е
btrace_02ш
A__inference_dense_layer_call_and_return_conditional_losses_365490в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zbtrace_0
:	А2dense/kernel
:А2
dense/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
ь
htrace_02╧
(__inference_dense_2_layer_call_fn_365499в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zhtrace_0
З
itrace_02ъ
C__inference_dense_2_layer_call_and_return_conditional_losses_365510в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zitrace_0
!:	А2dense_2/kernel
:А2dense_2/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
ь
otrace_02╧
(__inference_dense_1_layer_call_fn_365519в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zotrace_0
З
ptrace_02ъ
C__inference_dense_1_layer_call_and_return_conditional_losses_365530в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zptrace_0
!:	А 2dense_1/kernel
: 2dense_1/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
н
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
ь
vtrace_02╧
(__inference_dense_3_layer_call_fn_365539в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zvtrace_0
З
wtrace_02ъ
C__inference_dense_3_layer_call_and_return_conditional_losses_365550в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zwtrace_0
!:	А 2dense_3/kernel
: 2dense_3/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
Ё
}trace_02╙
,__inference_User-Vector_layer_call_fn_365559в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z}trace_0
Л
~trace_02ю
G__inference_User-Vector_layer_call_and_return_conditional_losses_365570в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z~trace_0
$:" 2User-Vector/kernel
:2User-Vector/bias
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
▒
non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
Є
Дtrace_02╙
,__inference_Item-Vector_layer_call_fn_365579в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zДtrace_0
Н
Еtrace_02ю
G__inference_Item-Vector_layer_call_and_return_conditional_losses_365590в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
$:" 2Item-Vector/kernel
:2Item-Vector/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
Є
Лtrace_02╙
,__inference_Dot-Product_layer_call_fn_365596в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЛtrace_0
Н
Мtrace_02ю
G__inference_Dot-Product_layer_call_and_return_conditional_losses_365608в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
(
Н0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЗBД
&__inference_model_layer_call_fn_364999
User-Input
Item-Input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ГBА
&__inference_model_layer_call_fn_365332inputs/0inputs/1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ГBА
&__inference_model_layer_call_fn_365362inputs/0inputs/1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЗBД
&__inference_model_layer_call_fn_365192
User-Input
Item-Input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
A__inference_model_layer_call_and_return_conditional_losses_365416inputs/0inputs/1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
A__inference_model_layer_call_and_return_conditional_losses_365470inputs/0inputs/1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
вBЯ
A__inference_model_layer_call_and_return_conditional_losses_365228
User-Input
Item-Input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
вBЯ
A__inference_model_layer_call_and_return_conditional_losses_365264
User-Input
Item-Input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
╪B╒
$__inference_signature_wrapper_365302
Item-Input
User-Input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌B╫
&__inference_dense_layer_call_fn_365479inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_dense_layer_call_and_return_conditional_losses_365490inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
(__inference_dense_2_layer_call_fn_365499inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_dense_2_layer_call_and_return_conditional_losses_365510inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
(__inference_dense_1_layer_call_fn_365519inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_dense_1_layer_call_and_return_conditional_losses_365530inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
(__inference_dense_3_layer_call_fn_365539inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_dense_3_layer_call_and_return_conditional_losses_365550inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рB▌
,__inference_User-Vector_layer_call_fn_365559inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_User-Vector_layer_call_and_return_conditional_losses_365570inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рB▌
,__inference_Item-Vector_layer_call_fn_365579inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_Item-Vector_layer_call_and_return_conditional_losses_365590inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ьBщ
,__inference_Dot-Product_layer_call_fn_365596inputs/0inputs/1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЗBД
G__inference_Dot-Product_layer_call_and_return_conditional_losses_365608inputs/0inputs/1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
О	variables
П	keras_api

Рtotal

Сcount"
_tf_keras_metric
0
Р0
С1"
trackable_list_wrapper
.
О	variables"
_generic_user_object
:  (2total
:  (2count
$:"	А2Adam/dense/kernel/m
:А2Adam/dense/bias/m
&:$	А2Adam/dense_2/kernel/m
 :А2Adam/dense_2/bias/m
&:$	А 2Adam/dense_1/kernel/m
: 2Adam/dense_1/bias/m
&:$	А 2Adam/dense_3/kernel/m
: 2Adam/dense_3/bias/m
):' 2Adam/User-Vector/kernel/m
#:!2Adam/User-Vector/bias/m
):' 2Adam/Item-Vector/kernel/m
#:!2Adam/Item-Vector/bias/m
$:"	А2Adam/dense/kernel/v
:А2Adam/dense/bias/v
&:$	А2Adam/dense_2/kernel/v
 :А2Adam/dense_2/bias/v
&:$	А 2Adam/dense_1/kernel/v
: 2Adam/dense_1/bias/v
&:$	А 2Adam/dense_3/kernel/v
: 2Adam/dense_3/bias/v
):' 2Adam/User-Vector/kernel/v
#:!2Adam/User-Vector/bias/v
):' 2Adam/Item-Vector/kernel/v
#:!2Adam/Item-Vector/bias/v╧
G__inference_Dot-Product_layer_call_and_return_conditional_losses_365608ГZвW
PвM
KЪH
"К
inputs/0         
"К
inputs/1         
к "%в"
К
0         
Ъ ж
,__inference_Dot-Product_layer_call_fn_365596vZвW
PвM
KЪH
"К
inputs/0         
"К
inputs/1         
к "К         з
G__inference_Item-Vector_layer_call_and_return_conditional_losses_365590\AB/в,
%в"
 К
inputs          
к "%в"
К
0         
Ъ 
,__inference_Item-Vector_layer_call_fn_365579OAB/в,
%в"
 К
inputs          
к "К         з
G__inference_User-Vector_layer_call_and_return_conditional_losses_365570\9:/в,
%в"
 К
inputs          
к "%в"
К
0         
Ъ 
,__inference_User-Vector_layer_call_fn_365559O9:/в,
%в"
 К
inputs          
к "К         ╧
!__inference__wrapped_model_364846й!"12)*9:AB^в[
TвQ
OЪL
$К!

User-Input         
$К!

Item-Input         
к "9к6
4
Dot-Product%К"
Dot-Product         д
C__inference_dense_1_layer_call_and_return_conditional_losses_365530])*0в-
&в#
!К
inputs         А
к "%в"
К
0          
Ъ |
(__inference_dense_1_layer_call_fn_365519P)*0в-
&в#
!К
inputs         А
к "К          д
C__inference_dense_2_layer_call_and_return_conditional_losses_365510]!"/в,
%в"
 К
inputs         
к "&в#
К
0         А
Ъ |
(__inference_dense_2_layer_call_fn_365499P!"/в,
%в"
 К
inputs         
к "К         Ад
C__inference_dense_3_layer_call_and_return_conditional_losses_365550]120в-
&в#
!К
inputs         А
к "%в"
К
0          
Ъ |
(__inference_dense_3_layer_call_fn_365539P120в-
&в#
!К
inputs         А
к "К          в
A__inference_dense_layer_call_and_return_conditional_losses_365490]/в,
%в"
 К
inputs         
к "&в#
К
0         А
Ъ z
&__inference_dense_layer_call_fn_365479P/в,
%в"
 К
inputs         
к "К         Ау
A__inference_model_layer_call_and_return_conditional_losses_365228Э!"12)*9:ABfвc
\вY
OЪL
$К!

User-Input         
$К!

Item-Input         
p 

 
к "%в"
К
0         
Ъ у
A__inference_model_layer_call_and_return_conditional_losses_365264Э!"12)*9:ABfвc
\вY
OЪL
$К!

User-Input         
$К!

Item-Input         
p

 
к "%в"
К
0         
Ъ ▀
A__inference_model_layer_call_and_return_conditional_losses_365416Щ!"12)*9:ABbв_
XвU
KЪH
"К
inputs/0         
"К
inputs/1         
p 

 
к "%в"
К
0         
Ъ ▀
A__inference_model_layer_call_and_return_conditional_losses_365470Щ!"12)*9:ABbв_
XвU
KЪH
"К
inputs/0         
"К
inputs/1         
p

 
к "%в"
К
0         
Ъ ╗
&__inference_model_layer_call_fn_364999Р!"12)*9:ABfвc
\вY
OЪL
$К!

User-Input         
$К!

Item-Input         
p 

 
к "К         ╗
&__inference_model_layer_call_fn_365192Р!"12)*9:ABfвc
\вY
OЪL
$К!

User-Input         
$К!

Item-Input         
p

 
к "К         ╖
&__inference_model_layer_call_fn_365332М!"12)*9:ABbв_
XвU
KЪH
"К
inputs/0         
"К
inputs/1         
p 

 
к "К         ╖
&__inference_model_layer_call_fn_365362М!"12)*9:ABbв_
XвU
KЪH
"К
inputs/0         
"К
inputs/1         
p

 
к "К         щ
$__inference_signature_wrapper_365302└!"12)*9:ABuвr
в 
kкh
2

Item-Input$К!

Item-Input         
2

User-Input$К!

User-Input         "9к6
4
Dot-Product%К"
Dot-Product         