Ѓ
щ7Т7
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
n
ClipByValue
t"T
clip_value_min"T
clip_value_max"T
output"T" 
Ttype:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ь
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	

FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%Зб8"
data_formatstringNHWC"
is_trainingbool(
А
FusedBatchNormGrad

y_backprop"T
x"T

scale"T
reserve_space_1"T
reserve_space_2"T

x_backprop"T
scale_backprop"T
offset_backprop"T
reserve_space_3"T
reserve_space_4"T"
Ttype:
2"
epsilonfloat%Зб8"
data_formatstringNHWC"
is_trainingbool(
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
:
Less
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
#
	LogicalOr
x

y

z

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
д
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ю
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.8.02v1.8.0-0-g93bc2e2072фљ

conv2d_1_inputPlaceholder*
dtype0*/
_output_shapes
:џџџџџџџџџdd*$
shape:џџџџџџџџџdd
v
conv2d_1/random_uniform/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0
`
conv2d_1/random_uniform/minConst*
valueB
 *эО*
dtype0*
_output_shapes
: 
`
conv2d_1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *э>
Б
%conv2d_1/random_uniform/RandomUniformRandomUniformconv2d_1/random_uniform/shape*
seedБџх)*
T0*
dtype0*&
_output_shapes
:*
seed2н
}
conv2d_1/random_uniform/subSubconv2d_1/random_uniform/maxconv2d_1/random_uniform/min*
T0*
_output_shapes
: 

conv2d_1/random_uniform/mulMul%conv2d_1/random_uniform/RandomUniformconv2d_1/random_uniform/sub*
T0*&
_output_shapes
:

conv2d_1/random_uniformAddconv2d_1/random_uniform/mulconv2d_1/random_uniform/min*
T0*&
_output_shapes
:

conv2d_1/kernel
VariableV2*
dtype0*&
_output_shapes
:*
	container *
shape:*
shared_name 
Ш
conv2d_1/kernel/AssignAssignconv2d_1/kernelconv2d_1/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:

conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
[
conv2d_1/ConstConst*
dtype0*
_output_shapes
:*
valueB*    
y
conv2d_1/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
­
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/Const*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:
t
conv2d_1/bias/readIdentityconv2d_1/bias*
_output_shapes
:*
T0* 
_class
loc:@conv2d_1/bias
s
"conv2d_1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
э
conv2d_1/convolutionConv2Dconv2d_1_inputconv2d_1/kernel/read*
paddingVALID*/
_output_shapes
:џџџџџџџџџcc*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

conv2d_1/BiasAddBiasAddconv2d_1/convolutionconv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџcc
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџcc
О
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ11*
T0
v
conv2d_2/random_uniform/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0
`
conv2d_2/random_uniform/minConst*
valueB
 *зГнО*
dtype0*
_output_shapes
: 
`
conv2d_2/random_uniform/maxConst*
valueB
 *зГн>*
dtype0*
_output_shapes
: 
В
%conv2d_2/random_uniform/RandomUniformRandomUniformconv2d_2/random_uniform/shape*
T0*
dtype0*&
_output_shapes
:*
seed2ЛІи*
seedБџх)
}
conv2d_2/random_uniform/subSubconv2d_2/random_uniform/maxconv2d_2/random_uniform/min*
T0*
_output_shapes
: 

conv2d_2/random_uniform/mulMul%conv2d_2/random_uniform/RandomUniformconv2d_2/random_uniform/sub*&
_output_shapes
:*
T0

conv2d_2/random_uniformAddconv2d_2/random_uniform/mulconv2d_2/random_uniform/min*
T0*&
_output_shapes
:

conv2d_2/kernel
VariableV2*&
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Ш
conv2d_2/kernel/AssignAssignconv2d_2/kernelconv2d_2/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:

conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
[
conv2d_2/ConstConst*
_output_shapes
:*
valueB*    *
dtype0
y
conv2d_2/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
­
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/Const*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:
t
conv2d_2/bias/readIdentityconv2d_2/bias*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:
s
"conv2d_2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
і
conv2d_2/convolutionConv2Dmax_pooling2d_1/MaxPoolconv2d_2/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ00*
	dilations
*
T0

conv2d_2/BiasAddBiasAddconv2d_2/convolutionconv2d_2/bias/read*/
_output_shapes
:џџџџџџџџџ00*
T0*
data_formatNHWC
a
conv2d_2/ReluReluconv2d_2/BiasAdd*/
_output_shapes
:џџџџџџџџџ00*
T0
h
batch_normalization_1/ConstConst*
_output_shapes
:*
valueB*  ?*
dtype0

batch_normalization_1/gamma
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
ф
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gammabatch_normalization_1/Const*
_output_shapes
:*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(

 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:
j
batch_normalization_1/Const_1Const*
valueB*    *
dtype0*
_output_shapes
:

batch_normalization_1/beta
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
у
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/betabatch_normalization_1/Const_1*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:

batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*
_output_shapes
:*
T0*-
_class#
!loc:@batch_normalization_1/beta
j
batch_normalization_1/Const_2Const*
valueB*    *
dtype0*
_output_shapes
:

!batch_normalization_1/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
ј
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_meanbatch_normalization_1/Const_2*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
А
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
j
batch_normalization_1/Const_3Const*
valueB*  ?*
dtype0*
_output_shapes
:

%batch_normalization_1/moving_variance
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 

,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variancebatch_normalization_1/Const_3*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:
М
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:

+batch_normalization_1/IsVariableInitializedIsVariableInitializedconv2d_1/kernel*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel

-batch_normalization_1/IsVariableInitialized_1IsVariableInitializedconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
 
-batch_normalization_1/IsVariableInitialized_2IsVariableInitializedconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 

-batch_normalization_1/IsVariableInitialized_3IsVariableInitializedconv2d_2/bias*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_2/bias
И
-batch_normalization_1/IsVariableInitialized_4IsVariableInitializedbatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
: 
Ж
-batch_normalization_1/IsVariableInitialized_5IsVariableInitializedbatch_normalization_1/beta*-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
: 
Ф
-batch_normalization_1/IsVariableInitialized_6IsVariableInitialized!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
Ь
-batch_normalization_1/IsVariableInitialized_7IsVariableInitialized%batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 
Ѕ
batch_normalization_1/initNoOp"^batch_normalization_1/beta/Assign#^batch_normalization_1/gamma/Assign)^batch_normalization_1/moving_mean/Assign-^batch_normalization_1/moving_variance/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign
`
batch_normalization_1/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
`
batch_normalization_1/Const_5Const*
valueB *
dtype0*
_output_shapes
: 
д
$batch_normalization_1/FusedBatchNormFusedBatchNormconv2d_2/Relu batch_normalization_1/gamma/readbatch_normalization_1/beta/readbatch_normalization_1/Const_4batch_normalization_1/Const_5*
data_formatNHWC*G
_output_shapes5
3:џџџџџџџџџ00::::*
is_training(*
epsilon%o:*
T0
h
batch_normalization_1/ShapeShapeconv2d_2/Relu*
T0*
out_type0*
_output_shapes
:
s
)batch_normalization_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+batch_normalization_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+batch_normalization_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ч
#batch_normalization_1/strided_sliceStridedSlicebatch_normalization_1/Shape)batch_normalization_1/strided_slice/stack+batch_normalization_1/strided_slice/stack_1+batch_normalization_1/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
j
batch_normalization_1/Shape_1Shapeconv2d_2/Relu*
_output_shapes
:*
T0*
out_type0
u
+batch_normalization_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
w
-batch_normalization_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ё
%batch_normalization_1/strided_slice_1StridedSlicebatch_normalization_1/Shape_1+batch_normalization_1/strided_slice_1/stack-batch_normalization_1/strided_slice_1/stack_1-batch_normalization_1/strided_slice_1/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
j
batch_normalization_1/Shape_2Shapeconv2d_2/Relu*
out_type0*
_output_shapes
:*
T0
u
+batch_normalization_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_1/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ё
%batch_normalization_1/strided_slice_2StridedSlicebatch_normalization_1/Shape_2+batch_normalization_1/strided_slice_2/stack-batch_normalization_1/strided_slice_2/stack_1-batch_normalization_1/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
ж
!batch_normalization_1/Rank/packedPack#batch_normalization_1/strided_slice%batch_normalization_1/strided_slice_1%batch_normalization_1/strided_slice_2*
T0*

axis *
N*
_output_shapes
:
\
batch_normalization_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
c
!batch_normalization_1/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
c
!batch_normalization_1/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ў
batch_normalization_1/rangeRange!batch_normalization_1/range/startbatch_normalization_1/Rank!batch_normalization_1/range/delta*
_output_shapes
:*

Tidx0
е
 batch_normalization_1/Prod/inputPack#batch_normalization_1/strided_slice%batch_normalization_1/strided_slice_1%batch_normalization_1/strided_slice_2*
_output_shapes
:*
T0*

axis *
N

batch_normalization_1/ProdProd batch_normalization_1/Prod/inputbatch_normalization_1/range*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
n
batch_normalization_1/CastCastbatch_normalization_1/Prod*

SrcT0*
_output_shapes
: *

DstT0
`
batch_normalization_1/sub/yConst*
valueB
 *Х ?*
dtype0*
_output_shapes
: 
z
batch_normalization_1/subSubbatch_normalization_1/Castbatch_normalization_1/sub/y*
_output_shapes
: *
T0

batch_normalization_1/truedivRealDivbatch_normalization_1/Castbatch_normalization_1/sub*
T0*
_output_shapes
: 

batch_normalization_1/mulMul&batch_normalization_1/FusedBatchNorm:2batch_normalization_1/truediv*
_output_shapes
:*
T0
І
+batch_normalization_1/AssignMovingAvg/decayConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB
 *
з#<*
dtype0*
_output_shapes
: 
а
Mbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/zerosConst*
dtype0*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB*    
Ъ
(batch_normalization_1/moving_mean/biased
VariableV2*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@batch_normalization_1/moving_mean*
	container *
shape:
Ж
/batch_normalization_1/moving_mean/biased/AssignAssign(batch_normalization_1/moving_mean/biasedMbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
О
-batch_normalization_1/moving_mean/biased/readIdentity(batch_normalization_1/moving_mean/biased*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:
Й
>batch_normalization_1/moving_mean/local_step/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 
Ц
,batch_normalization_1/moving_mean/local_step
VariableV2*
shared_name *4
_class*
(&loc:@batch_normalization_1/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: 
Ћ
3batch_normalization_1/moving_mean/local_step/AssignAssign,batch_normalization_1/moving_mean/local_step>batch_normalization_1/moving_mean/local_step/Initializer/zeros*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Т
1batch_normalization_1/moving_mean/local_step/readIdentity,batch_normalization_1/moving_mean/local_step*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: 

Kbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/subSub-batch_normalization_1/moving_mean/biased/read&batch_normalization_1/FusedBatchNorm:1*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:
Ї
Kbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/mulMulKbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/sub+batch_normalization_1/AssignMovingAvg/decay*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:*
T0
л
ibatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/batch_normalization_1/moving_mean	AssignSub(batch_normalization_1/moving_mean/biasedKbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/mul*
_output_shapes
:*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
в
Wbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/AssignAdd/valueConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Я
Qbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/AssignAdd	AssignAdd,batch_normalization_1/moving_mean/local_stepWbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/AssignAdd/value*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: *
use_locking( *
T0

Lbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/readIdentity(batch_normalization_1/moving_mean/biasedR^batch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/AssignAddj^batch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/batch_normalization_1/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:

Obatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/sub_1/xConstR^batch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/AssignAddj^batch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Љ
Mbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/sub_1SubObatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/sub_1/x+batch_normalization_1/AssignMovingAvg/decay*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: 

Nbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/read_1Identity,batch_normalization_1/moving_mean/local_stepR^batch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/AssignAddj^batch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/batch_normalization_1/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: 
Ш
Kbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/PowPowMbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/sub_1Nbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/read_1*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: *
T0

Obatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/sub_2/xConstR^batch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/AssignAddj^batch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Щ
Mbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/sub_2SubObatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/sub_2/xKbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/Pow*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
в
Obatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/truedivRealDivLbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/readMbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/sub_2*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:
Ј
Mbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/sub_3Sub&batch_normalization_1/moving_mean/readObatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/truediv*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean

%batch_normalization_1/AssignMovingAvg	AssignSub!batch_normalization_1/moving_meanMbatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/sub_3*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:*
use_locking( 
Ќ
-batch_normalization_1/AssignMovingAvg_1/decayConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB
 *
з#<*
dtype0*
_output_shapes
: 
к
Sbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/zerosConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB*    *
dtype0*
_output_shapes
:
в
,batch_normalization_1/moving_variance/biased
VariableV2*
_output_shapes
:*
shared_name *8
_class.
,*loc:@batch_normalization_1/moving_variance*
	container *
shape:*
dtype0
Ш
3batch_normalization_1/moving_variance/biased/AssignAssign,batch_normalization_1/moving_variance/biasedSbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
Ъ
1batch_normalization_1/moving_variance/biased/readIdentity,batch_normalization_1/moving_variance/biased*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
С
Bbatch_normalization_1/moving_variance/local_step/Initializer/zerosConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB
 *    *
dtype0*
_output_shapes
: 
Ю
0batch_normalization_1/moving_variance/local_step
VariableV2*
dtype0*
_output_shapes
: *
shared_name *8
_class.
,*loc:@batch_normalization_1/moving_variance*
	container *
shape: 
Л
7batch_normalization_1/moving_variance/local_step/AssignAssign0batch_normalization_1/moving_variance/local_stepBbatch_normalization_1/moving_variance/local_step/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
: 
Ю
5batch_normalization_1/moving_variance/local_step/readIdentity0batch_normalization_1/moving_variance/local_step*
_output_shapes
: *
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance

Qbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/subSub1batch_normalization_1/moving_variance/biased/readbatch_normalization_1/mul*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:*
T0
Й
Qbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/mulMulQbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/sub-batch_normalization_1/AssignMovingAvg_1/decay*
_output_shapes
:*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
ѓ
sbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/batch_normalization_1/moving_variance	AssignSub,batch_normalization_1/moving_variance/biasedQbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
м
]batch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/AssignAdd/valueConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB
 *  ?*
dtype0*
_output_shapes
: 
у
Wbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/AssignAdd	AssignAdd0batch_normalization_1/moving_variance/local_step]batch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/AssignAdd/value*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: 
Л
Rbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/readIdentity,batch_normalization_1/moving_variance/biasedX^batch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/AssignAddt^batch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/batch_normalization_1/moving_variance*
_output_shapes
:*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
Є
Ubatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/sub_1/xConstX^batch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/AssignAddt^batch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: *8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB
 *  ?
Л
Sbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/sub_1SubUbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/sub_1/x-batch_normalization_1/AssignMovingAvg_1/decay*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: 
Н
Tbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/read_1Identity0batch_normalization_1/moving_variance/local_stepX^batch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/AssignAddt^batch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: *
T0
о
Qbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/PowPowSbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/sub_1Tbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/read_1*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: 
Є
Ubatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/sub_2/xConstX^batch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/AssignAddt^batch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB
 *  ?*
dtype0*
_output_shapes
: 
п
Sbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/sub_2SubUbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/sub_2/xQbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/Pow*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: 
ш
Ubatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/truedivRealDivRbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/readSbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/sub_2*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
М
Sbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/sub_3Sub*batch_normalization_1/moving_variance/readUbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/truediv*
_output_shapes
:*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
Ђ
'batch_normalization_1/AssignMovingAvg_1	AssignSub%batch_normalization_1/moving_varianceSbatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/sub_3*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
r
0batch_normalization_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
Ј
*batch_normalization_1/keras_learning_phasePlaceholderWithDefault0batch_normalization_1/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
І
!batch_normalization_1/cond/SwitchSwitch*batch_normalization_1/keras_learning_phase*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
: : 
u
#batch_normalization_1/cond/switch_tIdentity#batch_normalization_1/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_1/cond/switch_fIdentity!batch_normalization_1/cond/Switch*
T0
*
_output_shapes
: 
{
"batch_normalization_1/cond/pred_idIdentity*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
: 

#batch_normalization_1/cond/Switch_1Switch$batch_normalization_1/FusedBatchNorm"batch_normalization_1/cond/pred_id*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*J
_output_shapes8
6:џџџџџџџџџ00:џџџџџџџџџ00
Ы
)batch_normalization_1/cond/FusedBatchNormFusedBatchNorm0batch_normalization_1/cond/FusedBatchNorm/Switch2batch_normalization_1/cond/FusedBatchNorm/Switch_12batch_normalization_1/cond/FusedBatchNorm/Switch_22batch_normalization_1/cond/FusedBatchNorm/Switch_32batch_normalization_1/cond/FusedBatchNorm/Switch_4*G
_output_shapes5
3:џџџџџџџџџ00::::*
is_training( *
epsilon%o:*
T0*
data_formatNHWC
ф
0batch_normalization_1/cond/FusedBatchNorm/SwitchSwitchconv2d_2/Relu"batch_normalization_1/cond/pred_id* 
_class
loc:@conv2d_2/Relu*J
_output_shapes8
6:џџџџџџџџџ00:џџџџџџџџџ00*
T0
н
2batch_normalization_1/cond/FusedBatchNorm/Switch_1Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_1/gamma* 
_output_shapes
::
л
2batch_normalization_1/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id* 
_output_shapes
::*
T0*-
_class#
!loc:@batch_normalization_1/beta
щ
2batch_normalization_1/cond/FusedBatchNorm/Switch_3Switch&batch_normalization_1/moving_mean/read"batch_normalization_1/cond/pred_id*4
_class*
(&loc:@batch_normalization_1/moving_mean* 
_output_shapes
::*
T0
ё
2batch_normalization_1/cond/FusedBatchNorm/Switch_4Switch*batch_normalization_1/moving_variance/read"batch_normalization_1/cond/pred_id*8
_class.
,*loc:@batch_normalization_1/moving_variance* 
_output_shapes
::*
T0
Р
 batch_normalization_1/cond/MergeMerge)batch_normalization_1/cond/FusedBatchNorm%batch_normalization_1/cond/Switch_1:1*
N*1
_output_shapes
:џџџџџџџџџ00: *
T0
б
max_pooling2d_2/MaxPoolMaxPool batch_normalization_1/cond/Merge*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC*
strides


dropout_1/cond/SwitchSwitch*batch_normalization_1/keras_learning_phase*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
_output_shapes
: *
T0

o
dropout_1/cond/pred_idIdentity*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
: 
s
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 

dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*/
_output_shapes
:џџџџџџџџџ*
T0
е
dropout_1/cond/mul/SwitchSwitchmax_pooling2d_2/MaxPooldropout_1/cond/pred_id*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*J
_output_shapes8
6:џџџџџџџџџ:џџџџџџџџџ

 dropout_1/cond/dropout/keep_probConst^dropout_1/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
n
dropout_1/cond/dropout/ShapeShapedropout_1/cond/mul*
T0*
out_type0*
_output_shapes
:

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ш
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ*
seed2*
seedБџх)*
T0*
dtype0
Ї
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ъ
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:џџџџџџџџџ
М
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ
Є
dropout_1/cond/dropout/addAdd dropout_1/cond/dropout/keep_prob%dropout_1/cond/dropout/random_uniform*
T0*/
_output_shapes
:џџџџџџџџџ
{
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*
T0*/
_output_shapes
:џџџџџџџџџ

dropout_1/cond/dropout/divRealDivdropout_1/cond/mul dropout_1/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ

dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/divdropout_1/cond/dropout/Floor*/
_output_shapes
:џџџџџџџџџ*
T0
г
dropout_1/cond/Switch_1Switchmax_pooling2d_2/MaxPooldropout_1/cond/pred_id**
_class 
loc:@max_pooling2d_2/MaxPool*J
_output_shapes8
6:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*
T0*
N*1
_output_shapes
:џџџџџџџџџ: 
c
flatten_1/ShapeShapedropout_1/cond/Merge*
T0*
out_type0*
_output_shapes
:
g
flatten_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Џ
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
Y
flatten_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
\
flatten_1/stack/0Const*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
N*
_output_shapes
:*
T0*

axis 

flatten_1/ReshapeReshapedropout_1/cond/Mergeflatten_1/stack*
T0*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
m
dense_1/random_uniform/shapeConst*
valueB" 	     *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *CЉPН*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *CЉP=*
dtype0*
_output_shapes
: 
Љ
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seedБџх)*
T0*
dtype0*
_output_shapes
:	*
seed2Єуз
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
_output_shapes
: *
T0

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes
:	

dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes
:	

dense_1/kernel
VariableV2*
shape:	*
shared_name *
dtype0*
_output_shapes
:	*
	container 
Н
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	
|
dense_1/kernel/readIdentitydense_1/kernel*
_output_shapes
:	*
T0*!
_class
loc:@dense_1/kernel
Z
dense_1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_1/bias
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Љ
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense_1/bias
q
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:

dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
W
dense_1/ReluReludense_1/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0

dropout_2/cond/SwitchSwitch*batch_normalization_1/keras_learning_phase*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
T0
*
_output_shapes
: 
o
dropout_2/cond/pred_idIdentity*batch_normalization_1/keras_learning_phase*
_output_shapes
: *
T0

s
dropout_2/cond/mul/yConst^dropout_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
~
dropout_2/cond/mulMuldropout_2/cond/mul/Switch:1dropout_2/cond/mul/y*
T0*'
_output_shapes
:џџџџџџџџџ
Џ
dropout_2/cond/mul/SwitchSwitchdense_1/Reludropout_2/cond/pred_id*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*
T0

 dropout_2/cond/dropout/keep_probConst^dropout_2/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_2/cond/dropout/ShapeShapedropout_2/cond/mul*
_output_shapes
:*
T0*
out_type0

)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Р
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*'
_output_shapes
:џџџџџџџџџ*
seed2зМ*
seedБџх)*
T0*
dtype0
Ї
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Т
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*'
_output_shapes
:џџџџџџџџџ*
T0
Д
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*'
_output_shapes
:џџџџџџџџџ*
T0

dropout_2/cond/dropout/addAdd dropout_2/cond/dropout/keep_prob%dropout_2/cond/dropout/random_uniform*
T0*'
_output_shapes
:џџџџџџџџџ
s
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*'
_output_shapes
:џџџџџџџџџ*
T0

dropout_2/cond/dropout/divRealDivdropout_2/cond/mul dropout_2/cond/dropout/keep_prob*
T0*'
_output_shapes
:џџџџџџџџџ

dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/divdropout_2/cond/dropout/Floor*'
_output_shapes
:џџџџџџџџџ*
T0
­
dropout_2/cond/Switch_1Switchdense_1/Reludropout_2/cond/pred_id*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul*
T0*
N*)
_output_shapes
:џџџџџџџџџ: 
m
dense_2/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *   П*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Ј
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
dtype0*
_output_shapes

:*
seed2ХБ*
seedБџх)*
T0
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
_output_shapes
: *
T0

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes

:
~
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes

:

dense_2/kernel
VariableV2*
dtype0*
_output_shapes

:*
	container *
shape
:*
shared_name 
М
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
{
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:
Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_2/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Љ
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:

dense_2/MatMulMatMuldropout_2/cond/Mergedense_2/kernel/read*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0
l
PlaceholderPlaceholder*
dtype0*&
_output_shapes
:*
shape:
Ќ
AssignAssignconv2d_1/kernelPlaceholder*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:*
use_locking( 
V
Placeholder_1Placeholder*
shape:*
dtype0*
_output_shapes
:
 
Assign_1Assignconv2d_1/biasPlaceholder_1*
validate_shape(*
_output_shapes
:*
use_locking( *
T0* 
_class
loc:@conv2d_1/bias
n
Placeholder_2Placeholder*
dtype0*&
_output_shapes
:*
shape:
А
Assign_2Assignconv2d_2/kernelPlaceholder_2*
validate_shape(*&
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@conv2d_2/kernel
V
Placeholder_3Placeholder*
dtype0*
_output_shapes
:*
shape:
 
Assign_3Assignconv2d_2/biasPlaceholder_3*
use_locking( *
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:
V
Placeholder_4Placeholder*
shape:*
dtype0*
_output_shapes
:
М
Assign_4Assignbatch_normalization_1/gammaPlaceholder_4*
validate_shape(*
_output_shapes
:*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_1/gamma
V
Placeholder_5Placeholder*
dtype0*
_output_shapes
:*
shape:
К
Assign_5Assignbatch_normalization_1/betaPlaceholder_5*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:
V
Placeholder_6Placeholder*
dtype0*
_output_shapes
:*
shape:
Ш
Assign_6Assign!batch_normalization_1/moving_meanPlaceholder_6*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking( *
T0
V
Placeholder_7Placeholder*
shape:*
dtype0*
_output_shapes
:
а
Assign_7Assign%batch_normalization_1/moving_variancePlaceholder_7*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:
`
Placeholder_8Placeholder*
_output_shapes
:	*
shape:	*
dtype0
Ї
Assign_8Assigndense_1/kernelPlaceholder_8*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	
V
Placeholder_9Placeholder*
dtype0*
_output_shapes
:*
shape:

Assign_9Assigndense_1/biasPlaceholder_9*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@dense_1/bias*
validate_shape(
_
Placeholder_10Placeholder*
dtype0*
_output_shapes

:*
shape
:
Ј
	Assign_10Assigndense_2/kernelPlaceholder_10*
use_locking( *
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

:
W
Placeholder_11Placeholder*
dtype0*
_output_shapes
:*
shape:
 
	Assign_11Assigndense_2/biasPlaceholder_11*
validate_shape(*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@dense_2/bias
Г
IsVariableInitializedIsVariableInitialized(batch_normalization_1/moving_mean/biased*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
Й
IsVariableInitialized_1IsVariableInitialized,batch_normalization_1/moving_mean/local_step*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
Н
IsVariableInitialized_2IsVariableInitialized,batch_normalization_1/moving_variance/biased*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 
С
IsVariableInitialized_3IsVariableInitialized0batch_normalization_1/moving_variance/local_step*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 

IsVariableInitialized_4IsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializeddense_1/bias*
_output_shapes
: *
_class
loc:@dense_1/bias*
dtype0

IsVariableInitialized_6IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_7IsVariableInitializeddense_2/bias*
dtype0*
_output_shapes
: *
_class
loc:@dense_2/bias
Р
initNoOp0^batch_normalization_1/moving_mean/biased/Assign4^batch_normalization_1/moving_mean/local_step/Assign4^batch_normalization_1/moving_variance/biased/Assign8^batch_normalization_1/moving_variance/local_step/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign
^
Adadelta/lr/initial_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
Adadelta/lr
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
Ў
Adadelta/lr/AssignAssignAdadelta/lrAdadelta/lr/initial_value*
_class
loc:@Adadelta/lr*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
j
Adadelta/lr/readIdentityAdadelta/lr*
T0*
_class
loc:@Adadelta/lr*
_output_shapes
: 
a
Adadelta/decay/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
r
Adadelta/decay
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
К
Adadelta/decay/AssignAssignAdadelta/decayAdadelta/decay/initial_value*
use_locking(*
T0*!
_class
loc:@Adadelta/decay*
validate_shape(*
_output_shapes
: 
s
Adadelta/decay/readIdentityAdadelta/decay*
_output_shapes
: *
T0*!
_class
loc:@Adadelta/decay
c
!Adadelta/iterations/initial_valueConst*
dtype0	*
_output_shapes
: *
value	B	 R 
w
Adadelta/iterations
VariableV2*
shape: *
shared_name *
dtype0	*
_output_shapes
: *
	container 
Ю
Adadelta/iterations/AssignAssignAdadelta/iterations!Adadelta/iterations/initial_value*
use_locking(*
T0	*&
_class
loc:@Adadelta/iterations*
validate_shape(*
_output_shapes
: 

Adadelta/iterations/readIdentityAdadelta/iterations*
T0	*&
_class
loc:@Adadelta/iterations*
_output_shapes
: 

dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ
q
dense_2_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
r
'loss/dense_2_loss/Sum/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ѕ
loss/dense_2_loss/SumSumdense_2/Softmax'loss/dense_2_loss/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:џџџџџџџџџ
~
loss/dense_2_loss/truedivRealDivdense_2/Softmaxloss/dense_2_loss/Sum*'
_output_shapes
:џџџџџџџџџ*
T0
\
loss/dense_2_loss/ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
\
loss/dense_2_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
_output_shapes
: *
T0
Ћ
loss/dense_2_loss/clip_by_valueClipByValueloss/dense_2_loss/truedivloss/dense_2_loss/Constloss/dense_2_loss/sub*'
_output_shapes
:џџџџџџџџџ*
T0
o
loss/dense_2_loss/LogLogloss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџ
u
loss/dense_2_loss/mulMuldense_2_targetloss/dense_2_loss/Log*
T0*'
_output_shapes
:џџџџџџџџџ
t
)loss/dense_2_loss/Sum_1/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ћ
loss/dense_2_loss/Sum_1Sumloss/dense_2_loss/mul)loss/dense_2_loss/Sum_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
c
loss/dense_2_loss/NegNegloss/dense_2_loss/Sum_1*
T0*#
_output_shapes
:џџџџџџџџџ
k
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
Њ
loss/dense_2_loss/MeanMeanloss/dense_2_loss/Neg(loss/dense_2_loss/Mean/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0*
T0
|
loss/dense_2_loss/mul_1Mulloss/dense_2_loss/Meandense_2_sample_weights*#
_output_shapes
:џџџџџџџџџ*
T0
a
loss/dense_2_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss/dense_2_loss/NotEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0
w
loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
c
loss/dense_2_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Castloss/dense_2_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/mul_1loss/dense_2_loss/Mean_1*#
_output_shapes
:џџџџџџџџџ*
T0
c
loss/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/Mean_2Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_2*
_output_shapes
: *
T0
g
metrics/acc/ArgMax/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

metrics/acc/ArgMaxArgMaxdense_2_targetmetrics/acc/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:џџџџџџџџџ*

Tidx0
i
metrics/acc/ArgMax_1/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

metrics/acc/ArgMax_1ArgMaxdense_2/Softmaxmetrics/acc/ArgMax_1/dimension*
output_type0	*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:џџџџџџџџџ
h
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

!training/Adadelta/gradients/ShapeConst*
_class
loc:@loss/mul*
valueB *
dtype0*
_output_shapes
: 

%training/Adadelta/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
_class
loc:@loss/mul*
valueB
 *  ?
Т
 training/Adadelta/gradients/FillFill!training/Adadelta/gradients/Shape%training/Adadelta/gradients/grad_ys_0*
_output_shapes
: *
T0*
_class
loc:@loss/mul*

index_type0
Ў
-training/Adadelta/gradients/loss/mul_grad/MulMul training/Adadelta/gradients/Fillloss/dense_2_loss/Mean_2*
_output_shapes
: *
T0*
_class
loc:@loss/mul
Ђ
/training/Adadelta/gradients/loss/mul_grad/Mul_1Mul training/Adadelta/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
О
Gtraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shapeConst*+
_class!
loc:@loss/dense_2_loss/Mean_2*
valueB:*
dtype0*
_output_shapes
:
І
Atraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/ReshapeReshape/training/Adadelta/gradients/loss/mul_grad/Mul_1Gtraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shape*+
_class!
loc:@loss/dense_2_loss/Mean_2*
Tshape0*
_output_shapes
:*
T0
Ч
?training/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/ShapeShapeloss/dense_2_loss/truediv_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
out_type0*
_output_shapes
:
З
>training/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/TileTileAtraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Reshape?training/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Shape*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2
Щ
Atraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
out_type0
Б
Atraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2Const*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_2*
valueB *
dtype0
Ж
?training/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/ConstConst*+
_class!
loc:@loss/dense_2_loss/Mean_2*
valueB: *
dtype0*
_output_shapes
:
Е
>training/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/ProdProdAtraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1?training/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Const*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
И
Atraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Const_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_2*
valueB: *
dtype0*
_output_shapes
:
Й
@training/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1ProdAtraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2Atraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2
В
Ctraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_2*
value	B :*
dtype0*
_output_shapes
: 
Ё
Atraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/MaximumMaximum@training/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1Ctraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 

Btraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/floordivFloorDiv>training/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/ProdAtraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Maximum*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
ч
>training/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/CastCastBtraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/floordiv*

SrcT0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: *

DstT0
Ї
Atraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/truedivRealDiv>training/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Tile>training/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/Cast*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ
Щ
Btraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul_1*
_output_shapes
:*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
out_type0
З
Dtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
valueB *
dtype0*
_output_shapes
: 
т
Rtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/ShapeDtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Dtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/RealDivRealDivAtraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/truedivloss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
б
@training/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/SumSumDtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/RealDivRtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
С
Dtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape@training/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/SumBtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
Tshape0
О
@training/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/NegNegloss/dense_2_loss/mul_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ*
T0

Ftraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv@training/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/Negloss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ

Ftraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivFtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
А
@training/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/mulMulAtraining/Adadelta/gradients/loss/dense_2_loss/Mean_2_grad/truedivFtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
б
Btraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Sum@training/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/mulTtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:
К
Ftraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1ReshapeBtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Dtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
Tshape0*
_output_shapes
: *
T0
Р
>training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/ShapeShapeloss/dense_2_loss/Mean*
_output_shapes
:*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
out_type0
Т
@training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/Shape_1Shapedense_2_sample_weights*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
out_type0*
_output_shapes
:
в
Ntraining/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/Shape@training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ћ
<training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/MulMulDtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/Reshapedense_2_sample_weights*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:џџџџџџџџџ
Н
<training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/SumSum<training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/MulNtraining/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:
Б
@training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/ReshapeReshape<training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/Sum>training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/Shape*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
Tshape0*#
_output_shapes
:џџџџџџџџџ
§
>training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/Mul_1Mulloss/dense_2_loss/MeanDtraining/Adadelta/gradients/loss/dense_2_loss/truediv_1_grad/Reshape*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:џџџџџџџџџ
У
>training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/Sum_1Sum>training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/Mul_1Ptraining/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:
З
Btraining/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/Reshape_1Reshape>training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/Sum_1@training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
Tshape0
Н
=training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/Neg*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
Љ
<training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/SizeConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
ј
;training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices<training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

;training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/modFloorMod;training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/add<training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Size*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_2_loss/Mean
Д
?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
А
Ctraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/range/startConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B : *
dtype0*
_output_shapes
: 
А
Ctraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
с
=training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/rangeRangeCtraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/range/start<training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/SizeCtraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/range/delta*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:*

Tidx0
Џ
Btraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
Љ
<training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/FillFill?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Shape_1Btraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Fill/value*
T0*)
_class
loc:@loss/dense_2_loss/Mean*

index_type0*
_output_shapes
: 
Б
Etraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch=training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/range;training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/mod=training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Shape<training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Fill*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
N*#
_output_shapes
:џџџџџџџџџ
Ў
Atraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
­
?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximumEtraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchAtraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
T0*)
_class
loc:@loss/dense_2_loss/Mean
Ѕ
@training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv=training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Shape?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Maximum*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:џџџџџџџџџ
Џ
?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape@training/Adadelta/gradients/loss/dense_2_loss/mul_1_grad/ReshapeEtraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
Tshape0*
_output_shapes
:
Ї
<training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/TileTile?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Reshape@training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/floordiv*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:*

Tmultiples0*
T0
П
?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/Neg*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0
Р
?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
В
=training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: 
­
<training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/ProdProd?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Shape_2=training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Const*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0
Д
?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
Б
>training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Shape_3?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Const_1*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0
А
Ctraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 

Atraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Maximum_1Maximum>training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Prod_1Ctraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

Btraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv<training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/ProdAtraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
у
<training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/CastCastBtraining/Adadelta/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*

SrcT0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *

DstT0

?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv<training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Tile<training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:џџџџџџџџџ
к
:training/Adadelta/gradients/loss/dense_2_loss/Neg_grad/NegNeg?training/Adadelta/gradients/loss/dense_2_loss/Mean_grad/truediv*
T0*(
_class
loc:@loss/dense_2_loss/Neg*#
_output_shapes
:џџџџџџџџџ
П
>training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/ShapeShapeloss/dense_2_loss/mul*
_output_shapes
:*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
out_type0
Ћ
=training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/SizeConst**
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B :*
dtype0*
_output_shapes
: 
њ
<training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/addAdd)loss/dense_2_loss/Sum_1/reduction_indices=training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Size*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 

<training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/modFloorMod<training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/add=training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Size*
_output_shapes
: *
T0**
_class 
loc:@loss/dense_2_loss/Sum_1
Џ
@training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Shape_1Const*
dtype0*
_output_shapes
: **
_class 
loc:@loss/dense_2_loss/Sum_1*
valueB 
В
Dtraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/range/startConst**
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B : *
dtype0*
_output_shapes
: 
В
Dtraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/range/deltaConst**
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B :*
dtype0*
_output_shapes
: 
ц
>training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/rangeRangeDtraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/range/start=training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/SizeDtraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/range/delta**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:*

Tidx0
Б
Ctraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Fill/valueConst**
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B :*
dtype0*
_output_shapes
: 
Ћ
=training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/FillFill@training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Shape_1Ctraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Fill/value*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*

index_type0*
_output_shapes
: 
З
Ftraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitchDynamicStitch>training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/range<training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/mod>training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Shape=training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Fill*
N*#
_output_shapes
:џџџџџџџџџ*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1
А
Btraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Maximum/yConst*
dtype0*
_output_shapes
: **
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B :
Б
@training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/MaximumMaximumFtraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitchBtraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Maximum/y*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*#
_output_shapes
:џџџџџџџџџ
 
Atraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/floordivFloorDiv>training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Shape@training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Maximum*
_output_shapes
:*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1
Ќ
@training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeReshape:training/Adadelta/gradients/loss/dense_2_loss/Neg_grad/NegFtraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitch**
_class 
loc:@loss/dense_2_loss/Sum_1*
Tshape0*
_output_shapes
:*
T0
К
=training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/TileTile@training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeAtraining/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/floordiv*

Tmultiples0*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*'
_output_shapes
:џџџџџџџџџ
Д
<training/Adadelta/gradients/loss/dense_2_loss/mul_grad/ShapeShapedense_2_target*
T0*(
_class
loc:@loss/dense_2_loss/mul*
out_type0*
_output_shapes
:
Н
>training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Shape_1Shapeloss/dense_2_loss/Log*
_output_shapes
:*
T0*(
_class
loc:@loss/dense_2_loss/mul*
out_type0
Ъ
Ltraining/Adadelta/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Shape>training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_2_loss/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ѓ
:training/Adadelta/gradients/loss/dense_2_loss/mul_grad/MulMul=training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Tileloss/dense_2_loss/Log*
T0*(
_class
loc:@loss/dense_2_loss/mul*'
_output_shapes
:џџџџџџџџџ
Е
:training/Adadelta/gradients/loss/dense_2_loss/mul_grad/SumSum:training/Adadelta/gradients/loss/dense_2_loss/mul_grad/MulLtraining/Adadelta/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs*
T0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ж
>training/Adadelta/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape:training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Sum<training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Shape*
T0*(
_class
loc:@loss/dense_2_loss/mul*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ю
<training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Mul_1Muldense_2_target=training/Adadelta/gradients/loss/dense_2_loss/Sum_1_grad/Tile*
T0*(
_class
loc:@loss/dense_2_loss/mul*'
_output_shapes
:џџџџџџџџџ
Л
<training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Sum_1Sum<training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Mul_1Ntraining/Adadelta/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1*
T0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Г
@training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape<training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Sum_1>training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_2_loss/mul*
Tshape0*'
_output_shapes
:џџџџџџџџџ

Atraining/Adadelta/gradients/loss/dense_2_loss/Log_grad/Reciprocal
Reciprocalloss/dense_2_loss/clip_by_valueA^training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Reshape_1*
T0*(
_class
loc:@loss/dense_2_loss/Log*'
_output_shapes
:џџџџџџџџџ
Ђ
:training/Adadelta/gradients/loss/dense_2_loss/Log_grad/mulMul@training/Adadelta/gradients/loss/dense_2_loss/mul_grad/Reshape_1Atraining/Adadelta/gradients/loss/dense_2_loss/Log_grad/Reciprocal*'
_output_shapes
:џџџџџџџџџ*
T0*(
_class
loc:@loss/dense_2_loss/Log
г
Ftraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShapeloss/dense_2_loss/truediv*
_output_shapes
:*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
out_type0
П
Htraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
valueB *
dtype0*
_output_shapes
: 
П
Htraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
valueB *
dtype0*
_output_shapes
: 
і
Htraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_3Shape:training/Adadelta/gradients/loss/dense_2_loss/Log_grad/mul*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
out_type0*
_output_shapes
:
Х
Ltraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
valueB
 *    
о
Ftraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillHtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_3Ltraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*

index_type0*'
_output_shapes
:џџџџџџџџџ
ч
Etraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/LessLessloss/dense_2_loss/truedivloss/dense_2_loss/Const*'
_output_shapes
:џџџџџџџџџ*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
ы
Htraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterGreaterloss/dense_2_loss/truedivloss/dense_2_loss/sub*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:џџџџџџџџџ
ђ
Vtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeHtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
є
Xtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs_1BroadcastGradientArgsFtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeHtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Х
Jtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/LogicalOr	LogicalOrEtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/LessHtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Greater*'
_output_shapes
:џџџџџџџџџ*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value

Gtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectJtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/LogicalOrFtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/zeros:training/Adadelta/gradients/loss/dense_2_loss/Log_grad/mul*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:џџџџџџџџџ

Itraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1SelectEtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Less:training/Adadelta/gradients/loss/dense_2_loss/Log_grad/mulFtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*'
_output_shapes
:џџџџџџџџџ*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value

Itraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Select_2SelectHtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Greater:training/Adadelta/gradients/loss/dense_2_loss/Log_grad/mulFtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*'
_output_shapes
:џџџџџџџџџ*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
т
Dtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumGtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/SelectXtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
е
Htraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshapeDtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/SumFtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ц
Ftraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumItraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Xtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
Ъ
Jtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeFtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Htraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0*
_output_shapes
: 
ш
Ftraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_2SumItraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Select_2Ztraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs_1:1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
Ъ
Jtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_2ReshapeFtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_2Htraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0*
_output_shapes
: 
Н
@training/Adadelta/gradients/loss/dense_2_loss/truediv_grad/ShapeShapedense_2/Softmax*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
out_type0*
_output_shapes
:
Х
Btraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
out_type0*
_output_shapes
:
к
Ptraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs@training/Adadelta/gradients/loss/dense_2_loss/truediv_grad/ShapeBtraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Btraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDivHtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/Reshapeloss/dense_2_loss/Sum*'
_output_shapes
:џџџџџџџџџ*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
Щ
>training/Adadelta/gradients/loss/dense_2_loss/truediv_grad/SumSumBtraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/RealDivPtraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
Н
Btraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape>training/Adadelta/gradients/loss/dense_2_loss/truediv_grad/Sum@training/Adadelta/gradients/loss/dense_2_loss/truediv_grad/Shape*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
Ж
>training/Adadelta/gradients/loss/dense_2_loss/truediv_grad/NegNegdense_2/Softmax*'
_output_shapes
:џџџџџџџџџ*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv

Dtraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv>training/Adadelta/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/Sum*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:џџџџџџџџџ*
T0

Dtraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2RealDivDtraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1loss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:џџџџџџџџџ
Е
>training/Adadelta/gradients/loss/dense_2_loss/truediv_grad/mulMulHtraining/Adadelta/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeDtraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:џџџџџџџџџ
Щ
@training/Adadelta/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum>training/Adadelta/gradients/loss/dense_2_loss/truediv_grad/mulRtraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
У
Dtraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape@training/Adadelta/gradients/loss/dense_2_loss/truediv_grad/Sum_1Btraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*'
_output_shapes
:џџџџџџџџџ
Е
<training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/ShapeShapedense_2/Softmax*
_output_shapes
:*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
out_type0
Ї
;training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/SizeConst*(
_class
loc:@loss/dense_2_loss/Sum*
value	B :*
dtype0*
_output_shapes
: 
ђ
:training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/addAdd'loss/dense_2_loss/Sum/reduction_indices;training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Size*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 

:training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/modFloorMod:training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/add;training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Size*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
Ћ
>training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Shape_1Const*(
_class
loc:@loss/dense_2_loss/Sum*
valueB *
dtype0*
_output_shapes
: 
Ў
Btraining/Adadelta/gradients/loss/dense_2_loss/Sum_grad/range/startConst*
dtype0*
_output_shapes
: *(
_class
loc:@loss/dense_2_loss/Sum*
value	B : 
Ў
Btraining/Adadelta/gradients/loss/dense_2_loss/Sum_grad/range/deltaConst*(
_class
loc:@loss/dense_2_loss/Sum*
value	B :*
dtype0*
_output_shapes
: 
м
<training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/rangeRangeBtraining/Adadelta/gradients/loss/dense_2_loss/Sum_grad/range/start;training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/SizeBtraining/Adadelta/gradients/loss/dense_2_loss/Sum_grad/range/delta*
_output_shapes
:*

Tidx0*(
_class
loc:@loss/dense_2_loss/Sum
­
Atraining/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Fill/valueConst*(
_class
loc:@loss/dense_2_loss/Sum*
value	B :*
dtype0*
_output_shapes
: 
Ѓ
;training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/FillFill>training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Shape_1Atraining/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Fill/value*
T0*(
_class
loc:@loss/dense_2_loss/Sum*

index_type0*
_output_shapes
: 
Ћ
Dtraining/Adadelta/gradients/loss/dense_2_loss/Sum_grad/DynamicStitchDynamicStitch<training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/range:training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/mod<training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Shape;training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Fill*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
N*#
_output_shapes
:џџџџџџџџџ
Ќ
@training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Maximum/yConst*
_output_shapes
: *(
_class
loc:@loss/dense_2_loss/Sum*
value	B :*
dtype0
Љ
>training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/MaximumMaximumDtraining/Adadelta/gradients/loss/dense_2_loss/Sum_grad/DynamicStitch@training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Maximum/y*(
_class
loc:@loss/dense_2_loss/Sum*#
_output_shapes
:џџџџџџџџџ*
T0

?training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/floordivFloorDiv<training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Shape>training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Maximum*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:
А
>training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshapeDtraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Dtraining/Adadelta/gradients/loss/dense_2_loss/Sum_grad/DynamicStitch*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
Tshape0*
_output_shapes
:
В
;training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/TileTile>training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Reshape?training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/floordiv*'
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0*(
_class
loc:@loss/dense_2_loss/Sum

 training/Adadelta/gradients/AddNAddNBtraining/Adadelta/gradients/loss/dense_2_loss/truediv_grad/Reshape;training/Adadelta/gradients/loss/dense_2_loss/Sum_grad/Tile*'
_output_shapes
:џџџџџџџџџ*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
N
Ф
4training/Adadelta/gradients/dense_2/Softmax_grad/mulMul training/Adadelta/gradients/AddNdense_2/Softmax*'
_output_shapes
:џџџџџџџџџ*
T0*"
_class
loc:@dense_2/Softmax
Д
Ftraining/Adadelta/gradients/dense_2/Softmax_grad/Sum/reduction_indicesConst*"
_class
loc:@dense_2/Softmax*
valueB:*
dtype0*
_output_shapes
:
Ј
4training/Adadelta/gradients/dense_2/Softmax_grad/SumSum4training/Adadelta/gradients/dense_2/Softmax_grad/mulFtraining/Adadelta/gradients/dense_2/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0*
T0*"
_class
loc:@dense_2/Softmax
Г
>training/Adadelta/gradients/dense_2/Softmax_grad/Reshape/shapeConst*"
_class
loc:@dense_2/Softmax*
valueB"џџџџ   *
dtype0*
_output_shapes
:

8training/Adadelta/gradients/dense_2/Softmax_grad/ReshapeReshape4training/Adadelta/gradients/dense_2/Softmax_grad/Sum>training/Adadelta/gradients/dense_2/Softmax_grad/Reshape/shape*
T0*"
_class
loc:@dense_2/Softmax*
Tshape0*'
_output_shapes
:џџџџџџџџџ
э
4training/Adadelta/gradients/dense_2/Softmax_grad/subSub training/Adadelta/gradients/AddN8training/Adadelta/gradients/dense_2/Softmax_grad/Reshape*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:џџџџџџџџџ*
T0
к
6training/Adadelta/gradients/dense_2/Softmax_grad/mul_1Mul4training/Adadelta/gradients/dense_2/Softmax_grad/subdense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:џџџџџџџџџ
у
<training/Adadelta/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad6training/Adadelta/gradients/dense_2/Softmax_grad/mul_1*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC*
_output_shapes
:*
T0

6training/Adadelta/gradients/dense_2/MatMul_grad/MatMulMatMul6training/Adadelta/gradients/dense_2/Softmax_grad/mul_1dense_2/kernel/read*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul

8training/Adadelta/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_2/cond/Merge6training/Adadelta/gradients/dense_2/Softmax_grad/mul_1*
T0*!
_class
loc:@dense_2/MatMul*
_output_shapes

:*
transpose_a(*
transpose_b( 

?training/Adadelta/gradients/dropout_2/cond/Merge_grad/cond_gradSwitch6training/Adadelta/gradients/dense_2/MatMul_grad/MatMuldropout_2/cond/pred_id*
T0*!
_class
loc:@dense_2/MatMul*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
И
"training/Adadelta/gradients/SwitchSwitchdense_1/Reludropout_2/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Ј
#training/Adadelta/gradients/Shape_1Shape$training/Adadelta/gradients/Switch:1*
T0*
_class
loc:@dense_1/Relu*
out_type0*
_output_shapes
:
В
'training/Adadelta/gradients/zeros/ConstConst#^training/Adadelta/gradients/Switch*
_class
loc:@dense_1/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
м
!training/Adadelta/gradients/zerosFill#training/Adadelta/gradients/Shape_1'training/Adadelta/gradients/zeros/Const*'
_output_shapes
:џџџџџџџџџ*
T0*
_class
loc:@dense_1/Relu*

index_type0

Btraining/Adadelta/gradients/dropout_2/cond/Switch_1_grad/cond_gradMerge?training/Adadelta/gradients/dropout_2/cond/Merge_grad/cond_grad!training/Adadelta/gradients/zeros*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:џџџџџџџџџ: 
Ъ
Atraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/ShapeShapedropout_2/cond/dropout/div*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
out_type0*
_output_shapes
:
Ю
Ctraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/Shape_1Shapedropout_2/cond/dropout/Floor*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
out_type0*
_output_shapes
:
о
Qtraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsAtraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/ShapeCtraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

?training/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/MulMulAtraining/Adadelta/gradients/dropout_2/cond/Merge_grad/cond_grad:1dropout_2/cond/dropout/Floor*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*'
_output_shapes
:џџџџџџџџџ
Щ
?training/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/SumSum?training/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/MulQtraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs*-
_class#
!loc:@dropout_2/cond/dropout/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
С
Ctraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/ReshapeReshape?training/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/SumAtraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
Tshape0

Atraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Muldropout_2/cond/dropout/divAtraining/Adadelta/gradients/dropout_2/cond/Merge_grad/cond_grad:1*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*'
_output_shapes
:џџџџџџџџџ
Я
Atraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/Sum_1SumAtraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Straining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ч
Etraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/Reshape_1ReshapeAtraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/Sum_1Ctraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
Tshape0
Т
Atraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/ShapeShapedropout_2/cond/mul*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div*
out_type0*
_output_shapes
:
Е
Ctraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/Shape_1Const*-
_class#
!loc:@dropout_2/cond/dropout/div*
valueB *
dtype0*
_output_shapes
: 
о
Qtraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsAtraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/ShapeCtraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div

Ctraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/RealDivRealDivCtraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/Reshape dropout_2/cond/dropout/keep_prob*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div*'
_output_shapes
:џџџџџџџџџ
Э
?training/Adadelta/gradients/dropout_2/cond/dropout/div_grad/SumSumCtraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/RealDivQtraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div
С
Ctraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/ReshapeReshape?training/Adadelta/gradients/dropout_2/cond/dropout/div_grad/SumAtraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/Shape*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div*
Tshape0*'
_output_shapes
:џџџџџџџџџ
Л
?training/Adadelta/gradients/dropout_2/cond/dropout/div_grad/NegNegdropout_2/cond/mul*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div*'
_output_shapes
:џџџџџџџџџ

Etraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/RealDiv_1RealDiv?training/Adadelta/gradients/dropout_2/cond/dropout/div_grad/Neg dropout_2/cond/dropout/keep_prob*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div*'
_output_shapes
:џџџџџџџџџ

Etraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/RealDiv_2RealDivEtraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/RealDiv_1 dropout_2/cond/dropout/keep_prob*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div*'
_output_shapes
:џџџџџџџџџ
Г
?training/Adadelta/gradients/dropout_2/cond/dropout/div_grad/mulMulCtraining/Adadelta/gradients/dropout_2/cond/dropout/mul_grad/ReshapeEtraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/RealDiv_2*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div*'
_output_shapes
:џџџџџџџџџ
Э
Atraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/Sum_1Sum?training/Adadelta/gradients/dropout_2/cond/dropout/div_grad/mulStraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div*
_output_shapes
:
Ж
Etraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/Reshape_1ReshapeAtraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/Sum_1Ctraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/Shape_1*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div*
Tshape0*
_output_shapes
: 
Л
9training/Adadelta/gradients/dropout_2/cond/mul_grad/ShapeShapedropout_2/cond/mul/Switch:1*
T0*%
_class
loc:@dropout_2/cond/mul*
out_type0*
_output_shapes
:
Ѕ
;training/Adadelta/gradients/dropout_2/cond/mul_grad/Shape_1Const*%
_class
loc:@dropout_2/cond/mul*
valueB *
dtype0*
_output_shapes
: 
О
Itraining/Adadelta/gradients/dropout_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs9training/Adadelta/gradients/dropout_2/cond/mul_grad/Shape;training/Adadelta/gradients/dropout_2/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_2/cond/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
7training/Adadelta/gradients/dropout_2/cond/mul_grad/MulMulCtraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/Reshapedropout_2/cond/mul/y*%
_class
loc:@dropout_2/cond/mul*'
_output_shapes
:џџџџџџџџџ*
T0
Љ
7training/Adadelta/gradients/dropout_2/cond/mul_grad/SumSum7training/Adadelta/gradients/dropout_2/cond/mul_grad/MulItraining/Adadelta/gradients/dropout_2/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_2/cond/mul*
_output_shapes
:
Ё
;training/Adadelta/gradients/dropout_2/cond/mul_grad/ReshapeReshape7training/Adadelta/gradients/dropout_2/cond/mul_grad/Sum9training/Adadelta/gradients/dropout_2/cond/mul_grad/Shape*
T0*%
_class
loc:@dropout_2/cond/mul*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ћ
9training/Adadelta/gradients/dropout_2/cond/mul_grad/Mul_1Muldropout_2/cond/mul/Switch:1Ctraining/Adadelta/gradients/dropout_2/cond/dropout/div_grad/Reshape*
T0*%
_class
loc:@dropout_2/cond/mul*'
_output_shapes
:џџџџџџџџџ
Џ
9training/Adadelta/gradients/dropout_2/cond/mul_grad/Sum_1Sum9training/Adadelta/gradients/dropout_2/cond/mul_grad/Mul_1Ktraining/Adadelta/gradients/dropout_2/cond/mul_grad/BroadcastGradientArgs:1*
T0*%
_class
loc:@dropout_2/cond/mul*
_output_shapes
:*
	keep_dims( *

Tidx0

=training/Adadelta/gradients/dropout_2/cond/mul_grad/Reshape_1Reshape9training/Adadelta/gradients/dropout_2/cond/mul_grad/Sum_1;training/Adadelta/gradients/dropout_2/cond/mul_grad/Shape_1*%
_class
loc:@dropout_2/cond/mul*
Tshape0*
_output_shapes
: *
T0
К
$training/Adadelta/gradients/Switch_1Switchdense_1/Reludropout_2/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Ј
#training/Adadelta/gradients/Shape_2Shape$training/Adadelta/gradients/Switch_1*
T0*
_class
loc:@dense_1/Relu*
out_type0*
_output_shapes
:
Ж
)training/Adadelta/gradients/zeros_1/ConstConst%^training/Adadelta/gradients/Switch_1*
_class
loc:@dense_1/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
р
#training/Adadelta/gradients/zeros_1Fill#training/Adadelta/gradients/Shape_2)training/Adadelta/gradients/zeros_1/Const*
T0*
_class
loc:@dense_1/Relu*

index_type0*'
_output_shapes
:џџџџџџџџџ

Dtraining/Adadelta/gradients/dropout_2/cond/mul/Switch_grad/cond_gradMerge#training/Adadelta/gradients/zeros_1;training/Adadelta/gradients/dropout_2/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:џџџџџџџџџ: 

"training/Adadelta/gradients/AddN_1AddNBtraining/Adadelta/gradients/dropout_2/cond/Switch_1_grad/cond_gradDtraining/Adadelta/gradients/dropout_2/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_1/Relu*
N*'
_output_shapes
:џџџџџџџџџ
Ч
6training/Adadelta/gradients/dense_1/Relu_grad/ReluGradReluGrad"training/Adadelta/gradients/AddN_1dense_1/Relu*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:џџџџџџџџџ
у
<training/Adadelta/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad6training/Adadelta/gradients/dense_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes
:

6training/Adadelta/gradients/dense_1/MatMul_grad/MatMulMatMul6training/Adadelta/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
T0*!
_class
loc:@dense_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(

8training/Adadelta/gradients/dense_1/MatMul_grad/MatMul_1MatMulflatten_1/Reshape6training/Adadelta/gradients/dense_1/Relu_grad/ReluGrad*
_output_shapes
:	*
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_1/MatMul
В
8training/Adadelta/gradients/flatten_1/Reshape_grad/ShapeShapedropout_1/cond/Merge*
_output_shapes
:*
T0*$
_class
loc:@flatten_1/Reshape*
out_type0
Ѕ
:training/Adadelta/gradients/flatten_1/Reshape_grad/ReshapeReshape6training/Adadelta/gradients/dense_1/MatMul_grad/MatMul8training/Adadelta/gradients/flatten_1/Reshape_grad/Shape*
T0*$
_class
loc:@flatten_1/Reshape*
Tshape0*/
_output_shapes
:џџџџџџџџџ

?training/Adadelta/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch:training/Adadelta/gradients/flatten_1/Reshape_grad/Reshapedropout_1/cond/pred_id*
T0*$
_class
loc:@flatten_1/Reshape*J
_output_shapes8
6:џџџџџџџџџ:џџџџџџџџџ
р
$training/Adadelta/gradients/Switch_2Switchmax_pooling2d_2/MaxPooldropout_1/cond/pred_id*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*J
_output_shapes8
6:џџџџџџџџџ:џџџџџџџџџ
Е
#training/Adadelta/gradients/Shape_3Shape&training/Adadelta/gradients/Switch_2:1*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*
out_type0*
_output_shapes
:
С
)training/Adadelta/gradients/zeros_2/ConstConst%^training/Adadelta/gradients/Switch_2**
_class 
loc:@max_pooling2d_2/MaxPool*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
#training/Adadelta/gradients/zeros_2Fill#training/Adadelta/gradients/Shape_3)training/Adadelta/gradients/zeros_2/Const*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*

index_type0*/
_output_shapes
:џџџџџџџџџ
Ђ
Btraining/Adadelta/gradients/dropout_1/cond/Switch_1_grad/cond_gradMerge?training/Adadelta/gradients/dropout_1/cond/Merge_grad/cond_grad#training/Adadelta/gradients/zeros_2**
_class 
loc:@max_pooling2d_2/MaxPool*
N*1
_output_shapes
:џџџџџџџџџ: *
T0
Ъ
Atraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/dropout/div*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
out_type0*
_output_shapes
:
Ю
Ctraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/Shape_1Shapedropout_1/cond/dropout/Floor*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
out_type0*
_output_shapes
:
о
Qtraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsAtraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/ShapeCtraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

?training/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/MulMulAtraining/Adadelta/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Floor*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*/
_output_shapes
:џџџџџџџџџ
Щ
?training/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/SumSum?training/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/MulQtraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul
Щ
Ctraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape?training/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/SumAtraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/Shape*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
Tshape0*/
_output_shapes
:џџџџџџџџџ

Atraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/dropout/divAtraining/Adadelta/gradients/dropout_1/cond/Merge_grad/cond_grad:1*-
_class#
!loc:@dropout_1/cond/dropout/mul*/
_output_shapes
:џџџџџџџџџ*
T0
Я
Atraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/Sum_1SumAtraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Straining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:
Я
Etraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1ReshapeAtraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Ctraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*/
_output_shapes
:џџџџџџџџџ*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
Tshape0
Т
Atraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/ShapeShapedropout_1/cond/mul*
_output_shapes
:*
T0*-
_class#
!loc:@dropout_1/cond/dropout/div*
out_type0
Е
Ctraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/Shape_1Const*-
_class#
!loc:@dropout_1/cond/dropout/div*
valueB *
dtype0*
_output_shapes
: 
о
Qtraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsAtraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/ShapeCtraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/Shape_1*-
_class#
!loc:@dropout_1/cond/dropout/div*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

Ctraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/RealDivRealDivCtraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/Reshape dropout_1/cond/dropout/keep_prob*
T0*-
_class#
!loc:@dropout_1/cond/dropout/div*/
_output_shapes
:џџџџџџџџџ
Э
?training/Adadelta/gradients/dropout_1/cond/dropout/div_grad/SumSumCtraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/RealDivQtraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_1/cond/dropout/div
Щ
Ctraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/ReshapeReshape?training/Adadelta/gradients/dropout_1/cond/dropout/div_grad/SumAtraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/Shape*-
_class#
!loc:@dropout_1/cond/dropout/div*
Tshape0*/
_output_shapes
:џџџџџџџџџ*
T0
У
?training/Adadelta/gradients/dropout_1/cond/dropout/div_grad/NegNegdropout_1/cond/mul*
T0*-
_class#
!loc:@dropout_1/cond/dropout/div*/
_output_shapes
:џџџџџџџџџ

Etraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/RealDiv_1RealDiv?training/Adadelta/gradients/dropout_1/cond/dropout/div_grad/Neg dropout_1/cond/dropout/keep_prob*
T0*-
_class#
!loc:@dropout_1/cond/dropout/div*/
_output_shapes
:џџџџџџџџџ
Ђ
Etraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/RealDiv_2RealDivEtraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/RealDiv_1 dropout_1/cond/dropout/keep_prob*
T0*-
_class#
!loc:@dropout_1/cond/dropout/div*/
_output_shapes
:џџџџџџџџџ
Л
?training/Adadelta/gradients/dropout_1/cond/dropout/div_grad/mulMulCtraining/Adadelta/gradients/dropout_1/cond/dropout/mul_grad/ReshapeEtraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/RealDiv_2*/
_output_shapes
:џџџџџџџџџ*
T0*-
_class#
!loc:@dropout_1/cond/dropout/div
Э
Atraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/Sum_1Sum?training/Adadelta/gradients/dropout_1/cond/dropout/div_grad/mulStraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_1/cond/dropout/div
Ж
Etraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/Reshape_1ReshapeAtraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/Sum_1Ctraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*-
_class#
!loc:@dropout_1/cond/dropout/div*
Tshape0
Л
9training/Adadelta/gradients/dropout_1/cond/mul_grad/ShapeShapedropout_1/cond/mul/Switch:1*
T0*%
_class
loc:@dropout_1/cond/mul*
out_type0*
_output_shapes
:
Ѕ
;training/Adadelta/gradients/dropout_1/cond/mul_grad/Shape_1Const*%
_class
loc:@dropout_1/cond/mul*
valueB *
dtype0*
_output_shapes
: 
О
Itraining/Adadelta/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs9training/Adadelta/gradients/dropout_1/cond/mul_grad/Shape;training/Adadelta/gradients/dropout_1/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_1/cond/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
њ
7training/Adadelta/gradients/dropout_1/cond/mul_grad/MulMulCtraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/Reshapedropout_1/cond/mul/y*
T0*%
_class
loc:@dropout_1/cond/mul*/
_output_shapes
:џџџџџџџџџ
Љ
7training/Adadelta/gradients/dropout_1/cond/mul_grad/SumSum7training/Adadelta/gradients/dropout_1/cond/mul_grad/MulItraining/Adadelta/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs*
T0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Љ
;training/Adadelta/gradients/dropout_1/cond/mul_grad/ReshapeReshape7training/Adadelta/gradients/dropout_1/cond/mul_grad/Sum9training/Adadelta/gradients/dropout_1/cond/mul_grad/Shape*
T0*%
_class
loc:@dropout_1/cond/mul*
Tshape0*/
_output_shapes
:џџџџџџџџџ

9training/Adadelta/gradients/dropout_1/cond/mul_grad/Mul_1Muldropout_1/cond/mul/Switch:1Ctraining/Adadelta/gradients/dropout_1/cond/dropout/div_grad/Reshape*/
_output_shapes
:џџџџџџџџџ*
T0*%
_class
loc:@dropout_1/cond/mul
Џ
9training/Adadelta/gradients/dropout_1/cond/mul_grad/Sum_1Sum9training/Adadelta/gradients/dropout_1/cond/mul_grad/Mul_1Ktraining/Adadelta/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs:1*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

=training/Adadelta/gradients/dropout_1/cond/mul_grad/Reshape_1Reshape9training/Adadelta/gradients/dropout_1/cond/mul_grad/Sum_1;training/Adadelta/gradients/dropout_1/cond/mul_grad/Shape_1*
_output_shapes
: *
T0*%
_class
loc:@dropout_1/cond/mul*
Tshape0
р
$training/Adadelta/gradients/Switch_3Switchmax_pooling2d_2/MaxPooldropout_1/cond/pred_id*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*J
_output_shapes8
6:џџџџџџџџџ:џџџџџџџџџ
Г
#training/Adadelta/gradients/Shape_4Shape$training/Adadelta/gradients/Switch_3*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*
out_type0*
_output_shapes
:
С
)training/Adadelta/gradients/zeros_3/ConstConst%^training/Adadelta/gradients/Switch_3**
_class 
loc:@max_pooling2d_2/MaxPool*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
#training/Adadelta/gradients/zeros_3Fill#training/Adadelta/gradients/Shape_4)training/Adadelta/gradients/zeros_3/Const**
_class 
loc:@max_pooling2d_2/MaxPool*

index_type0*/
_output_shapes
:џџџџџџџџџ*
T0
 
Dtraining/Adadelta/gradients/dropout_1/cond/mul/Switch_grad/cond_gradMerge#training/Adadelta/gradients/zeros_3;training/Adadelta/gradients/dropout_1/cond/mul_grad/Reshape*1
_output_shapes
:џџџџџџџџџ: *
T0**
_class 
loc:@max_pooling2d_2/MaxPool*
N
Ѓ
"training/Adadelta/gradients/AddN_2AddNBtraining/Adadelta/gradients/dropout_1/cond/Switch_1_grad/cond_gradDtraining/Adadelta/gradients/dropout_1/cond/mul/Switch_grad/cond_grad*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*
N*/
_output_shapes
:џџџџџџџџџ
ы
Dtraining/Adadelta/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGrad batch_normalization_1/cond/Mergemax_pooling2d_2/MaxPool"training/Adadelta/gradients/AddN_2**
_class 
loc:@max_pooling2d_2/MaxPool*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ00*
T0
Р
Ktraining/Adadelta/gradients/batch_normalization_1/cond/Merge_grad/cond_gradSwitchDtraining/Adadelta/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGrad"batch_normalization_1/cond/pred_id*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*J
_output_shapes8
6:џџџџџџџџџ00:џџџџџџџџџ00
У
&training/Adadelta/gradients/zeros_like	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:1*
T0*<
_class2
0.loc:@batch_normalization_1/cond/FusedBatchNorm*
_output_shapes
:
Х
(training/Adadelta/gradients/zeros_like_1	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:2*<
_class2
0.loc:@batch_normalization_1/cond/FusedBatchNorm*
_output_shapes
:*
T0
Х
(training/Adadelta/gradients/zeros_like_2	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:3*<
_class2
0.loc:@batch_normalization_1/cond/FusedBatchNorm*
_output_shapes
:*
T0
Х
(training/Adadelta/gradients/zeros_like_3	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:4*
T0*<
_class2
0.loc:@batch_normalization_1/cond/FusedBatchNorm*
_output_shapes
:
к
]training/Adadelta/gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradKtraining/Adadelta/gradients/batch_normalization_1/cond/Merge_grad/cond_grad0batch_normalization_1/cond/FusedBatchNorm/Switch2batch_normalization_1/cond/FusedBatchNorm/Switch_12batch_normalization_1/cond/FusedBatchNorm/Switch_32batch_normalization_1/cond/FusedBatchNorm/Switch_4*G
_output_shapes5
3:џџџџџџџџџ00::::*
T0*<
_class2
0.loc:@batch_normalization_1/cond/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%o:

$training/Adadelta/gradients/Switch_4Switch$batch_normalization_1/FusedBatchNorm"batch_normalization_1/cond/pred_id*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*J
_output_shapes8
6:џџџџџџџџџ00:џџџџџџџџџ00*
T0
Р
#training/Adadelta/gradients/Shape_5Shape$training/Adadelta/gradients/Switch_4*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*
out_type0*
_output_shapes
:
Ю
)training/Adadelta/gradients/zeros_4/ConstConst%^training/Adadelta/gradients/Switch_4*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*
valueB
 *    *
dtype0*
_output_shapes
: 

#training/Adadelta/gradients/zeros_4Fill#training/Adadelta/gradients/Shape_5)training/Adadelta/gradients/zeros_4/Const*/
_output_shapes
:џџџџџџџџџ00*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*

index_type0
Щ
Ntraining/Adadelta/gradients/batch_normalization_1/cond/Switch_1_grad/cond_gradMerge#training/Adadelta/gradients/zeros_4Mtraining/Adadelta/gradients/batch_normalization_1/cond/Merge_grad/cond_grad:1*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*
N*1
_output_shapes
:џџџџџџџџџ00: 
и
$training/Adadelta/gradients/Switch_5Switchconv2d_2/Relu"batch_normalization_1/cond/pred_id*
T0* 
_class
loc:@conv2d_2/Relu*J
_output_shapes8
6:џџџџџџџџџ00:џџџџџџџџџ00
Ћ
#training/Adadelta/gradients/Shape_6Shape&training/Adadelta/gradients/Switch_5:1* 
_class
loc:@conv2d_2/Relu*
out_type0*
_output_shapes
:*
T0
З
)training/Adadelta/gradients/zeros_5/ConstConst%^training/Adadelta/gradients/Switch_5* 
_class
loc:@conv2d_2/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
щ
#training/Adadelta/gradients/zeros_5Fill#training/Adadelta/gradients/Shape_6)training/Adadelta/gradients/zeros_5/Const*/
_output_shapes
:џџџџџџџџџ00*
T0* 
_class
loc:@conv2d_2/Relu*

index_type0
Я
[training/Adadelta/gradients/batch_normalization_1/cond/FusedBatchNorm/Switch_grad/cond_gradMerge]training/Adadelta/gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad#training/Adadelta/gradients/zeros_5*
T0* 
_class
loc:@conv2d_2/Relu*
N*1
_output_shapes
:џџџџџџџџџ00: 
Я
$training/Adadelta/gradients/Switch_6Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id* 
_output_shapes
::*
T0*.
_class$
" loc:@batch_normalization_1/gamma
Й
#training/Adadelta/gradients/Shape_7Shape&training/Adadelta/gradients/Switch_6:1*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
out_type0*
_output_shapes
:
Х
)training/Adadelta/gradients/zeros_6/ConstConst%^training/Adadelta/gradients/Switch_6*.
_class$
" loc:@batch_normalization_1/gamma*
valueB
 *    *
dtype0*
_output_shapes
: 
т
#training/Adadelta/gradients/zeros_6Fill#training/Adadelta/gradients/Shape_7)training/Adadelta/gradients/zeros_6/Const*
T0*.
_class$
" loc:@batch_normalization_1/gamma*

index_type0*
_output_shapes
:
Ь
]training/Adadelta/gradients/batch_normalization_1/cond/FusedBatchNorm/Switch_1_grad/cond_gradMerge_training/Adadelta/gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1#training/Adadelta/gradients/zeros_6*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
N*
_output_shapes

:: 
Э
$training/Adadelta/gradients/Switch_7Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id* 
_output_shapes
::*
T0*-
_class#
!loc:@batch_normalization_1/beta
И
#training/Adadelta/gradients/Shape_8Shape&training/Adadelta/gradients/Switch_7:1*
T0*-
_class#
!loc:@batch_normalization_1/beta*
out_type0*
_output_shapes
:
Ф
)training/Adadelta/gradients/zeros_7/ConstConst%^training/Adadelta/gradients/Switch_7*-
_class#
!loc:@batch_normalization_1/beta*
valueB
 *    *
dtype0*
_output_shapes
: 
с
#training/Adadelta/gradients/zeros_7Fill#training/Adadelta/gradients/Shape_8)training/Adadelta/gradients/zeros_7/Const*-
_class#
!loc:@batch_normalization_1/beta*

index_type0*
_output_shapes
:*
T0
Ы
]training/Adadelta/gradients/batch_normalization_1/cond/FusedBatchNorm/Switch_2_grad/cond_gradMerge_training/Adadelta/gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2#training/Adadelta/gradients/zeros_7*-
_class#
!loc:@batch_normalization_1/beta*
N*
_output_shapes

:: *
T0
Л
(training/Adadelta/gradients/zeros_like_4	ZerosLike&batch_normalization_1/FusedBatchNorm:1*
_output_shapes
:*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm
Л
(training/Adadelta/gradients/zeros_like_5	ZerosLike&batch_normalization_1/FusedBatchNorm:2*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*
_output_shapes
:
Л
(training/Adadelta/gradients/zeros_like_6	ZerosLike&batch_normalization_1/FusedBatchNorm:3*
_output_shapes
:*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm
Л
(training/Adadelta/gradients/zeros_like_7	ZerosLike&batch_normalization_1/FusedBatchNorm:4*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*
_output_shapes
:

Xtraining/Adadelta/gradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradNtraining/Adadelta/gradients/batch_normalization_1/cond/Switch_1_grad/cond_gradconv2d_2/Relu batch_normalization_1/gamma/read&batch_normalization_1/FusedBatchNorm:3&batch_normalization_1/FusedBatchNorm:4*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*
data_formatNHWC*
is_training(*
epsilon%o:*C
_output_shapes1
/:џџџџџџџџџ00::: : 
Ц
"training/Adadelta/gradients/AddN_3AddN[training/Adadelta/gradients/batch_normalization_1/cond/FusedBatchNorm/Switch_grad/cond_gradXtraining/Adadelta/gradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGrad*
T0* 
_class
loc:@conv2d_2/Relu*
N*/
_output_shapes
:џџџџџџџџџ00
в
7training/Adadelta/gradients/conv2d_2/Relu_grad/ReluGradReluGrad"training/Adadelta/gradients/AddN_3conv2d_2/Relu*/
_output_shapes
:џџџџџџџџџ00*
T0* 
_class
loc:@conv2d_2/Relu
У
"training/Adadelta/gradients/AddN_4AddN]training/Adadelta/gradients/batch_normalization_1/cond/FusedBatchNorm/Switch_1_grad/cond_gradZtraining/Adadelta/gradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGrad:1*.
_class$
" loc:@batch_normalization_1/gamma*
N*
_output_shapes
:*
T0
Т
"training/Adadelta/gradients/AddN_5AddN]training/Adadelta/gradients/batch_normalization_1/cond/FusedBatchNorm/Switch_2_grad/cond_gradZtraining/Adadelta/gradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGrad:2*
N*
_output_shapes
:*
T0*-
_class#
!loc:@batch_normalization_1/beta
ц
=training/Adadelta/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad7training/Adadelta/gradients/conv2d_2/Relu_grad/ReluGrad*#
_class
loc:@conv2d_2/BiasAdd*
data_formatNHWC*
_output_shapes
:*
T0
т
<training/Adadelta/gradients/conv2d_2/convolution_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_2/kernel/read*
T0*'
_class
loc:@conv2d_2/convolution*
out_type0*
N* 
_output_shapes
::
Н
;training/Adadelta/gradients/conv2d_2/convolution_grad/ConstConst*'
_class
loc:@conv2d_2/convolution*%
valueB"            *
dtype0*
_output_shapes
:
П
Itraining/Adadelta/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput<training/Adadelta/gradients/conv2d_2/convolution_grad/ShapeNconv2d_2/kernel/read7training/Adadelta/gradients/conv2d_2/Relu_grad/ReluGrad*
paddingVALID*/
_output_shapes
:џџџџџџџџџ11*
	dilations
*
T0*'
_class
loc:@conv2d_2/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
К
Jtraining/Adadelta/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool;training/Adadelta/gradients/conv2d_2/convolution_grad/Const7training/Adadelta/gradients/conv2d_2/Relu_grad/ReluGrad*&
_output_shapes
:*
	dilations
*
T0*'
_class
loc:@conv2d_2/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
џ
Dtraining/Adadelta/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_1/Relumax_pooling2d_1/MaxPoolItraining/Adadelta/gradients/conv2d_2/convolution_grad/Conv2DBackpropInput*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџcc*
T0**
_class 
loc:@max_pooling2d_1/MaxPool*
strides
*
data_formatNHWC
є
7training/Adadelta/gradients/conv2d_1/Relu_grad/ReluGradReluGradDtraining/Adadelta/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_1/Relu*
T0* 
_class
loc:@conv2d_1/Relu*/
_output_shapes
:џџџџџџџџџcc
ц
=training/Adadelta/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad7training/Adadelta/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_1/BiasAdd*
data_formatNHWC*
_output_shapes
:
й
<training/Adadelta/gradients/conv2d_1/convolution_grad/ShapeNShapeNconv2d_1_inputconv2d_1/kernel/read*
T0*'
_class
loc:@conv2d_1/convolution*
out_type0*
N* 
_output_shapes
::
Н
;training/Adadelta/gradients/conv2d_1/convolution_grad/ConstConst*'
_class
loc:@conv2d_1/convolution*%
valueB"            *
dtype0*
_output_shapes
:
П
Itraining/Adadelta/gradients/conv2d_1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput<training/Adadelta/gradients/conv2d_1/convolution_grad/ShapeNconv2d_1/kernel/read7training/Adadelta/gradients/conv2d_1/Relu_grad/ReluGrad*
paddingVALID*/
_output_shapes
:џџџџџџџџџdd*
	dilations
*
T0*'
_class
loc:@conv2d_1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Б
Jtraining/Adadelta/gradients/conv2d_1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_1_input;training/Adadelta/gradients/conv2d_1/convolution_grad/Const7training/Adadelta/gradients/conv2d_1/Relu_grad/ReluGrad*&
_output_shapes
:*
	dilations
*
T0*'
_class
loc:@conv2d_1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
|
training/Adadelta/zerosConst*%
valueB*    *
dtype0*&
_output_shapes
:

training/Adadelta/Variable
VariableV2*
shared_name *
dtype0*&
_output_shapes
:*
	container *
shape:
щ
!training/Adadelta/Variable/AssignAssigntraining/Adadelta/Variabletraining/Adadelta/zeros*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adadelta/Variable
Ї
training/Adadelta/Variable/readIdentitytraining/Adadelta/Variable*&
_output_shapes
:*
T0*-
_class#
!loc:@training/Adadelta/Variable
f
training/Adadelta/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adadelta/Variable_1
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
х
#training/Adadelta/Variable_1/AssignAssigntraining/Adadelta/Variable_1training/Adadelta/zeros_1*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_1*
validate_shape(
Ё
!training/Adadelta/Variable_1/readIdentitytraining/Adadelta/Variable_1*
T0*/
_class%
#!loc:@training/Adadelta/Variable_1*
_output_shapes
:
~
training/Adadelta/zeros_2Const*%
valueB*    *
dtype0*&
_output_shapes
:
 
training/Adadelta/Variable_2
VariableV2*
shared_name *
dtype0*&
_output_shapes
:*
	container *
shape:
ё
#training/Adadelta/Variable_2/AssignAssigntraining/Adadelta/Variable_2training/Adadelta/zeros_2*&
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_2*
validate_shape(
­
!training/Adadelta/Variable_2/readIdentitytraining/Adadelta/Variable_2*
T0*/
_class%
#!loc:@training/Adadelta/Variable_2*&
_output_shapes
:
f
training/Adadelta/zeros_3Const*
dtype0*
_output_shapes
:*
valueB*    

training/Adadelta/Variable_3
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
х
#training/Adadelta/Variable_3/AssignAssigntraining/Adadelta/Variable_3training/Adadelta/zeros_3*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_3*
validate_shape(*
_output_shapes
:
Ё
!training/Adadelta/Variable_3/readIdentitytraining/Adadelta/Variable_3*
T0*/
_class%
#!loc:@training/Adadelta/Variable_3*
_output_shapes
:
f
training/Adadelta/zeros_4Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adadelta/Variable_4
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
х
#training/Adadelta/Variable_4/AssignAssigntraining/Adadelta/Variable_4training/Adadelta/zeros_4*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_4*
validate_shape(*
_output_shapes
:
Ё
!training/Adadelta/Variable_4/readIdentitytraining/Adadelta/Variable_4*
_output_shapes
:*
T0*/
_class%
#!loc:@training/Adadelta/Variable_4
f
training/Adadelta/zeros_5Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adadelta/Variable_5
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
х
#training/Adadelta/Variable_5/AssignAssigntraining/Adadelta/Variable_5training/Adadelta/zeros_5*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_5
Ё
!training/Adadelta/Variable_5/readIdentitytraining/Adadelta/Variable_5*
T0*/
_class%
#!loc:@training/Adadelta/Variable_5*
_output_shapes
:
z
)training/Adadelta/zeros_6/shape_as_tensorConst*
valueB" 	     *
dtype0*
_output_shapes
:
d
training/Adadelta/zeros_6/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Љ
training/Adadelta/zeros_6Fill)training/Adadelta/zeros_6/shape_as_tensortraining/Adadelta/zeros_6/Const*
_output_shapes
:	*
T0*

index_type0

training/Adadelta/Variable_6
VariableV2*
shape:	*
shared_name *
dtype0*
_output_shapes
:	*
	container 
ъ
#training/Adadelta/Variable_6/AssignAssigntraining/Adadelta/Variable_6training/Adadelta/zeros_6*
_output_shapes
:	*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_6*
validate_shape(
І
!training/Adadelta/Variable_6/readIdentitytraining/Adadelta/Variable_6*
T0*/
_class%
#!loc:@training/Adadelta/Variable_6*
_output_shapes
:	
f
training/Adadelta/zeros_7Const*
dtype0*
_output_shapes
:*
valueB*    

training/Adadelta/Variable_7
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
х
#training/Adadelta/Variable_7/AssignAssigntraining/Adadelta/Variable_7training/Adadelta/zeros_7*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_7*
validate_shape(*
_output_shapes
:
Ё
!training/Adadelta/Variable_7/readIdentitytraining/Adadelta/Variable_7*
_output_shapes
:*
T0*/
_class%
#!loc:@training/Adadelta/Variable_7
n
training/Adadelta/zeros_8Const*
valueB*    *
dtype0*
_output_shapes

:

training/Adadelta/Variable_8
VariableV2*
_output_shapes

:*
	container *
shape
:*
shared_name *
dtype0
щ
#training/Adadelta/Variable_8/AssignAssigntraining/Adadelta/Variable_8training/Adadelta/zeros_8*
_output_shapes

:*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_8*
validate_shape(
Ѕ
!training/Adadelta/Variable_8/readIdentitytraining/Adadelta/Variable_8*
T0*/
_class%
#!loc:@training/Adadelta/Variable_8*
_output_shapes

:
f
training/Adadelta/zeros_9Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adadelta/Variable_9
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
х
#training/Adadelta/Variable_9/AssignAssigntraining/Adadelta/Variable_9training/Adadelta/zeros_9*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_9*
validate_shape(*
_output_shapes
:
Ё
!training/Adadelta/Variable_9/readIdentitytraining/Adadelta/Variable_9*
_output_shapes
:*
T0*/
_class%
#!loc:@training/Adadelta/Variable_9

training/Adadelta/zeros_10Const*%
valueB*    *
dtype0*&
_output_shapes
:
Ё
training/Adadelta/Variable_10
VariableV2*
dtype0*&
_output_shapes
:*
	container *
shape:*
shared_name 
ѕ
$training/Adadelta/Variable_10/AssignAssigntraining/Adadelta/Variable_10training/Adadelta/zeros_10*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_10*
validate_shape(*&
_output_shapes
:
А
"training/Adadelta/Variable_10/readIdentitytraining/Adadelta/Variable_10*
T0*0
_class&
$"loc:@training/Adadelta/Variable_10*&
_output_shapes
:
g
training/Adadelta/zeros_11Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adadelta/Variable_11
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
щ
$training/Adadelta/Variable_11/AssignAssigntraining/Adadelta/Variable_11training/Adadelta/zeros_11*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_11*
validate_shape(*
_output_shapes
:
Є
"training/Adadelta/Variable_11/readIdentitytraining/Adadelta/Variable_11*
T0*0
_class&
$"loc:@training/Adadelta/Variable_11*
_output_shapes
:

training/Adadelta/zeros_12Const*&
_output_shapes
:*%
valueB*    *
dtype0
Ё
training/Adadelta/Variable_12
VariableV2*
shared_name *
dtype0*&
_output_shapes
:*
	container *
shape:
ѕ
$training/Adadelta/Variable_12/AssignAssigntraining/Adadelta/Variable_12training/Adadelta/zeros_12*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_12*
validate_shape(*&
_output_shapes
:
А
"training/Adadelta/Variable_12/readIdentitytraining/Adadelta/Variable_12*
T0*0
_class&
$"loc:@training/Adadelta/Variable_12*&
_output_shapes
:
g
training/Adadelta/zeros_13Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adadelta/Variable_13
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
щ
$training/Adadelta/Variable_13/AssignAssigntraining/Adadelta/Variable_13training/Adadelta/zeros_13*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_13*
validate_shape(*
_output_shapes
:
Є
"training/Adadelta/Variable_13/readIdentitytraining/Adadelta/Variable_13*
T0*0
_class&
$"loc:@training/Adadelta/Variable_13*
_output_shapes
:
g
training/Adadelta/zeros_14Const*
_output_shapes
:*
valueB*    *
dtype0

training/Adadelta/Variable_14
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
щ
$training/Adadelta/Variable_14/AssignAssigntraining/Adadelta/Variable_14training/Adadelta/zeros_14*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_14*
validate_shape(*
_output_shapes
:
Є
"training/Adadelta/Variable_14/readIdentitytraining/Adadelta/Variable_14*
T0*0
_class&
$"loc:@training/Adadelta/Variable_14*
_output_shapes
:
g
training/Adadelta/zeros_15Const*
_output_shapes
:*
valueB*    *
dtype0

training/Adadelta/Variable_15
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
щ
$training/Adadelta/Variable_15/AssignAssigntraining/Adadelta/Variable_15training/Adadelta/zeros_15*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_15
Є
"training/Adadelta/Variable_15/readIdentitytraining/Adadelta/Variable_15*
T0*0
_class&
$"loc:@training/Adadelta/Variable_15*
_output_shapes
:
{
*training/Adadelta/zeros_16/shape_as_tensorConst*
valueB" 	     *
dtype0*
_output_shapes
:
e
 training/Adadelta/zeros_16/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ќ
training/Adadelta/zeros_16Fill*training/Adadelta/zeros_16/shape_as_tensor training/Adadelta/zeros_16/Const*
T0*

index_type0*
_output_shapes
:	

training/Adadelta/Variable_16
VariableV2*
dtype0*
_output_shapes
:	*
	container *
shape:	*
shared_name 
ю
$training/Adadelta/Variable_16/AssignAssigntraining/Adadelta/Variable_16training/Adadelta/zeros_16*
_output_shapes
:	*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_16*
validate_shape(
Љ
"training/Adadelta/Variable_16/readIdentitytraining/Adadelta/Variable_16*
T0*0
_class&
$"loc:@training/Adadelta/Variable_16*
_output_shapes
:	
g
training/Adadelta/zeros_17Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adadelta/Variable_17
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
щ
$training/Adadelta/Variable_17/AssignAssigntraining/Adadelta/Variable_17training/Adadelta/zeros_17*
_output_shapes
:*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_17*
validate_shape(
Є
"training/Adadelta/Variable_17/readIdentitytraining/Adadelta/Variable_17*
_output_shapes
:*
T0*0
_class&
$"loc:@training/Adadelta/Variable_17
o
training/Adadelta/zeros_18Const*
valueB*    *
dtype0*
_output_shapes

:

training/Adadelta/Variable_18
VariableV2*
shape
:*
shared_name *
dtype0*
_output_shapes

:*
	container 
э
$training/Adadelta/Variable_18/AssignAssigntraining/Adadelta/Variable_18training/Adadelta/zeros_18*
T0*0
_class&
$"loc:@training/Adadelta/Variable_18*
validate_shape(*
_output_shapes

:*
use_locking(
Ј
"training/Adadelta/Variable_18/readIdentitytraining/Adadelta/Variable_18*
T0*0
_class&
$"loc:@training/Adadelta/Variable_18*
_output_shapes

:
g
training/Adadelta/zeros_19Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adadelta/Variable_19
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
щ
$training/Adadelta/Variable_19/AssignAssigntraining/Adadelta/Variable_19training/Adadelta/zeros_19*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_19
Є
"training/Adadelta/Variable_19/readIdentitytraining/Adadelta/Variable_19*
_output_shapes
:*
T0*0
_class&
$"loc:@training/Adadelta/Variable_19
c
!training/Adadelta/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
М
training/Adadelta/AssignAdd	AssignAddAdadelta/iterations!training/Adadelta/AssignAdd/value*
use_locking( *
T0	*&
_class
loc:@Adadelta/iterations*
_output_shapes
: 
\
training/Adadelta/mul/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mulMultraining/Adadelta/mul/xtraining/Adadelta/Variable/read*&
_output_shapes
:*
T0

training/Adadelta/SquareSquareJtraining/Adadelta/gradients/conv2d_1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
^
training/Adadelta/mul_1/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 

training/Adadelta/mul_1Multraining/Adadelta/mul_1/xtraining/Adadelta/Square*
T0*&
_output_shapes
:
}
training/Adadelta/addAddtraining/Adadelta/multraining/Adadelta/mul_1*&
_output_shapes
:*
T0
о
training/Adadelta/AssignAssigntraining/Adadelta/Variabletraining/Adadelta/add*
use_locking(*
T0*-
_class#
!loc:@training/Adadelta/Variable*
validate_shape(*&
_output_shapes
:
^
training/Adadelta/add_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3

training/Adadelta/add_1Add"training/Adadelta/Variable_10/readtraining/Adadelta/add_1/y*&
_output_shapes
:*
T0
\
training/Adadelta/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/Adadelta/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ќ
training/Adadelta/clip_by_valueClipByValuetraining/Adadelta/add_1training/Adadelta/Consttraining/Adadelta/Const_1*
T0*&
_output_shapes
:
p
training/Adadelta/SqrtSqrttraining/Adadelta/clip_by_value*&
_output_shapes
:*
T0
Г
training/Adadelta/mul_2MulJtraining/Adadelta/gradients/conv2d_1/convolution_grad/Conv2DBackpropFiltertraining/Adadelta/Sqrt*&
_output_shapes
:*
T0
^
training/Adadelta/add_2/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 

training/Adadelta/add_2Addtraining/Adadelta/addtraining/Adadelta/add_2/y*
T0*&
_output_shapes
:
^
training/Adadelta/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *    
^
training/Adadelta/Const_3Const*
dtype0*
_output_shapes
: *
valueB
 *  
А
!training/Adadelta/clip_by_value_1ClipByValuetraining/Adadelta/add_2training/Adadelta/Const_2training/Adadelta/Const_3*&
_output_shapes
:*
T0
t
training/Adadelta/Sqrt_1Sqrt!training/Adadelta/clip_by_value_1*
T0*&
_output_shapes
:

training/Adadelta/truedivRealDivtraining/Adadelta/mul_2training/Adadelta/Sqrt_1*
T0*&
_output_shapes
:
|
training/Adadelta/mul_3MulAdadelta/lr/readtraining/Adadelta/truediv*
T0*&
_output_shapes
:
|
training/Adadelta/subSubconv2d_1/kernel/readtraining/Adadelta/mul_3*&
_output_shapes
:*
T0
Ъ
training/Adadelta/Assign_1Assignconv2d_1/kerneltraining/Adadelta/sub*&
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(
^
training/Adadelta/mul_4/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_4Multraining/Adadelta/mul_4/x"training/Adadelta/Variable_10/read*
T0*&
_output_shapes
:
p
training/Adadelta/Square_1Squaretraining/Adadelta/truediv*
T0*&
_output_shapes
:
^
training/Adadelta/mul_5/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 

training/Adadelta/mul_5Multraining/Adadelta/mul_5/xtraining/Adadelta/Square_1*
T0*&
_output_shapes
:

training/Adadelta/add_3Addtraining/Adadelta/mul_4training/Adadelta/mul_5*
T0*&
_output_shapes
:
ш
training/Adadelta/Assign_2Assigntraining/Adadelta/Variable_10training/Adadelta/add_3*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_10*
validate_shape(*&
_output_shapes
:
^
training/Adadelta/mul_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *33s?

training/Adadelta/mul_6Multraining/Adadelta/mul_6/x!training/Adadelta/Variable_1/read*
_output_shapes
:*
T0

training/Adadelta/Square_2Square=training/Adadelta/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
^
training/Adadelta/mul_7/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL=
z
training/Adadelta/mul_7Multraining/Adadelta/mul_7/xtraining/Adadelta/Square_2*
_output_shapes
:*
T0
u
training/Adadelta/add_4Addtraining/Adadelta/mul_6training/Adadelta/mul_7*
_output_shapes
:*
T0
к
training/Adadelta/Assign_3Assigntraining/Adadelta/Variable_1training/Adadelta/add_4*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_1
^
training/Adadelta/add_5/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 

training/Adadelta/add_5Add"training/Adadelta/Variable_11/readtraining/Adadelta/add_5/y*
T0*
_output_shapes
:
^
training/Adadelta/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/Adadelta/Const_5Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Є
!training/Adadelta/clip_by_value_2ClipByValuetraining/Adadelta/add_5training/Adadelta/Const_4training/Adadelta/Const_5*
_output_shapes
:*
T0
h
training/Adadelta/Sqrt_2Sqrt!training/Adadelta/clip_by_value_2*
T0*
_output_shapes
:

training/Adadelta/mul_8Mul=training/Adadelta/gradients/conv2d_1/BiasAdd_grad/BiasAddGradtraining/Adadelta/Sqrt_2*
T0*
_output_shapes
:
^
training/Adadelta/add_6/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
w
training/Adadelta/add_6Addtraining/Adadelta/add_4training/Adadelta/add_6/y*
T0*
_output_shapes
:
^
training/Adadelta/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/Adadelta/Const_7Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Є
!training/Adadelta/clip_by_value_3ClipByValuetraining/Adadelta/add_6training/Adadelta/Const_6training/Adadelta/Const_7*
T0*
_output_shapes
:
h
training/Adadelta/Sqrt_3Sqrt!training/Adadelta/clip_by_value_3*
T0*
_output_shapes
:
~
training/Adadelta/truediv_1RealDivtraining/Adadelta/mul_8training/Adadelta/Sqrt_3*
T0*
_output_shapes
:
r
training/Adadelta/mul_9MulAdadelta/lr/readtraining/Adadelta/truediv_1*
T0*
_output_shapes
:
p
training/Adadelta/sub_1Subconv2d_1/bias/readtraining/Adadelta/mul_9*
T0*
_output_shapes
:
М
training/Adadelta/Assign_4Assignconv2d_1/biastraining/Adadelta/sub_1*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:
_
training/Adadelta/mul_10/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_10Multraining/Adadelta/mul_10/x"training/Adadelta/Variable_11/read*
T0*
_output_shapes
:
f
training/Adadelta/Square_3Squaretraining/Adadelta/truediv_1*
_output_shapes
:*
T0
_
training/Adadelta/mul_11/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
|
training/Adadelta/mul_11Multraining/Adadelta/mul_11/xtraining/Adadelta/Square_3*
T0*
_output_shapes
:
w
training/Adadelta/add_7Addtraining/Adadelta/mul_10training/Adadelta/mul_11*
T0*
_output_shapes
:
м
training/Adadelta/Assign_5Assigntraining/Adadelta/Variable_11training/Adadelta/add_7*
T0*0
_class&
$"loc:@training/Adadelta/Variable_11*
validate_shape(*
_output_shapes
:*
use_locking(
_
training/Adadelta/mul_12/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_12Multraining/Adadelta/mul_12/x!training/Adadelta/Variable_2/read*&
_output_shapes
:*
T0
Ё
training/Adadelta/Square_4SquareJtraining/Adadelta/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
_
training/Adadelta/mul_13/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 

training/Adadelta/mul_13Multraining/Adadelta/mul_13/xtraining/Adadelta/Square_4*&
_output_shapes
:*
T0

training/Adadelta/add_8Addtraining/Adadelta/mul_12training/Adadelta/mul_13*&
_output_shapes
:*
T0
ц
training/Adadelta/Assign_6Assigntraining/Adadelta/Variable_2training/Adadelta/add_8*
T0*/
_class%
#!loc:@training/Adadelta/Variable_2*
validate_shape(*&
_output_shapes
:*
use_locking(
^
training/Adadelta/add_9/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 

training/Adadelta/add_9Add"training/Adadelta/Variable_12/readtraining/Adadelta/add_9/y*
T0*&
_output_shapes
:
^
training/Adadelta/Const_8Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/Adadelta/Const_9Const*
valueB
 *  *
dtype0*
_output_shapes
: 
А
!training/Adadelta/clip_by_value_4ClipByValuetraining/Adadelta/add_9training/Adadelta/Const_8training/Adadelta/Const_9*&
_output_shapes
:*
T0
t
training/Adadelta/Sqrt_4Sqrt!training/Adadelta/clip_by_value_4*&
_output_shapes
:*
T0
Ж
training/Adadelta/mul_14MulJtraining/Adadelta/gradients/conv2d_2/convolution_grad/Conv2DBackpropFiltertraining/Adadelta/Sqrt_4*
T0*&
_output_shapes
:
_
training/Adadelta/add_10/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 

training/Adadelta/add_10Addtraining/Adadelta/add_8training/Adadelta/add_10/y*
T0*&
_output_shapes
:
_
training/Adadelta/Const_10Const*
valueB
 *    *
dtype0*
_output_shapes
: 
_
training/Adadelta/Const_11Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Г
!training/Adadelta/clip_by_value_5ClipByValuetraining/Adadelta/add_10training/Adadelta/Const_10training/Adadelta/Const_11*
T0*&
_output_shapes
:
t
training/Adadelta/Sqrt_5Sqrt!training/Adadelta/clip_by_value_5*
T0*&
_output_shapes
:

training/Adadelta/truediv_2RealDivtraining/Adadelta/mul_14training/Adadelta/Sqrt_5*
T0*&
_output_shapes
:

training/Adadelta/mul_15MulAdadelta/lr/readtraining/Adadelta/truediv_2*&
_output_shapes
:*
T0

training/Adadelta/sub_2Subconv2d_2/kernel/readtraining/Adadelta/mul_15*&
_output_shapes
:*
T0
Ь
training/Adadelta/Assign_7Assignconv2d_2/kerneltraining/Adadelta/sub_2*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:
_
training/Adadelta/mul_16/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_16Multraining/Adadelta/mul_16/x"training/Adadelta/Variable_12/read*
T0*&
_output_shapes
:
r
training/Adadelta/Square_5Squaretraining/Adadelta/truediv_2*&
_output_shapes
:*
T0
_
training/Adadelta/mul_17/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 

training/Adadelta/mul_17Multraining/Adadelta/mul_17/xtraining/Adadelta/Square_5*
T0*&
_output_shapes
:

training/Adadelta/add_11Addtraining/Adadelta/mul_16training/Adadelta/mul_17*
T0*&
_output_shapes
:
щ
training/Adadelta/Assign_8Assigntraining/Adadelta/Variable_12training/Adadelta/add_11*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_12
_
training/Adadelta/mul_18/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_18Multraining/Adadelta/mul_18/x!training/Adadelta/Variable_3/read*
T0*
_output_shapes
:

training/Adadelta/Square_6Square=training/Adadelta/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
_
training/Adadelta/mul_19/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
|
training/Adadelta/mul_19Multraining/Adadelta/mul_19/xtraining/Adadelta/Square_6*
T0*
_output_shapes
:
x
training/Adadelta/add_12Addtraining/Adadelta/mul_18training/Adadelta/mul_19*
T0*
_output_shapes
:
л
training/Adadelta/Assign_9Assigntraining/Adadelta/Variable_3training/Adadelta/add_12*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_3*
validate_shape(
_
training/Adadelta/add_13/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 

training/Adadelta/add_13Add"training/Adadelta/Variable_13/readtraining/Adadelta/add_13/y*
_output_shapes
:*
T0
_
training/Adadelta/Const_12Const*
valueB
 *    *
dtype0*
_output_shapes
: 
_
training/Adadelta/Const_13Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ї
!training/Adadelta/clip_by_value_6ClipByValuetraining/Adadelta/add_13training/Adadelta/Const_12training/Adadelta/Const_13*
_output_shapes
:*
T0
h
training/Adadelta/Sqrt_6Sqrt!training/Adadelta/clip_by_value_6*
T0*
_output_shapes
:

training/Adadelta/mul_20Mul=training/Adadelta/gradients/conv2d_2/BiasAdd_grad/BiasAddGradtraining/Adadelta/Sqrt_6*
T0*
_output_shapes
:
_
training/Adadelta/add_14/yConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
z
training/Adadelta/add_14Addtraining/Adadelta/add_12training/Adadelta/add_14/y*
T0*
_output_shapes
:
_
training/Adadelta/Const_14Const*
valueB
 *    *
dtype0*
_output_shapes
: 
_
training/Adadelta/Const_15Const*
_output_shapes
: *
valueB
 *  *
dtype0
Ї
!training/Adadelta/clip_by_value_7ClipByValuetraining/Adadelta/add_14training/Adadelta/Const_14training/Adadelta/Const_15*
_output_shapes
:*
T0
h
training/Adadelta/Sqrt_7Sqrt!training/Adadelta/clip_by_value_7*
_output_shapes
:*
T0

training/Adadelta/truediv_3RealDivtraining/Adadelta/mul_20training/Adadelta/Sqrt_7*
T0*
_output_shapes
:
s
training/Adadelta/mul_21MulAdadelta/lr/readtraining/Adadelta/truediv_3*
_output_shapes
:*
T0
q
training/Adadelta/sub_3Subconv2d_2/bias/readtraining/Adadelta/mul_21*
_output_shapes
:*
T0
Н
training/Adadelta/Assign_10Assignconv2d_2/biastraining/Adadelta/sub_3*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(
_
training/Adadelta/mul_22/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_22Multraining/Adadelta/mul_22/x"training/Adadelta/Variable_13/read*
_output_shapes
:*
T0
f
training/Adadelta/Square_7Squaretraining/Adadelta/truediv_3*
T0*
_output_shapes
:
_
training/Adadelta/mul_23/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL=
|
training/Adadelta/mul_23Multraining/Adadelta/mul_23/xtraining/Adadelta/Square_7*
_output_shapes
:*
T0
x
training/Adadelta/add_15Addtraining/Adadelta/mul_22training/Adadelta/mul_23*
_output_shapes
:*
T0
о
training/Adadelta/Assign_11Assigntraining/Adadelta/Variable_13training/Adadelta/add_15*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_13*
validate_shape(*
_output_shapes
:
_
training/Adadelta/mul_24/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_24Multraining/Adadelta/mul_24/x!training/Adadelta/Variable_4/read*
_output_shapes
:*
T0
m
training/Adadelta/Square_8Square"training/Adadelta/gradients/AddN_4*
T0*
_output_shapes
:
_
training/Adadelta/mul_25/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
|
training/Adadelta/mul_25Multraining/Adadelta/mul_25/xtraining/Adadelta/Square_8*
T0*
_output_shapes
:
x
training/Adadelta/add_16Addtraining/Adadelta/mul_24training/Adadelta/mul_25*
T0*
_output_shapes
:
м
training/Adadelta/Assign_12Assigntraining/Adadelta/Variable_4training/Adadelta/add_16*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_4*
validate_shape(*
_output_shapes
:
_
training/Adadelta/add_17/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3

training/Adadelta/add_17Add"training/Adadelta/Variable_14/readtraining/Adadelta/add_17/y*
_output_shapes
:*
T0
_
training/Adadelta/Const_16Const*
dtype0*
_output_shapes
: *
valueB
 *    
_
training/Adadelta/Const_17Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ї
!training/Adadelta/clip_by_value_8ClipByValuetraining/Adadelta/add_17training/Adadelta/Const_16training/Adadelta/Const_17*
T0*
_output_shapes
:
h
training/Adadelta/Sqrt_8Sqrt!training/Adadelta/clip_by_value_8*
T0*
_output_shapes
:

training/Adadelta/mul_26Mul"training/Adadelta/gradients/AddN_4training/Adadelta/Sqrt_8*
T0*
_output_shapes
:
_
training/Adadelta/add_18/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
z
training/Adadelta/add_18Addtraining/Adadelta/add_16training/Adadelta/add_18/y*
T0*
_output_shapes
:
_
training/Adadelta/Const_18Const*
valueB
 *    *
dtype0*
_output_shapes
: 
_
training/Adadelta/Const_19Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ї
!training/Adadelta/clip_by_value_9ClipByValuetraining/Adadelta/add_18training/Adadelta/Const_18training/Adadelta/Const_19*
T0*
_output_shapes
:
h
training/Adadelta/Sqrt_9Sqrt!training/Adadelta/clip_by_value_9*
T0*
_output_shapes
:

training/Adadelta/truediv_4RealDivtraining/Adadelta/mul_26training/Adadelta/Sqrt_9*
T0*
_output_shapes
:
s
training/Adadelta/mul_27MulAdadelta/lr/readtraining/Adadelta/truediv_4*
T0*
_output_shapes
:

training/Adadelta/sub_4Sub batch_normalization_1/gamma/readtraining/Adadelta/mul_27*
T0*
_output_shapes
:
й
training/Adadelta/Assign_13Assignbatch_normalization_1/gammatraining/Adadelta/sub_4*
_output_shapes
:*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(
_
training/Adadelta/mul_28/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_28Multraining/Adadelta/mul_28/x"training/Adadelta/Variable_14/read*
T0*
_output_shapes
:
f
training/Adadelta/Square_9Squaretraining/Adadelta/truediv_4*
_output_shapes
:*
T0
_
training/Adadelta/mul_29/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
|
training/Adadelta/mul_29Multraining/Adadelta/mul_29/xtraining/Adadelta/Square_9*
T0*
_output_shapes
:
x
training/Adadelta/add_19Addtraining/Adadelta/mul_28training/Adadelta/mul_29*
_output_shapes
:*
T0
о
training/Adadelta/Assign_14Assigntraining/Adadelta/Variable_14training/Adadelta/add_19*0
_class&
$"loc:@training/Adadelta/Variable_14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
_
training/Adadelta/mul_30/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_30Multraining/Adadelta/mul_30/x!training/Adadelta/Variable_5/read*
T0*
_output_shapes
:
n
training/Adadelta/Square_10Square"training/Adadelta/gradients/AddN_5*
T0*
_output_shapes
:
_
training/Adadelta/mul_31/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL=
}
training/Adadelta/mul_31Multraining/Adadelta/mul_31/xtraining/Adadelta/Square_10*
T0*
_output_shapes
:
x
training/Adadelta/add_20Addtraining/Adadelta/mul_30training/Adadelta/mul_31*
T0*
_output_shapes
:
м
training/Adadelta/Assign_15Assigntraining/Adadelta/Variable_5training/Adadelta/add_20*
T0*/
_class%
#!loc:@training/Adadelta/Variable_5*
validate_shape(*
_output_shapes
:*
use_locking(
_
training/Adadelta/add_21/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 

training/Adadelta/add_21Add"training/Adadelta/Variable_15/readtraining/Adadelta/add_21/y*
T0*
_output_shapes
:
_
training/Adadelta/Const_20Const*
_output_shapes
: *
valueB
 *    *
dtype0
_
training/Adadelta/Const_21Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ј
"training/Adadelta/clip_by_value_10ClipByValuetraining/Adadelta/add_21training/Adadelta/Const_20training/Adadelta/Const_21*
T0*
_output_shapes
:
j
training/Adadelta/Sqrt_10Sqrt"training/Adadelta/clip_by_value_10*
T0*
_output_shapes
:

training/Adadelta/mul_32Mul"training/Adadelta/gradients/AddN_5training/Adadelta/Sqrt_10*
T0*
_output_shapes
:
_
training/Adadelta/add_22/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
z
training/Adadelta/add_22Addtraining/Adadelta/add_20training/Adadelta/add_22/y*
_output_shapes
:*
T0
_
training/Adadelta/Const_22Const*
dtype0*
_output_shapes
: *
valueB
 *    
_
training/Adadelta/Const_23Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ј
"training/Adadelta/clip_by_value_11ClipByValuetraining/Adadelta/add_22training/Adadelta/Const_22training/Adadelta/Const_23*
_output_shapes
:*
T0
j
training/Adadelta/Sqrt_11Sqrt"training/Adadelta/clip_by_value_11*
_output_shapes
:*
T0

training/Adadelta/truediv_5RealDivtraining/Adadelta/mul_32training/Adadelta/Sqrt_11*
T0*
_output_shapes
:
s
training/Adadelta/mul_33MulAdadelta/lr/readtraining/Adadelta/truediv_5*
T0*
_output_shapes
:
~
training/Adadelta/sub_5Subbatch_normalization_1/beta/readtraining/Adadelta/mul_33*
T0*
_output_shapes
:
з
training/Adadelta/Assign_16Assignbatch_normalization_1/betatraining/Adadelta/sub_5*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta
_
training/Adadelta/mul_34/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_34Multraining/Adadelta/mul_34/x"training/Adadelta/Variable_15/read*
_output_shapes
:*
T0
g
training/Adadelta/Square_11Squaretraining/Adadelta/truediv_5*
T0*
_output_shapes
:
_
training/Adadelta/mul_35/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
}
training/Adadelta/mul_35Multraining/Adadelta/mul_35/xtraining/Adadelta/Square_11*
T0*
_output_shapes
:
x
training/Adadelta/add_23Addtraining/Adadelta/mul_34training/Adadelta/mul_35*
_output_shapes
:*
T0
о
training/Adadelta/Assign_17Assigntraining/Adadelta/Variable_15training/Adadelta/add_23*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_15*
validate_shape(*
_output_shapes
:
_
training/Adadelta/mul_36/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_36Multraining/Adadelta/mul_36/x!training/Adadelta/Variable_6/read*
_output_shapes
:	*
T0

training/Adadelta/Square_12Square8training/Adadelta/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
_
training/Adadelta/mul_37/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 

training/Adadelta/mul_37Multraining/Adadelta/mul_37/xtraining/Adadelta/Square_12*
_output_shapes
:	*
T0
}
training/Adadelta/add_24Addtraining/Adadelta/mul_36training/Adadelta/mul_37*
T0*
_output_shapes
:	
с
training/Adadelta/Assign_18Assigntraining/Adadelta/Variable_6training/Adadelta/add_24*
T0*/
_class%
#!loc:@training/Adadelta/Variable_6*
validate_shape(*
_output_shapes
:	*
use_locking(
_
training/Adadelta/add_25/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 

training/Adadelta/add_25Add"training/Adadelta/Variable_16/readtraining/Adadelta/add_25/y*
T0*
_output_shapes
:	
_
training/Adadelta/Const_24Const*
valueB
 *    *
dtype0*
_output_shapes
: 
_
training/Adadelta/Const_25Const*
valueB
 *  *
dtype0*
_output_shapes
: 
­
"training/Adadelta/clip_by_value_12ClipByValuetraining/Adadelta/add_25training/Adadelta/Const_24training/Adadelta/Const_25*
_output_shapes
:	*
T0
o
training/Adadelta/Sqrt_12Sqrt"training/Adadelta/clip_by_value_12*
T0*
_output_shapes
:	

training/Adadelta/mul_38Mul8training/Adadelta/gradients/dense_1/MatMul_grad/MatMul_1training/Adadelta/Sqrt_12*
T0*
_output_shapes
:	
_
training/Adadelta/add_26/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 

training/Adadelta/add_26Addtraining/Adadelta/add_24training/Adadelta/add_26/y*
T0*
_output_shapes
:	
_
training/Adadelta/Const_26Const*
dtype0*
_output_shapes
: *
valueB
 *    
_
training/Adadelta/Const_27Const*
_output_shapes
: *
valueB
 *  *
dtype0
­
"training/Adadelta/clip_by_value_13ClipByValuetraining/Adadelta/add_26training/Adadelta/Const_26training/Adadelta/Const_27*
T0*
_output_shapes
:	
o
training/Adadelta/Sqrt_13Sqrt"training/Adadelta/clip_by_value_13*
_output_shapes
:	*
T0

training/Adadelta/truediv_6RealDivtraining/Adadelta/mul_38training/Adadelta/Sqrt_13*
T0*
_output_shapes
:	
x
training/Adadelta/mul_39MulAdadelta/lr/readtraining/Adadelta/truediv_6*
T0*
_output_shapes
:	
w
training/Adadelta/sub_6Subdense_1/kernel/readtraining/Adadelta/mul_39*
T0*
_output_shapes
:	
Ф
training/Adadelta/Assign_19Assigndense_1/kerneltraining/Adadelta/sub_6*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	
_
training/Adadelta/mul_40/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_40Multraining/Adadelta/mul_40/x"training/Adadelta/Variable_16/read*
_output_shapes
:	*
T0
l
training/Adadelta/Square_13Squaretraining/Adadelta/truediv_6*
T0*
_output_shapes
:	
_
training/Adadelta/mul_41/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 

training/Adadelta/mul_41Multraining/Adadelta/mul_41/xtraining/Adadelta/Square_13*
T0*
_output_shapes
:	
}
training/Adadelta/add_27Addtraining/Adadelta/mul_40training/Adadelta/mul_41*
T0*
_output_shapes
:	
у
training/Adadelta/Assign_20Assigntraining/Adadelta/Variable_16training/Adadelta/add_27*
T0*0
_class&
$"loc:@training/Adadelta/Variable_16*
validate_shape(*
_output_shapes
:	*
use_locking(
_
training/Adadelta/mul_42/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_42Multraining/Adadelta/mul_42/x!training/Adadelta/Variable_7/read*
_output_shapes
:*
T0

training/Adadelta/Square_14Square<training/Adadelta/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
_
training/Adadelta/mul_43/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
}
training/Adadelta/mul_43Multraining/Adadelta/mul_43/xtraining/Adadelta/Square_14*
T0*
_output_shapes
:
x
training/Adadelta/add_28Addtraining/Adadelta/mul_42training/Adadelta/mul_43*
_output_shapes
:*
T0
м
training/Adadelta/Assign_21Assigntraining/Adadelta/Variable_7training/Adadelta/add_28*/
_class%
#!loc:@training/Adadelta/Variable_7*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
_
training/Adadelta/add_29/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 

training/Adadelta/add_29Add"training/Adadelta/Variable_17/readtraining/Adadelta/add_29/y*
_output_shapes
:*
T0
_
training/Adadelta/Const_28Const*
dtype0*
_output_shapes
: *
valueB
 *    
_
training/Adadelta/Const_29Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ј
"training/Adadelta/clip_by_value_14ClipByValuetraining/Adadelta/add_29training/Adadelta/Const_28training/Adadelta/Const_29*
T0*
_output_shapes
:
j
training/Adadelta/Sqrt_14Sqrt"training/Adadelta/clip_by_value_14*
T0*
_output_shapes
:

training/Adadelta/mul_44Mul<training/Adadelta/gradients/dense_1/BiasAdd_grad/BiasAddGradtraining/Adadelta/Sqrt_14*
_output_shapes
:*
T0
_
training/Adadelta/add_30/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
z
training/Adadelta/add_30Addtraining/Adadelta/add_28training/Adadelta/add_30/y*
T0*
_output_shapes
:
_
training/Adadelta/Const_30Const*
dtype0*
_output_shapes
: *
valueB
 *    
_
training/Adadelta/Const_31Const*
dtype0*
_output_shapes
: *
valueB
 *  
Ј
"training/Adadelta/clip_by_value_15ClipByValuetraining/Adadelta/add_30training/Adadelta/Const_30training/Adadelta/Const_31*
T0*
_output_shapes
:
j
training/Adadelta/Sqrt_15Sqrt"training/Adadelta/clip_by_value_15*
T0*
_output_shapes
:

training/Adadelta/truediv_7RealDivtraining/Adadelta/mul_44training/Adadelta/Sqrt_15*
_output_shapes
:*
T0
s
training/Adadelta/mul_45MulAdadelta/lr/readtraining/Adadelta/truediv_7*
T0*
_output_shapes
:
p
training/Adadelta/sub_7Subdense_1/bias/readtraining/Adadelta/mul_45*
T0*
_output_shapes
:
Л
training/Adadelta/Assign_22Assigndense_1/biastraining/Adadelta/sub_7*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense_1/bias
_
training/Adadelta/mul_46/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_46Multraining/Adadelta/mul_46/x"training/Adadelta/Variable_17/read*
T0*
_output_shapes
:
g
training/Adadelta/Square_15Squaretraining/Adadelta/truediv_7*
_output_shapes
:*
T0
_
training/Adadelta/mul_47/xConst*
_output_shapes
: *
valueB
 *ЭЬL=*
dtype0
}
training/Adadelta/mul_47Multraining/Adadelta/mul_47/xtraining/Adadelta/Square_15*
T0*
_output_shapes
:
x
training/Adadelta/add_31Addtraining/Adadelta/mul_46training/Adadelta/mul_47*
T0*
_output_shapes
:
о
training/Adadelta/Assign_23Assigntraining/Adadelta/Variable_17training/Adadelta/add_31*
T0*0
_class&
$"loc:@training/Adadelta/Variable_17*
validate_shape(*
_output_shapes
:*
use_locking(
_
training/Adadelta/mul_48/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_48Multraining/Adadelta/mul_48/x!training/Adadelta/Variable_8/read*
_output_shapes

:*
T0

training/Adadelta/Square_16Square8training/Adadelta/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
_
training/Adadelta/mul_49/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 

training/Adadelta/mul_49Multraining/Adadelta/mul_49/xtraining/Adadelta/Square_16*
T0*
_output_shapes

:
|
training/Adadelta/add_32Addtraining/Adadelta/mul_48training/Adadelta/mul_49*
T0*
_output_shapes

:
р
training/Adadelta/Assign_24Assigntraining/Adadelta/Variable_8training/Adadelta/add_32*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_8*
validate_shape(*
_output_shapes

:
_
training/Adadelta/add_33/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 

training/Adadelta/add_33Add"training/Adadelta/Variable_18/readtraining/Adadelta/add_33/y*
T0*
_output_shapes

:
_
training/Adadelta/Const_32Const*
valueB
 *    *
dtype0*
_output_shapes
: 
_
training/Adadelta/Const_33Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ќ
"training/Adadelta/clip_by_value_16ClipByValuetraining/Adadelta/add_33training/Adadelta/Const_32training/Adadelta/Const_33*
T0*
_output_shapes

:
n
training/Adadelta/Sqrt_16Sqrt"training/Adadelta/clip_by_value_16*
_output_shapes

:*
T0

training/Adadelta/mul_50Mul8training/Adadelta/gradients/dense_2/MatMul_grad/MatMul_1training/Adadelta/Sqrt_16*
_output_shapes

:*
T0
_
training/Adadelta/add_34/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
~
training/Adadelta/add_34Addtraining/Adadelta/add_32training/Adadelta/add_34/y*
_output_shapes

:*
T0
_
training/Adadelta/Const_34Const*
_output_shapes
: *
valueB
 *    *
dtype0
_
training/Adadelta/Const_35Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ќ
"training/Adadelta/clip_by_value_17ClipByValuetraining/Adadelta/add_34training/Adadelta/Const_34training/Adadelta/Const_35*
_output_shapes

:*
T0
n
training/Adadelta/Sqrt_17Sqrt"training/Adadelta/clip_by_value_17*
_output_shapes

:*
T0

training/Adadelta/truediv_8RealDivtraining/Adadelta/mul_50training/Adadelta/Sqrt_17*
T0*
_output_shapes

:
w
training/Adadelta/mul_51MulAdadelta/lr/readtraining/Adadelta/truediv_8*
T0*
_output_shapes

:
v
training/Adadelta/sub_8Subdense_2/kernel/readtraining/Adadelta/mul_51*
_output_shapes

:*
T0
У
training/Adadelta/Assign_25Assigndense_2/kerneltraining/Adadelta/sub_8*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

:
_
training/Adadelta/mul_52/xConst*
_output_shapes
: *
valueB
 *33s?*
dtype0

training/Adadelta/mul_52Multraining/Adadelta/mul_52/x"training/Adadelta/Variable_18/read*
T0*
_output_shapes

:
k
training/Adadelta/Square_17Squaretraining/Adadelta/truediv_8*
T0*
_output_shapes

:
_
training/Adadelta/mul_53/xConst*
_output_shapes
: *
valueB
 *ЭЬL=*
dtype0

training/Adadelta/mul_53Multraining/Adadelta/mul_53/xtraining/Adadelta/Square_17*
T0*
_output_shapes

:
|
training/Adadelta/add_35Addtraining/Adadelta/mul_52training/Adadelta/mul_53*
T0*
_output_shapes

:
т
training/Adadelta/Assign_26Assigntraining/Adadelta/Variable_18training/Adadelta/add_35*
_output_shapes

:*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_18*
validate_shape(
_
training/Adadelta/mul_54/xConst*
_output_shapes
: *
valueB
 *33s?*
dtype0

training/Adadelta/mul_54Multraining/Adadelta/mul_54/x!training/Adadelta/Variable_9/read*
T0*
_output_shapes
:

training/Adadelta/Square_18Square<training/Adadelta/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
_
training/Adadelta/mul_55/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
}
training/Adadelta/mul_55Multraining/Adadelta/mul_55/xtraining/Adadelta/Square_18*
T0*
_output_shapes
:
x
training/Adadelta/add_36Addtraining/Adadelta/mul_54training/Adadelta/mul_55*
T0*
_output_shapes
:
м
training/Adadelta/Assign_27Assigntraining/Adadelta/Variable_9training/Adadelta/add_36*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_9*
validate_shape(*
_output_shapes
:
_
training/Adadelta/add_37/yConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0

training/Adadelta/add_37Add"training/Adadelta/Variable_19/readtraining/Adadelta/add_37/y*
T0*
_output_shapes
:
_
training/Adadelta/Const_36Const*
valueB
 *    *
dtype0*
_output_shapes
: 
_
training/Adadelta/Const_37Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ј
"training/Adadelta/clip_by_value_18ClipByValuetraining/Adadelta/add_37training/Adadelta/Const_36training/Adadelta/Const_37*
T0*
_output_shapes
:
j
training/Adadelta/Sqrt_18Sqrt"training/Adadelta/clip_by_value_18*
_output_shapes
:*
T0

training/Adadelta/mul_56Mul<training/Adadelta/gradients/dense_2/BiasAdd_grad/BiasAddGradtraining/Adadelta/Sqrt_18*
_output_shapes
:*
T0
_
training/Adadelta/add_38/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
z
training/Adadelta/add_38Addtraining/Adadelta/add_36training/Adadelta/add_38/y*
T0*
_output_shapes
:
_
training/Adadelta/Const_38Const*
valueB
 *    *
dtype0*
_output_shapes
: 
_
training/Adadelta/Const_39Const*
_output_shapes
: *
valueB
 *  *
dtype0
Ј
"training/Adadelta/clip_by_value_19ClipByValuetraining/Adadelta/add_38training/Adadelta/Const_38training/Adadelta/Const_39*
T0*
_output_shapes
:
j
training/Adadelta/Sqrt_19Sqrt"training/Adadelta/clip_by_value_19*
T0*
_output_shapes
:

training/Adadelta/truediv_9RealDivtraining/Adadelta/mul_56training/Adadelta/Sqrt_19*
_output_shapes
:*
T0
s
training/Adadelta/mul_57MulAdadelta/lr/readtraining/Adadelta/truediv_9*
T0*
_output_shapes
:
p
training/Adadelta/sub_9Subdense_2/bias/readtraining/Adadelta/mul_57*
T0*
_output_shapes
:
Л
training/Adadelta/Assign_28Assigndense_2/biastraining/Adadelta/sub_9*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
_
training/Adadelta/mul_58/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 

training/Adadelta/mul_58Multraining/Adadelta/mul_58/x"training/Adadelta/Variable_19/read*
_output_shapes
:*
T0
g
training/Adadelta/Square_19Squaretraining/Adadelta/truediv_9*
T0*
_output_shapes
:
_
training/Adadelta/mul_59/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
}
training/Adadelta/mul_59Multraining/Adadelta/mul_59/xtraining/Adadelta/Square_19*
T0*
_output_shapes
:
x
training/Adadelta/add_39Addtraining/Adadelta/mul_58training/Adadelta/mul_59*
T0*
_output_shapes
:
о
training/Adadelta/Assign_29Assigntraining/Adadelta/Variable_19training/Adadelta/add_39*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_19*
validate_shape(*
_output_shapes
:
Ё
training/group_depsNoOp&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1	^loss/mul^metrics/acc/Mean^training/Adadelta/Assign^training/Adadelta/AssignAdd^training/Adadelta/Assign_1^training/Adadelta/Assign_10^training/Adadelta/Assign_11^training/Adadelta/Assign_12^training/Adadelta/Assign_13^training/Adadelta/Assign_14^training/Adadelta/Assign_15^training/Adadelta/Assign_16^training/Adadelta/Assign_17^training/Adadelta/Assign_18^training/Adadelta/Assign_19^training/Adadelta/Assign_2^training/Adadelta/Assign_20^training/Adadelta/Assign_21^training/Adadelta/Assign_22^training/Adadelta/Assign_23^training/Adadelta/Assign_24^training/Adadelta/Assign_25^training/Adadelta/Assign_26^training/Adadelta/Assign_27^training/Adadelta/Assign_28^training/Adadelta/Assign_29^training/Adadelta/Assign_3^training/Adadelta/Assign_4^training/Adadelta/Assign_5^training/Adadelta/Assign_6^training/Adadelta/Assign_7^training/Adadelta/Assign_8^training/Adadelta/Assign_9

IsVariableInitialized_8IsVariableInitializedAdadelta/lr*
_output_shapes
: *
_class
loc:@Adadelta/lr*
dtype0

IsVariableInitialized_9IsVariableInitializedAdadelta/decay*!
_class
loc:@Adadelta/decay*
dtype0*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitializedAdadelta/iterations*&
_class
loc:@Adadelta/iterations*
dtype0	*
_output_shapes
: 
Ё
IsVariableInitialized_11IsVariableInitializedtraining/Adadelta/Variable*
dtype0*
_output_shapes
: *-
_class#
!loc:@training/Adadelta/Variable
Ѕ
IsVariableInitialized_12IsVariableInitializedtraining/Adadelta/Variable_1*/
_class%
#!loc:@training/Adadelta/Variable_1*
dtype0*
_output_shapes
: 
Ѕ
IsVariableInitialized_13IsVariableInitializedtraining/Adadelta/Variable_2*
_output_shapes
: */
_class%
#!loc:@training/Adadelta/Variable_2*
dtype0
Ѕ
IsVariableInitialized_14IsVariableInitializedtraining/Adadelta/Variable_3*/
_class%
#!loc:@training/Adadelta/Variable_3*
dtype0*
_output_shapes
: 
Ѕ
IsVariableInitialized_15IsVariableInitializedtraining/Adadelta/Variable_4*/
_class%
#!loc:@training/Adadelta/Variable_4*
dtype0*
_output_shapes
: 
Ѕ
IsVariableInitialized_16IsVariableInitializedtraining/Adadelta/Variable_5*
_output_shapes
: */
_class%
#!loc:@training/Adadelta/Variable_5*
dtype0
Ѕ
IsVariableInitialized_17IsVariableInitializedtraining/Adadelta/Variable_6*/
_class%
#!loc:@training/Adadelta/Variable_6*
dtype0*
_output_shapes
: 
Ѕ
IsVariableInitialized_18IsVariableInitializedtraining/Adadelta/Variable_7*/
_class%
#!loc:@training/Adadelta/Variable_7*
dtype0*
_output_shapes
: 
Ѕ
IsVariableInitialized_19IsVariableInitializedtraining/Adadelta/Variable_8*/
_class%
#!loc:@training/Adadelta/Variable_8*
dtype0*
_output_shapes
: 
Ѕ
IsVariableInitialized_20IsVariableInitializedtraining/Adadelta/Variable_9*/
_class%
#!loc:@training/Adadelta/Variable_9*
dtype0*
_output_shapes
: 
Ї
IsVariableInitialized_21IsVariableInitializedtraining/Adadelta/Variable_10*0
_class&
$"loc:@training/Adadelta/Variable_10*
dtype0*
_output_shapes
: 
Ї
IsVariableInitialized_22IsVariableInitializedtraining/Adadelta/Variable_11*0
_class&
$"loc:@training/Adadelta/Variable_11*
dtype0*
_output_shapes
: 
Ї
IsVariableInitialized_23IsVariableInitializedtraining/Adadelta/Variable_12*0
_class&
$"loc:@training/Adadelta/Variable_12*
dtype0*
_output_shapes
: 
Ї
IsVariableInitialized_24IsVariableInitializedtraining/Adadelta/Variable_13*
_output_shapes
: *0
_class&
$"loc:@training/Adadelta/Variable_13*
dtype0
Ї
IsVariableInitialized_25IsVariableInitializedtraining/Adadelta/Variable_14*0
_class&
$"loc:@training/Adadelta/Variable_14*
dtype0*
_output_shapes
: 
Ї
IsVariableInitialized_26IsVariableInitializedtraining/Adadelta/Variable_15*
_output_shapes
: *0
_class&
$"loc:@training/Adadelta/Variable_15*
dtype0
Ї
IsVariableInitialized_27IsVariableInitializedtraining/Adadelta/Variable_16*
dtype0*
_output_shapes
: *0
_class&
$"loc:@training/Adadelta/Variable_16
Ї
IsVariableInitialized_28IsVariableInitializedtraining/Adadelta/Variable_17*0
_class&
$"loc:@training/Adadelta/Variable_17*
dtype0*
_output_shapes
: 
Ї
IsVariableInitialized_29IsVariableInitializedtraining/Adadelta/Variable_18*0
_class&
$"loc:@training/Adadelta/Variable_18*
dtype0*
_output_shapes
: 
Ї
IsVariableInitialized_30IsVariableInitializedtraining/Adadelta/Variable_19*0
_class&
$"loc:@training/Adadelta/Variable_19*
dtype0*
_output_shapes
: 
и
init_1NoOp^Adadelta/decay/Assign^Adadelta/iterations/Assign^Adadelta/lr/Assign"^training/Adadelta/Variable/Assign$^training/Adadelta/Variable_1/Assign%^training/Adadelta/Variable_10/Assign%^training/Adadelta/Variable_11/Assign%^training/Adadelta/Variable_12/Assign%^training/Adadelta/Variable_13/Assign%^training/Adadelta/Variable_14/Assign%^training/Adadelta/Variable_15/Assign%^training/Adadelta/Variable_16/Assign%^training/Adadelta/Variable_17/Assign%^training/Adadelta/Variable_18/Assign%^training/Adadelta/Variable_19/Assign$^training/Adadelta/Variable_2/Assign$^training/Adadelta/Variable_3/Assign$^training/Adadelta/Variable_4/Assign$^training/Adadelta/Variable_5/Assign$^training/Adadelta/Variable_6/Assign$^training/Adadelta/Variable_7/Assign$^training/Adadelta/Variable_8/Assign$^training/Adadelta/Variable_9/Assign
o
Placeholder_12Placeholder*
shape:*
dtype0*&
_output_shapes
:
Ш
	Assign_12Assigntraining/Adadelta/VariablePlaceholder_12*
T0*-
_class#
!loc:@training/Adadelta/Variable*
validate_shape(*&
_output_shapes
:*
use_locking( 
W
Placeholder_13Placeholder*
dtype0*
_output_shapes
:*
shape:
Р
	Assign_13Assigntraining/Adadelta/Variable_1Placeholder_13*
use_locking( *
T0*/
_class%
#!loc:@training/Adadelta/Variable_1*
validate_shape(*
_output_shapes
:
o
Placeholder_14Placeholder*
dtype0*&
_output_shapes
:*
shape:
Ь
	Assign_14Assigntraining/Adadelta/Variable_2Placeholder_14*
use_locking( *
T0*/
_class%
#!loc:@training/Adadelta/Variable_2*
validate_shape(*&
_output_shapes
:
W
Placeholder_15Placeholder*
dtype0*
_output_shapes
:*
shape:
Р
	Assign_15Assigntraining/Adadelta/Variable_3Placeholder_15*
use_locking( *
T0*/
_class%
#!loc:@training/Adadelta/Variable_3*
validate_shape(*
_output_shapes
:
W
Placeholder_16Placeholder*
shape:*
dtype0*
_output_shapes
:
Р
	Assign_16Assigntraining/Adadelta/Variable_4Placeholder_16*
T0*/
_class%
#!loc:@training/Adadelta/Variable_4*
validate_shape(*
_output_shapes
:*
use_locking( 
W
Placeholder_17Placeholder*
_output_shapes
:*
shape:*
dtype0
Р
	Assign_17Assigntraining/Adadelta/Variable_5Placeholder_17*
_output_shapes
:*
use_locking( *
T0*/
_class%
#!loc:@training/Adadelta/Variable_5*
validate_shape(
a
Placeholder_18Placeholder*
dtype0*
_output_shapes
:	*
shape:	
Х
	Assign_18Assigntraining/Adadelta/Variable_6Placeholder_18*
_output_shapes
:	*
use_locking( *
T0*/
_class%
#!loc:@training/Adadelta/Variable_6*
validate_shape(
W
Placeholder_19Placeholder*
dtype0*
_output_shapes
:*
shape:
Р
	Assign_19Assigntraining/Adadelta/Variable_7Placeholder_19*
use_locking( *
T0*/
_class%
#!loc:@training/Adadelta/Variable_7*
validate_shape(*
_output_shapes
:
_
Placeholder_20Placeholder*
dtype0*
_output_shapes

:*
shape
:
Ф
	Assign_20Assigntraining/Adadelta/Variable_8Placeholder_20*
use_locking( *
T0*/
_class%
#!loc:@training/Adadelta/Variable_8*
validate_shape(*
_output_shapes

:
W
Placeholder_21Placeholder*
dtype0*
_output_shapes
:*
shape:
Р
	Assign_21Assigntraining/Adadelta/Variable_9Placeholder_21*
use_locking( *
T0*/
_class%
#!loc:@training/Adadelta/Variable_9*
validate_shape(*
_output_shapes
:
o
Placeholder_22Placeholder*
dtype0*&
_output_shapes
:*
shape:
Ю
	Assign_22Assigntraining/Adadelta/Variable_10Placeholder_22*&
_output_shapes
:*
use_locking( *
T0*0
_class&
$"loc:@training/Adadelta/Variable_10*
validate_shape(
W
Placeholder_23Placeholder*
_output_shapes
:*
shape:*
dtype0
Т
	Assign_23Assigntraining/Adadelta/Variable_11Placeholder_23*
use_locking( *
T0*0
_class&
$"loc:@training/Adadelta/Variable_11*
validate_shape(*
_output_shapes
:
o
Placeholder_24Placeholder*
dtype0*&
_output_shapes
:*
shape:
Ю
	Assign_24Assigntraining/Adadelta/Variable_12Placeholder_24*
use_locking( *
T0*0
_class&
$"loc:@training/Adadelta/Variable_12*
validate_shape(*&
_output_shapes
:
W
Placeholder_25Placeholder*
dtype0*
_output_shapes
:*
shape:
Т
	Assign_25Assigntraining/Adadelta/Variable_13Placeholder_25*
T0*0
_class&
$"loc:@training/Adadelta/Variable_13*
validate_shape(*
_output_shapes
:*
use_locking( 
W
Placeholder_26Placeholder*
shape:*
dtype0*
_output_shapes
:
Т
	Assign_26Assigntraining/Adadelta/Variable_14Placeholder_26*
_output_shapes
:*
use_locking( *
T0*0
_class&
$"loc:@training/Adadelta/Variable_14*
validate_shape(
W
Placeholder_27Placeholder*
dtype0*
_output_shapes
:*
shape:
Т
	Assign_27Assigntraining/Adadelta/Variable_15Placeholder_27*
validate_shape(*
_output_shapes
:*
use_locking( *
T0*0
_class&
$"loc:@training/Adadelta/Variable_15
a
Placeholder_28Placeholder*
shape:	*
dtype0*
_output_shapes
:	
Ч
	Assign_28Assigntraining/Adadelta/Variable_16Placeholder_28*
use_locking( *
T0*0
_class&
$"loc:@training/Adadelta/Variable_16*
validate_shape(*
_output_shapes
:	
W
Placeholder_29Placeholder*
shape:*
dtype0*
_output_shapes
:
Т
	Assign_29Assigntraining/Adadelta/Variable_17Placeholder_29*0
_class&
$"loc:@training/Adadelta/Variable_17*
validate_shape(*
_output_shapes
:*
use_locking( *
T0
_
Placeholder_30Placeholder*
dtype0*
_output_shapes

:*
shape
:
Ц
	Assign_30Assigntraining/Adadelta/Variable_18Placeholder_30*
use_locking( *
T0*0
_class&
$"loc:@training/Adadelta/Variable_18*
validate_shape(*
_output_shapes

:
W
Placeholder_31Placeholder*
_output_shapes
:*
shape:*
dtype0
Т
	Assign_31Assigntraining/Adadelta/Variable_19Placeholder_31*
validate_shape(*
_output_shapes
:*
use_locking( *
T0*0
_class&
$"loc:@training/Adadelta/Variable_19
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_6ec4d3b0c68b4af5aa64ac339575c16c/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
К	
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*о
valueдBб'BAdadelta/decayBAdadelta/iterationsBAdadelta/lrBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB(batch_normalization_1/moving_mean/biasedB,batch_normalization_1/moving_mean/local_stepB%batch_normalization_1/moving_varianceB,batch_normalization_1/moving_variance/biasedB0batch_normalization_1/moving_variance/local_stepBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBtraining/Adadelta/VariableBtraining/Adadelta/Variable_1Btraining/Adadelta/Variable_10Btraining/Adadelta/Variable_11Btraining/Adadelta/Variable_12Btraining/Adadelta/Variable_13Btraining/Adadelta/Variable_14Btraining/Adadelta/Variable_15Btraining/Adadelta/Variable_16Btraining/Adadelta/Variable_17Btraining/Adadelta/Variable_18Btraining/Adadelta/Variable_19Btraining/Adadelta/Variable_2Btraining/Adadelta/Variable_3Btraining/Adadelta/Variable_4Btraining/Adadelta/Variable_5Btraining/Adadelta/Variable_6Btraining/Adadelta/Variable_7Btraining/Adadelta/Variable_8Btraining/Adadelta/Variable_9*
dtype0
Р
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ђ	
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdadelta/decayAdadelta/iterationsAdadelta/lrbatch_normalization_1/betabatch_normalization_1/gamma!batch_normalization_1/moving_mean(batch_normalization_1/moving_mean/biased,batch_normalization_1/moving_mean/local_step%batch_normalization_1/moving_variance,batch_normalization_1/moving_variance/biased0batch_normalization_1/moving_variance/local_stepconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kerneltraining/Adadelta/Variabletraining/Adadelta/Variable_1training/Adadelta/Variable_10training/Adadelta/Variable_11training/Adadelta/Variable_12training/Adadelta/Variable_13training/Adadelta/Variable_14training/Adadelta/Variable_15training/Adadelta/Variable_16training/Adadelta/Variable_17training/Adadelta/Variable_18training/Adadelta/Variable_19training/Adadelta/Variable_2training/Adadelta/Variable_3training/Adadelta/Variable_4training/Adadelta/Variable_5training/Adadelta/Variable_6training/Adadelta/Variable_7training/Adadelta/Variable_8training/Adadelta/Variable_9"/device:CPU:0*5
dtypes+
)2'	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ќ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
Н	
save/RestoreV2/tensor_namesConst"/device:CPU:0*о
valueдBб'BAdadelta/decayBAdadelta/iterationsBAdadelta/lrBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB(batch_normalization_1/moving_mean/biasedB,batch_normalization_1/moving_mean/local_stepB%batch_normalization_1/moving_varianceB,batch_normalization_1/moving_variance/biasedB0batch_normalization_1/moving_variance/local_stepBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBtraining/Adadelta/VariableBtraining/Adadelta/Variable_1Btraining/Adadelta/Variable_10Btraining/Adadelta/Variable_11Btraining/Adadelta/Variable_12Btraining/Adadelta/Variable_13Btraining/Adadelta/Variable_14Btraining/Adadelta/Variable_15Btraining/Adadelta/Variable_16Btraining/Adadelta/Variable_17Btraining/Adadelta/Variable_18Btraining/Adadelta/Variable_19Btraining/Adadelta/Variable_2Btraining/Adadelta/Variable_3Btraining/Adadelta/Variable_4Btraining/Adadelta/Variable_5Btraining/Adadelta/Variable_6Btraining/Adadelta/Variable_7Btraining/Adadelta/Variable_8Btraining/Adadelta/Variable_9*
dtype0*
_output_shapes
:'
У
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:'
р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*В
_output_shapes
:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'	
Ђ
save/AssignAssignAdadelta/decaysave/RestoreV2*
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@Adadelta/decay*
validate_shape(
А
save/Assign_1AssignAdadelta/iterationssave/RestoreV2:1*
use_locking(*
T0	*&
_class
loc:@Adadelta/iterations*
validate_shape(*
_output_shapes
: 
 
save/Assign_2AssignAdadelta/lrsave/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adadelta/lr
Т
save/Assign_3Assignbatch_normalization_1/betasave/RestoreV2:3*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta
Ф
save/Assign_4Assignbatch_normalization_1/gammasave/RestoreV2:4*
_output_shapes
:*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(
а
save/Assign_5Assign!batch_normalization_1/moving_meansave/RestoreV2:5*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:
з
save/Assign_6Assign(batch_normalization_1/moving_mean/biasedsave/RestoreV2:6*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
з
save/Assign_7Assign,batch_normalization_1/moving_mean/local_stepsave/RestoreV2:7*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
и
save/Assign_8Assign%batch_normalization_1/moving_variancesave/RestoreV2:8*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:
п
save/Assign_9Assign,batch_normalization_1/moving_variance/biasedsave/RestoreV2:9*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:
с
save/Assign_10Assign0batch_normalization_1/moving_variance/local_stepsave/RestoreV2:10*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
Њ
save/Assign_11Assignconv2d_1/biassave/RestoreV2:11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias
К
save/Assign_12Assignconv2d_1/kernelsave/RestoreV2:12*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:
Њ
save/Assign_13Assignconv2d_2/biassave/RestoreV2:13*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:
К
save/Assign_14Assignconv2d_2/kernelsave/RestoreV2:14*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:
Ј
save/Assign_15Assigndense_1/biassave/RestoreV2:15*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense_1/bias
Б
save/Assign_16Assigndense_1/kernelsave/RestoreV2:16*
_output_shapes
:	*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
Ј
save/Assign_17Assigndense_2/biassave/RestoreV2:17*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
А
save/Assign_18Assigndense_2/kernelsave/RestoreV2:18*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

:
а
save/Assign_19Assigntraining/Adadelta/Variablesave/RestoreV2:19*-
_class#
!loc:@training/Adadelta/Variable*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0
Ш
save/Assign_20Assigntraining/Adadelta/Variable_1save/RestoreV2:20*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_1*
validate_shape(*
_output_shapes
:
ж
save/Assign_21Assigntraining/Adadelta/Variable_10save/RestoreV2:21*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_10*
validate_shape(*&
_output_shapes
:
Ъ
save/Assign_22Assigntraining/Adadelta/Variable_11save/RestoreV2:22*0
_class&
$"loc:@training/Adadelta/Variable_11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ж
save/Assign_23Assigntraining/Adadelta/Variable_12save/RestoreV2:23*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_12
Ъ
save/Assign_24Assigntraining/Adadelta/Variable_13save/RestoreV2:24*0
_class&
$"loc:@training/Adadelta/Variable_13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ъ
save/Assign_25Assigntraining/Adadelta/Variable_14save/RestoreV2:25*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_14*
validate_shape(*
_output_shapes
:
Ъ
save/Assign_26Assigntraining/Adadelta/Variable_15save/RestoreV2:26*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_15*
validate_shape(*
_output_shapes
:
Я
save/Assign_27Assigntraining/Adadelta/Variable_16save/RestoreV2:27*
T0*0
_class&
$"loc:@training/Adadelta/Variable_16*
validate_shape(*
_output_shapes
:	*
use_locking(
Ъ
save/Assign_28Assigntraining/Adadelta/Variable_17save/RestoreV2:28*0
_class&
$"loc:@training/Adadelta/Variable_17*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ю
save/Assign_29Assigntraining/Adadelta/Variable_18save/RestoreV2:29*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_18
Ъ
save/Assign_30Assigntraining/Adadelta/Variable_19save/RestoreV2:30*
use_locking(*
T0*0
_class&
$"loc:@training/Adadelta/Variable_19*
validate_shape(*
_output_shapes
:
д
save/Assign_31Assigntraining/Adadelta/Variable_2save/RestoreV2:31*
T0*/
_class%
#!loc:@training/Adadelta/Variable_2*
validate_shape(*&
_output_shapes
:*
use_locking(
Ш
save/Assign_32Assigntraining/Adadelta/Variable_3save/RestoreV2:32*
T0*/
_class%
#!loc:@training/Adadelta/Variable_3*
validate_shape(*
_output_shapes
:*
use_locking(
Ш
save/Assign_33Assigntraining/Adadelta/Variable_4save/RestoreV2:33*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_4
Ш
save/Assign_34Assigntraining/Adadelta/Variable_5save/RestoreV2:34*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_5
Э
save/Assign_35Assigntraining/Adadelta/Variable_6save/RestoreV2:35*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_6*
validate_shape(*
_output_shapes
:	
Ш
save/Assign_36Assigntraining/Adadelta/Variable_7save/RestoreV2:36*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_7*
validate_shape(*
_output_shapes
:
Ь
save/Assign_37Assigntraining/Adadelta/Variable_8save/RestoreV2:37*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_8*
validate_shape(*
_output_shapes

:
Ш
save/Assign_38Assigntraining/Adadelta/Variable_9save/RestoreV2:38*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@training/Adadelta/Variable_9
Ѕ
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"Л"
trainable_variablesЃ" "
^
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02conv2d_1/random_uniform:0
O
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02conv2d_1/Const:0
^
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02conv2d_2/random_uniform:0
O
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02conv2d_2/Const:0

batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02batch_normalization_1/Const:0

batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02batch_normalization_1/Const_1:0

#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:02batch_normalization_1/Const_2:0
І
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:02batch_normalization_1/Const_3:0
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0
Z
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:0
K
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:0
T
Adadelta/lr:0Adadelta/lr/AssignAdadelta/lr/read:02Adadelta/lr/initial_value:0
`
Adadelta/decay:0Adadelta/decay/AssignAdadelta/decay/read:02Adadelta/decay/initial_value:0
t
Adadelta/iterations:0Adadelta/iterations/AssignAdadelta/iterations/read:02#Adadelta/iterations/initial_value:0

training/Adadelta/Variable:0!training/Adadelta/Variable/Assign!training/Adadelta/Variable/read:02training/Adadelta/zeros:0

training/Adadelta/Variable_1:0#training/Adadelta/Variable_1/Assign#training/Adadelta/Variable_1/read:02training/Adadelta/zeros_1:0

training/Adadelta/Variable_2:0#training/Adadelta/Variable_2/Assign#training/Adadelta/Variable_2/read:02training/Adadelta/zeros_2:0

training/Adadelta/Variable_3:0#training/Adadelta/Variable_3/Assign#training/Adadelta/Variable_3/read:02training/Adadelta/zeros_3:0

training/Adadelta/Variable_4:0#training/Adadelta/Variable_4/Assign#training/Adadelta/Variable_4/read:02training/Adadelta/zeros_4:0

training/Adadelta/Variable_5:0#training/Adadelta/Variable_5/Assign#training/Adadelta/Variable_5/read:02training/Adadelta/zeros_5:0

training/Adadelta/Variable_6:0#training/Adadelta/Variable_6/Assign#training/Adadelta/Variable_6/read:02training/Adadelta/zeros_6:0

training/Adadelta/Variable_7:0#training/Adadelta/Variable_7/Assign#training/Adadelta/Variable_7/read:02training/Adadelta/zeros_7:0

training/Adadelta/Variable_8:0#training/Adadelta/Variable_8/Assign#training/Adadelta/Variable_8/read:02training/Adadelta/zeros_8:0

training/Adadelta/Variable_9:0#training/Adadelta/Variable_9/Assign#training/Adadelta/Variable_9/read:02training/Adadelta/zeros_9:0

training/Adadelta/Variable_10:0$training/Adadelta/Variable_10/Assign$training/Adadelta/Variable_10/read:02training/Adadelta/zeros_10:0

training/Adadelta/Variable_11:0$training/Adadelta/Variable_11/Assign$training/Adadelta/Variable_11/read:02training/Adadelta/zeros_11:0

training/Adadelta/Variable_12:0$training/Adadelta/Variable_12/Assign$training/Adadelta/Variable_12/read:02training/Adadelta/zeros_12:0

training/Adadelta/Variable_13:0$training/Adadelta/Variable_13/Assign$training/Adadelta/Variable_13/read:02training/Adadelta/zeros_13:0

training/Adadelta/Variable_14:0$training/Adadelta/Variable_14/Assign$training/Adadelta/Variable_14/read:02training/Adadelta/zeros_14:0

training/Adadelta/Variable_15:0$training/Adadelta/Variable_15/Assign$training/Adadelta/Variable_15/read:02training/Adadelta/zeros_15:0

training/Adadelta/Variable_16:0$training/Adadelta/Variable_16/Assign$training/Adadelta/Variable_16/read:02training/Adadelta/zeros_16:0

training/Adadelta/Variable_17:0$training/Adadelta/Variable_17/Assign$training/Adadelta/Variable_17/read:02training/Adadelta/zeros_17:0

training/Adadelta/Variable_18:0$training/Adadelta/Variable_18/Assign$training/Adadelta/Variable_18/read:02training/Adadelta/zeros_18:0

training/Adadelta/Variable_19:0$training/Adadelta/Variable_19/Assign$training/Adadelta/Variable_19/read:02training/Adadelta/zeros_19:0"М#
cond_contextЋ#Ј#
Њ
$batch_normalization_1/cond/cond_text$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_t:0 *В
&batch_normalization_1/FusedBatchNorm:0
%batch_normalization_1/cond/Switch_1:0
%batch_normalization_1/cond/Switch_1:1
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_t:0L
$batch_normalization_1/cond/pred_id:0$batch_normalization_1/cond/pred_id:0N
%batch_normalization_1/cond/switch_t:0%batch_normalization_1/cond/switch_t:0O
&batch_normalization_1/FusedBatchNorm:0%batch_normalization_1/cond/Switch_1:1
Ц
&batch_normalization_1/cond/cond_text_1$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_f:0*Ю

!batch_normalization_1/beta/read:0
2batch_normalization_1/cond/FusedBatchNorm/Switch:0
4batch_normalization_1/cond/FusedBatchNorm/Switch_1:0
4batch_normalization_1/cond/FusedBatchNorm/Switch_2:0
4batch_normalization_1/cond/FusedBatchNorm/Switch_3:0
4batch_normalization_1/cond/FusedBatchNorm/Switch_4:0
+batch_normalization_1/cond/FusedBatchNorm:0
+batch_normalization_1/cond/FusedBatchNorm:1
+batch_normalization_1/cond/FusedBatchNorm:2
+batch_normalization_1/cond/FusedBatchNorm:3
+batch_normalization_1/cond/FusedBatchNorm:4
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_f:0
"batch_normalization_1/gamma/read:0
(batch_normalization_1/moving_mean/read:0
,batch_normalization_1/moving_variance/read:0
conv2d_2/Relu:0L
$batch_normalization_1/cond/pred_id:0$batch_normalization_1/cond/pred_id:0N
%batch_normalization_1/cond/switch_f:0%batch_normalization_1/cond/switch_f:0d
,batch_normalization_1/moving_variance/read:04batch_normalization_1/cond/FusedBatchNorm/Switch_4:0`
(batch_normalization_1/moving_mean/read:04batch_normalization_1/cond/FusedBatchNorm/Switch_3:0Z
"batch_normalization_1/gamma/read:04batch_normalization_1/cond/FusedBatchNorm/Switch_1:0Y
!batch_normalization_1/beta/read:04batch_normalization_1/cond/FusedBatchNorm/Switch_2:0E
conv2d_2/Relu:02batch_normalization_1/cond/FusedBatchNorm/Switch:0
щ
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *
dropout_1/cond/dropout/Floor:0
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/add:0
dropout_1/cond/dropout/div:0
"dropout_1/cond/dropout/keep_prob:0
dropout_1/cond/dropout/mul:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/mul/Switch:1
dropout_1/cond/mul/y:0
dropout_1/cond/mul:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:0
max_pooling2d_2/MaxPool:06
dropout_1/cond/switch_t:0dropout_1/cond/switch_t:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:08
max_pooling2d_2/MaxPool:0dropout_1/cond/mul/Switch:1

dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*Ќ
dropout_1/cond/Switch_1:0
dropout_1/cond/Switch_1:1
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:0
max_pooling2d_2/MaxPool:06
max_pooling2d_2/MaxPool:0dropout_1/cond/Switch_1:06
dropout_1/cond/switch_f:0dropout_1/cond/switch_f:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0
г
dropout_2/cond/cond_textdropout_2/cond/pred_id:0dropout_2/cond/switch_t:0 *џ
dense_1/Relu:0
dropout_2/cond/dropout/Floor:0
dropout_2/cond/dropout/Shape:0
dropout_2/cond/dropout/add:0
dropout_2/cond/dropout/div:0
"dropout_2/cond/dropout/keep_prob:0
dropout_2/cond/dropout/mul:0
5dropout_2/cond/dropout/random_uniform/RandomUniform:0
+dropout_2/cond/dropout/random_uniform/max:0
+dropout_2/cond/dropout/random_uniform/min:0
+dropout_2/cond/dropout/random_uniform/mul:0
+dropout_2/cond/dropout/random_uniform/sub:0
'dropout_2/cond/dropout/random_uniform:0
dropout_2/cond/mul/Switch:1
dropout_2/cond/mul/y:0
dropout_2/cond/mul:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_t:0-
dense_1/Relu:0dropout_2/cond/mul/Switch:14
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:06
dropout_2/cond/switch_t:0dropout_2/cond/switch_t:0
ъ
dropout_2/cond/cond_text_1dropout_2/cond/pred_id:0dropout_2/cond/switch_f:0*
dense_1/Relu:0
dropout_2/cond/Switch_1:0
dropout_2/cond/Switch_1:1
dropout_2/cond/pred_id:0
dropout_2/cond/switch_f:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0+
dense_1/Relu:0dropout_2/cond/Switch_1:06
dropout_2/cond/switch_f:0dropout_2/cond/switch_f:0"е)
	variablesЧ)Ф)
^
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02conv2d_1/random_uniform:0
O
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02conv2d_1/Const:0
^
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02conv2d_2/random_uniform:0
O
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02conv2d_2/Const:0

batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02batch_normalization_1/Const:0

batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02batch_normalization_1/Const_1:0

#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:02batch_normalization_1/Const_2:0
І
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:02batch_normalization_1/Const_3:0
п
*batch_normalization_1/moving_mean/biased:0/batch_normalization_1/moving_mean/biased/Assign/batch_normalization_1/moving_mean/biased/read:02Obatch_normalization_1/AssignMovingAvg/batch_normalization_1/moving_mean/zeros:0
м
.batch_normalization_1/moving_mean/local_step:03batch_normalization_1/moving_mean/local_step/Assign3batch_normalization_1/moving_mean/local_step/read:02@batch_normalization_1/moving_mean/local_step/Initializer/zeros:0
ё
.batch_normalization_1/moving_variance/biased:03batch_normalization_1/moving_variance/biased/Assign3batch_normalization_1/moving_variance/biased/read:02Ubatch_normalization_1/AssignMovingAvg_1/batch_normalization_1/moving_variance/zeros:0
ь
2batch_normalization_1/moving_variance/local_step:07batch_normalization_1/moving_variance/local_step/Assign7batch_normalization_1/moving_variance/local_step/read:02Dbatch_normalization_1/moving_variance/local_step/Initializer/zeros:0
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0
Z
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:0
K
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:0
T
Adadelta/lr:0Adadelta/lr/AssignAdadelta/lr/read:02Adadelta/lr/initial_value:0
`
Adadelta/decay:0Adadelta/decay/AssignAdadelta/decay/read:02Adadelta/decay/initial_value:0
t
Adadelta/iterations:0Adadelta/iterations/AssignAdadelta/iterations/read:02#Adadelta/iterations/initial_value:0

training/Adadelta/Variable:0!training/Adadelta/Variable/Assign!training/Adadelta/Variable/read:02training/Adadelta/zeros:0

training/Adadelta/Variable_1:0#training/Adadelta/Variable_1/Assign#training/Adadelta/Variable_1/read:02training/Adadelta/zeros_1:0

training/Adadelta/Variable_2:0#training/Adadelta/Variable_2/Assign#training/Adadelta/Variable_2/read:02training/Adadelta/zeros_2:0

training/Adadelta/Variable_3:0#training/Adadelta/Variable_3/Assign#training/Adadelta/Variable_3/read:02training/Adadelta/zeros_3:0

training/Adadelta/Variable_4:0#training/Adadelta/Variable_4/Assign#training/Adadelta/Variable_4/read:02training/Adadelta/zeros_4:0

training/Adadelta/Variable_5:0#training/Adadelta/Variable_5/Assign#training/Adadelta/Variable_5/read:02training/Adadelta/zeros_5:0

training/Adadelta/Variable_6:0#training/Adadelta/Variable_6/Assign#training/Adadelta/Variable_6/read:02training/Adadelta/zeros_6:0

training/Adadelta/Variable_7:0#training/Adadelta/Variable_7/Assign#training/Adadelta/Variable_7/read:02training/Adadelta/zeros_7:0

training/Adadelta/Variable_8:0#training/Adadelta/Variable_8/Assign#training/Adadelta/Variable_8/read:02training/Adadelta/zeros_8:0

training/Adadelta/Variable_9:0#training/Adadelta/Variable_9/Assign#training/Adadelta/Variable_9/read:02training/Adadelta/zeros_9:0

training/Adadelta/Variable_10:0$training/Adadelta/Variable_10/Assign$training/Adadelta/Variable_10/read:02training/Adadelta/zeros_10:0

training/Adadelta/Variable_11:0$training/Adadelta/Variable_11/Assign$training/Adadelta/Variable_11/read:02training/Adadelta/zeros_11:0

training/Adadelta/Variable_12:0$training/Adadelta/Variable_12/Assign$training/Adadelta/Variable_12/read:02training/Adadelta/zeros_12:0

training/Adadelta/Variable_13:0$training/Adadelta/Variable_13/Assign$training/Adadelta/Variable_13/read:02training/Adadelta/zeros_13:0

training/Adadelta/Variable_14:0$training/Adadelta/Variable_14/Assign$training/Adadelta/Variable_14/read:02training/Adadelta/zeros_14:0

training/Adadelta/Variable_15:0$training/Adadelta/Variable_15/Assign$training/Adadelta/Variable_15/read:02training/Adadelta/zeros_15:0

training/Adadelta/Variable_16:0$training/Adadelta/Variable_16/Assign$training/Adadelta/Variable_16/read:02training/Adadelta/zeros_16:0

training/Adadelta/Variable_17:0$training/Adadelta/Variable_17/Assign$training/Adadelta/Variable_17/read:02training/Adadelta/zeros_17:0

training/Adadelta/Variable_18:0$training/Adadelta/Variable_18/Assign$training/Adadelta/Variable_18/read:02training/Adadelta/zeros_18:0

training/Adadelta/Variable_19:0$training/Adadelta/Variable_19/Assign$training/Adadelta/Variable_19/read:02training/Adadelta/zeros_19:0*Ђ
serving_default
8
input/
conv2d_1_input:0џџџџџџџџџdd6

prediction(
dense_2/Softmax:0џџџџџџџџџtensorflow/serving/predict