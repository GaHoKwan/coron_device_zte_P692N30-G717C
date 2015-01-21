.class public Lcom/mediatek/ngin3d/animation/KeyframeData;
.super Ljava/lang/Object;
.source "KeyframeData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient mDelay:I

.field protected transient mDuration:I

.field protected transient mNormalized:Z

.field private transient mSamples:Lcom/mediatek/ngin3d/animation/Samples;


# direct methods
.method public constructor <init>(IILcom/mediatek/ngin3d/animation/Samples;)V
    .locals 1
    .parameter "duration"
    .parameter "delay"
    .parameter "samples"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/ngin3d/animation/KeyframeData;-><init>(IILcom/mediatek/ngin3d/animation/Samples;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(IILcom/mediatek/ngin3d/animation/Samples;Z)V
    .locals 0
    .parameter "duration"
    .parameter "delay"
    .parameter "samples"
    .parameter "normalized"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDuration:I

    .line 61
    iput p2, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDelay:I

    .line 62
    iput-object p3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    .line 63
    iput-boolean p4, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mNormalized:Z

    .line 64
    return-void
.end method

.method private dumpSamples(Ljava/io/ObjectOutputStream;[Ljava/lang/String;)V
    .locals 2
    .parameter "oos"
    .parameter "sampleArrays"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    array-length v1, p2

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 118
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method private varargs dumpSamples(Ljava/io/ObjectOutputStream;[[F)V
    .locals 8
    .parameter "s"
    .parameter "sampleArrays"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v7, 0x0

    aget-object v7, p2, v7

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x20

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 91
    .local v1, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 92
    .local v3, fb:Ljava/nio/FloatBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    array-length v6, v7

    .line 94
    .local v6, length:I
    move-object v0, p2

    .local v0, arr$:[[F
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 95
    .local v2, f:[F
    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 96
    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 97
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 98
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    .end local v2           #f:[F
    :cond_0
    return-void
.end method

.method private varargs dumpSamples(Ljava/io/ObjectOutputStream;[[I)V
    .locals 8
    .parameter "oos"
    .parameter "sampleArrays"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v7, 0x0

    aget-object v7, p2, v7

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x20

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 104
    .local v1, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    .line 105
    .local v4, ib:Ljava/nio/IntBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    array-length v6, v7

    .line 107
    .local v6, length:I
    move-object v0, p2

    .local v0, arr$:[[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v0, v3

    .line 108
    .local v2, i:[I
    invoke-virtual {v4}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 109
    invoke-virtual {v4, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 110
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 111
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v2           #i:[I
    :cond_0
    return-void
.end method

.method private dumpStaticValues(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Samples;->getType()I

    move-result v0

    .line 127
    .local v0, sampleType:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 131
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 132
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v2, "z"

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v2, "v"

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    goto :goto_0
.end method

.method private varargs loadSamples(Ljava/io/ObjectInputStream;[Ljava/lang/String;)V
    .locals 11
    .parameter "ois"
    .parameter "sampleNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 186
    const/4 v2, 0x0

    .line 189
    .local v2, bytes:[B
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v7, v0, v4

    .line 190
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    .line 191
    .local v5, len:I
    if-nez v2, :cond_0

    .line 192
    new-array v2, v5, [B

    .line 195
    :cond_0
    div-int/lit8 v8, v5, 0x20

    new-array v3, v8, [F

    .line 196
    .local v3, floats:[F
    invoke-virtual {p1, v2, v10, v5}, Ljava/io/ObjectInputStream;->readFully([BII)V

    .line 197
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 198
    .local v1, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v3, v10, v9}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 199
    iget-object v8, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    invoke-virtual {v8, v7, v3}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    .end local v1           #bb:Ljava/nio/ByteBuffer;
    .end local v3           #floats:[F
    .end local v5           #len:I
    .end local v7           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private varargs loadSamplesInt(Ljava/io/ObjectInputStream;[Ljava/lang/String;)V
    .locals 11
    .parameter "ois"
    .parameter "sampleNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 204
    const/4 v2, 0x0

    .line 207
    .local v2, bytes:[B
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v7, v0, v3

    .line 208
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    .line 209
    .local v5, len:I
    if-nez v2, :cond_0

    .line 210
    new-array v2, v5, [B

    .line 213
    :cond_0
    div-int/lit8 v8, v5, 0x20

    new-array v4, v8, [I

    .line 214
    .local v4, ints:[I
    invoke-virtual {p1, v2, v10, v5}, Ljava/io/ObjectInputStream;->readFully([BII)V

    .line 215
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 216
    .local v1, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    array-length v9, v4

    invoke-virtual {v8, v4, v10, v9}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    .line 217
    iget-object v8, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    invoke-virtual {v8, v7, v4}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[I)Lcom/mediatek/ngin3d/animation/Samples;

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v1           #bb:Ljava/nio/ByteBuffer;
    .end local v4           #ints:[I
    .end local v5           #len:I
    .end local v7           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private loadSamplesString(Ljava/io/ObjectInputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "ois"
    .parameter "sampleNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 225
    .local v0, bytes:[B
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 227
    .local v3, len:I
    new-array v4, v3, [Ljava/lang/String;

    .line 228
    .local v4, strings:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 230
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 236
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :cond_0
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    invoke-virtual {v5, p2, v4}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[Ljava/lang/String;)Lcom/mediatek/ngin3d/animation/Samples;

    .line 238
    return-void
.end method

.method private loadStaticValues(Ljava/io/ObjectInputStream;Lcom/mediatek/ngin3d/animation/Samples;)V
    .locals 5
    .parameter "ois"
    .parameter "samples"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 241
    invoke-virtual {p2}, Lcom/mediatek/ngin3d/animation/Samples;->getType()I

    move-result v0

    .line 243
    .local v0, sampleType:I
    if-eq v0, v3, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 246
    :cond_0
    new-array v1, v3, [F

    .line 247
    .local v1, tmp:[F
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v4

    .line 248
    const-string v2, "x"

    invoke-virtual {p2, v2, v1}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    .line 249
    new-array v1, v3, [F

    .line 250
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v4

    .line 251
    const-string v2, "y"

    invoke-virtual {p2, v2, v1}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    .line 252
    new-array v1, v3, [F

    .line 253
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v4

    .line 254
    const-string v2, "z"

    invoke-virtual {p2, v2, v1}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    .line 260
    .end local v1           #tmp:[F
    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 256
    new-array v1, v3, [F

    .line 257
    .restart local v1       #tmp:[F
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v4

    .line 258
    const-string v2, "v"

    invoke-virtual {p2, v2, v1}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 263
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 264
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 265
    .local v2, sampleType:I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 266
    .local v1, duration:I
    if-ltz v1, :cond_0

    .line 267
    iput v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDuration:I

    .line 269
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 270
    .local v0, delay:I
    if-lez v0, :cond_1

    .line 271
    iput v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDelay:I

    .line 273
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mNormalized:Z

    .line 276
    new-instance v3, Lcom/mediatek/ngin3d/animation/Samples;

    invoke-direct {v3, v2}, Lcom/mediatek/ngin3d/animation/Samples;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    .line 277
    iget v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDuration:I

    if-nez v3, :cond_3

    .line 278
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    invoke-direct {p0, p1, v3}, Lcom/mediatek/ngin3d/animation/KeyframeData;->loadStaticValues(Ljava/io/ObjectInputStream;Lcom/mediatek/ngin3d/animation/Samples;)V

    .line 309
    :cond_2
    :goto_0
    return-void

    .line 279
    :cond_3
    if-eq v2, v5, :cond_4

    if-eq v2, v7, :cond_4

    if-eq v2, v8, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    .line 282
    :cond_4
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "type"

    aput-object v4, v3, v6

    invoke-direct {p0, p1, v3}, Lcom/mediatek/ngin3d/animation/KeyframeData;->loadSamplesInt(Ljava/io/ObjectInputStream;[Ljava/lang/String;)V

    .line 283
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "time"

    aput-object v4, v3, v6

    const-string v4, "x"

    aput-object v4, v3, v5

    const-string v4, "y"

    aput-object v4, v3, v7

    const-string v4, "z"

    aput-object v4, v3, v8

    const-string v4, "itx"

    aput-object v4, v3, v9

    const/4 v4, 0x5

    const-string v5, "ity"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "itz"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "otx"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "oty"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "otz"

    aput-object v5, v3, v4

    invoke-direct {p0, p1, v3}, Lcom/mediatek/ngin3d/animation/KeyframeData;->loadSamples(Ljava/io/ObjectInputStream;[Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_5
    if-ne v2, v9, :cond_6

    .line 296
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "type"

    aput-object v4, v3, v6

    invoke-direct {p0, p1, v3}, Lcom/mediatek/ngin3d/animation/KeyframeData;->loadSamplesInt(Ljava/io/ObjectInputStream;[Ljava/lang/String;)V

    .line 297
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "time"

    aput-object v4, v3, v6

    const-string v4, "v"

    aput-object v4, v3, v5

    const-string v4, "itx"

    aput-object v4, v3, v7

    const-string v4, "otx"

    aput-object v4, v3, v8

    invoke-direct {p0, p1, v3}, Lcom/mediatek/ngin3d/animation/KeyframeData;->loadSamples(Ljava/io/ObjectInputStream;[Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_6
    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 303
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "time"

    aput-object v4, v3, v6

    invoke-direct {p0, p1, v3}, Lcom/mediatek/ngin3d/animation/KeyframeData;->loadSamples(Ljava/io/ObjectInputStream;[Ljava/lang/String;)V

    .line 305
    const-string v3, "action"

    invoke-direct {p0, p1, v3}, Lcom/mediatek/ngin3d/animation/KeyframeData;->loadSamplesString(Ljava/io/ObjectInputStream;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 10
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 139
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 141
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/animation/Samples;->getType()I

    move-result v0

    .line 142
    .local v0, sampleType:I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 143
    iget v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDuration:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 144
    iget v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDelay:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 145
    iget-boolean v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mNormalized:Z

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 147
    iget v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDuration:I

    if-nez v2, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeData;->dumpStaticValues(Ljava/io/ObjectOutputStream;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-eq v0, v5, :cond_2

    if-eq v0, v7, :cond_2

    if-eq v0, v8, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 153
    :cond_2
    new-array v2, v5, [[I

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Samples;->getInt(Ljava/lang/String;)[I

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {p0, p1, v2}, Lcom/mediatek/ngin3d/animation/KeyframeData;->dumpSamples(Ljava/io/ObjectOutputStream;[[I)V

    .line 155
    const/16 v2, 0xa

    new-array v2, v2, [[F

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v4, "time"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v4, "y"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v4, "z"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v4, "itx"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v5, "ity"

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v5, "itz"

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v5, "otx"

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v5, "oty"

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v5, "otz"

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, p1, v2}, Lcom/mediatek/ngin3d/animation/KeyframeData;->dumpSamples(Ljava/io/ObjectOutputStream;[[F)V

    .line 167
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v3, "time"

    invoke-virtual {v2, v3}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v1

    .line 168
    .local v1, time:[F
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, v1, v2

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDuration:I

    goto/16 :goto_0

    .line 169
    .end local v1           #time:[F
    :cond_3
    if-ne v0, v9, :cond_4

    .line 171
    new-array v2, v5, [[I

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Samples;->getInt(Ljava/lang/String;)[I

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {p0, p1, v2}, Lcom/mediatek/ngin3d/animation/KeyframeData;->dumpSamples(Ljava/io/ObjectOutputStream;[[I)V

    .line 172
    new-array v2, v9, [[F

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v4, "time"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v4, "v"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v4, "itx"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v4, "otx"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v3

    aput-object v3, v2, v8

    invoke-direct {p0, p1, v2}, Lcom/mediatek/ngin3d/animation/KeyframeData;->dumpSamples(Ljava/io/ObjectOutputStream;[[F)V

    goto/16 :goto_0

    .line 177
    :cond_4
    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 178
    new-array v2, v5, [[F

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v4, "time"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {p0, p1, v2}, Lcom/mediatek/ngin3d/animation/KeyframeData;->dumpSamples(Ljava/io/ObjectOutputStream;[[F)V

    .line 180
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v3, "action"

    invoke-virtual {v2, v3}, Lcom/mediatek/ngin3d/animation/Samples;->getString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/mediatek/ngin3d/animation/KeyframeData;->dumpSamples(Ljava/io/ObjectOutputStream;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getDelay()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDelay:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDuration:I

    return v0
.end method

.method public getSamples()Lcom/mediatek/ngin3d/animation/Samples;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    return-object v0
.end method

.method public isNormalized()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeData;->mNormalized:Z

    return v0
.end method
