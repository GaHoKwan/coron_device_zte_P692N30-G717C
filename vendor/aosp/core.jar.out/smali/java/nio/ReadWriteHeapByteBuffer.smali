.class final Ljava/nio/ReadWriteHeapByteBuffer;
.super Ljava/nio/HeapByteBuffer;
.source "ReadWriteHeapByteBuffer.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;-><init>(I)V

    .line 50
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .parameter "backingArray"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;-><init>([B)V

    .line 46
    return-void
.end method

.method constructor <init>([BII)V
    .locals 0
    .parameter "backingArray"
    .parameter "capacity"
    .parameter "arrayOffset"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/HeapByteBuffer;-><init>([BII)V

    .line 54
    return-void
.end method

.method static copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadWriteHeapByteBuffer;
    .locals 4
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 36
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([BII)V

    .line 38
    .local v0, buf:Ljava/nio/ReadWriteHeapByteBuffer;
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    .line 39
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    .line 40
    iput p1, v0, Ljava/nio/Buffer;->mark:I

    .line 41
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyHeapByteBuffer;->copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadOnlyHeapByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/Buffer;->position:I

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteHeapByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 65
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 67
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadWriteHeapByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protectedArray()[B
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "b"

    .prologue
    .line 94
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 95
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    aput-byte p1, v0, v1

    .line 98
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "index"
    .parameter "b"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(I)V

    .line 104
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    aput-byte p2, v0, v1

    .line 105
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "src"
    .parameter "srcOffset"
    .parameter "byteCount"

    .prologue
    .line 110
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    .line 111
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 113
    return-object p0
.end method

.method final put([CII)V
    .locals 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "charCount"

    .prologue
    const/4 v5, 0x2

    .line 117
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 118
    .local v2, byteCount:I
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 119
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 120
    return-void
.end method

.method final put([DII)V
    .locals 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "doubleCount"

    .prologue
    const/16 v5, 0x8

    .line 123
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 124
    .local v2, byteCount:I
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 125
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 126
    return-void
.end method

.method final put([FII)V
    .locals 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "floatCount"

    .prologue
    const/4 v5, 0x4

    .line 129
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 130
    .local v2, byteCount:I
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 131
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 132
    return-void
.end method

.method final put([III)V
    .locals 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "intCount"

    .prologue
    const/4 v5, 0x4

    .line 135
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 136
    .local v2, byteCount:I
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 137
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 138
    return-void
.end method

.method final put([JII)V
    .locals 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "longCount"

    .prologue
    const/16 v5, 0x8

    .line 141
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 142
    .local v2, byteCount:I
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 143
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 144
    return-void
.end method

.method final put([SII)V
    .locals 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "shortCount"

    .prologue
    const/4 v5, 0x2

    .line 147
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 148
    .local v2, byteCount:I
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 149
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 150
    return-void
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 5
    .parameter "value"

    .prologue
    .line 161
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 162
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    .line 163
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 165
    :cond_0
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    int-to-short v3, p1

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, v3, v4}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 166
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 167
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 154
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(II)V

    .line 155
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    int-to-short v2, p2

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 156
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "value"

    .prologue
    .line 172
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/nio/ReadWriteHeapByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 177
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ReadWriteHeapByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "value"

    .prologue
    .line 182
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 187
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "value"

    .prologue
    .line 192
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 193
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    .line 194
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 196
    :cond_0
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p1, v3}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 197
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 198
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 203
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(II)V

    .line 204
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 205
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 210
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(II)V

    .line 211
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, p3, v2}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 212
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "value"

    .prologue
    .line 217
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 218
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    .line 219
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 221
    :cond_0
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p1, p2, v3}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 222
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 223
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 228
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(II)V

    .line 229
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 230
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "value"

    .prologue
    .line 235
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 236
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    .line 237
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 239
    :cond_0
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p1, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 240
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 241
    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 246
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    invoke-virtual {p0}, Ljava/nio/ReadWriteHeapByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([BII)V

    return-object v0
.end method
