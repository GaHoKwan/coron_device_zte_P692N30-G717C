.class public final Lbe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final a:[I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p1}, Lbe;-><init>(II)V

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput p1, p0, Lbe;->a:I

    .line 52
    iput p2, p0, Lbe;->b:I

    .line 53
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lbe;->c:I

    .line 54
    iget v0, p0, Lbe;->c:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lbe;->a:[I

    .line 55
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lbe;->a:I

    return v0
.end method

.method public a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lbe;->c:I

    mul-int/2addr v0, p2

    shr-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Lbe;->a:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 78
    return-void
.end method

.method public a(IIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 110
    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    if-lt p4, v8, :cond_2

    if-ge p3, v8, :cond_3

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_3
    add-int v1, p1, p3

    .line 117
    add-int v2, p2, p4

    .line 118
    iget v0, p0, Lbe;->b:I

    if-gt v2, v0, :cond_4

    iget v0, p0, Lbe;->a:I

    if-le v1, v0, :cond_6

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The region must fit inside the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_5
    add-int/lit8 p2, p2, 0x1

    :cond_6
    if-ge p2, v2, :cond_7

    .line 122
    iget v0, p0, Lbe;->c:I

    mul-int v3, p2, v0

    move v0, p1

    .line 123
    :goto_0
    if-ge v0, v1, :cond_5

    .line 124
    iget-object v4, p0, Lbe;->a:[I

    shr-int/lit8 v5, v0, 0x5

    add-int/2addr v5, v3

    aget v6, v4, v5

    and-int/lit8 v7, v0, 0x1f

    shl-int v7, v8, v7

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_7
    return-void
.end method

.method public a(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lbe;->c:I

    mul-int/2addr v0, p2

    shr-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    .line 66
    iget-object v1, p0, Lbe;->a:[I

    aget v0, v1, v0

    and-int/lit8 v1, p1, 0x1f

    ushr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 154
    move v0, v1

    .line 155
    :goto_0
    iget-object v2, p0, Lbe;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lbe;->a:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    iget-object v2, p0, Lbe;->a:[I

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 159
    const/4 v0, 0x0

    .line 170
    :goto_1
    return-object v0

    .line 161
    :cond_1
    iget v2, p0, Lbe;->c:I

    div-int v2, v0, v2

    .line 162
    iget v3, p0, Lbe;->c:I

    rem-int v3, v0, v3

    shl-int/lit8 v3, v3, 0x5

    .line 164
    iget-object v4, p0, Lbe;->a:[I

    aget v4, v4, v0

    move v0, v1

    .line 166
    :goto_2
    rsub-int/lit8 v5, v0, 0x1f

    shl-int v5, v4, v5

    if-nez v5, :cond_2

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :cond_2
    add-int/2addr v3, v0

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    goto :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lbe;->b:I

    return v0
.end method

.method public b(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lbe;->c:I

    mul-int/2addr v0, p2

    shr-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    .line 88
    iget-object v1, p0, Lbe;->a:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 89
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 188
    instance-of v0, p1, Lbe;

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 191
    :cond_1
    check-cast p1, Lbe;

    .line 192
    iget v0, p0, Lbe;->a:I

    iget v2, p1, Lbe;->a:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lbe;->b:I

    iget v2, p1, Lbe;->b:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lbe;->c:I

    iget v2, p1, Lbe;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lbe;->a:[I

    array-length v0, v0

    iget-object v2, p1, Lbe;->a:[I

    array-length v2, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 196
    :goto_1
    iget-object v2, p0, Lbe;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 197
    iget-object v2, p0, Lbe;->a:[I

    aget v2, v2, v0

    iget-object v3, p1, Lbe;->a:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 205
    iget v0, p0, Lbe;->a:I

    .line 206
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbe;->a:I

    add-int/2addr v0, v1

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbe;->b:I

    add-int/2addr v0, v1

    .line 208
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbe;->c:I

    add-int/2addr v1, v0

    .line 209
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lbe;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 210
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lbe;->a:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 216
    new-instance v4, Ljava/lang/StringBuffer;

    iget v0, p0, Lbe;->b:I

    iget v2, p0, Lbe;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 217
    :goto_0
    iget v2, p0, Lbe;->b:I

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 218
    :goto_1
    iget v3, p0, Lbe;->a:I

    if-ge v2, v3, :cond_1

    .line 219
    invoke-virtual {p0, v2, v0}, Lbe;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "X "

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 219
    :cond_0
    const-string v3, "  "

    goto :goto_2

    .line 221
    :cond_1
    const/16 v2, 0xa

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
