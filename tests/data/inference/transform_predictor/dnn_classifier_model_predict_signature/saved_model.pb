��
�)�)
:
Add
x"T
y"T
z"T"
Ttype:
2	
�
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
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
�
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0���������"
value_indexint(0���������"+

vocab_sizeint���������(0���������"
	delimiterstring	�
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
2
LookupTableSizeV2
table_handle
size	�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
k
NotEqual
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(�
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
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
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
A
SelectV2
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
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
�
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
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
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
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�
9
VarIsInitializedOp
resource
is_initialized
�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.15.52v1.15.4-39-g3db52be8��

global_step/Initializer/zerosConst*
dtype0	*
value	B	 R *
_class
loc:@global_step*
_output_shapes
: 
k
global_step
VariableV2*
_output_shapes
: *
shape: *
_class
loc:@global_step*
dtype0	
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
f
PlaceholderPlaceholder*
dtype0*
shape:���������*#
_output_shapes
:���������
h
Placeholder_1Placeholder*
dtype0*
shape:���������*#
_output_shapes
:���������
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
�
<dnn/input_from_feature_columns/input_layer/f1/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
8dnn/input_from_feature_columns/input_layer/f1/ExpandDims
ExpandDimsPlaceholder<dnn/input_from_feature_columns/input_layer/f1/ExpandDims/dim*
T0*'
_output_shapes
:���������
|
3dnn/input_from_feature_columns/input_layer/f1/sub/yConst*
valueB 2G����x�*
dtype0*
_output_shapes
: 
�
1dnn/input_from_feature_columns/input_layer/f1/subSub8dnn/input_from_feature_columns/input_layer/f1/ExpandDims3dnn/input_from_feature_columns/input_layer/f1/sub/y*
T0*'
_output_shapes
:���������
�
7dnn/input_from_feature_columns/input_layer/f1/truediv/yConst*
dtype0*
valueB 2U[Ч�f@*
_output_shapes
: 
�
5dnn/input_from_feature_columns/input_layer/f1/truedivRealDiv1dnn/input_from_feature_columns/input_layer/f1/sub7dnn/input_from_feature_columns/input_layer/f1/truediv/y*'
_output_shapes
:���������*
T0
�
2dnn/input_from_feature_columns/input_layer/f1/CastCast5dnn/input_from_feature_columns/input_layer/f1/truediv*

DstT0*'
_output_shapes
:���������*

SrcT0
�
3dnn/input_from_feature_columns/input_layer/f1/ShapeShape2dnn/input_from_feature_columns/input_layer/f1/Cast*
_output_shapes
:*
T0
�
Adnn/input_from_feature_columns/input_layer/f1/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
�
Cdnn/input_from_feature_columns/input_layer/f1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
�
Cdnn/input_from_feature_columns/input_layer/f1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
;dnn/input_from_feature_columns/input_layer/f1/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/f1/ShapeAdnn/input_from_feature_columns/input_layer/f1/strided_slice/stackCdnn/input_from_feature_columns/input_layer/f1/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/f1/strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/f1/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
�
;dnn/input_from_feature_columns/input_layer/f1/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/f1/strided_slice=dnn/input_from_feature_columns/input_layer/f1/Reshape/shape/1*
T0*
_output_shapes
:*
N
�
5dnn/input_from_feature_columns/input_layer/f1/ReshapeReshape2dnn/input_from_feature_columns/input_layer/f1/Cast;dnn/input_from_feature_columns/input_layer/f1/Reshape/shape*
T0*'
_output_shapes
:���������
�
<dnn/input_from_feature_columns/input_layer/f2/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
8dnn/input_from_feature_columns/input_layer/f2/ExpandDims
ExpandDimsPlaceholder_1<dnn/input_from_feature_columns/input_layer/f2/ExpandDims/dim*
T0*'
_output_shapes
:���������
|
3dnn/input_from_feature_columns/input_layer/f2/sub/yConst*
valueB 2�x�t#�?*
dtype0*
_output_shapes
: 
�
1dnn/input_from_feature_columns/input_layer/f2/subSub8dnn/input_from_feature_columns/input_layer/f2/ExpandDims3dnn/input_from_feature_columns/input_layer/f2/sub/y*'
_output_shapes
:���������*
T0
�
7dnn/input_from_feature_columns/input_layer/f2/truediv/yConst*
_output_shapes
: *
valueB 2���g���?*
dtype0
�
5dnn/input_from_feature_columns/input_layer/f2/truedivRealDiv1dnn/input_from_feature_columns/input_layer/f2/sub7dnn/input_from_feature_columns/input_layer/f2/truediv/y*
T0*'
_output_shapes
:���������
�
2dnn/input_from_feature_columns/input_layer/f2/CastCast5dnn/input_from_feature_columns/input_layer/f2/truediv*

SrcT0*'
_output_shapes
:���������*

DstT0
�
3dnn/input_from_feature_columns/input_layer/f2/ShapeShape2dnn/input_from_feature_columns/input_layer/f2/Cast*
_output_shapes
:*
T0
�
Adnn/input_from_feature_columns/input_layer/f2/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
�
Cdnn/input_from_feature_columns/input_layer/f2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Cdnn/input_from_feature_columns/input_layer/f2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
;dnn/input_from_feature_columns/input_layer/f2/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/f2/ShapeAdnn/input_from_feature_columns/input_layer/f2/strided_slice/stackCdnn/input_from_feature_columns/input_layer/f2/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/f2/strided_slice/stack_2*
shrink_axis_mask*
T0*
_output_shapes
: *
Index0

=dnn/input_from_feature_columns/input_layer/f2/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
�
;dnn/input_from_feature_columns/input_layer/f2/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/f2/strided_slice=dnn/input_from_feature_columns/input_layer/f2/Reshape/shape/1*
_output_shapes
:*
T0*
N
�
5dnn/input_from_feature_columns/input_layer/f2/ReshapeReshape2dnn/input_from_feature_columns/input_layer/f2/Cast;dnn/input_from_feature_columns/input_layer/f2/Reshape/shape*
T0*'
_output_shapes
:���������
�
Fdnn/input_from_feature_columns/input_layer/f3_indicator/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
Bdnn/input_from_feature_columns/input_layer/f3_indicator/ExpandDims
ExpandDimsPlaceholder_2Fdnn/input_from_feature_columns/input_layer/f3_indicator/ExpandDims/dim*'
_output_shapes
:���������*
T0
�
Vdnn/input_from_feature_columns/input_layer/f3_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB B *
dtype0
�
Pdnn/input_from_feature_columns/input_layer/f3_indicator/to_sparse_input/NotEqualNotEqualBdnn/input_from_feature_columns/input_layer/f3_indicator/ExpandDimsVdnn/input_from_feature_columns/input_layer/f3_indicator/to_sparse_input/ignore_value/x*'
_output_shapes
:���������*
T0
�
Odnn/input_from_feature_columns/input_layer/f3_indicator/to_sparse_input/indicesWherePdnn/input_from_feature_columns/input_layer/f3_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
Ndnn/input_from_feature_columns/input_layer/f3_indicator/to_sparse_input/valuesGatherNdBdnn/input_from_feature_columns/input_layer/f3_indicator/ExpandDimsOdnn/input_from_feature_columns/input_layer/f3_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
Sdnn/input_from_feature_columns/input_layer/f3_indicator/to_sparse_input/dense_shapeShapeBdnn/input_from_feature_columns/input_layer/f3_indicator/ExpandDims*
T0*
out_type0	*
_output_shapes
:
�
Wdnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *P
valueGBE B?gs://bqml_dnn_classifier_5291361691354396783_eoid/assets/f3.csv*
dtype0
�
Rdnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
Wdnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0*c
shared_nameTRhash_table_gs://bqml_dnn_classifier_5291361691354396783_eoid/assets/f3.csv_3_-2_-1*
_output_shapes
: 
�
udnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Wdnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/hash_tableWdnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/asset_path*

vocab_size*
value_index���������*
	key_index���������
�
Udnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/hash_bucketStringToHashBucketFastNdnn/input_from_feature_columns/input_layer/f3_indicator/to_sparse_input/values*#
_output_shapes
:���������*
num_buckets
�
mdnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Wdnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/hash_tableNdnn/input_from_feature_columns/input_layer/f3_indicator/to_sparse_input/valuesRdnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/Const*#
_output_shapes
:���������*	
Tin0*

Tout0	
�
kdnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Wdnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/hash_table*
_output_shapes
: 
�
Mdnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/AddAddUdnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/hash_bucketkdnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*#
_output_shapes
:���������*
T0	
�
Rdnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/NotEqualNotEqualmdnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Rdnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/Const*#
_output_shapes
:���������*
T0	
�
Rdnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/SelectV2SelectV2Rdnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/NotEqualmdnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Mdnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/Add*
T0	*#
_output_shapes
:���������
�
Sdnn/input_from_feature_columns/input_layer/f3_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
_output_shapes
: *
dtype0	
�
Ednn/input_from_feature_columns/input_layer/f3_indicator/SparseToDenseSparseToDenseOdnn/input_from_feature_columns/input_layer/f3_indicator/to_sparse_input/indicesSdnn/input_from_feature_columns/input_layer/f3_indicator/to_sparse_input/dense_shapeRdnn/input_from_feature_columns/input_layer/f3_indicator/hash_table_Lookup/SelectV2Sdnn/input_from_feature_columns/input_layer/f3_indicator/SparseToDense/default_value*
Tindices0	*'
_output_shapes
:���������*
T0	
�
Ednn/input_from_feature_columns/input_layer/f3_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Gdnn/input_from_feature_columns/input_layer/f3_indicator/one_hot/Const_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
�
Ednn/input_from_feature_columns/input_layer/f3_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Hdnn/input_from_feature_columns/input_layer/f3_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Idnn/input_from_feature_columns/input_layer/f3_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
?dnn/input_from_feature_columns/input_layer/f3_indicator/one_hotOneHotEdnn/input_from_feature_columns/input_layer/f3_indicator/SparseToDenseEdnn/input_from_feature_columns/input_layer/f3_indicator/one_hot/depthHdnn/input_from_feature_columns/input_layer/f3_indicator/one_hot/on_valueIdnn/input_from_feature_columns/input_layer/f3_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
Mdnn/input_from_feature_columns/input_layer/f3_indicator/Sum/reduction_indicesConst*
valueB:
���������*
_output_shapes
:*
dtype0
�
;dnn/input_from_feature_columns/input_layer/f3_indicator/SumSum?dnn/input_from_feature_columns/input_layer/f3_indicator/one_hotMdnn/input_from_feature_columns/input_layer/f3_indicator/Sum/reduction_indices*'
_output_shapes
:���������*
T0
�
=dnn/input_from_feature_columns/input_layer/f3_indicator/ShapeShape;dnn/input_from_feature_columns/input_layer/f3_indicator/Sum*
T0*
_output_shapes
:
�
Kdnn/input_from_feature_columns/input_layer/f3_indicator/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
�
Mdnn/input_from_feature_columns/input_layer/f3_indicator/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
�
Mdnn/input_from_feature_columns/input_layer/f3_indicator/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
Ednn/input_from_feature_columns/input_layer/f3_indicator/strided_sliceStridedSlice=dnn/input_from_feature_columns/input_layer/f3_indicator/ShapeKdnn/input_from_feature_columns/input_layer/f3_indicator/strided_slice/stackMdnn/input_from_feature_columns/input_layer/f3_indicator/strided_slice/stack_1Mdnn/input_from_feature_columns/input_layer/f3_indicator/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
�
Gdnn/input_from_feature_columns/input_layer/f3_indicator/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
�
Ednn/input_from_feature_columns/input_layer/f3_indicator/Reshape/shapePackEdnn/input_from_feature_columns/input_layer/f3_indicator/strided_sliceGdnn/input_from_feature_columns/input_layer/f3_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
?dnn/input_from_feature_columns/input_layer/f3_indicator/ReshapeReshape;dnn/input_from_feature_columns/input_layer/f3_indicator/SumEdnn/input_from_feature_columns/input_layer/f3_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
_output_shapes
: *
valueB :
���������*
dtype0
�
1dnn/input_from_feature_columns/input_layer/concatConcatV25dnn/input_from_feature_columns/input_layer/f1/Reshape5dnn/input_from_feature_columns/input_layer/f2/Reshape?dnn/input_from_feature_columns/input_layer/f3_indicator/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
T0*'
_output_shapes
:���������*
N
�
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
valueB"      *
_output_shapes
:
�
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *׳]�*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
�
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *׳]?*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
�
Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
dtype0*
_output_shapes

:
�
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes
: 
�
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:*
T0
�
:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
_output_shapes

:*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
�
dnn/hiddenlayer_0/kernel/part_0VarHandleOp*
_output_shapes
: *0
shared_name!dnn/hiddenlayer_0/kernel/part_0*
shape
:*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0
�
@dnn/hiddenlayer_0/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
�
&dnn/hiddenlayer_0/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
dtype0
�
3dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:
�
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes
:*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
�
dnn/hiddenlayer_0/bias/part_0VarHandleOp*
dtype0*
_output_shapes
: *.
shared_namednn/hiddenlayer_0/bias/part_0*
shape:*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
�
>dnn/hiddenlayer_0/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
: 
�
$dnn/hiddenlayer_0/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*
dtype0
�
1dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:
�
'dnn/hiddenlayer_0/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:
v
dnn/hiddenlayer_0/kernelIdentity'dnn/hiddenlayer_0/kernel/ReadVariableOp*
T0*
_output_shapes

:
�
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
T0*'
_output_shapes
:���������

%dnn/hiddenlayer_0/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:
n
dnn/hiddenlayer_0/biasIdentity%dnn/hiddenlayer_0/bias/ReadVariableOp*
_output_shapes
:*
T0
�
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*'
_output_shapes
:���������*
T0
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*'
_output_shapes
:���������*
T0
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
T0*
_output_shapes
: *
out_type0	
c
dnn/zero_fraction/LessEqual/yConst*
dtype0	*
valueB	 R����*
_output_shapes
: 
�
dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
dnn/zero_fraction/cond/SwitchSwitchdnn/zero_fraction/LessEqualdnn/zero_fraction/LessEqual*
_output_shapes
: : *
T0

m
dnn/zero_fraction/cond/switch_tIdentitydnn/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
k
dnn/zero_fraction/cond/switch_fIdentitydnn/zero_fraction/cond/Switch*
_output_shapes
: *
T0

h
dnn/zero_fraction/cond/pred_idIdentitydnn/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
*dnn/zero_fraction/cond/count_nonzero/zerosConst ^dnn/zero_fraction/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0
�
-dnn/zero_fraction/cond/count_nonzero/NotEqualNotEqual6dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1*dnn/zero_fraction/cond/count_nonzero/zeros*'
_output_shapes
:���������*
T0
�
4dnn/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_0/Reludnn/zero_fraction/cond/pred_id*)
_class
loc:@dnn/hiddenlayer_0/Relu*:
_output_shapes(
&:���������:���������*
T0
�
)dnn/zero_fraction/cond/count_nonzero/CastCast-dnn/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*'
_output_shapes
:���������*

DstT0
�
*dnn/zero_fraction/cond/count_nonzero/ConstConst ^dnn/zero_fraction/cond/switch_t*
_output_shapes
:*
valueB"       *
dtype0
�
2dnn/zero_fraction/cond/count_nonzero/nonzero_countSum)dnn/zero_fraction/cond/count_nonzero/Cast*dnn/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
dnn/zero_fraction/cond/CastCast2dnn/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*
_output_shapes
: *

