.class public final Ljava/lang/StrictMath;
.super Ljava/lang/Object;
.source "StrictMath.java"


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .locals 2
    .parameter "d"

    .prologue
    .line 67
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(F)F
    .locals 1
    .parameter "f"

    .prologue
    .line 82
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static abs(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 92
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static abs(J)J
    .locals 2
    .parameter "l"

    .prologue
    .line 102
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native acos(D)D
.end method

.method public static native asin(D)D
.end method

.method public static native atan(D)D
.end method

.method public static native atan2(DD)D
.end method

.method public static native cbrt(D)D
.end method

.method public static native ceil(D)D
.end method

.method public static copySign(DD)D
    .locals 8
    .parameter "magnitude"
    .parameter "sign"

    .prologue
    .line 940
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 941
    .local v0, magnitudeBits:J
    cmpl-double v4, p2, p2

    if-eqz v4, :cond_0

    const-wide/high16 p2, 0x3ff0

    .end local p2
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 942
    .local v2, signBits:J
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v0

    const-wide/high16 v6, -0x8000

    and-long/2addr v6, v2

    or-long v0, v4, v6

    .line 943
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4
.end method

.method public static copySign(FF)F
    .locals 4
    .parameter "magnitude"
    .parameter "sign"

    .prologue
    .line 957
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 958
    .local v0, magnitudeBits:I
    cmpl-float v2, p1, p1

    if-eqz v2, :cond_0

    const/high16 p1, 0x3f80

    .end local p1
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 959
    .local v1, signBits:I
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    const/high16 v3, -0x8000

    and-int/2addr v3, v1

    or-int v0, v2, v3

    .line 960
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method public static native cos(D)D
.end method

.method public static native cosh(D)D
.end method

.method public static native exp(D)D
.end method

.method public static native expm1(D)D
.end method

.method public static native floor(D)D
.end method

.method public static getExponent(D)I
    .locals 1
    .parameter "d"

    .prologue
    .line 976
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static getExponent(F)I
    .locals 1
    .parameter "f"

    .prologue
    .line 968
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static native hypot(DD)D
.end method

.method public static native log(D)D
.end method

.method public static native log10(D)D
.end method

.method public static native log1p(D)D
.end method

.method public static max(DD)D
    .locals 6
    .parameter "d1"
    .parameter "d2"

    .prologue
    const-wide/16 v0, 0x0

    .line 455
    cmpl-double v2, p0, p2

    if-lez v2, :cond_1

    .line 466
    .end local p0
    :cond_0
    :goto_0
    return-wide p0

    .line 457
    .restart local p0
    :cond_1
    cmpg-double v2, p0, p2

    if-gez v2, :cond_2

    move-wide p0, p2

    .line 458
    goto :goto_0

    .line 460
    :cond_2
    cmpl-double v2, p0, p2

    if-eqz v2, :cond_3

    .line 461
    const-wide/high16 p0, 0x7ff8

    goto :goto_0

    .line 463
    :cond_3
    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    and-long/2addr v2, v4

    const-wide/high16 v4, -0x8000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-wide p0, v0

    .line 465
    goto :goto_0
.end method

.method public static max(FF)F
    .locals 3
    .parameter "f1"
    .parameter "f2"

    .prologue
    const/4 v0, 0x0

    .line 482
    cmpl-float v1, p0, p1

    if-lez v1, :cond_1

    .line 493
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 484
    .restart local p0
    :cond_1
    cmpg-float v1, p0, p1

    if-gez v1, :cond_2

    move p0, p1

    .line 485
    goto :goto_0

    .line 487
    :cond_2
    cmpl-float v1, p0, p1

    if-eqz v1, :cond_3

    .line 488
    const/high16 p0, 0x7fc0

    goto :goto_0

    .line 490
    :cond_3
    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    and-int/2addr v1, v2

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    move p0, v0

    .line 492
    goto :goto_0
.end method

.method public static max(II)I
    .locals 1
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 501
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static max(JJ)J
    .locals 1
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 509
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .end local p0
    :goto_0
    return-wide p0

    .restart local p0
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static min(DD)D
    .locals 4
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 525
    cmpl-double v0, p0, p2

    if-lez v0, :cond_1

    move-wide p0, p2

    .line 536
    .end local p0
    :cond_0
    :goto_0
    return-wide p0

    .line 527
    .restart local p0
    :cond_1
    cmpg-double v0, p0, p2

    if-ltz v0, :cond_0

    .line 530
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_2

    .line 531
    const-wide/high16 p0, 0x7ff8

    goto :goto_0

    .line 533
    :cond_2
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    or-long/2addr v0, v2

    const-wide/high16 v2, -0x8000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 535
    const-wide/high16 p0, -0x8000

    goto :goto_0
.end method

.method public static min(FF)F
    .locals 2
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 552
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    move p0, p1

    .line 563
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 554
    .restart local p0
    :cond_1
    cmpg-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 557
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_2

    .line 558
    const/high16 p0, 0x7fc0

    goto :goto_0

    .line 560
    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    or-int/2addr v0, v1

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 562
    const/high16 p0, -0x8000

    goto :goto_0
.end method

.method public static min(II)I
    .locals 1
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 571
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static min(JJ)J
    .locals 1
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 579
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .end local p0
    :goto_0
    return-wide p0

    .restart local p0
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static nextAfter(DD)D
    .locals 3
    .parameter "start"
    .parameter "direction"

    .prologue
    const-wide/16 v1, 0x0

    .line 984
    cmpl-double v0, p0, v1

    if-nez v0, :cond_0

    cmpl-double v0, p2, v1

    if-nez v0, :cond_0

    .line 987
    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StrictMath;->nextafter(DD)D

    move-result-wide p2

    goto :goto_0
.end method

.method public static nextAfter(FD)F
    .locals 1
    .parameter "start"
    .parameter "direction"

    .prologue
    .line 995
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static nextUp(D)D
    .locals 2
    .parameter "d"

    .prologue
    .line 1003
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextUp(F)F
    .locals 1
    .parameter "f"

    .prologue
    .line 1011
    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    move-result v0

    return v0
.end method

.method private static native nextafter(DD)D
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .locals 2

    .prologue
    .line 629
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0
.end method

.method public static native rint(D)D
.end method

.method public static round(F)I
    .locals 1
    .parameter "f"

    .prologue
    .line 694
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static round(D)J
    .locals 2
    .parameter "d"

    .prologue
    .line 671
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static scalb(DI)D
    .locals 17
    .parameter "d"
    .parameter "scaleFactor"

    .prologue
    .line 1019
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_0

    const-wide/16 v11, 0x0

    cmpl-double v11, p0, v11

    if-nez v11, :cond_1

    :cond_0
    move-wide/from16 v11, p0

    .line 1067
    :goto_0
    return-wide v11

    .line 1023
    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1025
    .local v0, bits:J
    const-wide/high16 v11, -0x8000

    and-long v8, v0, v11

    .line 1027
    .local v8, sign:J
    const-wide/high16 v11, 0x7ff0

    and-long/2addr v11, v0

    const/16 v13, 0x34

    shr-long/2addr v11, v13

    long-to-int v11, v11

    add-int/lit16 v11, v11, -0x3ff

    add-int v11, v11, p2

    int-to-long v4, v11

    .line 1031
    .local v4, factor:J
    const-wide v11, 0x7fffffffffffffffL

    and-long/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v11

    add-int/lit8 v10, v11, -0xc

    .line 1033
    .local v10, subNormalFactor:I
    if-gez v10, :cond_2

    .line 1035
    const/4 v10, 0x0

    .line 1037
    :cond_2
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x10

    cmpg-double v11, v11, v13

    if-gez v11, :cond_3

    .line 1038
    int-to-long v11, v10

    sub-long/2addr v4, v11

    .line 1040
    :cond_3
    const-wide/16 v11, 0x3ff

    cmp-long v11, v4, v11

    if-lez v11, :cond_5

    .line 1041
    const-wide/16 v11, 0x0

    cmpl-double v11, p0, v11

    if-lez v11, :cond_4

    const-wide/high16 v11, 0x7ff0

    goto :goto_0

    :cond_4
    const-wide/high16 v11, -0x10

    goto :goto_0

    .line 1046
    :cond_5
    const-wide/16 v11, -0x3ff

    cmp-long v11, v4, v11

    if-gez v11, :cond_7

    .line 1048
    const-wide/16 v11, 0x3ff

    add-long/2addr v11, v4

    int-to-long v13, v10

    add-long v2, v11, v13

    .line 1049
    .local v2, digits:J
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x10

    cmpg-double v11, v11, v13

    if-gez v11, :cond_6

    .line 1051
    const-wide v11, 0xfffffffffffffL

    and-long/2addr v11, v0

    invoke-static {v11, v12, v2, v3}, Ljava/lang/StrictMath;->shiftLongBits(JJ)J

    move-result-wide v6

    .line 1067
    .end local v2           #digits:J
    .local v6, result:J
    :goto_1
    or-long v11, v6, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    goto :goto_0

    .line 1054
    .end local v6           #result:J
    .restart local v2       #digits:J
    :cond_6
    const-wide v11, 0xfffffffffffffL

    and-long/2addr v11, v0

    const-wide/high16 v13, 0x10

    or-long/2addr v11, v13

    const-wide/16 v13, 0x1

    sub-long v13, v2, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/StrictMath;->shiftLongBits(JJ)J

    move-result-wide v6

    .restart local v6       #result:J
    goto :goto_1

    .line 1057
    .end local v2           #digits:J
    .end local v6           #result:J
    :cond_7
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x10

    cmpl-double v11, v11, v13

    if-ltz v11, :cond_8

    .line 1059
    const-wide/16 v11, 0x3ff

    add-long/2addr v11, v4

    const/16 v13, 0x34

    shl-long/2addr v11, v13

    const-wide v13, 0xfffffffffffffL

    and-long/2addr v13, v0

    or-long v6, v11, v13

    .restart local v6       #result:J
    goto :goto_1

    .line 1063
    .end local v6           #result:J
    :cond_8
    const-wide/16 v11, 0x3ff

    add-long/2addr v11, v4

    const/16 v13, 0x34

    shl-long/2addr v11, v13

    add-int/lit8 v13, v10, 0x1

    shl-long v13, v0, v13

    const-wide v15, 0xfffffffffffffL

    and-long/2addr v13, v15

    or-long v6, v11, v13

    .restart local v6       #result:J
    goto :goto_1
.end method

.method public static scalb(FI)F
    .locals 10
    .parameter "d"
    .parameter "scaleFactor"

    .prologue
    const/4 v9, 0x0

    const/high16 v7, 0x80

    const v8, 0x7fffff

    .line 1075
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_0

    cmpl-float v6, p0, v9

    if-nez v6, :cond_1

    :cond_0
    move v6, p0

    .line 1119
    :goto_0
    return v6

    .line 1078
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1079
    .local v0, bits:I
    const/high16 v6, -0x8000

    and-int v4, v0, v6

    .line 1080
    .local v4, sign:I
    const/high16 v6, 0x7f80

    and-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x17

    add-int/lit8 v6, v6, -0x7f

    add-int v2, v6, p1

    .line 1083
    .local v2, factor:I
    const v6, 0x7fffffff

    and-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    add-int/lit8 v5, v6, -0x9

    .line 1085
    .local v5, subNormalFactor:I
    if-gez v5, :cond_2

    .line 1087
    const/4 v5, 0x0

    .line 1089
    :cond_2
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 1090
    sub-int/2addr v2, v5

    .line 1092
    :cond_3
    const/16 v6, 0x7f

    if-le v2, v6, :cond_5

    .line 1093
    cmpl-float v6, p0, v9

    if-lez v6, :cond_4

    const/high16 v6, 0x7f80

    goto :goto_0

    :cond_4
    const/high16 v6, -0x80

    goto :goto_0

    .line 1098
    :cond_5
    const/16 v6, -0x7f

    if-ge v2, v6, :cond_7

    .line 1100
    add-int/lit8 v6, v2, 0x7f

    add-int v1, v6, v5

    .line 1101
    .local v1, digits:I
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 1103
    and-int v6, v0, v8

    invoke-static {v6, v1}, Ljava/lang/StrictMath;->shiftIntBits(II)I

    move-result v3

    .line 1119
    .end local v1           #digits:I
    .local v3, result:I
    :goto_1
    or-int v6, v3, v4

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_0

    .line 1106
    .end local v3           #result:I
    .restart local v1       #digits:I
    :cond_6
    and-int v6, v0, v8

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/StrictMath;->shiftIntBits(II)I

    move-result v3

    .restart local v3       #result:I
    goto :goto_1

    .line 1109
    .end local v1           #digits:I
    .end local v3           #result:I
    :cond_7
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    .line 1111
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    and-int v7, v0, v8

    or-int v3, v6, v7

    .restart local v3       #result:I
    goto :goto_1

    .line 1115
    .end local v3           #result:I
    :cond_8
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    add-int/lit8 v7, v5, 0x1

    shl-int v7, v0, v7

    and-int/2addr v7, v8

    or-int v3, v6, v7

    .restart local v3       #result:I
    goto :goto_1
.end method

.method private static shiftIntBits(II)I
    .locals 3
    .parameter "bits"
    .parameter "digits"

    .prologue
    .line 1125
    if-lez p1, :cond_0

    .line 1126
    shl-int v1, p0, p1

    .line 1138
    :goto_0
    return v1

    .line 1129
    :cond_0
    neg-int v0, p1

    .line 1130
    .local v0, absDigits:I
    const v1, 0x7fffffff

    and-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v2, v0, 0x20

    if-gt v1, v2, :cond_3

    .line 1132
    add-int/lit8 v1, v0, -0x1

    shr-int v1, p0, v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_2

    .line 1134
    :cond_1
    shr-int v1, p0, v0

    goto :goto_0

    .line 1136
    :cond_2
    shr-int v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1138
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static shiftLongBits(JJ)J
    .locals 10
    .parameter "bits"
    .parameter "digits"

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v8, 0x1

    .line 1144
    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    .line 1145
    long-to-int v2, p2

    shl-long v2, p0, v2

    .line 1157
    :cond_0
    :goto_0
    return-wide v2

    .line 1148
    :cond_1
    neg-long v0, p2

    .line 1149
    .local v0, absDigits:J
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x40

    sub-long/2addr v6, v0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 1151
    sub-long v4, v0, v8

    long-to-int v4, v4

    shr-long v4, p0, v4

    and-long/2addr v4, v8

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    int-to-long v2, v2

    sub-long v4, v0, v8

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1153
    :cond_2
    long-to-int v2, v0

    shr-long v2, p0, v2

    goto :goto_0

    .line 1155
    :cond_3
    long-to-int v2, v0

    shr-long v2, p0, v2

    add-long/2addr v2, v8

    goto :goto_0
.end method

.method public static signum(D)D
    .locals 2
    .parameter "d"

    .prologue
    .line 717
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static signum(F)F
    .locals 1
    .parameter "f"

    .prologue
    .line 740
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static native sin(D)D
.end method

.method public static native sinh(D)D
.end method

.method public static native sqrt(D)D
.end method

.method public static native tan(D)D
.end method

.method public static native tanh(D)D
.end method

.method public static toDegrees(D)D
    .locals 2
    .parameter "angrad"

    .prologue
    .line 850
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toRadians(D)D
    .locals 2
    .parameter "angdeg"

    .prologue
    .line 871
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ulp(D)D
    .locals 4
    .parameter "d"

    .prologue
    const-wide v2, 0x7fefffffffffffffL

    .line 895
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    const-wide/high16 v0, 0x7ff0

    .line 901
    :goto_0
    return-wide v0

    .line 897
    :cond_0
    cmpl-double v0, p0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x10000000000001L

    cmpl-double v0, p0, v0

    if-nez v0, :cond_2

    .line 898
    :cond_1
    const-wide/high16 v0, 0x4000

    const-wide v2, 0x408e580000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    .line 900
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 901
    invoke-static {p0, p1, v2, v3}, Ljava/lang/StrictMath;->nextafter(DD)D

    move-result-wide v0

    sub-double/2addr v0, p0

    goto :goto_0
.end method

.method public static ulp(F)F
    .locals 1
    .parameter "f"

    .prologue
    .line 924
    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    return v0
.end method
