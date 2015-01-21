.class public abstract Lcom/android/org/bouncycastle/crypto/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigEndianToInt([BI)I
    .locals 2
    .parameter "bs"
    .parameter "off"

    .prologue
    .line 7
    aget-byte v1, p0, p1

    shl-int/lit8 v0, v1, 0x18

    .line 8
    .local v0, n:I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 9
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 10
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 11
    return v0
.end method

.method public static bigEndianToInt([BI[I)V
    .locals 2
    .parameter "bs"
    .parameter "off"
    .parameter "ns"

    .prologue
    .line 16
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 18
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 19
    add-int/lit8 p1, p1, 0x4

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public static bigEndianToLong([BI)J
    .locals 8
    .parameter "bs"
    .parameter "off"

    .prologue
    const-wide v6, 0xffffffffL

    .line 42
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    .line 43
    .local v0, hi:I
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    .line 44
    .local v1, lo:I
    int-to-long v2, v0

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static intToBigEndian(I[BI)V
    .locals 1
    .parameter "n"
    .parameter "bs"
    .parameter "off"

    .prologue
    .line 25
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 26
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 27
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 28
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 29
    return-void
.end method

.method public static intToBigEndian([I[BI)V
    .locals 2
    .parameter "ns"
    .parameter "bs"
    .parameter "off"

    .prologue
    .line 33
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 35
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 36
    add-int/lit8 p2, p2, 0x4

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public static intToLittleEndian(I[BI)V
    .locals 1
    .parameter "n"
    .parameter "bs"
    .parameter "off"

    .prologue
    .line 73
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 74
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 75
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 76
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 77
    return-void
.end method

.method public static intToLittleEndian([I[BI)V
    .locals 2
    .parameter "ns"
    .parameter "bs"
    .parameter "off"

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 83
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 84
    add-int/lit8 p2, p2, 0x4

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public static littleEndianToInt([BI)I
    .locals 2
    .parameter "bs"
    .parameter "off"

    .prologue
    .line 55
    aget-byte v1, p0, p1

    and-int/lit16 v0, v1, 0xff

    .line 56
    .local v0, n:I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 57
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 58
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 59
    return v0
.end method

.method public static littleEndianToInt([BI[I)V
    .locals 2
    .parameter "bs"
    .parameter "off"
    .parameter "ns"

    .prologue
    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 66
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 67
    add-int/lit8 p1, p1, 0x4

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public static littleEndianToLong([BI)J
    .locals 8
    .parameter "bs"
    .parameter "off"

    .prologue
    const-wide v6, 0xffffffffL

    .line 90
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    .line 91
    .local v1, lo:I
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    .line 92
    .local v0, hi:I
    int-to-long v2, v0

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static longToBigEndian(J[BI)V
    .locals 2
    .parameter "n"
    .parameter "bs"
    .parameter "off"

    .prologue
    .line 49
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 50
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 51
    return-void
.end method

.method public static longToLittleEndian(J[BI)V
    .locals 2
    .parameter "n"
    .parameter "bs"
    .parameter "off"

    .prologue
    .line 97
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 98
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 99
    return-void
.end method
