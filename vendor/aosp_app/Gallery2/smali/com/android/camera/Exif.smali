.class public Lcom/android/camera/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFocusValueHigh([B)J
    .locals 2
    .parameter "jpeg"

    .prologue
    .line 50
    const/16 v0, 0x222

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/camera/Exif;->readTag([BIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFocusValueLow([B)J
    .locals 2
    .parameter "jpeg"

    .prologue
    .line 54
    const/16 v0, 0x223

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/camera/Exif;->readTag([BIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGroupId([B)J
    .locals 2
    .parameter "jpeg"

    .prologue
    .line 46
    const/16 v0, 0x221

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/camera/Exif;->readTag([BIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGroupIndex([B)I
    .locals 2
    .parameter "jpeg"

    .prologue
    .line 42
    const/16 v0, 0x220

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/camera/Exif;->readTag([BIZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getOrientation([B)I
    .locals 4
    .parameter "jpeg"

    .prologue
    const/4 v1, 0x0

    .line 26
    const/16 v2, 0x112

    invoke-static {p0, v2, v1}, Lcom/android/camera/Exif;->readTag([BIZ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 27
    .local v0, orientation:I
    packed-switch v0, :pswitch_data_0

    .line 37
    :pswitch_0
    const-string v2, "CameraExif"

    const-string v3, "Orientation not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    :pswitch_1
    return v1

    .line 31
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 33
    :pswitch_3
    const/16 v1, 0x5a

    goto :goto_0

    .line 35
    :pswitch_4
    const/16 v1, 0x10e

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static pack([BIIZZ)J
    .locals 8
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "littleEndian"
    .parameter "isMoveLong"

    .prologue
    .line 59
    const/4 v1, 0x1

    .line 60
    .local v1, step:I
    if-eqz p3, :cond_0

    .line 61
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v4

    .line 62
    const/4 v1, -0x1

    .line 64
    :cond_0
    if-eqz p4, :cond_1

    .line 65
    const-wide/16 v2, 0x0

    .local v2, value:J
    move v0, p2

    .line 66
    .end local p2
    .local v0, length:I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0           #length:I
    .restart local p2
    if-lez v0, :cond_3

    .line 67
    const/16 v4, 0x8

    shl-long v4, v2, v4

    aget-byte v6, p0, p1

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v2, v4, v6

    .line 68
    add-int/2addr p1, v1

    move v0, p2

    .end local p2
    .restart local v0       #length:I
    goto :goto_0

    .line 72
    .end local v0           #length:I
    .end local v2           #value:J
    .restart local p2
    :cond_1
    const/4 v2, 0x0

    .local v2, value:I
    move v0, p2

    .line 73
    .end local p2
    .restart local v0       #length:I
    :goto_1
    add-int/lit8 p2, v0, -0x1

    .end local v0           #length:I
    .restart local p2
    if-lez v0, :cond_2

    .line 74
    shl-int/lit8 v4, v2, 0x8

    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .line 75
    add-int/2addr p1, v1

    move v0, p2

    .end local p2
    .restart local v0       #length:I
    goto :goto_1

    .line 77
    .end local v0           #length:I
    .restart local p2
    :cond_2
    int-to-long v2, v2

    .end local v2           #value:I
    :cond_3
    return-wide v2
.end method

.method private static readTag([BIZ)J
    .locals 16
    .parameter "jpeg"
    .parameter "targetTag"
    .parameter "isMoveLong"

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const-wide/16 v6, 0x0

    .line 157
    :goto_0
    return-wide v6

    .line 85
    :cond_0
    const/4 v9, 0x0

    .line 86
    .local v9, offset:I
    const/4 v4, 0x0

    .line 88
    .local v4, length:I
    :cond_1
    :goto_1
    add-int/lit8 v12, v9, 0x3

    move-object/from16 v0, p0

    array-length v13, v0

    if-ge v12, v13, :cond_3

    add-int/lit8 v10, v9, 0x1

    .end local v9           #offset:I
    .local v10, offset:I
    aget-byte v12, p0, v9

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xff

    if-ne v12, v13, :cond_f

    .line 89
    aget-byte v12, p0, v10

    and-int/lit16 v8, v12, 0xff

    .line 91
    .local v8, marker:I
    const/16 v12, 0xff

    if-ne v8, v12, :cond_2

    move v9, v10

    .line 92
    .end local v10           #offset:I
    .restart local v9       #offset:I
    goto :goto_1

    .line 94
    .end local v9           #offset:I
    .restart local v10       #offset:I
    :cond_2
    add-int/lit8 v9, v10, 0x1

    .line 96
    .end local v10           #offset:I
    .restart local v9       #offset:I
    const/16 v12, 0xd8

    if-eq v8, v12, :cond_1

    const/4 v12, 0x1

    if-eq v8, v12, :cond_1

    .line 100
    const/16 v12, 0xd9

    if-eq v8, v12, :cond_3

    const/16 v12, 0xda

    if-ne v8, v12, :cond_4

    .line 122
    .end local v8           #marker:I
    :cond_3
    :goto_2
    const/16 v12, 0x8

    if-le v4, v12, :cond_e

    .line 124
    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v12, v13, v14}, Lcom/android/camera/Exif;->pack([BIIZZ)J

    move-result-wide v12

    long-to-int v11, v12

    .line 125
    .local v11, tag:I
    const v12, 0x49492a00

    if-eq v11, v12, :cond_8

    const v12, 0x4d4d002a

    if-eq v11, v12, :cond_8

    .line 126
    const-string v12, "CameraExif"

    const-string v13, "Invalid byte order"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 104
    .end local v11           #tag:I
    .restart local v8       #marker:I
    :cond_4
    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v12, v13, v14}, Lcom/android/camera/Exif;->pack([BIIZZ)J

    move-result-wide v12

    long-to-int v4, v12

    .line 105
    const/4 v12, 0x2

    if-lt v4, v12, :cond_5

    add-int v12, v9, v4

    move-object/from16 v0, p0

    array-length v13, v0

    if-le v12, v13, :cond_6

    .line 106
    :cond_5
    const-string v12, "CameraExif"

    const-string v13, "Invalid length"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 110
    :cond_6
    const/16 v12, 0xe1

    if-ne v8, v12, :cond_7

    const/16 v12, 0x8

    if-lt v4, v12, :cond_7

    add-int/lit8 v12, v9, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v14, v15}, Lcom/android/camera/Exif;->pack([BIIZZ)J

    move-result-wide v12

    long-to-int v12, v12

    const v13, 0x45786966

    if-ne v12, v13, :cond_7

    add-int/lit8 v12, v9, 0x6

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v14, v15}, Lcom/android/camera/Exif;->pack([BIIZZ)J

    move-result-wide v12

    long-to-int v12, v12

    if-nez v12, :cond_7

    .line 113
    add-int/lit8 v9, v9, 0x8

    .line 114
    add-int/lit8 v4, v4, -0x8

    .line 115
    goto :goto_2

    .line 118
    :cond_7
    add-int/2addr v9, v4

    .line 119
    const/4 v4, 0x0

    .line 120
    goto/16 :goto_1

    .line 129
    .end local v8           #marker:I
    .restart local v11       #tag:I
    :cond_8
    const v12, 0x49492a00

    if-ne v11, v12, :cond_a

    const/4 v5, 0x1

    .line 131
    .local v5, littleEndian:Z
    :goto_3
    add-int/lit8 v12, v9, 0x4

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v5, v14}, Lcom/android/camera/Exif;->pack([BIIZZ)J

    move-result-wide v12

    long-to-int v12, v12

    add-int/lit8 v1, v12, 0x2

    .line 132
    .local v1, count:I
    const/16 v12, 0xa

    if-lt v1, v12, :cond_9

    if-le v1, v4, :cond_b

    .line 133
    :cond_9
    const-string v12, "CameraExif"

    const-string v13, "Invalid offset"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 129
    .end local v1           #count:I
    .end local v5           #littleEndian:Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 136
    .restart local v1       #count:I
    .restart local v5       #littleEndian:Z
    :cond_b
    add-int/2addr v9, v1

    .line 137
    sub-int/2addr v4, v1

    .line 139
    add-int/lit8 v12, v9, -0x2

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v5, v14}, Lcom/android/camera/Exif;->pack([BIIZZ)J

    move-result-wide v12

    long-to-int v1, v12

    move v2, v1

    .line 140
    .end local v1           #count:I
    .local v2, count:I
    :goto_4
    add-int/lit8 v1, v2, -0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    if-lez v2, :cond_e

    const/16 v12, 0xc

    if-lt v4, v12, :cond_e

    .line 142
    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v12, v5, v13}, Lcom/android/camera/Exif;->pack([BIIZZ)J

    move-result-wide v12

    long-to-int v11, v12

    .line 143
    move/from16 v0, p1

    if-ne v11, v0, :cond_d

    .line 145
    if-eqz p2, :cond_c

    .line 146
    add-int/lit8 v12, v9, 0x8

    const/4 v13, 0x4

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v5, v14}, Lcom/android/camera/Exif;->pack([BIIZZ)J

    move-result-wide v6

    .line 147
    .local v6, longVale:J
    goto/16 :goto_0

    .line 149
    .end local v6           #longVale:J
    :cond_c
    add-int/lit8 v12, v9, 0x8

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v5, v14}, Lcom/android/camera/Exif;->pack([BIIZZ)J

    move-result-wide v12

    long-to-int v3, v12

    .line 150
    .local v3, intValue:I
    int-to-long v6, v3

    goto/16 :goto_0

    .line 153
    .end local v3           #intValue:I
    :cond_d
    add-int/lit8 v9, v9, 0xc

    .line 154
    add-int/lit8 v4, v4, -0xc

    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_4

    .line 157
    .end local v2           #count:I
    .end local v5           #littleEndian:Z
    .end local v11           #tag:I
    :cond_e
    const-wide/16 v6, -0x1

    goto/16 :goto_0

    .end local v9           #offset:I
    .restart local v10       #offset:I
    :cond_f
    move v9, v10

    .end local v10           #offset:I
    .restart local v9       #offset:I
    goto/16 :goto_2
.end method
