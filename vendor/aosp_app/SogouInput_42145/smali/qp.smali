.class public final Lqp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a([F[F)D
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 346
    const-wide/16 v1, 0x0

    .line 347
    array-length v3, p0

    .line 348
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 349
    aget v4, p0, v0

    aget v5, p1, v0

    sub-float/2addr v4, v5

    .line 350
    mul-float/2addr v4, v4

    float-to-double v4, v4

    add-double/2addr v1, v4

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    int-to-double v3, v3

    div-double v0, v1, v3

    return-wide v0
.end method

.method private static a(FF[FI)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/16 p0, 0x0

    .line 154
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/16 p1, 0x0

    .line 155
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    .line 156
    invoke-static/range {p0 .. p0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    .line 157
    invoke-static/range {p1 .. p1}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v2, v2

    .line 158
    invoke-static/range {p1 .. p1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    .line 161
    int-to-float v4, v0

    cmpl-float v4, p0, v4

    if-nez v4, :cond_3

    int-to-float v4, v2

    cmpl-float v4, p1, v4

    if-nez v4, :cond_3

    .line 162
    mul-int v0, v3, p3

    add-int/2addr v0, v1

    .line 163
    aget v1, p2, v0

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 164
    const/high16 v1, 0x3f80

    aput v1, p2, v0

    .line 197
    :cond_2
    :goto_0
    return-void

    .line 167
    :cond_3
    int-to-float v4, v0

    sub-float v4, v4, p0

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-float v6, v2

    sub-float v6, v6, p1

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 168
    int-to-float v6, v1

    sub-float v6, v6, p0

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-float v8, v2

    sub-float v8, v8, p1

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 169
    int-to-float v8, v0

    sub-float v8, v8, p0

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    int-to-float v10, v3

    sub-float v10, v10, p1

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 170
    int-to-float v10, v1

    sub-float v10, v10, p0

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    int-to-float v12, v3

    sub-float v12, v12, p1

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 171
    add-double v12, v4, v6

    add-double/2addr v12, v8

    add-double/2addr v12, v10

    .line 173
    div-double/2addr v4, v12

    .line 174
    mul-int v14, v2, p3

    add-int/2addr v14, v0

    .line 175
    aget v15, p2, v14

    float-to-double v15, v15

    cmpl-double v15, v4, v15

    if-lez v15, :cond_4

    .line 176
    double-to-float v4, v4

    aput v4, p2, v14

    .line 179
    :cond_4
    div-double v4, v6, v12

    .line 180
    mul-int v2, v2, p3

    add-int/2addr v2, v1

    .line 181
    aget v6, p2, v2

    float-to-double v6, v6

    cmpl-double v6, v4, v6

    if-lez v6, :cond_5

    .line 182
    double-to-float v4, v4

    aput v4, p2, v2

    .line 185
    :cond_5
    div-double v4, v8, v12

    .line 186
    mul-int v2, v3, p3

    add-int/2addr v0, v2

    .line 187
    aget v2, p2, v0

    float-to-double v6, v2

    cmpl-double v2, v4, v6

    if-lez v2, :cond_6

    .line 188
    double-to-float v2, v4

    aput v2, p2, v0

    .line 191
    :cond_6
    div-double v4, v10, v12

    .line 192
    mul-int v0, v3, p3

    add-int/2addr v0, v1

    .line 193
    aget v1, p2, v0

    float-to-double v1, v1

    cmpl-double v1, v4, v1

    if-lez v1, :cond_2

    .line 194
    double-to-float v1, v4

    aput v1, p2, v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    if-eqz p0, :cond_0

    .line 44
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "Gestures"

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static a(Lcom/sohu/inputmethod/gesture/Gesture;I)[F
    .locals 22
    .parameter
    .parameter

    .prologue
    .line 52
    add-int/lit8 v2, p1, -0x1

    int-to-float v4, v2

    .line 53
    mul-int v2, p1, p1

    new-array v11, v2, [F

    .line 54
    const/4 v2, 0x0

    invoke-static {v11, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Landroid/graphics/RectF;

    move-result-object v5

    .line 57
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v2, v4, v2

    .line 58
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v3, v4, v3

    .line 59
    cmpg-float v6, v2, v3

    if-gez v6, :cond_0

    move v3, v2

    .line 61
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    neg-float v12, v2

    .line 62
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    neg-float v13, v2

    .line 63
    const/high16 v2, 0x4000

    div-float v14, v4, v2

    .line 64
    const/high16 v2, 0x4000

    div-float v15, v4, v2

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Ljava/util/ArrayList;

    move-result-object v16

    .line 67
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 73
    const/4 v2, 0x0

    move v10, v2

    :goto_0
    move/from16 v0, v17

    if-ge v10, v0, :cond_9

    .line 74
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqo;

    .line 75
    iget-object v5, v2, Lqo;->a:[F

    .line 76
    array-length v0, v5

    move/from16 v18, v0

    .line 78
    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 80
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v2, v0, :cond_1

    .line 81
    aget v6, v5, v2

    add-float/2addr v6, v12

    mul-float/2addr v6, v3

    add-float/2addr v6, v14

    aput v6, v19, v2

    .line 82
    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    aget v7, v5, v7

    add-float/2addr v7, v13

    mul-float/2addr v7, v3

    add-float/2addr v7, v15

    aput v7, v19, v6

    .line 80
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 85
    :cond_1
    const/high16 v6, -0x4080

    .line 86
    const/high16 v5, -0x4080

    .line 88
    const/4 v2, 0x0

    move v7, v2

    move v8, v5

    move v9, v6

    :goto_2
    move/from16 v0, v18

    if-ge v7, v0, :cond_8

    .line 90
    aget v2, v19, v7

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 91
    :goto_3
    add-int/lit8 v5, v7, 0x1

    aget v5, v19, v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    const/4 v5, 0x0

    .line 93
    :goto_4
    cmpl-float v6, v2, v4

    if-lez v6, :cond_b

    move v6, v4

    .line 97
    :goto_5
    cmpl-float v2, v5, v4

    if-lez v2, :cond_a

    move v2, v4

    .line 101
    :goto_6
    move/from16 v0, p1

    invoke-static {v6, v2, v11, v0}, Lqp;->a(FF[FI)V

    .line 103
    const/high16 v5, -0x4080

    cmpl-float v5, v9, v5

    if-eqz v5, :cond_7

    .line 105
    cmpl-float v5, v9, v6

    if-lez v5, :cond_4

    .line 106
    invoke-static {v6}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    .line 107
    sub-float v20, v8, v2

    sub-float v21, v9, v6

    div-float v20, v20, v21

    .line 108
    :goto_7
    cmpg-float v21, v5, v9

    if-gez v21, :cond_5

    .line 109
    sub-float v21, v5, v6

    mul-float v21, v21, v20

    add-float v21, v21, v2

    .line 110
    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v5, v0, v11, v1}, Lqp;->a(FF[FI)V

    .line 111
    const/high16 v21, 0x3f80

    add-float v5, v5, v21

    goto :goto_7

    .line 90
    :cond_2
    aget v2, v19, v7

    goto :goto_3

    .line 91
    :cond_3
    add-int/lit8 v5, v7, 0x1

    aget v5, v19, v5

    goto :goto_4

    .line 113
    :cond_4
    cmpg-float v5, v9, v6

    if-gez v5, :cond_5

    .line 114
    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    .line 115
    sub-float v20, v8, v2

    sub-float v21, v9, v6

    div-float v20, v20, v21

    .line 116
    :goto_8
    cmpg-float v21, v5, v6

    if-gez v21, :cond_5

    .line 117
    sub-float v21, v5, v6

    mul-float v21, v21, v20

    add-float v21, v21, v2

    .line 118
    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v5, v0, v11, v1}, Lqp;->a(FF[FI)V

    .line 119
    const/high16 v21, 0x3f80

    add-float v5, v5, v21

    goto :goto_8

    .line 124
    :cond_5
    cmpl-float v5, v8, v2

    if-lez v5, :cond_6

    .line 125
    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    .line 126
    sub-float/2addr v9, v6

    sub-float v20, v8, v2

    div-float v9, v9, v20

    .line 127
    :goto_9
    cmpg-float v20, v5, v8

    if-gez v20, :cond_7

    .line 128
    sub-float v20, v5, v2

    mul-float v20, v20, v9

    add-float v20, v20, v6

    .line 129
    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v5, v11, v1}, Lqp;->a(FF[FI)V

    .line 130
    const/high16 v20, 0x3f80

    add-float v5, v5, v20

    goto :goto_9

    .line 132
    :cond_6
    cmpg-float v5, v8, v2

    if-gez v5, :cond_7

    .line 133
    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    .line 134
    sub-float/2addr v9, v6

    sub-float/2addr v8, v2

    div-float v8, v9, v8

    .line 135
    :goto_a
    cmpg-float v9, v5, v2

    if-gez v9, :cond_7

    .line 136
    sub-float v9, v5, v2

    mul-float/2addr v9, v8

    add-float/2addr v9, v6

    .line 137
    move/from16 v0, p1

    invoke-static {v9, v5, v11, v0}, Lqp;->a(FF[FI)V

    .line 138
    const/high16 v9, 0x3f80

    add-float/2addr v5, v9

    goto :goto_a

    .line 88
    :cond_7
    add-int/lit8 v5, v7, 0x2

    move v7, v5

    move v8, v2

    move v9, v6

    goto/16 :goto_2

    .line 73
    :cond_8
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_0

    .line 149
    :cond_9
    return-object v11

    :cond_a
    move v2, v5

    goto/16 :goto_6

    :cond_b
    move v6, v2

    goto/16 :goto_5
.end method

.method static a(Lqo;I)[F
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget v1, v0, Lqo;->a:F

    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    div-float v8, v1, v2

    .line 208
    mul-int/lit8 v9, p1, 0x2

    .line 209
    new-array v10, v9, [F

    .line 210
    const/4 v7, 0x0

    .line 211
    move-object/from16 v0, p0

    iget-object v11, v0, Lqo;->a:[F

    .line 212
    const/4 v1, 0x0

    aget v4, v11, v1

    .line 213
    const/4 v1, 0x1

    aget v5, v11, v1

    .line 214
    const/4 v1, 0x0

    .line 215
    const/4 v3, 0x1

    .line 216
    const/4 v2, 0x1

    .line 217
    aput v4, v10, v1

    .line 218
    const/4 v1, 0x1

    .line 219
    aput v5, v10, v1

    .line 220
    const/4 v6, 0x2

    .line 221
    const/4 v1, 0x0

    .line 222
    array-length v12, v11

    div-int/lit8 v12, v12, 0x2

    .line 223
    :goto_0
    if-ge v1, v12, :cond_0

    .line 224
    const/4 v13, 0x1

    cmpl-float v13, v3, v13

    if-nez v13, :cond_2

    .line 225
    add-int/lit8 v1, v1, 0x1

    .line 226
    if-lt v1, v12, :cond_1

    .line 255
    :cond_0
    :goto_1
    if-ge v6, v9, :cond_4

    .line 256
    aput v4, v10, v6

    .line 257
    add-int/lit8 v1, v6, 0x1

    aput v5, v10, v1

    .line 255
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 229
    :cond_1
    mul-int/lit8 v2, v1, 0x2

    aget v3, v11, v2

    .line 230
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v11, v2

    .line 232
    :cond_2
    sub-float v13, v3, v4

    .line 233
    sub-float v14, v2, v5

    .line 234
    mul-float v15, v13, v13

    mul-float v16, v14, v14

    add-float v15, v15, v16

    invoke-static {v15}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v15

    .line 235
    add-float v16, v7, v15

    cmpl-float v16, v16, v8

    if-ltz v16, :cond_3

    .line 236
    sub-float v7, v8, v7

    div-float v15, v7, v15

    .line 237
    mul-float v7, v15, v13

    add-float/2addr v7, v4

    .line 238
    mul-float v4, v15, v14

    add-float/2addr v5, v4

    .line 239
    aput v7, v10, v6

    .line 240
    add-int/lit8 v4, v6, 0x1

    .line 241
    aput v5, v10, v4

    .line 242
    add-int/lit8 v4, v4, 0x1

    .line 245
    const/4 v6, 0x0

    move/from16 v17, v7

    move v7, v6

    move/from16 v6, v17

    :goto_2
    move/from16 v17, v4

    move v4, v6

    move/from16 v6, v17

    .line 253
    goto :goto_0

    .line 249
    :cond_3
    const/4 v5, 0x1

    .line 250
    const/4 v4, 0x1

    .line 251
    add-float/2addr v7, v15

    move/from16 v17, v4

    move v4, v6

    move v6, v3

    move v3, v5

    move v5, v2

    move/from16 v2, v17

    goto :goto_2

    .line 259
    :cond_4
    return-object v10
.end method

.method static a([F)[F
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x4000

    const/4 v0, 0x0

    .line 269
    .line 271
    array-length v4, p0

    move v2, v0

    move v3, v0

    move v0, v1

    .line 272
    :goto_0
    if-ge v0, v4, :cond_0

    .line 273
    aget v5, p0, v0

    add-float/2addr v3, v5

    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 275
    aget v5, p0, v0

    add-float/2addr v2, v5

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 278
    mul-float/2addr v3, v6

    int-to-float v5, v4

    div-float/2addr v3, v5

    aput v3, v0, v1

    .line 279
    const/4 v1, 0x1

    mul-float/2addr v2, v6

    int-to-float v3, v4

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 281
    return-object v0
.end method

.method static a([FD)[F
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 447
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 448
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 449
    array-length v5, p0

    .line 450
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 451
    aget v6, p0, v0

    float-to-double v6, v6

    mul-double/2addr v6, v1

    add-int/lit8 v8, v0, 0x1

    aget v8, p0, v8

    float-to-double v8, v8

    mul-double/2addr v8, v3

    sub-double/2addr v6, v8

    double-to-float v6, v6

    .line 452
    aget v7, p0, v0

    float-to-double v7, v7

    mul-double/2addr v7, v3

    add-int/lit8 v9, v0, 0x1

    aget v9, p0, v9

    float-to-double v9, v9

    mul-double/2addr v9, v1

    add-double/2addr v7, v9

    double-to-float v7, v7

    .line 453
    aput v6, p0, v0

    .line 454
    add-int/lit8 v6, v0, 0x1

    aput v7, p0, v6

    .line 450
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 456
    :cond_0
    return-object p0
.end method

.method static a([FFF)[F
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 460
    array-length v1, p0

    .line 461
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 462
    aget v2, p0, v0

    add-float/2addr v2, p1

    aput v2, p0, v0

    .line 463
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    add-float/2addr v3, p2

    aput v3, p0, v2

    .line 461
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 465
    :cond_0
    return-object p0
.end method

.method static b([F[F)D
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 363
    const/4 v1, 0x0

    .line 364
    array-length v2, p0

    .line 365
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 366
    aget v3, p0, v0

    aget v4, p1, v0

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method