SrcT0
�
,dnn/zero_fraction/cond/count_nonzero_1/zerosConst ^dnn/zero_fraction/cond/switch_f*
_output_shapes
: *
valueB
 *    *
dtype0
�
/dnn/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual6dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch,dnn/zero_fraction/cond/count_nonzero_1/zeros*'
_output_shapes
:���������*
T0
�
6dnn/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_0/Reludnn/zero_fraction/cond/pred_id*)
_class
loc:@dnn/hiddenlayer_0/Relu*
T0*:
_output_shapes(
&:���������:���������
�
+dnn/zero_fraction/cond/count_nonzero_1/CastCast/dnn/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*'
_output_shapes
:���������*

DstT0	
�
,dnn/zero_fraction/cond/count_nonzero_1/ConstConst ^dnn/zero_fraction/cond/switch_f*
valueB"       *
_output_shapes
:*
dtype0
�
4dnn/zero_fraction/cond/count_nonzero_1/nonzero_countSum+dnn/zero_fraction/cond/count_nonzero_1/Cast,dnn/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
dnn/zero_fraction/cond/MergeMerge4dnn/zero_fraction/cond/count_nonzero_1/nonzero_countdnn/zero_fraction/cond/Cast*
_output_shapes
: : *
N*
T0	
�
(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*
_output_shapes
: *

SrcT0	*

DstT0
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*
_output_shapes
: *

DstT0*

SrcT0	
�
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
dtype0
�
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 
�
$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
_output_shapes
: *
dtype0
�
 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
�
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
valueB"      
�
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: *
dtype0*
valueB
 *���
�
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *��?*
_output_shapes
: *
dtype0
�
Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
dtype0*
T0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0
�
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: *
T0
�
7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0
�
3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*+
_class!
loc:@dnn/logits/kernel/part_0*
T0*
_output_shapes

:
�
dnn/logits/kernel/part_0VarHandleOp*
_output_shapes
: *)
shared_namednn/logits/kernel/part_0*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
shape
:
�
9dnn/logits/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel/part_0*
_output_shapes
: 
�
dnn/logits/kernel/part_0/AssignAssignVariableOpdnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*
dtype0
�
,dnn/logits/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
_output_shapes

:*
dtype0
�
(dnn/logits/bias/part_0/Initializer/zerosConst*
_output_shapes
:*
dtype0*
valueB*    *)
_class
loc:@dnn/logits/bias/part_0
�
dnn/logits/bias/part_0VarHandleOp*
shape:*
_output_shapes
: *'
shared_namednn/logits/bias/part_0*)
_class
loc:@dnn/logits/bias/part_0*
dtype0
}
7dnn/logits/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias/part_0*
_output_shapes
: 
�
dnn/logits/bias/part_0/AssignAssignVariableOpdnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*
dtype0
}
*dnn/logits/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
_output_shapes
:*
dtype0
y
 dnn/logits/kernel/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:
