.class public Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;
.super Ljava/lang/Object;
.source "ARCFOUREncryption.java"


# instance fields
.field private state:[B

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    .line 53
    return-void
.end method


# virtual methods
.method public encryptARCFOUR([B)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 98
    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([BII[BI)V

    .line 99
    return-void
.end method

.method public encryptARCFOUR([BII)V
    .locals 6
    .parameter "data"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([BII[BI)V

    .line 91
    return-void
.end method

.method public encryptARCFOUR([BII[BI)V
    .locals 9
    .parameter "dataIn"
    .parameter "off"
    .parameter "len"
    .parameter "dataOut"
    .parameter "offOut"

    .prologue
    .line 77
    add-int v1, p3, p2

    .line 79
    .local v1, length:I
    move v0, p2

    .local v0, k:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 80
    iget v3, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->x:I

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->x:I

    .line 81
    iget-object v3, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->x:I

    aget-byte v3, v3, v4

    iget v4, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->y:I

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->y:I

    .line 82
    iget-object v3, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->x:I

    aget-byte v2, v3, v4

    .line 83
    .local v2, tmp:B
    iget-object v3, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->x:I

    iget-object v5, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    iget v6, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->y:I

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 84
    iget-object v3, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->y:I

    aput-byte v2, v3, v4

    .line 85
    sub-int v3, v0, p2

    add-int/2addr v3, p5

    aget-byte v4, p1, v0

    iget-object v5, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    iget-object v6, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    iget v7, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->x:I

    aget-byte v6, v6, v7

    iget-object v7, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    iget v8, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->y:I

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v2           #tmp:B
    :cond_0
    return-void
.end method

.method public encryptARCFOUR([B[B)V
    .locals 6
    .parameter "dataIn"
    .parameter "dataOut"

    .prologue
    const/4 v2, 0x0

    .line 94
    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([BII[BI)V

    .line 95
    return-void
.end method

.method public prepareARCFOURKey([B)V
    .locals 2
    .parameter "key"

    .prologue
    .line 56
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    .line 57
    return-void
.end method

.method public prepareARCFOURKey([BII)V
    .locals 8
    .parameter "key"
    .parameter "off"
    .parameter "len"

    .prologue
    const/16 v7, 0x100

    const/4 v6, 0x0

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, index1:I
    const/4 v1, 0x0

    .line 62
    .local v1, index2:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 63
    iget-object v4, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    int-to-byte v5, v2

    aput-byte v5, v4, v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iput v6, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->x:I

    .line 65
    iput v6, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->y:I

    .line 67
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_1

    .line 68
    add-int v4, v0, p2

    aget-byte v4, p1, v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    aget-byte v5, v5, v2

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    and-int/lit16 v1, v4, 0xff

    .line 69
    iget-object v4, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    aget-byte v3, v4, v2

    .line 70
    .local v3, tmp:B
    iget-object v4, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    iget-object v5, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v2

    .line 71
    iget-object v4, p0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->state:[B

    aput-byte v3, v4, v1

    .line 72
    add-int/lit8 v4, v0, 0x1

    rem-int v0, v4, p3

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 74
    .end local v3           #tmp:B
    :cond_1
    return-void
.end method
