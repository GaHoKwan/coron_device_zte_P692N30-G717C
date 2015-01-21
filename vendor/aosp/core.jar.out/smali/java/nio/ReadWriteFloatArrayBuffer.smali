.class final Ljava/nio/ReadWriteFloatArrayBuffer;
.super Ljava/nio/FloatArrayBuffer;
.source "ReadWriteFloatArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/nio/FloatArrayBuffer;-><init>(I)V

    .line 49
    return-void
.end method

.method constructor <init>(I[FI)V
    .locals 0
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FloatArrayBuffer;-><init>(I[FI)V

    .line 53
    return-void
.end method

.method constructor <init>([F)V
    .locals 0
    .parameter "array"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/nio/FloatArrayBuffer;-><init>([F)V

    .line 45
    return-void
.end method

.method static copy(Ljava/nio/FloatArrayBuffer;I)Ljava/nio/ReadWriteFloatArrayBuffer;
    .locals 4
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 35
    new-instance v0, Ljava/nio/ReadWriteFloatArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteFloatArrayBuffer;-><init>(I[FI)V

    .line 37
    .local v0, buf:Ljava/nio/ReadWriteFloatArrayBuffer;
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    .line 38
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    .line 39
    iput p1, v0, Ljava/nio/Buffer;->mark:I

    .line 40
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyFloatArrayBuffer;->copy(Ljava/nio/FloatArrayBuffer;I)Ljava/nio/ReadOnlyFloatArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .locals 5

    .prologue
    .line 62
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/Buffer;->position:I

    iget v2, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteFloatArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 64
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 66
    return-object p0
.end method

.method public duplicate()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteFloatArrayBuffer;->copy(Ljava/nio/FloatArrayBuffer;I)Ljava/nio/ReadWriteFloatArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protectedArray()[F
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public put(F)Ljava/nio/FloatBuffer;
    .locals 4
    .parameter "c"

    .prologue
    .line 93
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    aput p1, v0, v1

    .line 97
    return-object p0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "index"
    .parameter "c"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteFloatArrayBuffer;->checkIndex(I)V

    .line 103
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    .line 104
    return-object p0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "src"
    .parameter "srcOffset"
    .parameter "floatCount"

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/nio/ReadWriteFloatArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 110
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 114
    return-object p0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .locals 5

    .prologue
    .line 119
    new-instance v0, Ljava/nio/ReadWriteFloatArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadWriteFloatArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteFloatArrayBuffer;-><init>(I[FI)V

    return-object v0
.end method
