.class final Ltmsdkobf/ip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private rA:J

.field private rB:J

.field private rz:I


# direct methods
.method constructor <init>(Z)V
    .locals 51
    .parameter "isExpired"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const-class v50, Ltmsdkobf/is;

    aput-object v50, v48, v49

    invoke-static/range {v48 .. v48}, Ltmsdkobf/jp;->a([Ljava/lang/Class;)V

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v33

    .line 27
    .local v33, seedPart1:J
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v48

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v35, v0

    .line 28
    .local v35, seedPart2:J
    const-string v48, "os.version"

    const-string v49, "wtf"

    invoke-static/range {v48 .. v49}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->hashCode()I

    move-result v48

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v37, v0

    .line 29
    .local v37, seedPart3:J
    new-instance v31, Ljava/security/SecureRandom;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    mul-long v49, v35, v37

    invoke-virtual/range {v48 .. v50}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->getBytes()[B

    move-result-object v48

    move-object/from16 v0, v31

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Ljava/security/SecureRandom;-><init>([B)V

    .line 30
    .local v31, random:Ljava/security/SecureRandom;
    const/16 v32, 0x0

    .line 33
    .local v32, s:I
    :cond_0
    const/16 v48, 0x384

    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v48

    add-int/lit8 v32, v48, 0x65

    .line 34
    invoke-static/range {v32 .. v32}, Ltmsdkobf/ip;->aY(I)Z

    move-result v48

    if-nez v48, :cond_0

    .line 35
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ltmsdkobf/ip;->rz:I

    .line 36
    const/16 v31, 0x0

    .line 40
    move-object/from16 v0, p0

    iget v0, v0, Ltmsdkobf/ip;->rz:I

    move/from16 v45, v0

    .line 41
    .local v45, x:I
    const/16 v48, 0x64

    move/from16 v0, v48

    new-array v5, v0, [I

    .line 45
    .local v5, a:[I
    move/from16 v0, v45

    int-to-double v0, v0

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v39

    .line 48
    .local v39, sr:D
    move-wide/from16 v0, v39

    double-to-int v0, v0

    move/from16 v48, v0

    add-int/lit8 v41, v48, -0x1

    .line 49
    .local v41, sr_p:I
    :goto_0
    add-int/lit8 v48, v41, 0x1

    add-int/lit8 v49, v41, 0x1

    mul-int v48, v48, v49

    move/from16 v0, v48

    move/from16 v1, v45

    if-gt v0, v1, :cond_1

    add-int/lit8 v41, v41, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const/16 v48, 0x0

    aput v41, v5, v48

    .line 52
    mul-int v48, v41, v41

    move/from16 v0, v48

    move/from16 v1, v45

    if-ne v0, v1, :cond_2

    .line 54
    const/16 v24, 0x1

    .line 55
    .local v24, len:I
    const/16 v25, 0x0

    .line 170
    .local v25, loopFrom:I
    :goto_1
    return-void

    .line 59
    .end local v24           #len:I
    .end local v25           #loopFrom:I
    :cond_2
    const/16 v22, 0x0

    .local v22, i:I
    const/16 v23, 0x0

    .line 60
    .local v23, j:I
    move-wide/from16 v42, v39

    .line 61
    .local v42, t:D
    add-int/lit8 v22, v22, 0x1

    .line 63
    const/16 v48, 0x5

    move/from16 v0, v48

    new-array v6, v0, [I

    .line 64
    .local v6, c:[I
    const/16 v48, 0x1

    const/16 v49, 0x1

    aput v49, v6, v48

    .line 65
    const/16 v48, 0x2

    const/16 v49, 0x0

    aput v49, v6, v48

    .line 66
    const/16 v48, 0x3

    const/16 v49, 0x0

    aget v49, v5, v49

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v49, v0

    aput v49, v6, v48

    .line 67
    const/16 v48, 0x4

    const/16 v49, 0x1

    aput v49, v6, v48

    .line 69
    const/16 v48, 0x64

    const/16 v49, 0x5

    filled-new-array/range {v48 .. v49}, [I

    move-result-object v48

    sget-object v49, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[I

    .line 72
    .local v21, his:[[I
    const/16 v30, 0x0

    .line 74
    .local v30, numHis:I
    :goto_2
    const/16 v48, 0x64

    move/from16 v0, v22

    move/from16 v1, v48

    if-ge v0, v1, :cond_6

    .line 76
    const/16 v48, 0x1

    aget v48, v6, v48

    if-gez v48, :cond_3

    .line 77
    const/16 v48, 0x1

    const/16 v49, 0x1

    aget v49, v6, v49

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v49, v0

    aput v49, v6, v48

    .line 78
    const/16 v48, 0x2

    const/16 v49, 0x2

    aget v49, v6, v49

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v49, v0

    aput v49, v6, v48

    .line 79
    const/16 v48, 0x3

    const/16 v49, 0x3

    aget v49, v6, v49

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v49, v0

    aput v49, v6, v48

    .line 80
    const/16 v48, 0x4

    const/16 v49, 0x4

    aget v49, v6, v49

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v49, v0

    aput v49, v6, v48

    .line 83
    :cond_3
    const/16 v48, 0x1

    aget v48, v6, v48

    const/16 v49, 0x2

    aget v49, v6, v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(I)I

    move-result v49

    invoke-static/range {v48 .. v49}, Ltmsdkobf/ip;->c(II)I

    move-result v48

    const/16 v49, 0x3

    aget v49, v6, v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(I)I

    move-result v49

    invoke-static/range {v48 .. v49}, Ltmsdkobf/ip;->c(II)I

    move-result v48

    const/16 v49, 0x4

    aget v49, v6, v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(I)I

    move-result v49

    invoke-static/range {v48 .. v49}, Ltmsdkobf/ip;->c(II)I

    move-result v19

    .line 84
    .local v19, g:I
    const/16 v48, 0x1

    move/from16 v0, v19

    move/from16 v1, v48

    if-le v0, v1, :cond_4

    .line 85
    const/16 v48, 0x1

    aget v49, v6, v48

    div-int v49, v49, v19

    aput v49, v6, v48

    .line 86
    const/16 v48, 0x2

    aget v49, v6, v48

    div-int v49, v49, v19

    aput v49, v6, v48

    .line 87
    const/16 v48, 0x3

    aget v49, v6, v48

    div-int v49, v49, v19

    aput v49, v6, v48

    .line 88
    const/16 v48, 0x4

    aget v49, v6, v48

    div-int v49, v49, v19

    aput v49, v6, v48

    .line 91
    :cond_4
    const/16 v23, 0x0

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    .line 93
    aget-object v20, v21, v23

    .line 94
    .local v20, h:[I
    const/16 v48, 0x1

    aget v48, v20, v48

    const/16 v49, 0x1

    aget v49, v6, v49

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_9

    const/16 v48, 0x2

    aget v48, v20, v48

    const/16 v49, 0x2

    aget v49, v6, v49

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_9

    const/16 v48, 0x3

    aget v48, v20, v48

    const/16 v49, 0x3

    aget v49, v6, v49

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_9

    const/16 v48, 0x4

    aget v48, v20, v48

    const/16 v49, 0x4

    aget v49, v6, v49

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_9

    .line 102
    .end local v20           #h:[I
    :cond_5
    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    .line 117
    .end local v19           #g:I
    :cond_6
    add-int/lit8 v24, v22, -0x1

    .line 118
    .restart local v24       #len:I
    move/from16 v25, v23

    .line 121
    .restart local v25       #loopFrom:I
    const-wide/16 v13, 0x0

    .line 122
    .local v13, fz:J
    const-wide/16 v8, 0x1

    .line 123
    .local v8, fm:J
    const/4 v7, 0x1

    .line 124
    .local v7, count:I
    const/4 v12, 0x0

    .line 125
    .local v12, found:Z
    const-wide/16 v3, 0x3e8

    .line 127
    .local v3, ERROR_ZOOM:J
    :cond_7
    :goto_4
    const-wide/16 v48, 0xc8

    cmp-long v48, v13, v48

    if-ltz v48, :cond_8

    if-nez v12, :cond_10

    .line 128
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 131
    const-wide/16 v13, 0x0

    .line 132
    const-wide/16 v8, 0x1

    .line 134
    add-int/lit8 v22, v7, -0x1

    :goto_5
    if-ltz v22, :cond_c

    .line 137
    move/from16 v0, v24

    if-gt v7, v0, :cond_b

    .line 138
    aget v44, v5, v22

    .line 142
    .local v44, the_a:I
    :goto_6
    move-wide/from16 v26, v13

    .line 143
    .local v26, newfm:J
    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v48, v0

    mul-long v48, v48, v13

    add-long v28, v8, v48

    .line 145
    .local v28, newfz:J
    move-wide/from16 v8, v26

    .line 146
    move-wide/from16 v13, v28

    .line 134
    add-int/lit8 v22, v22, -0x1

    goto :goto_5

    .line 91
    .end local v3           #ERROR_ZOOM:J
    .end local v7           #count:I
    .end local v8           #fm:J
    .end local v12           #found:Z
    .end local v13           #fz:J
    .end local v24           #len:I
    .end local v25           #loopFrom:I
    .end local v26           #newfm:J
    .end local v28           #newfz:J
    .end local v44           #the_a:I
    .restart local v19       #g:I
    .restart local v20       #h:[I
    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 105
    .end local v20           #h:[I
    :cond_a
    aget-object v48, v21, v30

    const/16 v49, 0x1

    const/16 v50, 0x1

    aget v50, v6, v50

    aput v50, v48, v49

    .line 106
    aget-object v48, v21, v30

    const/16 v49, 0x2

    const/16 v50, 0x2

    aget v50, v6, v50

    aput v50, v48, v49

    .line 107
    aget-object v48, v21, v30

    const/16 v49, 0x3

    const/16 v50, 0x3

    aget v50, v6, v50

    aput v50, v48, v49

    .line 108
    aget-object v48, v21, v30

    const/16 v49, 0x4

    const/16 v50, 0x4

    aget v50, v6, v50

    aput v50, v48, v49

    .line 109
    add-int/lit8 v30, v30, 0x1

    .line 112
    move-wide/from16 v0, v39

    invoke-static {v0, v1, v6}, Ltmsdkobf/ip;->a(D[I)D

    move-result-wide v42

    .line 113
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->floor(D)D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-int v0, v0

    move/from16 v48, v0

    aput v48, v5, v22

    .line 114
    aget v48, v5, v22

    move/from16 v0, v45

    move/from16 v1, v48

    invoke-static {v0, v6, v1}, Ltmsdkobf/ip;->a(I[II)V

    .line 74
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 140
    .end local v19           #g:I
    .restart local v3       #ERROR_ZOOM:J
    .restart local v7       #count:I
    .restart local v8       #fm:J
    .restart local v12       #found:Z
    .restart local v13       #fz:J
    .restart local v24       #len:I
    .restart local v25       #loopFrom:I
    :cond_b
    sub-int v48, v22, v25

    rem-int v48, v48, v24

    add-int v48, v48, v25

    aget v44, v5, v48

    .restart local v44       #the_a:I
    goto :goto_6

    .line 150
    .end local v44           #the_a:I
    :cond_c
    const-wide/32 v48, 0xf4240

    cmp-long v48, v13, v48

    if-ltz v48, :cond_d

    .line 151
    new-instance v48, Ljava/lang/RuntimeException;

    invoke-direct/range {v48 .. v48}, Ljava/lang/RuntimeException;-><init>()V

    throw v48

    .line 153
    :cond_d
    mul-long v15, v13, v13

    .line 154
    .local v15, fz2:J
    mul-long v10, v8, v8

    .line 155
    .local v10, fm2:J
    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v48, v0

    mul-long v46, v48, v10

    .line 156
    .local v46, x_fm2:J
    const-wide/16 v48, 0x3e8

    mul-long v17, v15, v48

    .line 157
    .local v17, fz2_zoom:J
    const-wide/16 v48, 0xc8

    cmp-long v48, v13, v48

    if-ltz v48, :cond_7

    const-wide/16 v48, 0x3e7

    mul-long v48, v48, v46

    cmp-long v48, v48, v17

    if-gez v48, :cond_7

    const-wide/16 v48, 0x3e9

    mul-long v48, v48, v46

    cmp-long v48, v17, v48

    if-gez v48, :cond_7

    .line 160
    if-nez v12, :cond_7

    if-eqz p1, :cond_e

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v48, v0

    mul-long v48, v48, v10

    cmp-long v48, v15, v48

    if-ltz v48, :cond_f

    :cond_e
    if-nez p1, :cond_7

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v48, v0

    mul-long v48, v48, v10

    cmp-long v48, v15, v48

    if-lez v48, :cond_7

    .line 164
    :cond_f
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 169
    .end local v10           #fm2:J
    .end local v15           #fz2:J
    .end local v17           #fz2_zoom:J
    .end local v46           #x_fm2:J
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v8, v9}, Ltmsdkobf/ip;->b(JJ)V

    goto/16 :goto_1
.end method

.method private static final a(D[I)D
    .locals 6
    .parameter "sr"
    .parameter "c"

    .prologue
    .line 243
    const/4 v0, 0x1

    aget v0, p2, v0

    int-to-double v0, v0

    const/4 v2, 0x2

    aget v2, p2, v2

    int-to-double v2, v2

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p2, v2

    int-to-double v2, v2

    const/4 v4, 0x4

    aget v4, p2, v4

    int-to-double v4, v4

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static final a(I[II)V
    .locals 11
    .parameter "x"
    .parameter "c"
    .parameter "a"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 250
    aget v4, p1, v7

    aget v5, p1, v9

    mul-int/2addr v5, p2

    sub-int/2addr v4, v5

    aput v4, p1, v7

    .line 251
    aget v4, p1, v8

    aget v5, p1, v10

    mul-int/2addr v5, p2

    sub-int/2addr v4, v5

    aput v4, p1, v8

    .line 252
    aget v4, p1, v7

    aget v5, p1, v9

    mul-int/2addr v4, v5

    aget v5, p1, v8

    aget v6, p1, v10

    mul-int/2addr v5, v6

    mul-int/2addr v5, p0

    sub-int v0, v4, v5

    .line 253
    .local v0, d1:I
    aget v4, p1, v7

    aget v5, p1, v10

    mul-int/2addr v4, v5

    aget v5, p1, v8

    aget v6, p1, v9

    mul-int/2addr v5, v6

    sub-int v1, v4, v5

    .line 254
    .local v1, d2:I
    aget v4, p1, v7

    aget v5, p1, v7

    mul-int/2addr v4, v5

    aget v5, p1, v8

    aget v6, p1, v8

    mul-int/2addr v5, v6

    mul-int/2addr v5, p0

    sub-int v2, v4, v5

    .line 255
    .local v2, d3:I
    const/4 v3, 0x0

    .line 257
    .local v3, d4:I
    aput v0, p1, v7

    .line 258
    aput v1, p1, v8

    .line 259
    aput v2, p1, v9

    .line 260
    aput v3, p1, v10

    .line 261
    return-void
.end method

.method private static final aY(I)Z
    .locals 5
    .parameter "x"

    .prologue
    .line 235
    int-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 236
    .local v0, sr:D
    double-to-int v3, v0

    add-int/lit8 v2, v3, -0x1

    .line 237
    .local v2, sr_p:I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v2, 0x1

    mul-int/2addr v3, v4

    if-gt v3, p0, :cond_0

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_0
    mul-int v3, v2, v2

    if-ne v3, p0, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static final c(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 264
    if-nez p0, :cond_1

    move p0, p1

    .line 272
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 265
    .restart local p0
    :cond_1
    if-eqz p1, :cond_0

    .line 266
    if-ge p0, p1, :cond_3

    invoke-static {p1, p0}, Ltmsdkobf/ip;->c(II)I

    move-result p0

    goto :goto_0

    .line 273
    .local v0, r:I
    :cond_2
    move p0, p1

    .line 274
    move p1, v0

    .line 270
    .end local v0           #r:I
    :cond_3
    rem-int v0, p0, p1

    .line 271
    .restart local v0       #r:I
    if-nez v0, :cond_2

    move p0, p1

    .line 272
    goto :goto_0
.end method

.method private do()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/BadExpiryDataException;
        }
    .end annotation

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Ltmsdkobf/ip;->rz:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v11, v0

    .line 212
    .local v11, x:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Ltmsdkobf/ip;->rA:J

    .line 213
    .local v5, fz:J
    move-object/from16 v0, p0

    iget-wide v1, v0, Ltmsdkobf/ip;->rB:J

    .line 216
    .local v1, fm:J
    const-wide/16 v17, 0xc8

    cmp-long v17, v5, v17

    if-gez v17, :cond_0

    .line 217
    new-instance v17, Ltmsdk/common/exception/BadExpiryDataException;

    invoke-direct/range {v17 .. v17}, Ltmsdk/common/exception/BadExpiryDataException;-><init>()V

    throw v17

    .line 220
    :cond_0
    mul-long v7, v5, v5

    .line 221
    .local v7, fz2:J
    mul-long v3, v1, v1

    .line 222
    .local v3, fm2:J
    mul-long v13, v11, v3

    .line 223
    .local v13, x_fm2:J
    const-wide/16 v17, 0x3e8

    mul-long v15, v13, v17

    .line 224
    .local v15, x_fm2_zoom:J
    const-wide/16 v17, 0x3e8

    mul-long v9, v7, v17

    .line 225
    .local v9, fz2_zoom:J
    sub-long v17, v15, v13

    cmp-long v17, v9, v17

    if-lez v17, :cond_1

    add-long v17, v15, v13

    cmp-long v17, v9, v17

    if-ltz v17, :cond_2

    .line 227
    :cond_1
    new-instance v17, Ltmsdk/common/exception/BadExpiryDataException;

    invoke-direct/range {v17 .. v17}, Ltmsdk/common/exception/BadExpiryDataException;-><init>()V

    throw v17

    .line 231
    :cond_2
    return-void
.end method


# virtual methods
.method final b(JJ)V
    .locals 3
    .parameter "expiryP"
    .parameter "expiryQ"

    .prologue
    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ltmsdkobf/is;

    aput-object v2, v0, v1

    invoke-static {v0}, Ltmsdkobf/jp;->a([Ljava/lang/Class;)V

    .line 202
    iput-wide p1, p0, Ltmsdkobf/ip;->rA:J

    .line 203
    iput-wide p3, p0, Ltmsdkobf/ip;->rB:J

    .line 205
    invoke-direct {p0}, Ltmsdkobf/ip;->do()V

    .line 206
    return-void
.end method

.method final dn()Z
    .locals 13

    .prologue
    .line 175
    invoke-direct {p0}, Ltmsdkobf/ip;->do()V

    .line 177
    iget v12, p0, Ltmsdkobf/ip;->rz:I

    int-to-long v8, v12

    .line 178
    .local v8, x:J
    iget-wide v4, p0, Ltmsdkobf/ip;->rA:J

    .line 179
    .local v4, fz:J
    iget-wide v0, p0, Ltmsdkobf/ip;->rB:J

    .line 181
    .local v0, fm:J
    mul-long v6, v4, v4

    .line 182
    .local v6, fz2:J
    mul-long v2, v0, v0

    .line 183
    .local v2, fm2:J
    mul-long v10, v8, v2

    .line 185
    .local v10, x_fm2:J
    cmp-long v12, v6, v10

    if-gez v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    return v12

    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method
