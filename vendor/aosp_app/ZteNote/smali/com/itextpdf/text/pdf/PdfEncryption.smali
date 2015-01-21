.class public Lcom/itextpdf/text/pdf/PdfEncryption;
.super Ljava/lang/Object;
.source "PdfEncryption.java"


# static fields
.field public static final AES_128:I = 0x4

.field public static final AES_256:I = 0x5

.field private static final KEY_SALT_OFFSET:I = 0x28

.field private static final OU_LENGHT:I = 0x30

.field private static final SALT_LENGHT:I = 0x8

.field public static final STANDARD_ENCRYPTION_128:I = 0x3

.field public static final STANDARD_ENCRYPTION_40:I = 0x2

.field private static final VALIDATION_SALT_OFFSET:I = 0x20

.field private static final metadataPad:[B

.field private static final pad:[B

.field private static final salt:[B

.field static seq:J


# instance fields
.field private arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

.field private cryptoMode:I

.field documentID:[B

.field private embeddedFilesOnly:Z

.field private encryptMetadata:Z

.field extra:[B

.field key:[B

.field private keyLength:I

.field keySize:I

.field md5:Ljava/security/MessageDigest;

.field mkey:[B

.field oeKey:[B

.field ownerKey:[B

.field permissions:I

.field perms:[B

.field protected publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

.field private revision:I

.field ueKey:[B

.field userKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 76
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfEncryption;->pad:[B

    .line 84
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/text/pdf/PdfEncryption;->salt:[B

    .line 87
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/text/pdf/PdfEncryption;->metadataPad:[B

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/itextpdf/text/pdf/PdfEncryption;->seq:J

    return-void

    .line 76
    nop

    :array_0
    .array-data 0x1
        0x28t
        0xbft
        0x4et
        0x5et
        0x4et
        0x75t
        0x8at
        0x41t
        0x64t
        0x0t
        0x4et
        0x56t
        0xfft
        0xfat
        0x1t
        0x8t
        0x2et
        0x2et
        0x0t
        0xb6t
        0xd0t
        0x68t
        0x3et
        0x80t
        0x2ft
        0xct
        0xa9t
        0xfet
        0x64t
        0x53t
        0x69t
        0x7at
    .end array-data

    .line 84
    :array_1
    .array-data 0x1
        0x73t
        0x41t
        0x6ct
        0x54t
    .end array-data

    .line 87
    :array_2
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    .line 100
    const/4 v1, 0x5

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    .line 106
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    .line 109
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    .line 126
    new-instance v1, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    .line 143
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    new-instance v1, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    .line 148
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfEncryption;)V
    .locals 1
    .parameter "enc"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfEncryption;-><init>()V

    .line 152
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    .line 154
    :cond_0
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    .line 155
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    .line 156
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    .line 157
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    .line 158
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->permissions:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->permissions:I

    .line 159
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    .line 161
    :cond_1
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    .line 162
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    .line 163
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    .line 164
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    .line 165
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    .line 166
    return-void
.end method

.method private static compareArray([B[BI)Z
    .locals 3
    .parameter "a"
    .parameter "b"
    .parameter "len"

    .prologue
    .line 470
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 471
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 472
    const/4 v1, 0x0

    .line 475
    :goto_1
    return v1

    .line 470
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private computeOwnerKey([B[B)[B
    .locals 10
    .parameter "userPad"
    .parameter "ownerPad"

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 243
    new-array v5, v9, [B

    .line 244
    .local v5, ownerKey:[B
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v6, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 245
    .local v0, digest:[B
    iget v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 246
    :cond_0
    iget v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    div-int/lit8 v6, v6, 0x8

    new-array v4, v6, [B

    .line 248
    .local v4, mkey:[B
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    const/16 v6, 0x32

    if-ge v3, v6, :cond_1

    .line 249
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    array-length v7, v4

    invoke-virtual {v6, v0, v8, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 250
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    array-length v7, v4

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_1
    invoke-static {p1, v8, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v6, 0x14

    if-ge v1, v6, :cond_4

    .line 254
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    array-length v6, v4

    if-ge v2, v6, :cond_2

    .line 255
    aget-byte v6, v0, v2

    xor-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 256
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->prepareARCFOURKey([B)V

    .line 257
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([B)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 260
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #k:I
    .end local v4           #mkey:[B
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    const/4 v7, 0x5

    invoke-virtual {v6, v0, v8, v7}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    .line 261
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-virtual {v6, p1, v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([B[B)V

    .line 263
    :cond_4
    return-object v5
.end method

.method public static createDocumentId()[B
    .locals 12

    .prologue
    .line 481
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 485
    .local v1, md5:Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 486
    .local v5, time:J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    .line 487
    .local v2, mem:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/itextpdf/text/pdf/PdfEncryption;->seq:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    sput-wide v10, Lcom/itextpdf/text/pdf/PdfEncryption;->seq:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    return-object v7

    .line 482
    .end local v1           #md5:Ljava/security/MessageDigest;
    .end local v2           #mem:J
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #time:J
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Ljava/lang/Exception;
    new-instance v7, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v7, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public static createInfoId([B)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 6
    .parameter "id"

    .prologue
    const/16 v5, 0x3e

    const/16 v4, 0x3c

    const/16 v3, 0x10

    .line 550
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v2, 0x5a

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>(I)V

    .line 551
    .local v0, buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 552
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 553
    aget-byte v2, p0, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->appendHex(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 555
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object p0

    .line 556
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 557
    aget-byte v2, p0, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->appendHex(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 558
    :cond_1
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 559
    new-instance v2, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>([B)V

    return-object v2
.end method

.method private padPassword([B)[B
    .locals 5
    .parameter "userPassword"

    .prologue
    const/16 v2, 0x20

    const/4 v4, 0x0

    .line 226
    new-array v0, v2, [B

    .line 227
    .local v0, userPad:[B
    if-nez p1, :cond_1

    .line 228
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncryption;->pad:[B

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    array-length v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    array-length v1, p1

    if-ge v1, v2, :cond_0

    .line 233
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncryption;->pad:[B

    array-length v2, p1

    array-length v3, p1

    rsub-int/lit8 v3, v3, 0x20

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private setupByOwnerPad([B[B[B[BI)V
    .locals 1
    .parameter "documentID"
    .parameter "ownerPad"
    .parameter "userKey"
    .parameter "ownerKey"
    .parameter "permissions"

    .prologue
    .line 517
    invoke-direct {p0, p4, p2}, Lcom/itextpdf/text/pdf/PdfEncryption;->computeOwnerKey([B[B)[B

    move-result-object v0

    .line 520
    .local v0, userPad:[B
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupGlobalEncryptionKey([B[B[BI)V

    .line 522
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupUserKey()V

    .line 523
    return-void
.end method

.method private setupByUserPad([B[B[BI)V
    .locals 0
    .parameter "documentID"
    .parameter "userPad"
    .parameter "ownerKey"
    .parameter "permissions"

    .prologue
    .line 503
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupGlobalEncryptionKey([B[B[BI)V

    .line 504
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupUserKey()V

    .line 505
    return-void
.end method

.method private setupGlobalEncryptionKey([B[B[BI)V
    .locals 8
    .parameter "documentID"
    .parameter "userPad"
    .parameter "ownerKey"
    .parameter "permissions"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 272
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    .line 273
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    .line 274
    iput p4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->permissions:I

    .line 276
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    .line 279
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 280
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 281
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 283
    new-array v1, v6, [B

    .line 284
    .local v1, ext:[B
    int-to-byte v3, p4

    aput-byte v3, v1, v5

    .line 285
    const/4 v3, 0x1

    shr-int/lit8 v4, p4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 286
    const/4 v3, 0x2

    shr-int/lit8 v4, p4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 287
    shr-int/lit8 v3, p4, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    .line 288
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, v1, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 291
    :cond_0
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-nez v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfEncryption;->metadataPad:[B

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v3, v3

    new-array v0, v3, [B

    .line 295
    .local v0, digest:[B
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    if-eq v3, v7, :cond_2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    if-ne v3, v6, :cond_3

    .line 299
    :cond_2
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    const/16 v3, 0x32

    if-ge v2, v3, :cond_3

    .line 300
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    .end local v2           #k:I
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v4, v4

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    return-void
.end method

.method private setupUserKey()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 312
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 313
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfEncryption;->pad:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 314
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 315
    .local v0, digest:[B
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    invoke-static {v0, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    const/16 v3, 0x10

    .local v3, k:I
    :goto_0
    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 317
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    aput-byte v6, v4, v3

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0x14

    if-ge v1, v4, :cond_4

    .line 319
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 320
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    aget-byte v4, v4, v2

    xor-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 321
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v5, v5

    invoke-virtual {v4, v0, v6, v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    .line 322
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    invoke-virtual {v4, v5, v6, v7}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([BII)V

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 325
    .end local v0           #digest:[B
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #k:I
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->prepareARCFOURKey([B)V

    .line 326
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfEncryption;->pad:[B

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([B[B)V

    .line 328
    :cond_4
    return-void
.end method


# virtual methods
.method public addRecipient(Ljava/security/cert/Certificate;I)V
    .locals 2
    .parameter "cert"
    .parameter "permission"

    .prologue
    .line 759
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    .line 760
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;-><init>(Ljava/security/cert/Certificate;I)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->addRecipient(Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;)V

    .line 762
    return-void
.end method

.method public calculateStreamSize(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 720
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 721
    :cond_0
    const v0, 0x7ffffff0

    and-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x20

    .line 723
    .end local p1
    :cond_1
    return p1
.end method

.method public computeUserPassword([B)[B
    .locals 8
    .parameter "ownerPassword"

    .prologue
    const/4 v7, 0x0

    .line 765
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfEncryption;->padPassword([B)[B

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/itextpdf/text/pdf/PdfEncryption;->computeOwnerKey([B[B)[B

    move-result-object v3

    .line 766
    .local v3, userPad:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 767
    const/4 v2, 0x1

    .line 768
    .local v2, match:Z
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v5, v3

    sub-int/2addr v5, v0

    if-ge v1, v5, :cond_0

    .line 769
    add-int v5, v0, v1

    aget-byte v5, v3, v5

    sget-object v6, Lcom/itextpdf/text/pdf/PdfEncryption;->pad:[B

    aget-byte v6, v6, v1

    if-eq v5, v6, :cond_1

    .line 770
    const/4 v2, 0x0

    .line 774
    :cond_0
    if-nez v2, :cond_2

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 775
    :cond_2
    new-array v4, v0, [B

    .line 776
    .local v4, userPassword:[B
    invoke-static {v3, v7, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    .end local v1           #j:I
    .end local v2           #match:Z
    .end local v4           #userPassword:[B
    :goto_2
    return-object v4

    :cond_3
    move-object v4, v3

    goto :goto_2
.end method

.method public decryptByteArray([B)[B
    .locals 6
    .parameter "b"

    .prologue
    .line 744
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 745
    .local v1, ba:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfEncryption;->getDecryptor()Lcom/itextpdf/text/pdf/StandardDecryption;

    move-result-object v2

    .line 746
    .local v2, dec:Lcom/itextpdf/text/pdf/StandardDecryption;
    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v2, p1, v4, v5}, Lcom/itextpdf/text/pdf/StandardDecryption;->update([BII)[B

    move-result-object v0

    .line 747
    .local v0, b2:[B
    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 749
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/StandardDecryption;->finish()[B

    move-result-object v0

    .line 750
    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 752
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 753
    .end local v0           #b2:[B
    .end local v1           #ba:Ljava/io/ByteArrayOutputStream;
    .end local v2           #dec:Lcom/itextpdf/text/pdf/StandardDecryption;
    :catch_0
    move-exception v3

    .line 754
    .local v3, ex:Ljava/io/IOException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v3}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public encryptByteArray([B)[B
    .locals 4
    .parameter "b"

    .prologue
    .line 728
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 729
    .local v0, ba:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/text/pdf/OutputStreamEncryption;

    move-result-object v2

    .line 730
    .local v2, os2:Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->write([B)V

    .line 731
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->finish()V

    .line 732
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 733
    .end local v0           #ba:Ljava/io/ByteArrayOutputStream;
    .end local v2           #os2:Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    :catch_0
    move-exception v1

    .line 734
    .local v1, ex:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public getCryptoMode()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->cryptoMode:I

    return v0
.end method

.method public getDecryptor()Lcom/itextpdf/text/pdf/StandardDecryption;
    .locals 5

    .prologue
    .line 739
    new-instance v0, Lcom/itextpdf/text/pdf/StandardDecryption;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/StandardDecryption;-><init>([BIII)V

    return-object v0
.end method

.method public getEncryptionDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 12

    .prologue
    .line 563
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 565
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->getRecipientsSize()I

    move-result v9

    if-lez v9, :cond_7

    .line 566
    const/4 v7, 0x0

    .line 568
    .local v7, recipients:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->PUBSEC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 569
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 572
    :try_start_0
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->getEncodedRecipients()Lcom/itextpdf/text/pdf/PdfArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 577
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 578
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 579
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->ADBE_PKCS7_S4:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 580
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->RECIPIENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 614
    :goto_0
    const/4 v5, 0x0

    .line 615
    .local v5, md:Ljava/security/MessageDigest;
    const/4 v2, 0x0

    .line 618
    .local v2, encodedRecipient:[B
    :try_start_1
    const-string v9, "SHA-1"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 619
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->getSeed()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 620
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->getRecipientsSize()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 621
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->getEncodedRecipient(I)[B

    move-result-object v2

    .line 622
    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 620
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 573
    .end local v2           #encodedRecipient:[B
    .end local v4           #i:I
    .end local v5           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v3

    .line 574
    .local v3, f:Ljava/lang/Exception;
    new-instance v9, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v9, v3}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 581
    .end local v3           #f:Ljava/lang/Exception;
    :cond_0
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-eqz v9, :cond_1

    .line 582
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 583
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 584
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->ADBE_PKCS7_S4:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 585
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->RECIPIENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 587
    :cond_1
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 588
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 589
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->ADBE_PKCS7_S5:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 591
    new-instance v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 592
    .local v8, stdcf:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->RECIPIENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 593
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-nez v9, :cond_2

    .line 594
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPTMETADATA:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 596
    :cond_2
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 597
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->AESV2:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 600
    :goto_2
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 601
    .local v0, cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->DEFAULTCRYPTFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 602
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 603
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    if-eqz v9, :cond_4

    .line 604
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->EFF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DEFAULTCRYPTFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 605
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STRF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->IDENTITY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 606
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STMF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->IDENTITY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 599
    .end local v0           #cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_3
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->V2:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_2

    .line 609
    .restart local v0       #cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_4
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STRF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DEFAULTCRYPTFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 610
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STMF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DEFAULTCRYPTFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 624
    .end local v0           #cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v8           #stdcf:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v2       #encodedRecipient:[B
    .restart local v4       #i:I
    .restart local v5       #md:Ljava/security/MessageDigest;
    :cond_5
    :try_start_2
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-nez v9, :cond_6

    .line 625
    const/4 v9, 0x4

    new-array v9, v9, [B

    fill-array-data v9, :array_0

    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 631
    :cond_6
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 633
    .local v6, mdResult:[B
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    invoke-virtual {p0, v6, v9}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByEncryptionKey([BI)V

    .line 708
    .end local v2           #encodedRecipient:[B
    .end local v4           #i:I
    .end local v5           #md:Ljava/security/MessageDigest;
    .end local v6           #mdResult:[B
    .end local v7           #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    :goto_3
    return-object v1

    .line 627
    .restart local v2       #encodedRecipient:[B
    .restart local v5       #md:Ljava/security/MessageDigest;
    .restart local v7       #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    :catch_1
    move-exception v3

    .line 628
    .restart local v3       #f:Ljava/lang/Exception;
    new-instance v9, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v9, v3}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 635
    .end local v2           #encodedRecipient:[B
    .end local v3           #f:Ljava/lang/Exception;
    .end local v5           #md:Ljava/security/MessageDigest;
    .end local v7           #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_7
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->STANDARD:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 636
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->O:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([B)[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 638
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->U:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([B)[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 640
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->permissions:I

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 641
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 643
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 644
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 645
    :cond_8
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-eqz v9, :cond_9

    .line 646
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 647
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 650
    :cond_9
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_c

    .line 651
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-nez v9, :cond_a

    .line 652
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPTMETADATA:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 653
    :cond_a
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->OE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->oeKey:[B

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([B)[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 655
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->UE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ueKey:[B

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([B)[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 657
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->PERMS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->perms:[B

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([B)[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 659
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 660
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v11, 0x100

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 661
    new-instance v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 662
    .restart local v8       #stdcf:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v11, 0x20

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 663
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    if-eqz v9, :cond_b

    .line 664
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->AUTHEVENT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->EFOPEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 665
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->EFF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 666
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STRF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->IDENTITY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 667
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STMF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->IDENTITY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 674
    :goto_4
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->AESV3:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 675
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 676
    .restart local v0       #cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 677
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_3

    .line 670
    .end local v0           #cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_b
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->AUTHEVENT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DOCOPEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 671
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STRF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 672
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STMF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_4

    .line 680
    .end local v8           #stdcf:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_c
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-nez v9, :cond_d

    .line 681
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPTMETADATA:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 682
    :cond_d
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 683
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 684
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 685
    new-instance v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 686
    .restart local v8       #stdcf:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v11, 0x10

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 687
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    if-eqz v9, :cond_e

    .line 688
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->AUTHEVENT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->EFOPEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 689
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->EFF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 690
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STRF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->IDENTITY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 691
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STMF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->IDENTITY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 698
    :goto_5
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_f

    .line 699
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->AESV2:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 702
    :goto_6
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 703
    .restart local v0       #cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 704
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_3

    .line 694
    .end local v0           #cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_e
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->AUTHEVENT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DOCOPEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 695
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STRF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 696
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STMF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_5

    .line 701
    :cond_f
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->V2:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_6

    .line 625
    :array_0
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    .locals 6
    .parameter "os"

    .prologue
    .line 716
    new-instance v0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;-><init>(Ljava/io/OutputStream;[BIII)V

    return-object v0
.end method

.method public getFileID()Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->createInfoId([B)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->permissions:I

    return v0
.end method

.method public isEmbeddedFilesOnly()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    return v0
.end method

.method public isMetadataEncrypted()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    return v0
.end method

.method public readKey(Lcom/itextpdf/text/pdf/PdfDictionary;[B)Z
    .locals 16
    .parameter "enc"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/exceptions/BadPasswordException;
        }
    .end annotation

    .prologue
    .line 417
    if-nez p2, :cond_0

    .line 418
    const/4 v13, 0x0

    :try_start_0
    new-array v0, v13, [B

    move-object/from16 p2, v0

    .line 419
    :cond_0
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->O:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 420
    .local v8, oValue:[B
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->U:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 421
    .local v11, uValue:[B
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->OE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 422
    .local v9, oeValue:[B
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->UE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 423
    .local v12, ueValue:[B
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->PERMS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 424
    .local v10, perms:[B
    const/4 v6, 0x0

    .line 425
    .local v6, isUserPass:Z
    const-string v13, "SHA-256"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 426
    .local v7, md:Ljava/security/MessageDigest;
    const/4 v13, 0x0

    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0x7f

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v13, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 427
    const/16 v13, 0x20

    const/16 v14, 0x8

    invoke-virtual {v7, v8, v13, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 428
    const/4 v13, 0x0

    const/16 v14, 0x30

    invoke-virtual {v7, v11, v13, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 429
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 430
    .local v4, hash:[B
    const/16 v13, 0x20

    invoke-static {v4, v8, v13}, Lcom/itextpdf/text/pdf/PdfEncryption;->compareArray([B[BI)Z

    move-result v5

    .line 431
    .local v5, isOwnerPass:Z
    if-eqz v5, :cond_2

    .line 432
    const/4 v13, 0x0

    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0x7f

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v13, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 433
    const/16 v13, 0x28

    const/16 v14, 0x8

    invoke-virtual {v7, v8, v13, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 434
    const/4 v13, 0x0

    const/16 v14, 0x30

    invoke-virtual {v7, v11, v13, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 435
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 436
    new-instance v1, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;

    const/4 v13, 0x0

    invoke-direct {v1, v13, v4}, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 437
    .local v1, ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    const/4 v13, 0x0

    array-length v14, v9

    invoke-virtual {v1, v9, v13, v14}, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    .line 452
    :goto_0
    new-instance v1, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;

    .end local v1           #ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    invoke-direct {v1, v13, v14}, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 453
    .restart local v1       #ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    const/4 v13, 0x0

    array-length v14, v10

    invoke-virtual {v1, v10, v13, v14}, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v2

    .line 454
    .local v2, decPerms:[B
    const/16 v13, 0x9

    aget-byte v13, v2, v13

    const/16 v14, 0x61

    if-ne v13, v14, :cond_1

    const/16 v13, 0xa

    aget-byte v13, v2, v13

    const/16 v14, 0x64

    if-ne v13, v14, :cond_1

    const/16 v13, 0xb

    aget-byte v13, v2, v13

    const/16 v14, 0x62

    if-eq v13, v14, :cond_4

    .line 455
    :cond_1
    new-instance v13, Lcom/itextpdf/text/exceptions/BadPasswordException;

    const-string v14, "bad.user.password"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Lcom/itextpdf/text/exceptions/BadPasswordException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 461
    .end local v1           #ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    .end local v2           #decPerms:[B
    .end local v4           #hash:[B
    .end local v5           #isOwnerPass:Z
    .end local v6           #isUserPass:Z
    .end local v7           #md:Ljava/security/MessageDigest;
    .end local v8           #oValue:[B
    .end local v9           #oeValue:[B
    .end local v10           #perms:[B
    .end local v11           #uValue:[B
    .end local v12           #ueValue:[B
    :catch_0
    move-exception v3

    .line 462
    .local v3, ex:Lcom/itextpdf/text/exceptions/BadPasswordException;
    throw v3

    .line 440
    .end local v3           #ex:Lcom/itextpdf/text/exceptions/BadPasswordException;
    .restart local v4       #hash:[B
    .restart local v5       #isOwnerPass:Z
    .restart local v6       #isUserPass:Z
    .restart local v7       #md:Ljava/security/MessageDigest;
    .restart local v8       #oValue:[B
    .restart local v9       #oeValue:[B
    .restart local v10       #perms:[B
    .restart local v11       #uValue:[B
    .restart local v12       #ueValue:[B
    :cond_2
    const/4 v13, 0x0

    :try_start_1
    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0x7f

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v13, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 441
    const/16 v13, 0x20

    const/16 v14, 0x8

    invoke-virtual {v7, v11, v13, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 442
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 443
    const/16 v13, 0x20

    invoke-static {v4, v11, v13}, Lcom/itextpdf/text/pdf/PdfEncryption;->compareArray([B[BI)Z

    move-result v6

    .line 444
    if-nez v6, :cond_3

    .line 445
    new-instance v13, Lcom/itextpdf/text/exceptions/BadPasswordException;

    const-string v14, "bad.user.password"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Lcom/itextpdf/text/exceptions/BadPasswordException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 464
    .end local v4           #hash:[B
    .end local v5           #isOwnerPass:Z
    .end local v6           #isUserPass:Z
    .end local v7           #md:Ljava/security/MessageDigest;
    .end local v8           #oValue:[B
    .end local v9           #oeValue:[B
    .end local v10           #perms:[B
    .end local v11           #uValue:[B
    .end local v12           #ueValue:[B
    :catch_1
    move-exception v3

    .line 465
    .local v3, ex:Ljava/lang/Exception;
    new-instance v13, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v13, v3}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 446
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v4       #hash:[B
    .restart local v5       #isOwnerPass:Z
    .restart local v6       #isUserPass:Z
    .restart local v7       #md:Ljava/security/MessageDigest;
    .restart local v8       #oValue:[B
    .restart local v9       #oeValue:[B
    .restart local v10       #perms:[B
    .restart local v11       #uValue:[B
    .restart local v12       #ueValue:[B
    :cond_3
    const/4 v13, 0x0

    :try_start_2
    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0x7f

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v13, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 447
    const/16 v13, 0x28

    const/16 v14, 0x8

    invoke-virtual {v7, v11, v13, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 448
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 449
    new-instance v1, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;

    const/4 v13, 0x0

    invoke-direct {v1, v13, v4}, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 450
    .restart local v1       #ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    const/4 v13, 0x0

    array-length v14, v12

    invoke-virtual {v1, v12, v13, v14}, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    goto/16 :goto_0

    .line 456
    .restart local v2       #decPerms:[B
    :cond_4
    const/4 v13, 0x0

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    const/4 v14, 0x1

    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    const/4 v14, 0x2

    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    const/4 v14, 0x2

    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    or-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/itextpdf/text/pdf/PdfEncryption;->permissions:I

    .line 458
    const/16 v13, 0x8

    aget-byte v13, v2, v13

    const/16 v14, 0x54

    if-ne v13, v14, :cond_5

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z
    :try_end_2
    .catch Lcom/itextpdf/text/exceptions/BadPasswordException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 459
    return v5

    .line 458
    :cond_5
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public setCryptoMode(II)V
    .locals 5
    .parameter "mode"
    .parameter "kl"

    .prologue
    const/16 v4, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->cryptoMode:I

    .line 170
    and-int/lit8 v0, p1, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    .line 171
    and-int/lit8 v0, p1, 0x18

    const/16 v3, 0x18

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    .line 172
    and-int/lit8 p1, p1, 0x7

    .line 173
    packed-switch p1, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no.valid.encryption.mode"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 170
    goto :goto_0

    :cond_1
    move v0, v2

    .line 171
    goto :goto_1

    .line 175
    :pswitch_0
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    .line 176
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    .line 177
    const/16 v0, 0x28

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    .line 178
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    .line 200
    :goto_2
    return-void

    .line 181
    :pswitch_1
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    .line 182
    if-lez p2, :cond_2

    .line 183
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    .line 186
    :goto_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    goto :goto_2

    .line 185
    :cond_2
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    goto :goto_3

    .line 189
    :pswitch_2
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    .line 190
    const/4 v0, 0x4

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    goto :goto_2

    .line 193
    :pswitch_3
    const/16 v0, 0x100

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    .line 194
    const/16 v0, 0x20

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    .line 195
    const/4 v0, 0x5

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    goto :goto_2

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setHashKey(II)V
    .locals 5
    .parameter "number"
    .parameter "generation"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x4

    .line 531
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 534
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 535
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 536
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 537
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    const/4 v1, 0x3

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 538
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 539
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 540
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 541
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    if-ne v0, v3, :cond_2

    .line 542
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncryption;->salt:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    .line 544
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    .line 545
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    if-le v0, v4, :cond_0

    .line 546
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    goto :goto_0
.end method

.method public setupAllKeys([B[BI)V
    .locals 15
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"

    .prologue
    .line 334
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v11, v0

    if-nez v11, :cond_1

    .line 335
    :cond_0
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    .line 336
    :cond_1
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_2

    iget v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v12, 0x4

    if-eq v11, v12, :cond_2

    iget v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_4

    :cond_2
    const/16 v11, -0xf40

    :goto_0
    or-int p3, p3, v11

    .line 338
    and-int/lit8 p3, p3, -0x4

    .line 339
    move/from16 v0, p3

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->permissions:I

    .line 340
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_6

    .line 342
    if-nez p1, :cond_3

    .line 343
    const/4 v11, 0x0

    :try_start_0
    new-array v0, v11, [B

    move-object/from16 p1, v0

    .line 344
    :cond_3
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object v11

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    .line 345
    const/16 v11, 0x8

    invoke-static {v11}, Lcom/itextpdf/text/pdf/crypto/IVGenerator;->getIV(I)[B

    move-result-object v10

    .line 346
    .local v10, uvs:[B
    const/16 v11, 0x8

    invoke-static {v11}, Lcom/itextpdf/text/pdf/crypto/IVGenerator;->getIV(I)[B

    move-result-object v8

    .line 347
    .local v8, uks:[B
    const/16 v11, 0x20

    invoke-static {v11}, Lcom/itextpdf/text/pdf/crypto/IVGenerator;->getIV(I)[B

    move-result-object v11

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    .line 349
    const-string v11, "SHA-256"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 350
    .local v3, md:Ljava/security/MessageDigest;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    array-length v12, v0

    const/16 v13, 0x7f

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v11, v12}, Ljava/security/MessageDigest;->update([BII)V

    .line 351
    invoke-virtual {v3, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 352
    const/16 v11, 0x30

    new-array v11, v11, [B

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    .line 353
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    const/4 v12, 0x0

    const/16 v13, 0x20

    invoke-virtual {v3, v11, v12, v13}, Ljava/security/MessageDigest;->digest([BII)I

    .line 354
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    const/16 v13, 0x20

    const/16 v14, 0x8

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    const/16 v13, 0x28

    const/16 v14, 0x8

    invoke-static {v8, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    const/4 v11, 0x0

    move-object/from16 v0, p1

    array-length v12, v0

    const/16 v13, 0x7f

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v11, v12}, Ljava/security/MessageDigest;->update([BII)V

    .line 358
    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 359
    new-instance v1, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;

    const/4 v11, 0x1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v12

    invoke-direct {v1, v11, v12}, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 360
    .local v1, ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    array-length v13, v13

    invoke-virtual {v1, v11, v12, v13}, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v11

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ueKey:[B

    .line 362
    const/16 v11, 0x8

    invoke-static {v11}, Lcom/itextpdf/text/pdf/crypto/IVGenerator;->getIV(I)[B

    move-result-object v5

    .line 363
    .local v5, ovs:[B
    const/16 v11, 0x8

    invoke-static {v11}, Lcom/itextpdf/text/pdf/crypto/IVGenerator;->getIV(I)[B

    move-result-object v4

    .line 364
    .local v4, oks:[B
    const/4 v11, 0x0

    move-object/from16 v0, p2

    array-length v12, v0

    const/16 v13, 0x7f

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v11, v12}, Ljava/security/MessageDigest;->update([BII)V

    .line 365
    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 366
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    invoke-virtual {v3, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 367
    const/16 v11, 0x30

    new-array v11, v11, [B

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    .line 368
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    const/4 v12, 0x0

    const/16 v13, 0x20

    invoke-virtual {v3, v11, v12, v13}, Ljava/security/MessageDigest;->digest([BII)I

    .line 369
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    const/16 v13, 0x20

    const/16 v14, 0x8

    invoke-static {v5, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    const/16 v13, 0x28

    const/16 v14, 0x8

    invoke-static {v4, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    const/4 v11, 0x0

    move-object/from16 v0, p2

    array-length v12, v0

    const/16 v13, 0x7f

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v11, v12}, Ljava/security/MessageDigest;->update([BII)V

    .line 373
    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 374
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    invoke-virtual {v3, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 375
    new-instance v1, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;

    .end local v1           #ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    const/4 v11, 0x1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v12

    invoke-direct {v1, v11, v12}, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 376
    .restart local v1       #ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    array-length v13, v13

    invoke-virtual {v1, v11, v12, v13}, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v11

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->oeKey:[B

    .line 378
    const/16 v11, 0x10

    invoke-static {v11}, Lcom/itextpdf/text/pdf/crypto/IVGenerator;->getIV(I)[B

    move-result-object v7

    .line 379
    .local v7, permsp:[B
    const/4 v11, 0x0

    move/from16 v0, p3

    int-to-byte v12, v0

    aput-byte v12, v7, v11

    .line 380
    const/4 v11, 0x1

    shr-int/lit8 v12, p3, 0x8

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    .line 381
    const/4 v11, 0x2

    shr-int/lit8 v12, p3, 0x10

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    .line 382
    const/4 v11, 0x3

    shr-int/lit8 v12, p3, 0x18

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    .line 383
    const/4 v11, 0x4

    const/4 v12, -0x1

    aput-byte v12, v7, v11

    .line 384
    const/4 v11, 0x5

    const/4 v12, -0x1

    aput-byte v12, v7, v11

    .line 385
    const/4 v11, 0x6

    const/4 v12, -0x1

    aput-byte v12, v7, v11

    .line 386
    const/4 v11, 0x7

    const/4 v12, -0x1

    aput-byte v12, v7, v11

    .line 387
    const/16 v12, 0x8

    iget-boolean v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-eqz v11, :cond_5

    const/16 v11, 0x54

    :goto_1
    aput-byte v11, v7, v12

    .line 388
    const/16 v11, 0x9

    const/16 v12, 0x61

    aput-byte v12, v7, v11

    .line 389
    const/16 v11, 0xa

    const/16 v12, 0x64

    aput-byte v12, v7, v11

    .line 390
    const/16 v11, 0xb

    const/16 v12, 0x62

    aput-byte v12, v7, v11

    .line 391
    new-instance v1, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;

    .end local v1           #ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    invoke-direct {v1, v11, v12}, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 392
    .restart local v1       #ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    const/4 v11, 0x0

    array-length v12, v7

    invoke-virtual {v1, v7, v11, v12}, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v11

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->perms:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v1           #ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    .end local v3           #md:Ljava/security/MessageDigest;
    .end local v4           #oks:[B
    .end local v5           #ovs:[B
    .end local v7           #permsp:[B
    .end local v8           #uks:[B
    .end local v10           #uvs:[B
    :goto_2
    return-void

    .line 336
    :cond_4
    const/16 v11, -0x40

    goto/16 :goto_0

    .line 387
    .restart local v1       #ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    .restart local v3       #md:Ljava/security/MessageDigest;
    .restart local v4       #oks:[B
    .restart local v5       #ovs:[B
    .restart local v7       #permsp:[B
    .restart local v8       #uks:[B
    .restart local v10       #uvs:[B
    :cond_5
    const/16 v11, 0x46

    goto :goto_1

    .line 394
    .end local v1           #ac:Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
    .end local v3           #md:Ljava/security/MessageDigest;
    .end local v4           #oks:[B
    .end local v5           #ovs:[B
    .end local v7           #permsp:[B
    .end local v8           #uks:[B
    .end local v10           #uvs:[B
    :catch_0
    move-exception v2

    .line 395
    .local v2, ex:Ljava/lang/Exception;
    new-instance v11, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v11, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v11

    .line 401
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/PdfEncryption;->padPassword([B)[B

    move-result-object v9

    .line 402
    .local v9, userPad:[B
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->padPassword([B)[B

    move-result-object v6

    .line 404
    .local v6, ownerPad:[B
    invoke-direct {p0, v9, v6}, Lcom/itextpdf/text/pdf/PdfEncryption;->computeOwnerKey([B[B)[B

    move-result-object v11

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    .line 405
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object v11

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    .line 406
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    move/from16 v0, p3

    invoke-direct {p0, v11, v9, v12, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByUserPad([B[B[BI)V

    goto :goto_2
.end method

.method public setupByEncryptionKey([BI)V
    .locals 3
    .parameter "key"
    .parameter "keylength"

    .prologue
    const/4 v2, 0x0

    .line 526
    div-int/lit8 v0, p2, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    .line 527
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    return-void
.end method

.method public setupByOwnerPassword([B[B[B[BI)V
    .locals 6
    .parameter "documentID"
    .parameter "ownerPassword"
    .parameter "userKey"
    .parameter "ownerKey"
    .parameter "permissions"

    .prologue
    .line 511
    invoke-direct {p0, p2}, Lcom/itextpdf/text/pdf/PdfEncryption;->padPassword([B)[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByOwnerPad([B[B[B[BI)V

    .line 513
    return-void
.end method

.method public setupByUserPassword([B[B[BI)V
    .locals 1
    .parameter "documentID"
    .parameter "userPassword"
    .parameter "ownerKey"
    .parameter "permissions"

    .prologue
    .line 495
    invoke-direct {p0, p2}, Lcom/itextpdf/text/pdf/PdfEncryption;->padPassword([B)[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByUserPad([B[B[BI)V

    .line 497
    return-void
.end method
