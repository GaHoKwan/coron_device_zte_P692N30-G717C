.class public final Lbs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final a:Lbe;

.field private final b:I


# direct methods
.method public constructor <init>(Lbe;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lbs;->a:Lbe;

    .line 44
    invoke-virtual {p1}, Lbe;->b()I

    move-result v0

    iput v0, p0, Lbs;->a:I

    .line 45
    invoke-virtual {p1}, Lbe;->a()I

    move-result v0

    iput v0, p0, Lbs;->b:I

    .line 46
    return-void
.end method

.method private static a(F)I
    .locals 1
    .parameter

    .prologue
    .line 217
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static a(FFFF)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    sub-float v0, p0, p2

    .line 237
    sub-float v1, p1, p3

    .line 238
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lbs;->a(F)I

    move-result v0

    return v0
.end method

.method private a(FFFF)Lp;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-static {p1, p2, p3, p4}, Lbs;->a(FFFF)I

    move-result v1

    .line 222
    sub-float v0, p3, p1

    int-to-float v2, v1

    div-float v2, v0, v2

    .line 223
    sub-float v0, p4, p2

    int-to-float v3, v1

    div-float v3, v0, v3

    .line 225
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 226
    int-to-float v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v4, p1

    invoke-static {v4}, Lbs;->a(F)I

    move-result v4

    .line 227
    int-to-float v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v5, p2

    invoke-static {v5}, Lbs;->a(F)I

    move-result v5

    .line 228
    iget-object v6, p0, Lbs;->a:Lbe;

    invoke-virtual {v6, v4, v5}, Lbe;->a(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 229
    new-instance v0, Lp;

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-direct {v0, v1, v2}, Lp;-><init>(FF)V

    .line 232
    :goto_1
    return-object v0

    .line 225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(IIIZ)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 299
    if-eqz p4, :cond_2

    .line 300
    :goto_0
    if-gt p1, p2, :cond_3

    .line 301
    iget-object v1, p0, Lbs;->a:Lbe;

    invoke-virtual {v1, p1, p3}, Lbe;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    :goto_1
    return v0

    .line 300
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 306
    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-gt p1, p2, :cond_3

    .line 307
    iget-object v1, p0, Lbs;->a:Lbe;

    invoke-virtual {v1, p3, p1}, Lbe;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 313
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lp;Lp;Lp;Lp;)[Lp;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-virtual {p1}, Lp;->a()F

    move-result v1

    .line 265
    invoke-virtual {p1}, Lp;->b()F

    move-result v2

    .line 266
    invoke-virtual {p2}, Lp;->a()F

    move-result v3

    .line 267
    invoke-virtual {p2}, Lp;->b()F

    move-result v4

    .line 268
    invoke-virtual {p3}, Lp;->a()F

    move-result v5

    .line 269
    invoke-virtual {p3}, Lp;->b()F

    move-result v6

    .line 270
    invoke-virtual/range {p4 .. p4}, Lp;->a()F

    move-result v7

    .line 271
    invoke-virtual/range {p4 .. p4}, Lp;->b()F

    move-result v8

    .line 273
    iget v0, p0, Lbs;->b:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 274
    const/4 v0, 0x4

    new-array v0, v0, [Lp;

    const/4 v9, 0x0

    new-instance v10, Lp;

    const/high16 v11, 0x3f80

    sub-float/2addr v7, v11

    const/high16 v11, 0x3f80

    add-float/2addr v8, v11

    invoke-direct {v10, v7, v8}, Lp;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v7, 0x1

    new-instance v8, Lp;

    const/high16 v9, 0x3f80

    add-float/2addr v3, v9

    const/high16 v9, 0x3f80

    add-float/2addr v4, v9

    invoke-direct {v8, v3, v4}, Lp;-><init>(FF)V

    aput-object v8, v0, v7

    const/4 v3, 0x2

    new-instance v4, Lp;

    const/high16 v7, 0x3f80

    sub-float/2addr v5, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lp;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v3, 0x3

    new-instance v4, Lp;

    const/high16 v5, 0x3f80

    add-float/2addr v1, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v2, v5

    invoke-direct {v4, v1, v2}, Lp;-><init>(FF)V

    aput-object v4, v0, v3

    .line 280
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Lp;

    const/4 v9, 0x0

    new-instance v10, Lp;

    const/high16 v11, 0x3f80

    add-float/2addr v7, v11

    const/high16 v11, 0x3f80

    add-float/2addr v8, v11

    invoke-direct {v10, v7, v8}, Lp;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v7, 0x1

    new-instance v8, Lp;

    const/high16 v9, 0x3f80

    add-float/2addr v3, v9

    const/high16 v9, 0x3f80

    sub-float/2addr v4, v9

    invoke-direct {v8, v3, v4}, Lp;-><init>(FF)V

    aput-object v8, v0, v7

    const/4 v3, 0x2

    new-instance v4, Lp;

    const/high16 v7, 0x3f80

    sub-float/2addr v5, v7

    const/high16 v7, 0x3f80

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lp;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v3, 0x3

    new-instance v4, Lp;

    const/high16 v5, 0x3f80

    sub-float/2addr v1, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v2, v5

    invoke-direct {v4, v1, v2}, Lp;-><init>(FF)V

    aput-object v4, v0, v3

    goto :goto_0
.end method


# virtual methods
.method public a()[Lp;
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 64
    iget v0, p0, Lbs;->b:I

    add-int/lit8 v0, v0, -0x28

    shr-int/lit8 v7, v0, 0x1

    .line 65
    iget v0, p0, Lbs;->b:I

    add-int/lit8 v0, v0, 0x28

    shr-int/lit8 v6, v0, 0x1

    .line 66
    iget v0, p0, Lbs;->a:I

    add-int/lit8 v0, v0, -0x28

    shr-int/lit8 v5, v0, 0x1

    .line 67
    iget v0, p0, Lbs;->a:I

    add-int/lit8 v0, v0, 0x28

    shr-int/lit8 v4, v0, 0x1

    move v0, v3

    move v9, v1

    .line 72
    :cond_0
    :goto_0
    if-eqz v9, :cond_1a

    move v9, v1

    move v8, v3

    .line 80
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    iget v9, p0, Lbs;->b:I

    if-ge v6, v9, :cond_2

    .line 81
    invoke-direct {p0, v5, v4, v6, v3}, Lbs;->a(IIIZ)Z

    move-result v9

    .line 82
    if-eqz v9, :cond_1

    .line 83
    add-int/lit8 v6, v6, 0x1

    move v8, v1

    .line 84
    goto :goto_1

    .line 88
    :cond_2
    iget v9, p0, Lbs;->b:I

    if-lt v6, v9, :cond_3

    move v3, v1

    move v8, v6

    move v6, v4

    move v4, v7

    move v7, v5

    .line 150
    :goto_2
    if-nez v3, :cond_16

    if-eqz v0, :cond_16

    .line 152
    sub-int v9, v8, v4

    move v3, v1

    move-object v0, v2

    .line 155
    :goto_3
    if-ge v3, v9, :cond_19

    .line 156
    int-to-float v0, v4

    sub-int v5, v6, v3

    int-to-float v5, v5

    add-int v10, v4, v3

    int-to-float v10, v10

    int-to-float v11, v6

    invoke-direct {p0, v0, v5, v10, v11}, Lbs;->a(FFFF)Lp;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_d

    move-object v5, v0

    .line 162
    :goto_4
    if-nez v5, :cond_e

    .line 163
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    :cond_3
    move v9, v1

    .line 97
    :cond_4
    :goto_5
    if-eqz v9, :cond_5

    iget v9, p0, Lbs;->a:I

    if-ge v4, v9, :cond_5

    .line 98
    invoke-direct {p0, v7, v6, v4, v1}, Lbs;->a(IIIZ)Z

    move-result v9

    .line 99
    if-eqz v9, :cond_4

    .line 100
    add-int/lit8 v4, v4, 0x1

    move v8, v1

    .line 101
    goto :goto_5

    .line 105
    :cond_5
    iget v9, p0, Lbs;->a:I

    if-lt v4, v9, :cond_6

    move v3, v1

    move v8, v6

    move v6, v4

    move v4, v7

    move v7, v5

    .line 107
    goto :goto_2

    :cond_6
    move v9, v1

    .line 114
    :cond_7
    :goto_6
    if-eqz v9, :cond_8

    if-ltz v7, :cond_8

    .line 115
    invoke-direct {p0, v5, v4, v7, v3}, Lbs;->a(IIIZ)Z

    move-result v9

    .line 116
    if-eqz v9, :cond_7

    .line 117
    add-int/lit8 v7, v7, -0x1

    move v8, v1

    .line 118
    goto :goto_6

    .line 122
    :cond_8
    if-gez v7, :cond_9

    move v3, v1

    move v8, v6

    move v6, v4

    move v4, v7

    move v7, v5

    .line 124
    goto :goto_2

    :cond_9
    move v9, v8

    move v8, v1

    .line 131
    :cond_a
    :goto_7
    if-eqz v8, :cond_b

    if-ltz v5, :cond_b

    .line 132
    invoke-direct {p0, v7, v6, v5, v1}, Lbs;->a(IIIZ)Z

    move-result v8

    .line 133
    if-eqz v8, :cond_a

    .line 134
    add-int/lit8 v5, v5, -0x1

    move v9, v1

    .line 135
    goto :goto_7

    .line 139
    :cond_b
    if-gez v5, :cond_c

    move v3, v1

    move v8, v6

    move v6, v4

    move v4, v7

    move v7, v5

    .line 141
    goto :goto_2

    .line 144
    :cond_c
    if-eqz v9, :cond_0

    move v0, v1

    .line 145
    goto/16 :goto_0

    .line 155
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    move v3, v1

    move-object v0, v2

    .line 168
    :goto_8
    if-ge v3, v9, :cond_18

    .line 169
    int-to-float v0, v4

    add-int v10, v7, v3

    int-to-float v10, v10

    add-int v11, v4, v3

    int-to-float v11, v11

    int-to-float v12, v7

    invoke-direct {p0, v0, v10, v11, v12}, Lbs;->a(FFFF)Lp;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_f

    move-object v4, v0

    .line 175
    :goto_9
    if-nez v4, :cond_10

    .line 176
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 168
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    move v3, v1

    move-object v0, v2

    .line 181
    :goto_a
    if-ge v3, v9, :cond_17

    .line 182
    int-to-float v0, v8

    add-int v10, v7, v3

    int-to-float v10, v10

    sub-int v11, v8, v3

    int-to-float v11, v11

    int-to-float v12, v7

    invoke-direct {p0, v0, v10, v11, v12}, Lbs;->a(FFFF)Lp;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_11

    move-object v3, v0

    .line 188
    :goto_b
    if-nez v3, :cond_12

    .line 189
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 181
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_12
    move-object v0, v2

    .line 194
    :goto_c
    if-ge v1, v9, :cond_13

    .line 195
    int-to-float v0, v8

    sub-int v2, v6, v1

    int-to-float v2, v2

    sub-int v7, v8, v1

    int-to-float v7, v7

    int-to-float v10, v6

    invoke-direct {p0, v0, v2, v7, v10}, Lbs;->a(FFFF)Lp;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_14

    .line 201
    :cond_13
    if-nez v0, :cond_15

    .line 202
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 194
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 205
    :cond_15
    invoke-direct {p0, v0, v5, v3, v4}, Lbs;->a(Lp;Lp;Lp;Lp;)[Lp;

    move-result-object v0

    return-object v0

    .line 208
    :cond_16
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    :cond_17
    move-object v3, v0

    goto :goto_b

    :cond_18
    move-object v4, v0

    goto :goto_9

    :cond_19
    move-object v5, v0

    goto/16 :goto_4

    :cond_1a
    move v8, v6

    move v6, v4

    move v4, v7

    move v7, v5

    goto/16 :goto_2
.end method