h
dnn/logits/kernelIdentity dnn/logits/kernel/ReadVariableOp*
_output_shapes

:*
T0
x
dnn/logits/MatMulMatMuldnn/hiddenlayer_0/Reludnn/logits/kernel*
T0*'
_output_shapes
:���������
q
dnn/logits/bias/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:
`
dnn/logits/biasIdentitydnn/logits/bias/ReadVariableOp*
T0*
_output_shapes
:
s
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
T0*'
_output_shapes
:���������
e
dnn/zero_fraction_1/SizeSizednn/logits/BiasAdd*
_output_shapes
: *
T0*
out_type0	
e
dnn/zero_fraction_1/LessEqual/yConst*
valueB	 R����*
_output_shapes
: *
dtype0	
�
dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
_output_shapes
: *
T0	
�
dnn/zero_fraction_1/cond/SwitchSwitchdnn/zero_fraction_1/LessEqualdnn/zero_fraction_1/LessEqual*
T0
*
_output_shapes
: : 
q
!dnn/zero_fraction_1/cond/switch_tIdentity!dnn/zero_fraction_1/cond/Switch:1*
_output_shapes
: *
T0

o
!dnn/zero_fraction_1/cond/switch_fIdentitydnn/zero_fraction_1/cond/Switch*
T0
*
_output_shapes
: 
l
 dnn/zero_fraction_1/cond/pred_idIdentitydnn/zero_fraction_1/LessEqual*
T0
*
_output_shapes
: 
�
,dnn/zero_fraction_1/cond/count_nonzero/zerosConst"^dnn/zero_fraction_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0
�
/dnn/zero_fraction_1/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_1/cond/count_nonzero/zeros*'
_output_shapes
:���������*
T0
�
6dnn/zero_fraction_1/cond/count_nonzero/NotEqual/SwitchSwitchdnn/logits/BiasAdd dnn/zero_fraction_1/cond/pred_id*%
_class
loc:@dnn/logits/BiasAdd*
T0*:
_output_shapes(
&:���������:���������
�
+dnn/zero_fraction_1/cond/count_nonzero/CastCast/dnn/zero_fraction_1/cond/count_nonzero/NotEqual*'
_output_shapes
:���������*

SrcT0
*

DstT0
�
,dnn/zero_fraction_1/cond/count_nonzero/ConstConst"^dnn/zero_fraction_1/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
4dnn/zero_fraction_1/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_1/cond/count_nonzero/Cast,dnn/zero_fraction_1/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
dnn/zero_fraction_1/cond/CastCast4dnn/zero_fraction_1/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 
�
.dnn/zero_fraction_1/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_1/cond/switch_f*
dtype0*
valueB
 *    *
_output_shapes
: 
�
1dnn/zero_fraction_1/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_1/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:���������
�
8dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/logits/BiasAdd dnn/zero_fraction_1/cond/pred_id*
T0*:
_output_shapes(
&:���������:���������*%
_class
loc:@dnn/logits/BiasAdd
�
-dnn/zero_fraction_1/cond/count_nonzero_1/CastCast1dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*'
_output_shapes
:���������
�
.dnn/zero_fraction_1/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_1/cond/switch_f*
dtype0*
_output_shapes
:*
valueB"       
�
6dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_1/cond/count_nonzero_1/Cast.dnn/zero_fraction_1/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
�
dnn/zero_fraction_1/cond/MergeMerge6dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_1/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Sizednn/zero_fraction_1/cond/Merge*
T0	*
_output_shapes
: 
�
+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*
_output_shapes
: *

DstT0*

SrcT0	
�
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
dtype0*
_output_shapes
: 
�
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst*
_output_shapes
: *
dtype0**
value!B Bdnn/dnn/logits/activation
x
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
c
!dnn/head/predictions/logits/ShapeShapednn/logits/BiasAdd*
_output_shapes
:*
T0
w
5dnn/head/predictions/logits/assert_rank_at_least/rankConst*
value	B :*
_output_shapes
: *
dtype0
g
_dnn/head/predictions/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
X
Pdnn/head/predictions/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
n
dnn/head/predictions/logisticSigmoiddnn/logits/BiasAdd*'
_output_shapes
:���������*
T0
r
dnn/head/predictions/zeros_like	ZerosLikednn/logits/BiasAdd*'
_output_shapes
:���������*
T0
u
*dnn/head/predictions/two_class_logits/axisConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
%dnn/head/predictions/two_class_logitsConcatV2dnn/head/predictions/zeros_likednn/logits/BiasAdd*dnn/head/predictions/two_class_logits/axis*'
_output_shapes
:���������*
T0*
N
�
"dnn/head/predictions/probabilitiesSoftmax%dnn/head/predictions/two_class_logits*'
_output_shapes
:���������*
T0
s
(dnn/head/predictions/class_ids/dimensionConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
dnn/head/predictions/class_idsArgMax%dnn/head/predictions/two_class_logits(dnn/head/predictions/class_ids/dimension*#
_output_shapes
:���������*
T0
n
#dnn/head/predictions/ExpandDims/dimConst*
_output_shapes
: *
valueB :
���������*
dtype0
�
dnn/head/predictions/ExpandDims
ExpandDimsdnn/head/predictions/class_ids#dnn/head/predictions/ExpandDims/dim*'
_output_shapes
:���������*
T0	
\
dnn/head/predictions/ShapeShapednn/logits/BiasAdd*
_output_shapes
:*
T0
r
(dnn/head/predictions/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
t
*dnn/head/predictions/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
t
*dnn/head/predictions/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
"dnn/head/predictions/strided_sliceStridedSlicednn/head/predictions/Shape(dnn/head/predictions/strided_slice/stack*dnn/head/predictions/strided_slice/stack_1*dnn/head/predictions/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
b
 dnn/head/predictions/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
b
 dnn/head/predictions/range/limitConst*
dtype0*
_output_shapes
: *
value	B :
b
 dnn/head/predictions/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
dnn/head/predictions/rangeRange dnn/head/predictions/range/start dnn/head/predictions/range/limit dnn/head/predictions/range/delta*
_output_shapes
:
g
%dnn/head/predictions/ExpandDims_1/dimConst*
value	B : *
_output_shapes
: *
dtype0
�
!dnn/head/predictions/ExpandDims_1
ExpandDimsdnn/head/predictions/range%dnn/head/predictions/ExpandDims_1/dim*
_output_shapes

:*
T0
g
%dnn/head/predictions/Tile/multiples/1Const*
_output_shapes
: *
value	B :*
dtype0
�
#dnn/head/predictions/Tile/multiplesPack"dnn/head/predictions/strided_slice%dnn/head/predictions/Tile/multiples/1*
T0*
_output_shapes
:*
N
�
dnn/head/predictions/TileTile!dnn/head/predictions/ExpandDims_1#dnn/head/predictions/Tile/multiples*
T0*'
_output_shapes
:���������
^
dnn/head/predictions/Shape_1Shapednn/logits/BiasAdd*
_output_shapes
:*
T0
t
*dnn/head/predictions/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,dnn/head/predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,dnn/head/predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
$dnn/head/predictions/strided_slice_1StridedSlicednn/head/predictions/Shape_1*dnn/head/predictions/strided_slice_1/stack,dnn/head/predictions/strided_slice_1/stack_1,dnn/head/predictions/strided_slice_1/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
x
'dnn/head/predictions/ExpandDims_2/inputConst*
valueBBeeeBaaa*
dtype0*
_output_shapes
:
g
%dnn/head/predictions/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
!dnn/head/predictions/ExpandDims_2
ExpandDims'dnn/head/predictions/ExpandDims_2/input%dnn/head/predictions/ExpandDims_2/dim*
T0*
_output_shapes

:
i
'dnn/head/predictions/Tile_1/multiples/1Const*
_output_shapes
: *
value	B :*
dtype0
�
%dnn/head/predictions/Tile_1/multiplesPack$dnn/head/predictions/strided_slice_1'dnn/head/predictions/Tile_1/multiples/1*
N*
T0*
_output_shapes
:
�
dnn/head/predictions/Tile_1Tile!dnn/head/predictions/ExpandDims_2%dnn/head/predictions/Tile_1/multiples*'
_output_shapes
:���������*
T0

.dnn/head/predictions/class_string_lookup/ConstConst*
_output_shapes
:*
valueBBeeeBaaa*
dtype0
o
-dnn/head/predictions/class_string_lookup/SizeConst*
dtype0*
_output_shapes
: *
value	B :
v
4dnn/head/predictions/class_string_lookup/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
v
4dnn/head/predictions/class_string_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
�
.dnn/head/predictions/class_string_lookup/rangeRange4dnn/head/predictions/class_string_lookup/range/start-dnn/head/predictions/class_string_lookup/Size4dnn/head/predictions/class_string_lookup/range/delta*
_output_shapes
:
�
-dnn/head/predictions/class_string_lookup/CastCast.dnn/head/predictions/class_string_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
t
0dnn/head/predictions/class_string_lookup/Const_1Const*
_output_shapes
: *
dtype0*
valueB	 BUNK
�
3dnn/head/predictions/class_string_lookup/hash_tableHashTableV2*
_output_shapes
: *
value_dtype0*@
shared_name1/hash_table_5a066e36-064e-47ea-84d0-36ab014d89f3*
	key_dtype0	
�
Gdnn/head/predictions/class_string_lookup/table_init/LookupTableImportV2LookupTableImportV23dnn/head/predictions/class_string_lookup/hash_table-dnn/head/predictions/class_string_lookup/Cast.dnn/head/predictions/class_string_lookup/Const*

Tout0*	
Tin0	
�
8dnn/head/predictions/hash_table_Lookup/LookupTableFindV2LookupTableFindV23dnn/head/predictions/class_string_lookup/hash_tablednn/head/predictions/ExpandDims0dnn/head/predictions/class_string_lookup/Const_1*'
_output_shapes
:���������*

Tout0*	
Tin0	
`
dnn/head/ShapeShape"dnn/head/predictions/probabilities*
T0*
_output_shapes
:
f
dnn/head/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
h
dnn/head/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
h
dnn/head/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
dnn/head/strided_sliceStridedSlicednn/head/Shapednn/head/strided_slice/stackdnn/head/strided_slice/stack_1dnn/head/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
j
dnn/head/ExpandDims/inputConst*
_output_shapes
:*
dtype0*
valueBBeeeBaaa
Y
dnn/head/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
~
dnn/head/ExpandDims
ExpandDimsdnn/head/ExpandDims/inputdnn/head/ExpandDims/dim*
_output_shapes

