.class public final Lbd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lbd;->a:I

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lbd;->a:[I

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lbd;->a:I

    .line 40
    invoke-static {p1}, Lbd;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Lbd;->a:[I

    .line 41
    return-void
.end method

.method private static a(I)[I
    .locals 1
    .parameter

    .prologue
    .line 233
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lbd;->a:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x5

    if-le p1, v0, :cond_0

    .line 53
    invoke-static {p1}, Lbd;->a(I)[I

    move-result-object v0

    .line 54
    iget-object v1, p0, Lbd;->a:[I

    iget-object v2, p0, Lbd;->a:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput-object v0, p0, Lbd;->a:[I

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lbd;->a:I

    return v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lbd;->a:[I

    array-length v2, v0

    move v0, v1

    .line 101
    :goto_0
    if-ge v0, v2, :cond_0

    .line 102
    iget-object v3, p0, Lbd;->a:[I

    aput v1, v3, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lbd;->a:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 74
    return-void
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 161
    if-ltz p2, :cond_0

    const/16 v0, 0x20

    if-le p2, v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Num bits must be between 0 and 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    iget v0, p0, Lbd;->a:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lbd;->b(I)V

    .line 165
    :goto_0
    if-lez p2, :cond_3

    .line 166
    add-int/lit8 v0, p2, -0x1

    shr-int v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lbd;->a(Z)V

    .line 165
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 166
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 168
    :cond_3
    return-void
.end method

.method public a(I[BII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 198
    move v4, v2

    move v0, p1

    :goto_0
    if-ge v4, p4, :cond_2

    move v1, v2

    move v3, v0

    move v0, v2

    .line 200
    :goto_1
    const/16 v5, 0x8

    if-ge v1, v5, :cond_1

    .line 201
    invoke-virtual {p0, v3}, Lbd;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    const/4 v5, 0x1

    rsub-int/lit8 v6, v1, 0x7

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    .line 204
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_1
    add-int v1, p3, v4

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 198
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v3

    goto :goto_0

    .line 208
    :cond_2
    return-void
.end method

.method public a(Lbd;)V
    .locals 3
    .parameter

    .prologue
    .line 171
    invoke-virtual {p1}, Lbd;->a()I

    move-result v1

    .line 172
    iget v0, p0, Lbd;->a:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lbd;->b(I)V

    .line 173
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 174
    invoke-virtual {p1, v0}, Lbd;->a(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lbd;->a(Z)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 5
    .parameter

    .prologue
    .line 148
    iget v0, p0, Lbd;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lbd;->b(I)V

    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lbd;->a:[I

    iget v1, p0, Lbd;->a:I

    shr-int/lit8 v1, v1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    iget v4, p0, Lbd;->a:I

    and-int/lit8 v4, v4, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 152
    :cond_0
    iget v0, p0, Lbd;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbd;->a:I

    .line 153
    return-void
.end method

.method public a(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lbd;->a:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IIZ)Z
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x1f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    if-ge p2, p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 119
    :cond_0
    if-ne p2, p1, :cond_1

    move v0, v1

    .line 144
    :goto_0
    return v0

    .line 122
    :cond_1
    add-int/lit8 v9, p2, -0x1

    .line 123
    shr-int/lit8 v8, p1, 0x5

    .line 124
    shr-int/lit8 v10, v9, 0x5

    move v7, v8

    .line 125
    :goto_1
    if-gt v7, v10, :cond_8

    .line 126
    if-le v7, v8, :cond_3

    move v0, v2

    .line 127
    :goto_2
    if-ge v7, v10, :cond_4

    move v5, v6

    .line 129
    :goto_3
    if-nez v0, :cond_5

    if-ne v5, v6, :cond_5

    .line 130
    const/4 v0, -0x1

    .line 140
    :cond_2
    iget-object v3, p0, Lbd;->a:[I

    aget v3, v3, v7

    and-int/2addr v3, v0

    if-eqz p3, :cond_6

    :goto_4
    if-eq v3, v0, :cond_7

    move v0, v2

    .line 141
    goto :goto_0

    .line 126
    :cond_3
    and-int/lit8 v0, p1, 0x1f

    goto :goto_2

    .line 127
    :cond_4
    and-int/lit8 v3, v9, 0x1f

    move v5, v3

    goto :goto_3

    :cond_5
    move v3, v0

    move v0, v2

    .line 133
    :goto_5
    if-gt v3, v5, :cond_2

    .line 134
    shl-int v4, v1, v3

    or-int/2addr v4, v0

    .line 133
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_5

    :cond_6
    move v0, v2

    .line 140
    goto :goto_4

    .line 125
    :cond_7
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_8
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lbd;->a:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public b()V
    .locals 7

    .prologue
    .line 222
    iget-object v0, p0, Lbd;->a:[I

    array-length v0, v0

    new-array v1, v0, [I

    .line 223
    iget v2, p0, Lbd;->a:I

    .line 224
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 225
    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lbd;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    shr-int/lit8 v3, v0, 0x5

    aget v4, v1, v3

    const/4 v5, 0x1

    and-int/lit8 v6, v0, 0x1f

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v1, v3

    .line 224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iput-object v1, p0, Lbd;->a:[I

    .line 230
    return-void
.end method

.method public b(Lbd;)V
    .locals 4
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lbd;->a:[I

    array-length v0, v0

    iget-object v1, p1, Lbd;->a:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sizes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbd;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v1, p0, Lbd;->a:[I

    aget v2, v1, v0

    iget-object v3, p1, Lbd;->a:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    new-instance v2, Ljava/lang/StringBuffer;

    iget v0, p0, Lbd;->a:I

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 238
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbd;->a:I

    if-ge v0, v1, :cond_2

    .line 239
    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 240
    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    :cond_0
    invoke-virtual {p0, v0}, Lbd;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x58

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    const/16 v1, 0x2e

    goto :goto_1

    .line 244
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
