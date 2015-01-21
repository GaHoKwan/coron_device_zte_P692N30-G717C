.class abstract Ljava/lang/AbstractStringBuilder;
.super Ljava/lang/Object;
.source "AbstractStringBuilder.java"


# static fields
.field static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private count:I

.field private shared:Z

.field private value:[C


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 76
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-gez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 87
    iput-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 88
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 89
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->_getChars(II[CI)V

    .line 90
    return-void
.end method

.method private enlargeBuffer(I)V
    .locals 5
    .parameter "min"

    .prologue
    const/4 v4, 0x0

    .line 93
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    shr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x2

    .line 94
    .local v0, newCount:I
    if-le p1, v0, :cond_0

    .end local p1
    :goto_0
    new-array v1, p1, [C

    .line 95
    .local v1, newData:[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 97
    iput-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 98
    return-void

    .end local v1           #newData:[C
    .restart local p1
    :cond_0
    move p1, v0

    .line 94
    goto :goto_0
.end method

.method private indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 2
    .parameter "index"

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-direct {v0, v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method private move(II)V
    .locals 6
    .parameter "size"
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 386
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, v3

    if-lt v2, p1, :cond_1

    .line 387
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_0

    .line 389
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v4, p2, p1

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v5, p2

    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v2

    .line 397
    .local v0, newCount:I
    :goto_1
    new-array v1, v0, [C

    .line 398
    .local v1, newData:[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v5, v1, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v3, p2, p1

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p2

    invoke-static {v2, p2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 402
    iput-boolean v5, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    .line 394
    .end local v0           #newCount:I
    .end local v1           #newData:[C
    :cond_1
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v2, p1

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0       #newCount:I
    goto :goto_1
.end method

.method private startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v0
.end method


# virtual methods
.method final append0(C)V
    .locals 3
    .parameter "ch"

    .prologue
    .line 131
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 132
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 134
    :cond_0
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char p1, v0, v1

    .line 135
    return-void
.end method

.method final append0(Ljava/lang/CharSequence;II)V
    .locals 9
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    const-string p1, "null"

    .line 155
    :cond_0
    or-int v6, p2, p3

    if-ltz v6, :cond_1

    if-gt p2, p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le p3, v6, :cond_2

    .line 156
    :cond_1
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 159
    :cond_2
    sub-int v3, p3, p2

    .line 160
    .local v3, length:I
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v4, v6, v3

    .line 161
    .local v4, newCount:I
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v6, v6

    if-le v4, v6, :cond_5

    .line 162
    invoke-direct {p0, v4}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 168
    :cond_3
    :goto_0
    instance-of v6, p1, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 169
    check-cast p1, Ljava/lang/String;

    .end local p1
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, p2, p3, v6, v7}, Ljava/lang/String;->_getChars(II[CI)V

    .line 180
    :cond_4
    :goto_1
    iput v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 181
    return-void

    .line 163
    .restart local p1
    :cond_5
    iget-boolean v6, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v6, :cond_3

    .line 164
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v6}, [C->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    iput-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 165
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    .line 170
    :cond_6
    instance-of v6, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v6, :cond_7

    move-object v5, p1

    .line 171
    check-cast v5, Ljava/lang/AbstractStringBuilder;

    .line 172
    .local v5, other:Ljava/lang/AbstractStringBuilder;
    iget-object v6, v5, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v8, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v6, p2, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 174
    .end local v5           #other:Ljava/lang/AbstractStringBuilder;
    :cond_7
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 175
    .local v1, j:I
    move v0, p2

    .local v0, i:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_2
    if-ge v0, p3, :cond_4

    .line 176
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput-char v7, v6, v2

    .line 175
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_2
.end method

.method final append0(Ljava/lang/String;)V
    .locals 5
    .parameter "string"

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()V

    .line 149
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 143
    .local v0, length:I
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v1, v2, v0

    .line 144
    .local v1, newCount:I
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 145
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 147
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->_getChars(II[CI)V

    .line 148
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_0
.end method

.method final append0([C)V
    .locals 5
    .parameter "chars"

    .prologue
    .line 112
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v2, p1

    add-int v0, v1, v2

    .line 113
    .local v0, newCount:I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 114
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 116
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 118
    return-void
.end method

.method final append0([CII)V
    .locals 3
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 121
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 122
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v0, v1, p3

    .line 123
    .local v0, newCount:I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 124
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 126
    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 128
    return-void
.end method

.method final appendNull()V
    .locals 5

    .prologue
    const/16 v4, 0x6c

    .line 101
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v1, 0x4

    .line 102
    .local v0, newCount:I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 103
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 105
    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    .line 106
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v3, 0x75

    aput-char v3, v1, v2

    .line 107
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v4, v1, v2

    .line 108
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v4, v1, v2

    .line 109
    return-void
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .parameter "index"

    .prologue
    .line 205
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 208
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public codePointAt(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 829
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    .line 830
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 832
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 849
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_1

    .line 850
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 852
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 873
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 874
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 876
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method final delete0(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 220
    if-ltz p1, :cond_4

    .line 221
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v2, :cond_0

    .line 222
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 224
    :cond_0
    if-ne p2, p1, :cond_1

    .line 241
    :goto_0
    return-void

    .line 227
    :cond_1
    if-le p2, p1, :cond_4

    .line 228
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v0, v2, p2

    .line 229
    .local v0, length:I
    if-ltz v0, :cond_2

    .line 230
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_3

    .line 231
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, p2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    :cond_2
    :goto_1
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v3, p2, p1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_0

    .line 233
    :cond_3
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 234
    .local v1, newData:[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 237
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_1

    .line 244
    .end local v0           #length:I
    .end local v1           #newData:[C
    :cond_4
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v2

    throw v2
.end method

.method final deleteCharAt0(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 248
    if-ltz p1, :cond_0

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v2, :cond_1

    .line 249
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v2

    throw v2

    .line 251
    :cond_1
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 252
    .local v0, length:I
    if-lez v0, :cond_2

    .line 253
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_3

    .line 254
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    :cond_2
    :goto_0
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 264
    return-void

    .line 256
    :cond_3
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 257
    .local v1, newData:[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 260
    iput-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 2
    .parameter "min"

    .prologue
    .line 279
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le p1, v1, :cond_0

    .line 280
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    .line 281
    .local v0, ourMin:I
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 283
    .end local v0           #ourMin:I
    :cond_0
    return-void
.end method

.method public getChars(II[CI)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "dst"
    .parameter "dstStart"

    .prologue
    .line 305
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 306
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 308
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    return-void
.end method

.method final getValue()[C
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .parameter "string"

    .prologue
    .line 678
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 9
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v6, -0x1

    .line 695
    if-gez p2, :cond_0

    .line 696
    const/4 p2, 0x0

    .line 698
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 699
    .local v5, subCount:I
    if-lez v5, :cond_9

    .line 700
    add-int v7, v5, p2

    iget v8, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le v7, v8, :cond_2

    move v2, v6

    .line 727
    :cond_1
    :goto_0
    return v2

    .line 704
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 706
    .local v0, firstChar:C
    :goto_1
    move v2, p2

    .line 707
    .local v2, i:I
    const/4 v1, 0x0

    .line 708
    .local v1, found:Z
    :goto_2
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v2, v7, :cond_3

    .line 709
    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v7, v7, v2

    if-ne v7, v0, :cond_5

    .line 710
    const/4 v1, 0x1

    .line 714
    :cond_3
    if-eqz v1, :cond_4

    add-int v7, v5, v2

    iget v8, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le v7, v8, :cond_6

    :cond_4
    move v2, v6

    .line 715
    goto :goto_0

    .line 708
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 717
    :cond_6
    move v3, v2

    .local v3, o1:I
    const/4 v4, 0x0

    .line 718
    .local v4, o2:I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_8

    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v7, v7, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_7

    .line 721
    :cond_8
    if-eq v4, v5, :cond_1

    .line 724
    add-int/lit8 p2, v2, 0x1

    .line 725
    goto :goto_1

    .line 727
    .end local v0           #firstChar:C
    .end local v1           #found:Z
    .end local v2           #i:I
    .end local v3           #o1:I
    .end local v4           #o2:I
    :cond_9
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p2, v6, :cond_a

    if-nez p2, :cond_b

    :cond_a
    move v6, p2

    :goto_3
    move v2, v6

    goto :goto_0

    :cond_b
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_3
.end method

.method final insert0(IC)V
    .locals 2
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 340
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_1

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 344
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 345
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 346
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 347
    return-void
.end method

.method final insert0(ILjava/lang/CharSequence;II)V
    .locals 1
    .parameter "index"
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 366
    if-nez p2, :cond_0

    .line 367
    const-string p2, "null"

    .line 369
    :cond_0
    or-int v0, p1, p3

    or-int/2addr v0, p4

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_1

    if-gt p3, p4, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p4, v0, :cond_2

    .line 370
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 372
    :cond_2
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert0(ILjava/lang/String;)V

    .line 373
    return-void
.end method

.method final insert0(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "string"

    .prologue
    .line 350
    if-ltz p1, :cond_2

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v1, :cond_2

    .line 351
    if-nez p2, :cond_0

    .line 352
    const-string p2, "null"

    .line 354
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 355
    .local v0, min:I
    if-eqz v0, :cond_1

    .line 356
    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 357
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->_getChars(II[CI)V

    .line 358
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 363
    :cond_1
    return-void

    .line 361
    .end local v0           #min:I
    :cond_2
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method final insert0(I[C)V
    .locals 3
    .parameter "index"
    .parameter "chars"

    .prologue
    .line 312
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_1

    .line 313
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 315
    :cond_1
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 316
    array-length v0, p2

    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 317
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, p2

    invoke-static {p2, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 320
    :cond_2
    return-void
.end method

.method final insert0(I[CII)V
    .locals 3
    .parameter "index"
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 323
    if-ltz p1, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_1

    .line 325
    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p2

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1

    .line 326
    if-eqz p4, :cond_0

    .line 327
    invoke-direct {p0, p4, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 328
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 331
    :cond_0
    return-void

    .line 334
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; chars.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .parameter "string"

    .prologue
    .line 744
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 9
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v6, -0x1

    .line 763
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 764
    .local v5, subCount:I
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt v5, v7, :cond_9

    if-ltz p2, :cond_9

    .line 765
    if-lez v5, :cond_7

    .line 766
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v7, v5

    if-le p2, v7, :cond_0

    .line 767
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int p2, v7, v5

    .line 771
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 773
    .local v0, firstChar:C
    :goto_0
    move v2, p2

    .line 774
    .local v2, i:I
    const/4 v1, 0x0

    .line 775
    .local v1, found:Z
    :goto_1
    if-ltz v2, :cond_1

    .line 776
    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v7, v7, v2

    if-ne v7, v0, :cond_3

    .line 777
    const/4 v1, 0x1

    .line 781
    :cond_1
    if-nez v1, :cond_4

    move v2, v6

    .line 797
    .end local v0           #firstChar:C
    .end local v1           #found:Z
    .end local v2           #i:I
    :cond_2
    :goto_2
    return v2

    .line 775
    .restart local v0       #firstChar:C
    .restart local v1       #found:Z
    .restart local v2       #i:I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 784
    :cond_4
    move v3, v2

    .local v3, o1:I
    const/4 v4, 0x0

    .line 786
    .local v4, o2:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_6

    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v7, v7, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_5

    .line 789
    :cond_6
    if-eq v4, v5, :cond_2

    .line 792
    add-int/lit8 p2, v2, -0x1

    .line 793
    goto :goto_0

    .line 795
    .end local v0           #firstChar:C
    .end local v1           #found:Z
    .end local v2           #i:I
    .end local v3           #o1:I
    .end local v4           #o2:I
    :cond_7
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge p2, v6, :cond_8

    move v6, p2

    :goto_3
    move v2, v6

    goto :goto_2

    :cond_8
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_3

    :cond_9
    move v2, v6

    .line 797
    goto :goto_2
.end method

.method public length()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 3
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 899
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/4 v1, 0x0

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    return v0
.end method

.method final replace0(IILjava/lang/String;)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "string"

    .prologue
    const/4 v7, 0x0

    .line 406
    if-ltz p1, :cond_7

    .line 407
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v3, :cond_0

    .line 408
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 410
    :cond_0
    if-le p2, p1, :cond_5

    .line 411
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 412
    .local v2, stringLength:I
    sub-int v3, p2, p1

    sub-int v0, v3, v2

    .line 413
    .local v0, diff:I
    if-lez v0, :cond_3

    .line 414
    iget-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v3, :cond_2

    .line 416
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v5, p1, v2

    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v6, p2

    invoke-static {v3, p2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    :cond_1
    :goto_0
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p3, v7, v2, v3, p1}, Ljava/lang/String;->_getChars(II[CI)V

    .line 435
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, v0

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 443
    .end local v0           #diff:I
    .end local v2           #stringLength:I
    :goto_1
    return-void

    .line 419
    .restart local v0       #diff:I
    .restart local v2       #stringLength:I
    :cond_2
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    new-array v1, v3, [C

    .line 420
    .local v1, newData:[C
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v3, v7, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v4, p1, v2

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v5, p2

    invoke-static {v3, p2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 425
    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    .line 427
    .end local v1           #newData:[C
    :cond_3
    if-gez v0, :cond_4

    .line 429
    neg-int v3, v0

    invoke-direct {p0, v3, p2}, Ljava/lang/AbstractStringBuilder;->move(II)V

    goto :goto_0

    .line 430
    :cond_4
    iget-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v3, :cond_1

    .line 431
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v3}, [C->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    iput-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 432
    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    .line 438
    .end local v0           #diff:I
    .end local v2           #stringLength:I
    :cond_5
    if-ne p1, p2, :cond_7

    .line 439
    if-nez p3, :cond_6

    .line 440
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "string == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 442
    :cond_6
    invoke-virtual {p0, p1, p3}, Ljava/lang/AbstractStringBuilder;->insert0(ILjava/lang/String;)V

    goto :goto_1

    .line 446
    :cond_7
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3
.end method

.method final reverse0()V
    .locals 17

    .prologue
    .line 450
    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v15, :cond_b

    .line 454
    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v15, -0x1

    .line 455
    .local v3, end:I
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/16 v16, 0x0

    aget-char v6, v15, v16

    .line 456
    .local v6, frontHigh:C
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v5, v15, v3

    .line 457
    .local v5, endLow:C
    const/4 v2, 0x1

    .local v2, allowFrontSur:Z
    const/4 v1, 0x1

    .line 458
    .local v1, allowEndSur:Z
    const/4 v9, 0x0

    .local v9, i:I
    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    div-int/lit8 v11, v15, 0x2

    .end local v2           #allowFrontSur:Z
    .local v11, mid:I
    :goto_1
    if-ge v9, v11, :cond_8

    .line 459
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v9, 0x1

    aget-char v7, v15, v16

    .line 460
    .local v7, frontLow:C
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v3, -0x1

    aget-char v4, v15, v16

    .line 461
    .local v4, endHigh:C
    if-eqz v2, :cond_3

    const v15, 0xdc00

    if-lt v7, v15, :cond_3

    const v15, 0xdfff

    if-gt v7, v15, :cond_3

    const v15, 0xd800

    if-lt v6, v15, :cond_3

    const v15, 0xdbff

    if-gt v6, v15, :cond_3

    const/4 v14, 0x1

    .line 464
    .local v14, surAtFront:Z
    :goto_2
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 467
    :cond_2
    if-eqz v1, :cond_4

    const v15, 0xd800

    if-lt v4, v15, :cond_4

    const v15, 0xdbff

    if-gt v4, v15, :cond_4

    const v15, 0xdc00

    if-lt v5, v15, :cond_4

    const v15, 0xdfff

    if-gt v5, v15, :cond_4

    const/4 v13, 0x1

    .line 470
    .local v13, surAtEnd:Z
    :goto_3
    const/4 v1, 0x1

    move v2, v1

    .line 471
    .local v2, allowFrontSur:I
    if-ne v14, v13, :cond_6

    .line 472
    if-eqz v14, :cond_5

    .line 474
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v7, v15, v3

    .line 475
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v3, -0x1

    aput-char v6, v15, v16

    .line 476
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v4, v15, v9

    .line 477
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v9, 0x1

    aput-char v5, v15, v16

    .line 478
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v9, 0x2

    aget-char v6, v15, v16

    .line 479
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v3, -0x2

    aget-char v5, v15, v16

    .line 480
    add-int/lit8 v9, v9, 0x1

    .line 481
    add-int/lit8 v3, v3, -0x1

    .line 458
    .end local v2           #allowFrontSur:I
    :goto_4
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 461
    .end local v13           #surAtEnd:Z
    .end local v14           #surAtFront:Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 467
    .restart local v14       #surAtFront:Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 484
    .restart local v2       #allowFrontSur:I
    .restart local v13       #surAtEnd:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v6, v15, v3

    .line 485
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v5, v15, v9

    .line 486
    move v6, v7

    .line 487
    move v5, v4

    goto :goto_4

    .line 490
    :cond_6
    if-eqz v14, :cond_7

    .line 492
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v7, v15, v3

    .line 493
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v5, v15, v9

    .line 494
    move v5, v4

    .line 495
    const/4 v2, 0x0

    .local v2, allowFrontSur:Z
    goto :goto_4

    .line 498
    .local v2, allowFrontSur:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v6, v15, v3

    .line 499
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v4, v15, v9

    .line 500
    move v6, v7

    .line 501
    const/4 v1, 0x0

    goto :goto_4

    .line 505
    .end local v2           #allowFrontSur:I
    .end local v4           #endHigh:C
    .end local v7           #frontLow:C
    .end local v13           #surAtEnd:Z
    .end local v14           #surAtFront:Z
    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    and-int/lit8 v15, v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    if-eqz v2, :cond_9

    if-nez v1, :cond_0

    .line 506
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    if-eqz v2, :cond_a

    .end local v5           #endLow:C
    :goto_5
    aput-char v5, v15, v3

    goto/16 :goto_0

    .restart local v5       #endLow:C
    :cond_a
    move v5, v6

    goto :goto_5

    .line 509
    .end local v1           #allowEndSur:Z
    .end local v3           #end:I
    .end local v5           #endLow:C
    .end local v6           #frontHigh:C
    .end local v9           #i:I
    .end local v11           #mid:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v15, v15

    new-array v12, v15, [C

    .line 510
    .local v12, newData:[C
    const/4 v9, 0x0

    .restart local v9       #i:I
    move-object/from16 v0, p0

    iget v3, v0, Ljava/lang/AbstractStringBuilder;->count:I

    .restart local v3       #end:I
    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v9, v15, :cond_d

    .line 511
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v8, v15, v9

    .line 512
    .local v8, high:C
    add-int/lit8 v15, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/AbstractStringBuilder;->count:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    const v15, 0xd800

    if-lt v8, v15, :cond_c

    const v15, 0xdbff

    if-gt v8, v15, :cond_c

    .line 513
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v9, 0x1

    aget-char v10, v15, v16

    .line 514
    .local v10, low:C
    const v15, 0xdc00

    if-lt v10, v15, :cond_c

    const v15, 0xdfff

    if-gt v10, v15, :cond_c

    .line 515
    add-int/lit8 v3, v3, -0x1

    aput-char v10, v12, v3

    .line 516
    add-int/lit8 v9, v9, 0x1

    .line 519
    .end local v10           #low:C
    :cond_c
    add-int/lit8 v3, v3, -0x1

    aput-char v8, v12, v3

    .line 510
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 521
    .end local v8           #high:C
    :cond_d
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 522
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto/16 :goto_0
.end method

.method final set([CI)V
    .locals 2
    .parameter "val"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    sget-object p1, Llibcore/util/EmptyArray;->CHAR:[C

    .line 65
    :cond_0
    array-length v0, p1

    if-ge v0, p2, :cond_1

    .line 66
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "count out of range"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 70
    iput-object p1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 71
    iput p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 72
    return-void
.end method

.method public setCharAt(IC)V
    .locals 1
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 538
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    .line 539
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 541
    :cond_1
    iget-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 545
    :cond_2
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 546
    return-void
.end method

.method public setLength(I)V
    .locals 4
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 560
    if-gez p1, :cond_0

    .line 561
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le p1, v1, :cond_2

    .line 564
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 577
    :cond_1
    :goto_0
    iput p1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 578
    return-void

    .line 566
    :cond_2
    iget-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v1, :cond_3

    .line 567
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    new-array v0, v1, [C

    .line 568
    .local v0, newData:[C
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 570
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    .line 572
    .end local v0           #newData:[C
    :cond_3
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v1, p1, :cond_1

    .line 573
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v2, p1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    goto :goto_0
.end method

.method final shareValue()[C
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 55
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 663
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 3
    .parameter "start"

    .prologue
    .line 592
    if-ltz p1, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_1

    .line 593
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ne p1, v0, :cond_0

    .line 594
    const-string v0, ""

    .line 598
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 600
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 617
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_1

    .line 618
    if-ne p1, p2, :cond_0

    .line 619
    const-string v0, ""

    .line 623
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 625
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 635
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-nez v1, :cond_0

    .line 636
    const-string v1, ""

    .line 645
    :goto_0
    return-object v1

    .line 639
    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v0, v1, v2

    .line 640
    .local v0, wasted:I
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    shr-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_2

    .line 642
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 644
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 645
    new-instance v1, Ljava/lang/String;

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-direct {v1, v4, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0
.end method

.method public trimToSize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 807
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 808
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    new-array v0, v1, [C

    .line 809
    .local v0, newValue:[C
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 811
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 813
    .end local v0           #newValue:[C
    :cond_0
    return-void
.end method
