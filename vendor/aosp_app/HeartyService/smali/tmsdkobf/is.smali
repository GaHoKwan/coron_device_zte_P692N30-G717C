.class public final Ltmsdkobf/is;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile rF:Ltmsdkobf/is;


# instance fields
.field private rG:Ltmsdkobf/ip;

.field private rH:Ljava/util/Calendar;

.field private rI:Ltmsdkobf/ir;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/is;->rF:Ltmsdkobf/is;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/is;->rH:Ljava/util/Calendar;

    .line 202
    invoke-direct {p0}, Ltmsdkobf/is;->load()V

    .line 203
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)J
    .locals 12
    .parameter "strTimeSec"
    .parameter "rsaPubKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    .line 312
    const/4 v10, 0x0

    invoke-static {p0, v10}, Ltmsdk/common/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 315
    .local v0, data:[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 316
    .local v6, encDESKeyLen:I
    const-string v10, "RSA/ECB/PKCS1Padding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 317
    .local v8, rsaCipher:Ljavax/crypto/Cipher;
    invoke-virtual {v8, v11, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 318
    const/4 v10, 0x4

    invoke-virtual {v8, v0, v10, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    .line 321
    .local v3, desKeyData:[B
    const-string v10, "DES/ECB/PKCS5Padding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 322
    .local v1, desCipher:Ljavax/crypto/Cipher;
    new-instance v5, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v5, v3}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 323
    .local v5, desKeySpec:Ljavax/crypto/spec/DESKeySpec;
    const-string v10, "DES"

    invoke-static {v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 324
    .local v4, desKeyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v4, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 325
    .local v2, desKey:Ljava/security/Key;
    invoke-virtual {v1, v11, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 326
    add-int/lit8 v10, v6, 0x4

    array-length v11, v0

    add-int/lit8 v11, v11, -0x4

    sub-int/2addr v11, v6

    invoke-virtual {v1, v0, v10, v11}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v7

    .line 327
    .local v7, intValueData:[B
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7}, Ljava/lang/String;-><init>([B)V

    .line 330
    .local v9, strValue:Ljava/lang/String;
    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    return-wide v10
.end method

.method private static a([B[B)[B
    .locals 7
    .parameter "src"
    .parameter "key"

    .prologue
    .line 343
    const/4 v5, 0x0

    .line 346
    .local v5, result:[B
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v4, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 347
    .local v4, keySpec:Ljavax/crypto/spec/DESKeySpec;
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 348
    .local v3, keyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 350
    .local v1, des_key:Ljava/security/Key;
    const-string v6, "DES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 351
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 352
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 358
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #des_key:Ljava/security/Key;
    .end local v3           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v4           #keySpec:Ljavax/crypto/spec/DESKeySpec;
    :goto_0
    return-object v5

    .line 354
    :catch_0
    move-exception v2

    .line 355
    .local v2, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private aZ(I)[B
    .locals 8
    .parameter "index"

    .prologue
    .line 366
    const/4 v5, 0x0

    .line 369
    .local v5, retrycount:I
    :goto_0
    :try_start_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 370
    .local v0, assetManager:Landroid/content/res/AssetManager;
    if-nez p1, :cond_0

    const-string v4, "licence.conf"

    .line 371
    .local v4, licName:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 372
    .local v3, in:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    new-array v1, v6, [B

    .line 373
    .local v1, data:[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 374
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 375
    return-object v1

    .line 370
    .end local v1           #data:[B
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #licName:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "licence"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".conf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_1

    .line 376
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    :catch_0
    move-exception v2

    .line 377
    .local v2, e:Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 378
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 379
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 380
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 382
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 383
    goto :goto_0
.end method

.method public static declared-synchronized dt()Ltmsdkobf/is;
    .locals 2

    .prologue
    .line 75
    const-class v1, Ltmsdkobf/is;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/is;->rF:Ltmsdkobf/is;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ltmsdkobf/is;

    invoke-direct {v0}, Ltmsdkobf/is;-><init>()V

    sput-object v0, Ltmsdkobf/is;->rF:Ltmsdkobf/is;

    .line 78
    :cond_0
    sget-object v0, Ltmsdkobf/is;->rF:Ltmsdkobf/is;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private du()Z
    .locals 5

    .prologue
    .line 100
    :try_start_0
    iget-object v3, p0, Ltmsdkobf/is;->rI:Ltmsdkobf/ir;

    invoke-virtual {v3}, Ltmsdkobf/ir;->dr()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, pid:Ljava/lang/String;
    iget-object v3, p0, Ltmsdkobf/is;->rI:Ltmsdkobf/ir;

    invoke-virtual {v3}, Ltmsdkobf/ir;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, channel:I
    sget-object v3, Ltmsdkobf/x;->bQ:Ltmsdkobf/x;

    invoke-virtual {v3}, Ltmsdkobf/x;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0xf3e59

    if-ne v0, v3, :cond_0

    .line 103
    const/4 v3, 0x1

    .line 108
    .end local v0           #channel:I
    .end local v2           #pid:Ljava/lang/String;
    :goto_0
    return v3

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "TMSLicenceManager"

    const-string v4, "isQQPimSecure"

    invoke-static {v3, v4, v1}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 108
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private final dw()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x3e8

    const/4 v8, 0x1

    .line 262
    new-instance v5, Ltmsdkobf/kf;

    const-string v9, "licence"

    invoke-direct {v5, v9}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    .line 263
    .local v5, licProps:Ltmsdkobf/kf;
    const-string v9, "expiry.enc_seconds"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, strTimeSec:Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 267
    .local v2, expirySeconds:J
    if-eqz v7, :cond_0

    .line 268
    invoke-static {}, Ltmsdkobf/is;->dx()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v6

    .line 270
    .local v6, publicKey:Ljava/security/interfaces/RSAPublicKey;
    :try_start_0
    invoke-static {v7, v6}, Ltmsdkobf/is;->a(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 280
    .end local v6           #publicKey:Ljava/security/interfaces/RSAPublicKey;
    :cond_0
    :goto_0
    const-wide/16 v9, -0x1

    cmp-long v9, v2, v9

    if-nez v9, :cond_1

    .line 281
    iget-object v9, p0, Ltmsdkobf/is;->rI:Ltmsdkobf/ir;

    invoke-virtual {v9}, Ltmsdkobf/ir;->ds()J

    move-result-wide v2

    .line 284
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v11

    cmp-long v9, v9, v2

    if-ltz v9, :cond_2

    move v4, v8

    .line 286
    .local v4, isExpired:Z
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 287
    .local v0, calExpiry:Ljava/util/Calendar;
    mul-long v9, v2, v11

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 288
    const-string v9, "LicMan"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "expirySeconds="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "-"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "-"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ") expired="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    new-instance v8, Ltmsdkobf/ip;

    invoke-direct {v8, v4}, Ltmsdkobf/ip;-><init>(Z)V

    iput-object v8, p0, Ltmsdkobf/is;->rG:Ltmsdkobf/ip;

    .line 295
    return-void

    .line 271
    .end local v0           #calExpiry:Ljava/util/Calendar;
    .end local v4           #isExpired:Z
    .restart local v6       #publicKey:Ljava/security/interfaces/RSAPublicKey;
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 284
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #publicKey:Ljava/security/interfaces/RSAPublicKey;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static dx()Ljava/security/interfaces/RSAPublicKey;
    .locals 2

    .prologue
    .line 339
    const-string v0, "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUM5ekNDQWQ4Q0NRRGlsbUFjTWxiczVEQU5C\nZ2txaGtpRzl3MEJBUVVGQURCK01Rc3dDUVlEVlFRR0V3SkQKVGpFTE1Ba0dBMVVFQ0JNQ1IwUXhD\nekFKQmdOVkJBY1RBa2RhTVJJd0VBWURWUVFLRkFsMFpXTUlibU5sYm5ReApDekFKQmdOVkJBc1RB\nak5ITVE0d0RBWURWUVFERXdWdlltRnRZVEVrTUNJR0NTcUdTSWIzRFFFSkFSWVZiMkpoCmJXRjZa\nVzVuUUhSbGJtTmxiblF1WTI5dE1CNFhEVEV4TVRFeE5qRXhNVGN4TjFvWERURXlNREl5TkRFeE1U\nY3gKTjFvd2dZQXhDekFKQmdOVkJBWVRBa05PTVFzd0NRWURWUVFJRXdKSFJERUxNQWtHQTFVRUJ4\nTUNSMW94RURBTwpCZ05WQkFvVEIzUmxibU5sYm5ReEN6QUpCZ05WQkFzVEFqTkhNUkl3RUFZRFZR\nUURFd2x2WW1GdFlYcGxibWN4CkpEQWlCZ2txaGtpRzl3MEJDUUVXRlc5aVlXMWhlbVZ1WjBCMFpX\nNWpaVzUwTG1OdmJUQ0JuekFOQmdrcWhraUcKOXcwQkFRRUZBQU9CalFBd2dZa0NnWUVBd1kvV3FI\nV2NlRERkSm16anI3TlpSeS9qTllwS1NzVzExZngxaTIrQwpxTUE3NTJXb1d1bDZuSTB1MGZkWitk\nUzVUandRNkU0Qm13dXduVTVnQmJYK1VzQ2VHRHZaQVhQc045UEVWYnZTCkcvR25YclQrcTI2VUpP\nNHcrd3VNdmk5YWxkZHhhbkNKeXJ2ZWQ2NUdvMXhXUEErWGNHaVQxMndubjZtUHhyMnUKcVEwQ0F3\nRUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBUUVBblpzV3FpSmV5SC9sT0prSWN6L2ZidDN3MXFL\nRApGTXJ5cFVHVFN6Z3NONWNaMW9yOGlvVG5ENGRLaDdJN2ttbDRpcGNvMDF0enc2MGhLYUtwNG9G\nMnYrMEs2NGZDCnBEMG9EUlkrOGoyK2RsMmNxeHBsT0FYdDc1RWFKNW40MG1DZDdTN0VBS0d2Z2Na\naVhyV0Z1eUtCL2QvNTh3Qm4KOEFGUVJhTnBySXNOSHpxMkMwL0JXR1pTSnJicmhOWExFY0ZtL0Ru\nTG14ZEVNYWxPSXhnSkhGcEFOS2tadXBzdgo0L0lDVFhSL0RJaURjbXJjbDFkNkc2VmgyaUcwaS9v\nRDBHQnBMZlFPcEF0Vmx6Y2lxZnBsTkphcnpRUTZUVXRyCm5GRmVNVDNDc2t5VGJwYnp1R2dDdUxj\nQVR3cnRQd1BOOWZzQXYrSjRJZm0rZUNVVDVnZlorMSsyNHc9PQotLS0tLUVORCBDRVJUSUZJQ0FU\nRS0tLS0tCg==\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltmsdk/common/utils/Base64;->decode([BI)[B

    move-result-object v0

    invoke-static {v0}, Ltmsdkobf/iq;->l([B)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method private load()V
    .locals 13

    .prologue
    const/16 v12, 0x80

    const/4 v11, 0x0

    .line 206
    const/4 v4, 0x0

    .line 207
    .local v4, index:I
    :goto_0
    const/4 v6, 0x0

    .line 209
    .local v6, licence:[B
    :try_start_0
    invoke-direct {p0, v4}, Ltmsdkobf/is;->aZ(I)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 215
    if-nez v6, :cond_0

    .line 216
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Certification file is missing! Please contact TMS(Tencent Mobile Secure) group."

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, e:Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Invaild signature! Please contact TMS(Tencent Mobile Secure) group."

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 220
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_0
    invoke-static {}, Ltmsdkobf/is;->dx()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v8

    .line 222
    .local v8, publickey:Ljava/security/interfaces/RSAPublicKey;
    new-array v2, v12, [B

    .line 223
    .local v2, encryptedKey:[B
    array-length v9, v2

    invoke-static {v6, v11, v2, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    invoke-static {v2, v8}, Ltmsdkobf/iq;->a([BLjava/security/interfaces/RSAPublicKey;)[B

    move-result-object v5

    .line 226
    .local v5, key:[B
    if-nez v5, :cond_1

    .line 227
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "RSA decrypt error."

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 230
    :cond_1
    array-length v9, v6

    add-int/lit8 v9, v9, -0x80

    new-array v3, v9, [B

    .line 231
    .local v3, encryptedProperties:[B
    array-length v9, v3

    invoke-static {v6, v12, v3, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {v3, v5}, Ltmsdkobf/is;->a([B[B)[B

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 238
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 240
    .local v7, properties:Ljava/util/Properties;
    :try_start_1
    invoke-virtual {v7, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :goto_1
    new-instance v9, Ltmsdkobf/ir;

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v7, v10}, Ltmsdkobf/ir;-><init>(Ljava/util/Properties;Landroid/content/Context;)V

    iput-object v9, p0, Ltmsdkobf/is;->rI:Ltmsdkobf/ir;

    .line 247
    iget-object v9, p0, Ltmsdkobf/is;->rI:Ltmsdkobf/ir;

    invoke-virtual {v9}, Ltmsdkobf/ir;->dp()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 248
    invoke-direct {p0}, Ltmsdkobf/is;->dw()V

    .line 249
    iget-object v9, p0, Ltmsdkobf/is;->rH:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 250
    return-void

    .line 241
    :catch_1
    move-exception v1

    .line 242
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 206
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bl(Ljava/lang/String;)V
    .locals 5
    .parameter "strTimeSec"

    .prologue
    const/4 v4, 0x1

    .line 302
    const-string v1, "LicMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strTimeSec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    new-array v1, v4, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ltmsdkobf/jp;->a([Ljava/lang/Class;)V

    .line 304
    new-instance v0, Ltmsdkobf/kf;

    const-string v1, "licence"

    invoke-direct {v0, v1}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, licProps:Ltmsdkobf/kf;
    const-string v1, "expiry.enc_seconds"

    invoke-virtual {v0, v1, p1, v4}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 306
    invoke-direct {p0}, Ltmsdkobf/is;->dw()V

    .line 307
    return-void
.end method

.method public dn()Z
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 179
    invoke-direct {p0}, Ltmsdkobf/is;->du()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const/4 v1, 0x0

    .line 198
    :goto_0
    return v1

    .line 185
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 186
    .local v0, calNow:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 188
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Ltmsdkobf/is;->rH:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Ltmsdkobf/is;->rH:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 192
    :cond_1
    invoke-direct {p0}, Ltmsdkobf/is;->dw()V

    .line 196
    :cond_2
    iget-object v1, p0, Ltmsdkobf/is;->rH:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 198
    iget-object v1, p0, Ltmsdkobf/is;->rG:Ltmsdkobf/ip;

    invoke-virtual {v1}, Ltmsdkobf/ip;->dn()Z

    move-result v1

    goto :goto_0
.end method

.method public final dp()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ltmsdkobf/is;->rI:Ltmsdkobf/ir;

    invoke-virtual {v0}, Ltmsdkobf/ir;->dp()Z

    move-result v0

    return v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Ltmsdkobf/is;->rI:Ltmsdkobf/ir;

    invoke-virtual {v0}, Ltmsdkobf/ir;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ltmsdkobf/is;->rI:Ltmsdkobf/ir;

    invoke-virtual {v0}, Ltmsdkobf/ir;->dr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dv()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 117
    invoke-direct {p0}, Ltmsdkobf/is;->du()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 121
    :cond_1
    new-instance v0, Ltmsdkobf/ah;

    invoke-direct {v0}, Ltmsdkobf/ah;-><init>()V

    .line 123
    .local v0, checkResult:Ltmsdkobf/ah;
    iget-object v5, p0, Ltmsdkobf/is;->rI:Ltmsdkobf/ir;

    invoke-virtual {v5, v0}, Ltmsdkobf/ir;->a(Ltmsdkobf/ah;)I

    move-result v1

    .line 125
    .local v1, err:I
    iget-object v5, v0, Ltmsdkobf/ah;->dG:Ltmsdkobf/as;

    if-eqz v5, :cond_2

    iget-object v5, v0, Ltmsdkobf/ah;->dG:Ltmsdkobf/as;

    iget-object v5, v5, Ltmsdkobf/as;->ei:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Ltmsdkobf/ah;->dG:Ltmsdkobf/as;

    iget-object v5, v5, Ltmsdkobf/as;->ei:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 129
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 137
    :pswitch_1
    invoke-virtual {p0}, Ltmsdkobf/is;->dn()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :pswitch_2
    move v3, v4

    .line 134
    goto :goto_0

    .line 141
    :cond_3
    packed-switch v1, :pswitch_data_1

    .line 156
    invoke-virtual {p0}, Ltmsdkobf/is;->dn()Z

    move-result v2

    .line 160
    .local v2, expired:Z
    :goto_1
    if-eqz v2, :cond_0

    move v3, v4

    goto :goto_0

    .line 143
    .end local v2           #expired:Z
    :pswitch_3
    const/4 v2, 0x0

    .line 144
    .restart local v2       #expired:Z
    iget-object v5, v0, Ltmsdkobf/ah;->dG:Ltmsdkobf/as;

    iget-object v5, v5, Ltmsdkobf/as;->ei:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ltmsdkobf/is;->bl(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    .end local v2           #expired:Z
    :pswitch_4
    const/4 v2, 0x1

    .line 149
    .restart local v2       #expired:Z
    iget-object v5, v0, Ltmsdkobf/ah;->dG:Ltmsdkobf/as;

    iget-object v5, v5, Ltmsdkobf/as;->ei:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ltmsdkobf/is;->bl(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    .end local v2           #expired:Z
    :pswitch_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unknown licence! Please contact TMS(Tencent Mobile Secure) group."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
