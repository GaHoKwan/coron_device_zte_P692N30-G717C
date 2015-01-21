.class final Lfk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final a:I

.field private final a:Lbe;

.field private final a:Ljava/util/Vector;

.field private final a:Lq;

.field private final a:[I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lbe;IIIIFLq;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lfk;->a:Lbe;

    .line 70
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lfk;->a:Ljava/util/Vector;

    .line 71
    iput p2, p0, Lfk;->a:I

    .line 72
    iput p3, p0, Lfk;->b:I

    .line 73
    iput p4, p0, Lfk;->c:I

    .line 74
    iput p5, p0, Lfk;->d:I

    .line 75
    iput p6, p0, Lfk;->a:F

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lfk;->a:[I

    .line 77
    iput-object p7, p0, Lfk;->a:Lq;

    .line 78
    return-void
.end method

.method private a(IIII)F
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/high16 v0, 0x7fc0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 193
    iget-object v2, p0, Lfk;->a:Lbe;

    .line 195
    invoke-virtual {v2}, Lbe;->b()I

    move-result v3

    .line 196
    iget-object v4, p0, Lfk;->a:[I

    .line 197
    aput v6, v4, v6

    .line 198
    aput v6, v4, v7

    .line 199
    aput v6, v4, v8

    move v1, p1

    .line 203
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v2, p2, v1}, Lbe;->a(II)Z

    move-result v5

    if-eqz v5, :cond_0

    aget v5, v4, v7

    if-gt v5, p3, :cond_0

    .line 204
    aget v5, v4, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v7

    .line 205
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 208
    :cond_0
    if-ltz v1, :cond_1

    aget v5, v4, v7

    if-le v5, p3, :cond_2

    .line 241
    :cond_1
    :goto_1
    return v0

    .line 211
    :cond_2
    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {v2, p2, v1}, Lbe;->a(II)Z

    move-result v5

    if-nez v5, :cond_3

    aget v5, v4, v6

    if-gt v5, p3, :cond_3

    .line 212
    aget v5, v4, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v6

    .line 213
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 215
    :cond_3
    aget v1, v4, v6

    if-gt v1, p3, :cond_1

    .line 220
    add-int/lit8 v1, p1, 0x1

    .line 221
    :goto_3
    if-ge v1, v3, :cond_4

    invoke-virtual {v2, p2, v1}, Lbe;->a(II)Z

    move-result v5

    if-eqz v5, :cond_4

    aget v5, v4, v7

    if-gt v5, p3, :cond_4

    .line 222
    aget v5, v4, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v7

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 225
    :cond_4
    if-eq v1, v3, :cond_1

    aget v5, v4, v7

    if-gt v5, p3, :cond_1

    .line 228
    :goto_4
    if-ge v1, v3, :cond_5

    invoke-virtual {v2, p2, v1}, Lbe;->a(II)Z

    move-result v5

    if-nez v5, :cond_5

    aget v5, v4, v8

    if-gt v5, p3, :cond_5

    .line 229
    aget v5, v4, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v8

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 232
    :cond_5
    aget v2, v4, v8

    if-gt v2, p3, :cond_1

    .line 236
    aget v2, v4, v6

    aget v3, v4, v7

    add-int/2addr v2, v3

    aget v3, v4, v8

    add-int/2addr v2, v3

    .line 237
    sub-int/2addr v2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v3, p4, 0x2

    if-ge v2, v3, :cond_1

    .line 241
    invoke-direct {p0, v4}, Lfk;->a([I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v4, v1}, Lfk;->a([II)F

    move-result v0

    goto :goto_1
.end method

.method private static a([II)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 161
    const/4 v0, 0x2

    aget v0, p0, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private a([III)Lfj;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 256
    aget v1, p1, v0

    aget v2, p1, v5

    add-int/2addr v1, v2

    aget v2, p1, v6

    add-int/2addr v1, v2

    .line 257
    invoke-static {p1, p3}, Lfk;->a([II)F

    move-result v2

    .line 258
    float-to-int v3, v2

    aget v4, p1, v5

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {p0, p2, v3, v4, v1}, Lfk;->a(IIII)F

    move-result v3

    .line 259
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    aget v1, p1, v0

    aget v4, p1, v5

    add-int/2addr v1, v4

    aget v4, p1, v6

    add-int/2addr v1, v4

    int-to-float v1, v1

    const/high16 v4, 0x4040

    div-float v4, v1, v4

    .line 261
    iget-object v1, p0, Lfk;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    move v1, v0

    .line 262
    :goto_0
    if-ge v1, v5, :cond_1

    .line 263
    iget-object v0, p0, Lfk;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfj;

    .line 265
    invoke-virtual {v0, v4, v3, v2}, Lfj;->a(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lfj;

    invoke-direct {v0, v2, v3, v4}, Lfj;-><init>(FFF)V

    .line 276
    :goto_1
    return-object v0

    .line 262
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 270
    :cond_1
    new-instance v0, Lfj;

    invoke-direct {v0, v2, v3, v4}, Lfj;-><init>(FFF)V

    .line 271
    iget-object v1, p0, Lfk;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lfk;->a:Lq;

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lfk;->a:Lq;

    invoke-interface {v1, v0}, Lq;->a(Lp;)V

    .line 276
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a([I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 170
    iget v2, p0, Lfk;->a:F

    .line 171
    const/high16 v1, 0x4000

    div-float v3, v2, v1

    move v1, v0

    .line 172
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 173
    aget v4, p1, v1

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_0

    .line 177
    :goto_1
    return v0

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method a()Lfj;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    iget v4, p0, Lfk;->a:I

    .line 89
    iget v6, p0, Lfk;->d:I

    .line 90
    iget v0, p0, Lfk;->c:I

    add-int v7, v4, v0

    .line 91
    iget v0, p0, Lfk;->b:I

    shr-int/lit8 v3, v6, 0x1

    add-int v8, v0, v3

    .line 94
    const/4 v0, 0x3

    new-array v9, v0, [I

    move v5, v2

    .line 95
    :goto_0
    if-ge v5, v6, :cond_a

    .line 97
    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_0

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v0, v0, 0x1

    :goto_1
    add-int v10, v8, v0

    .line 98
    aput v2, v9, v2

    .line 99
    aput v2, v9, v1

    .line 100
    aput v2, v9, v12

    move v0, v4

    .line 105
    :goto_2
    if-ge v0, v7, :cond_1

    iget-object v3, p0, Lfk;->a:Lbe;

    invoke-virtual {v3, v0, v10}, Lbe;->a(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 97
    :cond_0
    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_1

    :cond_1
    move v3, v0

    move v0, v2

    .line 109
    :goto_3
    if-ge v3, v7, :cond_8

    .line 110
    iget-object v11, p0, Lfk;->a:Lbe;

    invoke-virtual {v11, v3, v10}, Lbe;->a(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 112
    if-ne v0, v1, :cond_2

    .line 113
    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    .line 136
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 115
    :cond_2
    if-ne v0, v12, :cond_5

    .line 116
    invoke-direct {p0, v9}, Lfk;->a([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    invoke-direct {p0, v9, v10, v3}, Lfk;->a([III)Lfj;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_4

    .line 150
    :cond_3
    :goto_5
    return-object v0

    .line 122
    :cond_4
    aget v0, v9, v12

    aput v0, v9, v2

    .line 123
    aput v1, v9, v1

    .line 124
    aput v2, v9, v12

    move v0, v1

    .line 125
    goto :goto_4

    .line 127
    :cond_5
    add-int/lit8 v0, v0, 0x1

    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    goto :goto_4

    .line 131
    :cond_6
    if-ne v0, v1, :cond_7

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 134
    :cond_7
    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    goto :goto_4

    .line 138
    :cond_8
    invoke-direct {p0, v9}, Lfk;->a([I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 139
    invoke-direct {p0, v9, v10, v7}, Lfk;->a([III)Lfj;

    move-result-object v0

    .line 140
    if-nez v0, :cond_3

    .line 95
    :cond_9
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 149
    :cond_a
    iget-object v0, p0, Lfk;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 150
    iget-object v0, p0, Lfk;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfj;

    goto :goto_5

    .line 153
    :cond_b
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0
.end method
