.class public Lcom/itextpdf/awt/geom/FlatteningPathIterator;
.super Ljava/lang/Object;
.source "FlatteningPathIterator.java"

# interfaces
.implements Lcom/itextpdf/awt/geom/PathIterator;


# static fields
.field private static final BUFFER_CAPACITY:I = 0x10

.field private static final BUFFER_LIMIT:I = 0x10

.field private static final BUFFER_SIZE:I = 0x10


# instance fields
.field buf:[D

.field bufEmpty:Z

.field bufIndex:I

.field bufLimit:I

.field bufSize:I

.field bufSubdiv:I

.field bufType:I

.field coords:[D

.field flatness:D

.field flatness2:D

.field p:Lcom/itextpdf/awt/geom/PathIterator;

.field px:D

.field py:D


# direct methods
.method public constructor <init>(Lcom/itextpdf/awt/geom/PathIterator;D)V
    .locals 1
    .parameter "path"
    .parameter "flatness"

    .prologue
    .line 113
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/awt/geom/FlatteningPathIterator;-><init>(Lcom/itextpdf/awt/geom/PathIterator;DI)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/awt/geom/PathIterator;DI)V
    .locals 2
    .parameter "path"
    .parameter "flatness"
    .parameter "limit"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufEmpty:Z

    .line 110
    const/4 v0, 0x6

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->coords:[D

    .line 117
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "awt.206"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    if-gez p4, :cond_1

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "awt.207"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    if-nez p1, :cond_2

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "awt.208"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    iput-object p1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->p:Lcom/itextpdf/awt/geom/PathIterator;

    .line 130
    iput-wide p2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->flatness:D

    .line 131
    mul-double v0, p2, p2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->flatness2:D

    .line 132
    iput p4, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufLimit:I

    .line 133
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufLimit:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    .line 134
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    .line 135
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    .line 136
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 4
    .parameter "coords"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "awt.4B"

    invoke-static {v2}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->evaluate()V

    .line 290
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufType:I

    .line 291
    .local v0, type:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 292
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->px:D

    aput-wide v2, p1, v1

    .line 293
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->py:D

    aput-wide v2, p1, v1

    .line 294
    if-eqz v0, :cond_1

    .line 295
    const/4 v0, 0x1

    .line 298
    :cond_1
    return v0
.end method

.method public currentSegment([F)I
    .locals 4
    .parameter "coords"

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "awt.4Bx"

    invoke-static {v2}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->evaluate()V

    .line 273
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufType:I

    .line 274
    .local v0, type:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 275
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->px:D

    double-to-float v2, v2

    aput v2, p1, v1

    .line 276
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->py:D

    double-to-float v2, v2

    aput v2, p1, v1

    .line 277
    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x1

    .line 281
    :cond_1
    return v0
.end method

.method evaluate()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufEmpty:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->p:Lcom/itextpdf/awt/geom/PathIterator;

    iget-object v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->coords:[D

    invoke-interface {v0, v1}, Lcom/itextpdf/awt/geom/PathIterator;->currentSegment([D)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufType:I

    .line 167
    :cond_0
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufType:I

    packed-switch v0, :pswitch_data_0

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->coords:[D

    aget-wide v0, v0, v8

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->px:D

    .line 171
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->coords:[D

    aget-wide v0, v0, v7

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->py:D

    goto :goto_0

    .line 174
    :pswitch_1
    iget-boolean v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufEmpty:Z

    if-eqz v0, :cond_2

    .line 175
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    .line 176
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v1, v1, 0x0

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->px:D

    aput-wide v2, v0, v1

    .line 177
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->py:D

    aput-wide v2, v0, v1

    .line 178
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->coords:[D

    iget-object v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0, v8, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iput v8, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSubdiv:I

    .line 182
    :cond_2
    :goto_1
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSubdiv:I

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufLimit:I

    if-ge v0, v1, :cond_3

    .line 183
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    invoke-static {v0, v1}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getFlatnessSq([DI)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->flatness2:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 205
    :cond_3
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    .line 206
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->px:D

    .line 207
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->py:D

    .line 209
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_6

    move v0, v7

    :goto_2
    iput-boolean v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufEmpty:Z

    .line 210
    iget-boolean v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufEmpty:Z

    if-eqz v0, :cond_1

    .line 211
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    .line 212
    iput v7, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufType:I

    goto :goto_0

    .line 188
    :cond_4
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    if-gt v0, v9, :cond_5

    .line 189
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    add-int/lit8 v0, v0, 0x10

    new-array v6, v0, [D

    .line 190
    .local v6, tmp:[D
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    iget v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v2, v2, 0x10

    iget v3, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    iget v4, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput-object v6, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    .line 195
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    .line 196
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    .line 199
    .end local v6           #tmp:[D
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    iget-object v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v3, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v3, v3, -0x4

    iget-object v4, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v5, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/awt/geom/QuadCurve2D;->subdivide([DI[DI[DI)V

    .line 201
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    .line 202
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSubdiv:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSubdiv:I

    goto/16 :goto_1

    :cond_6
    move v0, v8

    .line 209
    goto :goto_2

    .line 216
    :pswitch_2
    iget-boolean v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufEmpty:Z

    if-eqz v0, :cond_7

    .line 217
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    .line 218
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v1, v1, 0x0

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->px:D

    aput-wide v2, v0, v1

    .line 219
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->py:D

    aput-wide v2, v0, v1

    .line 220
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->coords:[D

    iget-object v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0, v8, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iput v8, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSubdiv:I

    .line 224
    :cond_7
    :goto_3
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSubdiv:I

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufLimit:I

    if-ge v0, v1, :cond_8

    .line 225
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    invoke-static {v0, v1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getFlatnessSq([DI)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->flatness2:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    .line 247
    :cond_8
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    .line 248
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->px:D

    .line 249
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->py:D

    .line 251
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_9

    move v8, v7

    :cond_9
    iput-boolean v8, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufEmpty:Z

    .line 252
    iget-boolean v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufEmpty:Z

    if-eqz v0, :cond_1

    .line 253
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    .line 254
    iput v7, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufType:I

    goto/16 :goto_0

    .line 230
    :cond_a
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    if-gt v0, v10, :cond_b

    .line 231
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    add-int/lit8 v0, v0, 0x10

    new-array v6, v0, [D

    .line 232
    .restart local v6       #tmp:[D
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    iget v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v2, v2, 0x10

    iget v3, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    iget v4, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iput-object v6, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    .line 237
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSize:I

    .line 238
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    .line 241
    .end local v6           #tmp:[D
    :cond_b
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v1, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    iget-object v2, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v3, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v3, v3, -0x6

    iget-object v4, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->buf:[D

    iget v5, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/awt/geom/CubicCurve2D;->subdivide([DI[DI[DI)V

    .line 243
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufIndex:I

    .line 244
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSubdiv:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufSubdiv:I

    goto/16 :goto_3

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFlatness()D
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->flatness:D

    return-wide v0
.end method

.method public getRecursionLimit()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufLimit:I

    return v0
.end method

.method public getWindingRule()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->p:Lcom/itextpdf/awt/geom/PathIterator;

    invoke-interface {v0}, Lcom/itextpdf/awt/geom/PathIterator;->getWindingRule()I

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufEmpty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->p:Lcom/itextpdf/awt/geom/PathIterator;

    invoke-interface {v0}, Lcom/itextpdf/awt/geom/PathIterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->bufEmpty:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;->p:Lcom/itextpdf/awt/geom/PathIterator;

    invoke-interface {v0}, Lcom/itextpdf/awt/geom/PathIterator;->next()V

    .line 265
    :cond_0
    return-void
.end method
