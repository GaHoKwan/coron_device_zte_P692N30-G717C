.class public final Llibcore/util/ZoneInfo;
.super Ljava/util/TimeZone;
.source "ZoneInfo.java"


# static fields
.field private static final LEAP:[I = null

.field private static final MILLISECONDS_PER_400_YEARS:J = 0xb7af85d9c00L

.field private static final MILLISECONDS_PER_DAY:J = 0x5265c00L

.field private static final NORMAL:[I = null

.field private static final UNIX_OFFSET:J = 0x388a6f046000L


# instance fields
.field private final mDstSavings:I

.field private final mEarliestRawOffset:I

.field private final mIsDsts:[B

.field private final mOffsets:[I

.field private mRawOffset:I

.field private final mTransitions:[I

.field private final mTypes:[B

.field private final mUseDst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Llibcore/util/ZoneInfo;->NORMAL:[I

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Llibcore/util/ZoneInfo;->LEAP:[I

    return-void

    .line 37
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data

    .line 41
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;[I[B[I[B)V
    .locals 19
    .parameter "name"
    .parameter "transitions"
    .parameter "types"
    .parameter "gmtOffsets"
    .parameter "isDsts"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/util/TimeZone;-><init>()V

    .line 57
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mTransitions:[I

    .line 58
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mTypes:[B

    .line 59
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mIsDsts:[B

    .line 60
    invoke-virtual/range {p0 .. p1}, Llibcore/util/ZoneInfo;->setID(Ljava/lang/String;)V

    .line 63
    const/4 v10, 0x0

    .line 64
    .local v10, lastStd:I
    const/4 v7, 0x0

    .line 65
    .local v7, haveStd:Z
    const/4 v9, 0x0

    .line 66
    .local v9, lastDst:I
    const/4 v6, 0x0

    .line 67
    .local v6, haveDst:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v15, v15

    add-int/lit8 v8, v15, -0x1

    .local v8, i:I
    :goto_0
    if-eqz v7, :cond_0

    if-nez v6, :cond_3

    :cond_0
    if-ltz v8, :cond_3

    .line 68
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v15, v15, v8

    and-int/lit16 v13, v15, 0xff

    .line 69
    .local v13, type:I
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v15, v15, v13

    if-nez v15, :cond_1

    .line 70
    const/4 v7, 0x1

    .line 71
    move v10, v8

    .line 73
    :cond_1
    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v15, v15, v13

    if-eqz v15, :cond_2

    .line 74
    const/4 v6, 0x1

    .line 75
    move v9, v8

    .line 67
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 80
    .end local v13           #type:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    array-length v15, v15

    if-lt v10, v15, :cond_5

    .line 81
    const/4 v15, 0x0

    aget v15, p4, v15

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    .line 88
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    array-length v15, v15

    if-lt v9, v15, :cond_6

    .line 89
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo;->mDstSavings:I

    .line 96
    :goto_2
    const/4 v5, -0x1

    .line 97
    .local v5, firstStd:I
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v15, v15

    if-ge v8, v15, :cond_4

    .line 98
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    move-object/from16 v16, v0

    aget-byte v16, v16, v8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    if-nez v15, :cond_7

    .line 99
    move v5, v8

    .line 103
    :cond_4
    const/4 v15, -0x1

    if-eq v5, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v15, v15, v5

    and-int/lit16 v15, v15, 0xff

    aget v4, p4, v15

    .line 107
    .local v4, earliestRawOffset:I
    :goto_4
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mOffsets:[I

    .line 108
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    array-length v15, v15

    if-ge v8, v15, :cond_9

    .line 109
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    aget v16, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    aput v16, v15, v8

    .line 108
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 83
    .end local v4           #earliestRawOffset:I
    .end local v5           #firstStd:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v15, v15, v10

    and-int/lit16 v15, v15, 0xff

    aget v15, p4, v15

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    goto :goto_1

    .line 91
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v15, v15, v10

    and-int/lit16 v15, v15, 0xff

    aget v15, p4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    move-object/from16 v16, v0

    aget-byte v16, v16, v9

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v16, p4, v16

    sub-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    mul-int/lit16 v15, v15, 0x3e8

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo;->mDstSavings:I

    goto/16 :goto_2

    .line 97
    .restart local v5       #firstStd:I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 103
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    goto :goto_4

    .line 120
    .restart local v4       #earliestRawOffset:I
    :cond_9
    const/4 v14, 0x0

    .line 121
    .local v14, usesDst:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v2, v15, v17

    .line 122
    .local v2, currentUnixTime:J
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v15, v15

    if-lez v15, :cond_a

    .line 124
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    int-to-long v15, v15

    const-wide/16 v17, -0x1

    and-long v11, v15, v17

    .line 125
    .local v11, latestScheduleTime:J
    cmp-long v15, v2, v11

    if-gez v15, :cond_a

    .line 126
    const/4 v14, 0x1

    .line 129
    .end local v11           #latestScheduleTime:J
    :cond_a
    move-object/from16 v0, p0

    iput-boolean v14, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    .line 132
    move-object/from16 v0, p0

    iget v15, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    mul-int/lit16 v15, v15, 0x3e8

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    .line 133
    mul-int/lit16 v15, v4, 0x3e8

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    .line 134
    return-void
.end method

.method private static formatTime(ILjava/util/TimeZone;)Ljava/lang/String;
    .locals 7
    .parameter "s"
    .parameter "tz"

    .prologue
    .line 277
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMM dd HH:mm:ss yyyy zzz"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 278
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 279
    int-to-long v3, p0

    const-wide/16 v5, 0x3e8

    mul-long v0, v3, v5

    .line 280
    .local v0, ms:J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 234
    instance-of v2, p1, Llibcore/util/ZoneInfo;

    if-nez v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 237
    check-cast v0, Llibcore/util/ZoneInfo;

    .line 238
    .local v0, other:Llibcore/util/ZoneInfo;
    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Llibcore/util/ZoneInfo;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDSTSavings()I
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-eqz v0, :cond_0

    iget v0, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 8
    .parameter "era"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "millis"

    .prologue
    .line 142
    div-int/lit16 v4, p2, 0x190

    int-to-long v4, v4

    const-wide v6, 0xb7af85d9c00L

    mul-long v0, v4, v6

    .line 143
    .local v0, calc:J
    rem-int/lit16 p2, p2, 0x190

    .line 145
    int-to-long v4, p2

    const-wide v6, 0x757b12c00L

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 146
    add-int/lit8 v4, p2, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 148
    if-lez p2, :cond_0

    .line 149
    add-int/lit8 v4, p2, -0x1

    div-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 152
    :cond_0
    if-eqz p2, :cond_1

    rem-int/lit8 v4, p2, 0x4

    if-nez v4, :cond_2

    rem-int/lit8 v4, p2, 0x64

    if-eqz v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 153
    .local v2, isLeap:Z
    :goto_0
    if-eqz v2, :cond_3

    sget-object v3, Llibcore/util/ZoneInfo;->LEAP:[I

    .line 155
    .local v3, mlen:[I
    :goto_1
    aget v4, v3, p3

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 156
    add-int/lit8 v4, p4, -0x1

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 157
    int-to-long v4, p6

    add-long/2addr v0, v4

    .line 159
    iget v4, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 160
    const-wide v4, 0x388a6f046000L

    sub-long/2addr v0, v4

    .line 162
    invoke-virtual {p0, v0, v1}, Llibcore/util/ZoneInfo;->getOffset(J)I

    move-result v4

    return v4

    .line 152
    .end local v2           #isLeap:Z
    .end local v3           #mlen:[I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 153
    .restart local v2       #isLeap:Z
    :cond_3
    sget-object v3, Llibcore/util/ZoneInfo;->NORMAL:[I

    goto :goto_1
.end method

.method public getOffset(J)I
    .locals 5
    .parameter "when"

    .prologue
    .line 167
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 168
    .local v1, unix:I
    iget-object v2, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 169
    .local v0, transition:I
    if-gez v0, :cond_0

    .line 170
    xor-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 171
    if-gez v0, :cond_0

    .line 175
    iget v2, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    .line 178
    :goto_0
    return v2

    :cond_0
    iget v2, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    iget-object v4, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public getRawOffset()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 5
    .parameter "timeZone"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    instance-of v3, p1, Llibcore/util/ZoneInfo;

    if-nez v3, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 218
    check-cast v0, Llibcore/util/ZoneInfo;

    .line 219
    .local v0, other:Llibcore/util/ZoneInfo;
    iget-boolean v3, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    iget-boolean v4, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-ne v3, v4, :cond_0

    .line 222
    iget-boolean v3, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-nez v3, :cond_3

    .line 223
    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 225
    :cond_3
    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 243
    const/16 v0, 0x1f

    .line 244
    .local v0, prime:I
    const/4 v1, 0x1

    .line 245
    .local v1, result:I
    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 246
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 247
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 248
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    add-int v1, v2, v3

    .line 249
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 250
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 251
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int v1, v3, v2

    .line 252
    return v1

    .line 251
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 8
    .parameter "time"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 182
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 183
    .local v2, when:J
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    long-to-int v1, v6

    .line 184
    .local v1, unix:I
    iget-object v6, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v6, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 185
    .local v0, transition:I
    if-gez v0, :cond_0

    .line 186
    xor-int/lit8 v6, v0, -0x1

    add-int/lit8 v0, v6, -0x1

    .line 187
    if-gez v0, :cond_0

    .line 195
    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    iget-object v7, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    if-ne v6, v4, :cond_1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method public setRawOffset(I)V
    .locals 0
    .parameter "off"

    .prologue
    .line 203
    iput p1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    .line 204
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v5, sb:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mRawOffset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mUseDst="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mDstSavings="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 264
    .local v0, f:Ljava/util/Formatter;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v8, v8

    if-ge v2, v8, :cond_0

    .line 265
    iget-object v8, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v8, v8, v2

    and-int/lit16 v6, v8, 0xff

    .line 266
    .local v6, type:I
    iget-object v8, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    aget v8, v8, v2

    const-string v9, "UTC"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v8, v9}, Llibcore/util/ZoneInfo;->formatTime(ILjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, utcTime:Ljava/lang/String;
    iget-object v8, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    aget v8, v8, v2

    invoke-static {v8, p0}, Llibcore/util/ZoneInfo;->formatTime(ILjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, localTime:Ljava/lang/String;
    iget-object v8, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    aget v4, v8, v6

    .line 269
    .local v4, offset:I
    iget v8, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    div-int/lit16 v8, v8, 0x3e8

    add-int v1, v8, v4

    .line 270
    .local v1, gmtOffset:I
    const-string v8, "%4d : time=%11d %s = %s isDst=%d offset=%5d gmtOffset=%d\n"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    aget v11, v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v7, v9, v10

    const/4 v10, 0x3

    aput-object v3, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v11, v11, v6

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v1           #gmtOffset:I
    .end local v3           #localTime:Ljava/lang/String;
    .end local v4           #offset:I
    .end local v6           #type:I
    .end local v7           #utcTime:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public useDaylightTime()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    return v0
.end method
