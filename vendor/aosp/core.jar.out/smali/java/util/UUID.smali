.class public final Ljava/util/UUID;
.super Ljava/lang/Object;
.source "UUID.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static rng:Ljava/security/SecureRandom; = null

.field private static final serialVersionUID:J = -0x4366fc0867927ad1L


# instance fields
.field private transient clockSequence:I

.field private transient hash:I

.field private leastSigBits:J

.field private mostSigBits:J

.field private transient node:J

.field private transient timestamp:J

.field private transient variant:I

.field private transient version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljava/util/UUID;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .parameter "mostSigBits"
    .parameter "leastSigBits"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Ljava/util/UUID;->mostSigBits:J

    .line 68
    iput-wide p3, p0, Ljava/util/UUID;->leastSigBits:J

    .line 69
    invoke-direct {p0}, Ljava/util/UUID;->init()V

    .line 70
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/UUID;
    .locals 25
    .parameter "uuid"

    .prologue
    .line 181
    if-nez p0, :cond_0

    .line 182
    new-instance v21, Ljava/lang/NullPointerException;

    const-string v22, "uuid == null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 185
    :cond_0
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 186
    .local v19, position:[I
    const/4 v4, 0x1

    .line 187
    .local v4, lastPosition:I
    const/16 v20, 0x0

    .line 189
    .local v20, startPosition:I
    const/4 v3, 0x0

    .line 190
    .local v3, i:I
    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v3, v0, :cond_1

    if-lez v4, :cond_1

    .line 191
    const-string v21, "-"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v21

    aput v21, v19, v3

    .line 192
    aget v4, v19, v3

    .line 193
    aget v21, v19, v3

    add-int/lit8 v20, v21, 0x1

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v3, v0, :cond_2

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_3

    .line 198
    :cond_2
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid UUID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 201
    :cond_3
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget v22, v19, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v11

    .line 202
    .local v11, m1:J
    const/16 v21, 0x0

    aget v21, v19, v21

    add-int/lit8 v21, v21, 0x1

    const/16 v22, 0x1

    aget v22, v19, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v13

    .line 203
    .local v13, m2:J
    const/16 v21, 0x1

    aget v21, v19, v21

    add-int/lit8 v21, v21, 0x1

    const/16 v22, 0x2

    aget v22, v19, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v15

    .line 205
    .local v15, m3:J
    const/16 v21, 0x2

    aget v21, v19, v21

    add-int/lit8 v21, v21, 0x1

    const/16 v22, 0x3

    aget v22, v19, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 206
    .local v7, lsb1:J
    const/16 v21, 0x3

    aget v21, v19, v21

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    .line 208
    .local v9, lsb2:J
    const/16 v21, 0x20

    shl-long v21, v11, v21

    const/16 v23, 0x10

    shl-long v23, v13, v23

    or-long v21, v21, v23

    or-long v17, v21, v15

    .line 209
    .local v17, msb:J
    const/16 v21, 0x30

    shl-long v21, v7, v21

    or-long v5, v21, v9

    .line 211
    .local v5, lsb:J
    new-instance v21, Ljava/util/UUID;

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    return-object v21
.end method

.method private init()V
    .locals 13

    .prologue
    .line 79
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v10, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v12, 0x20

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v1, v8

    .line 80
    .local v1, msbHash:I
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v10, p0, Ljava/util/UUID;->leastSigBits:J

    const/16 v12, 0x20

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v0, v8

    .line 81
    .local v0, lsbHash:I
    xor-int v8, v1, v0

    iput v8, p0, Ljava/util/UUID;->hash:I

    .line 84
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v10, -0x8000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 86
    const/4 v8, 0x0

    iput v8, p0, Ljava/util/UUID;->variant:I

    .line 96
    :goto_0
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide/32 v10, 0xf000

    and-long/2addr v8, v10

    const/16 v10, 0xc

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Ljava/util/UUID;->version:I

    .line 98
    iget v8, p0, Ljava/util/UUID;->variant:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    iget v8, p0, Ljava/util/UUID;->version:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    .line 113
    :goto_1
    return-void

    .line 87
    :cond_0
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v10, 0x4000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 89
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v10, -0x2000

    and-long/2addr v8, v10

    const/16 v10, 0x3d

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Ljava/util/UUID;->variant:I

    goto :goto_0

    .line 92
    :cond_1
    const/4 v8, 0x2

    iput v8, p0, Ljava/util/UUID;->variant:I

    goto :goto_0

    .line 103
    :cond_2
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide v10, -0x100000000L

    and-long/2addr v8, v10

    const/16 v10, 0x20

    ushr-long v4, v8, v10

    .line 104
    .local v4, timeLow:J
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide v10, 0xffff0000L

    and-long/2addr v8, v10

    const/16 v10, 0x10

    shl-long v6, v8, v10

    .line 105
    .local v6, timeMid:J
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide/16 v10, 0xfff

    and-long/2addr v8, v10

    const/16 v10, 0x30

    shl-long v2, v8, v10

    .line 106
    .local v2, timeHigh:J
    or-long v8, v4, v6

    or-long/2addr v8, v2

    iput-wide v8, p0, Ljava/util/UUID;->timestamp:J

    .line 109
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v10, 0x3fff

    and-long/2addr v8, v10

    const/16 v10, 0x30

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Ljava/util/UUID;->clockSequence:I

    .line 112
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide v10, 0xffffffffffffL

    and-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/UUID;->node:J

    goto :goto_1
.end method

.method private static makeUuid([BI)Ljava/util/UUID;
    .locals 7
    .parameter "hash"
    .parameter "version"

    .prologue
    .line 156
    const/4 v4, 0x0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v4, v5}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v2

    .line 157
    .local v2, msb:J
    const/16 v4, 0x8

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v4, v5}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v0

    .line 159
    .local v0, lsb:J
    const-wide/32 v4, -0xf001

    and-long/2addr v2, v4

    .line 160
    int-to-long v4, p1

    const/16 v6, 0xc

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 163
    const-wide v4, 0x3fffffffffffffffL

    and-long/2addr v0, v4

    .line 164
    const-wide/high16 v4, -0x8000

    or-long/2addr v0, v4

    .line 165
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method

