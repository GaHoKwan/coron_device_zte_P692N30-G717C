.class public final Lcom/autonavi/xmgd/utility/SPCodeConvert;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CharTranNum(B)I
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x4e

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x18

    goto :goto_0
.end method

.method private static NumTranChar(I)B
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0x17

    if-gt p0, v0, :cond_1

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    int-to-byte v0, v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d

    goto :goto_0
.end method

.method public static SPCodeToWorld(Ljava/lang/String;)[I
    .locals 12

    const/16 v11, 0x18

    const/4 v3, 0x1

    const/4 v10, 0x6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/autonavi/xmgd/utility/SPCodeConvert;->_tcslen([B)I

    move-result v6

    move v5, v2

    :goto_0
    if-ge v5, v6, :cond_3

    aget-byte v4, v8, v5

    const/16 v7, 0x2d

    if-eq v4, v7, :cond_0

    aget-byte v4, v8, v5

    const/16 v7, 0x20

    if-ne v4, v7, :cond_2

    :cond_0
    move v4, v5

    :goto_1
    add-int/lit8 v7, v6, -0x1

    if-ge v4, v7, :cond_1

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v8, v7

    aput-byte v7, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    aput-byte v2, v8, v4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v8}, Lcom/autonavi/xmgd/utility/SPCodeConvert;->_tcslen([B)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_5

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    move v6, v2

    move v7, v2

    :goto_3
    if-ge v7, v10, :cond_7

    aget-byte v4, v8, v7

    invoke-static {v4}, Lcom/autonavi/xmgd/utility/SPCodeConvert;->CharTranNum(B)I

    move-result v9

    if-eq v9, v11, :cond_4

    add-int/lit8 v4, v7, 0x1

    move v5, v4

    move v4, v3

    :goto_4
    if-ge v5, v10, :cond_6

    mul-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    mul-int/2addr v4, v9

    add-int/2addr v4, v6

    add-int/lit8 v5, v7, 0x1

    move v6, v4

    move v7, v5

    goto :goto_3

    :cond_7
    const v4, 0x81b3200

    if-gt v6, v4, :cond_4

    const v4, 0x459e440

    if-lt v6, v4, :cond_4

    aput v6, v1, v2

    move v5, v2

    move v6, v2

    :goto_5
    if-ge v6, v10, :cond_9

    add-int/lit8 v2, v6, 0x6

    aget-byte v2, v8, v2

    invoke-static {v2}, Lcom/autonavi/xmgd/utility/SPCodeConvert;->CharTranNum(B)I

    move-result v7

    if-eq v7, v11, :cond_4

    add-int/lit8 v2, v6, 0x1

    move v4, v2

    move v2, v3

    :goto_6
    if-ge v4, v10, :cond_8

    mul-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    mul-int/2addr v2, v7

    add-int/2addr v2, v5

    add-int/lit8 v4, v6, 0x1

    move v5, v2

    move v6, v4

    goto :goto_5

    :cond_9
    const v2, 0x3473bc0

    if-gt v5, v2, :cond_4

    const v2, 0x1036640

    if-lt v5, v2, :cond_4

    aput v5, v1, v3

    move-object v0, v1

    goto :goto_2
.end method

.method public static WorldToSPCode(II)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x1

    const/16 v9, 0x2d

    const/4 v8, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x14

    new-array v7, v2, [B

    array-length v2, v7

    invoke-static {v7, v1, v2}, Lcom/autonavi/xmgd/utility/SPCodeConvert;->memset([BII)V

    if-ltz p0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const v2, 0xaba9500

    if-gt p0, v2, :cond_0

    move v2, v1

    move v6, v1

    :goto_1
    if-ge v6, v8, :cond_3

    add-int/lit8 v3, v6, 0x1

    move v5, v4

    :goto_2
    if-ge v3, v8, :cond_2

    mul-int/lit8 v5, v5, 0x18

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    div-int v3, p0, v5

    rem-int/lit8 v3, v3, 0x18

    invoke-static {v3}, Lcom/autonavi/xmgd/utility/SPCodeConvert;->NumTranChar(I)B

    move-result v5

    if-eq v5, v9, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput-byte v5, v7, v2

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v3

    goto :goto_1

    :cond_3
    const v3, 0x55d4a80

    if-gt p1, v3, :cond_0

    move v5, v2

    move v6, v1

    :goto_3
    if-ge v6, v8, :cond_5

    add-int/lit8 v2, v6, 0x1

    move v3, v4

    :goto_4
    if-ge v2, v8, :cond_4

    mul-int/lit8 v3, v3, 0x18

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    div-int v2, p1, v3

    rem-int/lit8 v2, v2, 0x18

    invoke-static {v2}, Lcom/autonavi/xmgd/utility/SPCodeConvert;->NumTranChar(I)B

    move-result v3

    if-eq v3, v9, :cond_0

    add-int/lit8 v2, v5, 0x1

    aput-byte v3, v7, v5

    add-int/lit8 v3, v6, 0x1

    move v5, v2

    move v6, v3

    goto :goto_3

    :cond_5
    move v0, v1

    move v2, v1

    :goto_5
    const/16 v1, 0xa

    if-ge v2, v1, :cond_8

    rem-int/lit8 v1, v2, 0x4

    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    invoke-static {v7}, Lcom/autonavi/xmgd/utility/SPCodeConvert;->_tcslen([B)I

    move-result v1

    :goto_6
    add-int v3, v2, v0

    if-le v1, v3, :cond_6

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v7, v3

    aput-byte v3, v7, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_6
    add-int v1, v2, v0

    aput-byte v9, v7, v1

    add-int/lit8 v0, v0, 0x1

    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-static {v7}, Lcom/autonavi/xmgd/utility/SPCodeConvert;->cutZero([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static _tcslen([B)I
    .locals 3

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-byte v2, p0, v0

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static cutZero([B)[B
    .locals 4

    invoke-static {p0}, Lcom/autonavi/xmgd/utility/SPCodeConvert;->_tcslen([B)I

    move-result v1

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v3, p0, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static memset([BII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    int-to-byte v1, p1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
