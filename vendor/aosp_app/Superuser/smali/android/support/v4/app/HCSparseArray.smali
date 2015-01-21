.class Landroid/support/v4/app/HCSparseArray;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/app/HCSparseArray;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 40
    invoke-static {p1}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result p1

    .line 42
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 43
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 45
    return-void
.end method

.method private static binarySearch([IIII)I
    .locals 5

    .line 0
    add-int v2, p1, p2

    add-int/lit8 v3, p1, -0x1

    .line 315
    :goto_0
    sub-int v0, v2, v3

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 316
    add-int v0, v2, v3

    div-int/lit8 v4, v0, 0x2

    .line 318
    aget v0, p0, v4

    if-ge v0, p3, :cond_0

    .line 319
    move v3, v4

    goto :goto_0

    .line 321
    :cond_0
    move v2, v4

    goto :goto_0

    .line 324
    :cond_1
    add-int v0, p1, p2

    if-ne v2, v0, :cond_2

    .line 325
    add-int v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    return v0

    .line 326
    :cond_2
    aget v0, p0, v2

    if-ne v0, p3, :cond_3

    .line 327
    return v2

    .line 329
    :cond_3
    xor-int/lit8 v0, v2, -0x1

    return v0
.end method

.method private gc()V
    .locals 7

    .line 0
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 104
    const/4 v2, 0x0

    .line 105
    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 106
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 108
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    .line 109
    aget-object v6, v4, v5

    .line 111
    sget-object v0, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v0, :cond_1

    .line 112
    if-eq v5, v2, :cond_0

    .line 113
    aget v0, v3, v5

    aput v0, v3, v2

    .line 114
    aput-object v6, v4, v2

    .line 117
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 108
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 121
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 122
    iput v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 125
    return-void
.end method

.method static idealByteArraySize(I)I
    .locals 3

    .line 0
    const/4 v2, 0x4

    :goto_0
    const/16 v0, 0x20

    if-ge v2, v0, :cond_1

    .line 334
    const/4 v0, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v0, v0, -0xc

    if-gt p0, v0, :cond_0

    .line 335
    const/4 v0, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v0, v0, -0xc

    return v0

    .line 333
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_1
    return p0
.end method

.method static idealIntArraySize(I)I
    .locals 2

    .line 0
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/app/HCSparseArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 0
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    .line 284
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 285
    return-void

    .line 288
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 289
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 292
    :cond_1
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 293
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v0, v0

    if-lt v4, v0, :cond_2

    .line 294
    add-int/lit8 v0, v4, 0x1

    invoke-static {v0}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v5

    .line 296
    new-array v6, v5, [I

    .line 297
    new-array v5, v5, [Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    iput-object v6, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 304
    iput-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 307
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v0, v4

    .line 308
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, v4

    .line 309
    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 310
    return-void
.end method

.method public clear()V
    .locals 4

    .line 0
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 268
    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 270
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 271
    const/4 v0, 0x0

    aput-object v0, v2, v3

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 276
    return-void
.end method

.method public delete(I)V
    .locals 3

    .line 0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result p1

    .line 75
    if-ltz p1, :cond_0

    .line 76
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 81
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/HCSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result p1

    .line 62
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 63
    :cond_0
    return-object p2

    .line 65
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public indexOfKey(I)I
    .locals 3

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 240
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 256
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-ge v1, v0, :cond_2

    .line 257
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_1

    .line 258
    return v1

    .line 256
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public keyAt(I)I
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v4

    .line 135
    if-ltz v4, :cond_0

    .line 136
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, v4

    return-void

    .line 138
    :cond_0
    xor-int/lit8 v4, v4, -0x1

    .line 140
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v4

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v0, v4

    .line 142
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, v4

    .line 143
    return-void

    .line 146
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 147
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 150
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    xor-int/lit8 v4, v0, -0x1

    .line 153
    :cond_2
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 154
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v5

    .line 156
    new-array v6, v5, [I

    .line 157
    new-array v5, v5, [Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iput-object v6, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 164
    iput-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 167
    :cond_3
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v0, v4

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    add-int/lit8 v1, v4, 0x1

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v2, v4

    invoke-static {v0, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v1, v4, 0x1

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v2, v4

    invoke-static {v0, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v0, v4

    .line 174
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, v4

    .line 175
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 177
    return-void
.end method

.method public remove(I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/HCSparseArray;->delete(I)V

    .line 88
    return-void
.end method

.method public removeAt(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 98
    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 227
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 228
    return-void
.end method

.method public size()I
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 188
    :cond_0
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