.method public static nameUUIDFromBytes([B)Ljava/util/UUID;
    .locals 4
    .parameter "name"

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "name == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_0
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 149
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/util/UUID;->makeUuid([BI)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 150
    .end local v1           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static randomUUID()Ljava/util/UUID;
    .locals 3

    .prologue
    .line 123
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 125
    .local v0, data:[B
    const-class v2, Ljava/util/UUID;

    monitor-enter v2

    .line 126
    :try_start_0
    sget-object v1, Ljava/util/UUID;->rng:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Ljava/util/UUID;->rng:Ljava/security/SecureRandom;

    .line 129
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    sget-object v1, Ljava/util/UUID;->rng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 131
    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/UUID;->makeUuid([BI)Ljava/util/UUID;

    move-result-object v1

    return-object v1

    .line 129
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 459
    invoke-direct {p0}, Ljava/util/UUID;->init()V

    .line 460
    return-void
.end method


# virtual methods
.method public clockSequence()I
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Ljava/util/UUID;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 299
    :cond_0
    iget v0, p0, Ljava/util/UUID;->clockSequence:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Ljava/util/UUID;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/UUID;)I
    .locals 7
    .parameter "uuid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 330
    if-ne p1, p0, :cond_1

    move v0, v2

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    iget-wide v3, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v5, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 335
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v4, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 338
    :cond_2
    sget-boolean v3, Ljava/util/UUID;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget-wide v3, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v5, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 340
    :cond_3
    iget-wide v3, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v5, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 341
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v4, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 344
    :cond_4
    sget-boolean v0, Ljava/util/UUID;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v3, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    move v0, v2

    .line 346
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 362
    if-nez p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v2

    .line 366
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 367
    goto :goto_0

    .line 370
    :cond_2
    instance-of v3, p1, Ljava/util/UUID;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 374
    check-cast v0, Ljava/util/UUID;

    .line 376
    .local v0, that:Ljava/util/UUID;
    iget-wide v3, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v5, v0, Ljava/util/UUID;->leastSigBits:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v5, v0, Ljava/util/UUID;->mostSigBits:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getLeastSignificantBits()J
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    return-wide v0
.end method

.method public getMostSignificantBits()J
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Ljava/util/UUID;->hash:I

    return v0
.end method

.method public node()J
    .locals 2

    .prologue
    .line 312
    iget v0, p0, Ljava/util/UUID;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 313
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 315
    :cond_0
    iget-wide v0, p0, Ljava/util/UUID;->node:J

    return-wide v0
.end method

.method public timestamp()J
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Ljava/util/UUID;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 283
    :cond_0
    iget-wide v0, p0, Ljava/util/UUID;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x30

    const/16 v8, 0x10

    const/16 v7, 0x2d

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x24

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 420
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-wide v5, p0, Ljava/util/UUID;->mostSigBits:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, msbStr:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v8, :cond_0

    .line 422
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v1, v5, 0x10

    .line 423
    .local v1, diff:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 424
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v1           #diff:I
    .end local v2           #i:I
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 429
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    iget-wide v5, p0, Ljava/util/UUID;->leastSigBits:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, lsbStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v8, :cond_1

    .line 433
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v1, v5, 0x10

    .line 434
    .restart local v1       #diff:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 435
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 438
    .end local v1           #diff:I
    .end local v2           #i:I
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const/16 v5, 0x17

    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public variant()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Ljava/util/UUID;->variant:I

    return v0
.end method

.method public version()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Ljava/util/UUID;->version:I

    return v0
.end method