:*
T0
[
dnn/head/Tile/multiples/1Const*
_output_shapes
: *
value	B :*
dtype0
�
dnn/head/Tile/multiplesPackdnn/head/strided_slicednn/head/Tile/multiples/1*
T0*
N*
_output_shapes
:
u
dnn/head/TileTilednn/head/ExpandDimsdnn/head/Tile/multiples*'
_output_shapes
:���������*
T0

initNoOp
�
init_all_tablesNoOpH^dnn/head/predictions/class_string_lookup/table_init/LookupTableImportV2v^dnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/table_init/InitializeTableFromTextFileV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
_output_shapes
: *
dtype0
r
save/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
:*
dtype0
X
save/IdentityIdentitysave/Read/ReadVariableOp*
_output_shapes
:*
T0
^
save/Identity_1Identitysave/Identity"/device:CPU:0*
_output_shapes
:*
T0
z
save/Read_1/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:*
dtype0
`
save/Identity_2Identitysave/Read_1/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes

:
m
save/Read_2/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
_output_shapes
:*
dtype0
\
save/Identity_4Identitysave/Read_2/ReadVariableOp*
T0*
_output_shapes
:
`
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes
:
s
save/Read_3/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes

:
�
save/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_b4c483ea418a47d986a72f0c9d334951/part
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:* 
valueBBglobal_step
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :
�
save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/Read_4/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
k
save/Identity_8Identitysave/Read_4/ReadVariableOp"/device:CPU:0*
_output_shapes
:*
T0
`
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
_output_shapes
:*
T0
�
save/Read_5/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
p
save/Identity_10Identitysave/Read_5/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:
|
save/Read_6/ReadVariableOpReadVariableOpdnn/logits/bias/part_0"/device:CPU:0*
_output_shapes
:*
dtype0
l
save/Identity_12Identitysave/Read_6/ReadVariableOp"/device:CPU:0*
_output_shapes
:*
T0
b
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
_output_shapes
:*
T0
�
save/Read_7/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
p
save/Identity_14Identitysave/Read_7/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

:
�
save/SaveV2_1/tensor_namesConst"/device:CPU:0*i
value`B^Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/logits/biasBdnn/logits/kernel*
dtype0*
_output_shapes
:
�
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*;
value2B0B2 0,2B6 2 0,6:0,2B1 0,1B2 1 0,2:0,1
�
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_9save/Identity_11save/Identity_13save/Identity_15"/device:CPU:0*
dtypes
2
�
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*)
_class
loc:@save/ShardedFilename_1*
T0*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
_output_shapes
:*
N*
T0
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
�
save/Identity_16Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
~
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0* 
valueBBglobal_step
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*
_output_shapes
:
s
save/AssignAssignglobal_stepsave/RestoreV2*
_class
loc:@global_step*
T0	*
_output_shapes
: 
(
save/restore_shardNoOp^save/Assign
�
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*i
value`B^Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/logits/biasBdnn/logits/kernel*
dtype0
�
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*;
value2B0B2 0,2B6 2 0,6:0,2B1 0,1B2 1 0,2:0,1*
dtype0
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*4
_output_shapes"
 ::::*
dtypes
2
b
save/Identity_17Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:
v
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/bias/part_0save/Identity_17"/device:CPU:0*
dtype0
h
save/Identity_18Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes

:
z
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernel/part_0save/Identity_18"/device:CPU:0*
dtype0
d
save/Identity_19Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes
:
q
save/AssignVariableOp_2AssignVariableOpdnn/logits/bias/part_0save/Identity_19"/device:CPU:0*
dtype0
h
save/Identity_20Identitysave/RestoreV2_1:3"/device:CPU:0*
_output_shapes

:*
T0
s
save/AssignVariableOp_3AssignVariableOpdnn/logits/kernel/part_0save/Identity_20"/device:CPU:0*
dtype0
�
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"�?
save/Const:0save/Identity_16:0save/restore_all (5 @F8"p
asset_filepaths]
[
Ydnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/asset_path:0"�
saved_model_assets�*�
�
+type.googleapis.com/tensorflow.AssetFileDefe
[
Ydnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/asset_path:0f3.csv"�
trainable_variables��
�
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kernel  "(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
�
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/bias "(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
�
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel  "(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
�
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"�
	variables��
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
�
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kernel  "(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
�
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/bias "(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
�
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel  "(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
�
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08"�
	summaries�
�
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0"�
cond_context��
�
 dnn/zero_fraction/cond/cond_text dnn/zero_fraction/cond/pred_id:0!dnn/zero_fraction/cond/switch_t:0 *�
dnn/hiddenlayer_0/Relu:0
dnn/zero_fraction/cond/Cast:0
+dnn/zero_fraction/cond/count_nonzero/Cast:0
,dnn/zero_fraction/cond/count_nonzero/Const:0
6dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
/dnn/zero_fraction/cond/count_nonzero/NotEqual:0
4dnn/zero_fraction/cond/count_nonzero/nonzero_count:0
,dnn/zero_fraction/cond/count_nonzero/zeros:0
 dnn/zero_fraction/cond/pred_id:0
!dnn/zero_fraction/cond/switch_t:0D
 dnn/zero_fraction/cond/pred_id:0 dnn/zero_fraction/cond/pred_id:0R
dnn/hiddenlayer_0/Relu:06dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
�
"dnn/zero_fraction/cond/cond_text_1 dnn/zero_fraction/cond/pred_id:0!dnn/zero_fraction/cond/switch_f:0*�
dnn/hiddenlayer_0/Relu:0
-dnn/zero_fraction/cond/count_nonzero_1/Cast:0
.dnn/zero_fraction/cond/count_nonzero_1/Const:0
8dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
1dnn/zero_fraction/cond/count_nonzero_1/NotEqual:0
6dnn/zero_fraction/cond/count_nonzero_1/nonzero_count:0
.dnn/zero_fraction/cond/count_nonzero_1/zeros:0
 dnn/zero_fraction/cond/pred_id:0
!dnn/zero_fraction/cond/switch_f:0T
dnn/hiddenlayer_0/Relu:08dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0D
 dnn/zero_fraction/cond/pred_id:0 dnn/zero_fraction/cond/pred_id:0
�
"dnn/zero_fraction_1/cond/cond_text"dnn/zero_fraction_1/cond/pred_id:0#dnn/zero_fraction_1/cond/switch_t:0 *�
dnn/logits/BiasAdd:0
dnn/zero_fraction_1/cond/Cast:0
-dnn/zero_fraction_1/cond/count_nonzero/Cast:0
.dnn/zero_fraction_1/cond/count_nonzero/Const:0
8dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_1/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_1/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_1/cond/count_nonzero/zeros:0
"dnn/zero_fraction_1/cond/pred_id:0
#dnn/zero_fraction_1/cond/switch_t:0P
dnn/logits/BiasAdd:08dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1H
"dnn/zero_fraction_1/cond/pred_id:0"dnn/zero_fraction_1/cond/pred_id:0
�
$dnn/zero_fraction_1/cond/cond_text_1"dnn/zero_fraction_1/cond/pred_id:0#dnn/zero_fraction_1/cond/switch_f:0*�
dnn/logits/BiasAdd:0
/dnn/zero_fraction_1/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_1/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_1/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_1/cond/pred_id:0
#dnn/zero_fraction_1/cond/switch_f:0H
"dnn/zero_fraction_1/cond/pred_id:0"dnn/zero_fraction_1/cond/pred_id:0R
dnn/logits/BiasAdd:0:dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0"%
saved_model_main_op


group_deps"�
table_initializer�
�
udnn/input_from_feature_columns/input_layer/f3_indicator/f3_lookup/hash_table/table_init/InitializeTableFromTextFileV2
Gdnn/head/predictions/class_string_lookup/table_init/LookupTableImportV2*�
predict�
&
f1 
Placeholder:0���������
(
f2"
Placeholder_1:0���������
(
f3"
Placeholder_2:0���������E
	class_ids8
!dnn/head/predictions/ExpandDims:0	���������\
classesQ
:dnn/head/predictions/hash_table_Lookup/LookupTableFindV2:0���������5
logits+
dnn/logits/BiasAdd:0���������C
all_class_ids2
dnn/head/predictions/Tile:0���������C
all_classes4
dnn/head/predictions/Tile_1:0���������L
probabilities;
$dnn/head/predictions/probabilities:0���������B
logistic6
dnn/head/predictions/logistic:0���������tensorflow/serving/predict