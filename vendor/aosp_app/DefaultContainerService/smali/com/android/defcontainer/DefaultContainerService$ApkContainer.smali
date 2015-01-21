.class Lcom/android/defcontainer/DefaultContainerService$ApkContainer;
.super Ljava/lang/Object;
.source "DefaultContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/defcontainer/DefaultContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkContainer"
.end annotation


# static fields
.field private static final MAX_AUTHENTICATED_DATA_SIZE:I = 0x4000


# instance fields
.field private mAuthenticatedStream:Landroid/content/pm/MacAuthenticatedInputStream;

.field private final mInStream:Ljava/io/InputStream;

.field private mTag:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 1
    .parameter "inStream"
    .parameter "encryptionParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    if-nez p2, :cond_0

    .line 532
    iput-object p1, p0, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->mInStream:Ljava/io/InputStream;

    .line 537
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->getDecryptedStream(Ljava/io/InputStream;Landroid/content/pm/ContainerEncryptionParams;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->mInStream:Ljava/io/InputStream;

    .line 535
    invoke-virtual {p2}, Landroid/content/pm/ContainerEncryptionParams;->getMacTag()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->mTag:[B

    goto :goto_0
.end method

.method private getDecryptedStream(Ljava/io/InputStream;Landroid/content/pm/ContainerEncryptionParams;)Ljava/io/InputStream;
    .locals 23
    .parameter "inStream"
    .parameter "encryptionParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ContainerEncryptionParams;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v16

    .line 578
    .local v16, c:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ContainerEncryptionParams;->getEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ContainerEncryptionParams;->getEncryptionSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ContainerEncryptionParams;->getEncryptedDataStart()J

    move-result-wide v8

    .line 591
    .local v8, encStart:J
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ContainerEncryptionParams;->getDataEnd()J

    move-result-wide v18

    .line 592
    .local v18, end:J
    cmp-long v3, v18, v8

    if-gez v3, :cond_0

    .line 593
    new-instance v3, Ljava/io/IOException;

    const-string v6, "end <= encStart"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 580
    .end local v8           #encStart:J
    .end local v16           #c:Ljavax/crypto/Cipher;
    .end local v18           #end:J
    :catch_0
    move-exception v17

    .line 581
    .local v17, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/io/IOException;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 582
    .end local v17           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v17

    .line 583
    .local v17, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v3, Ljava/io/IOException;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 584
    .end local v17           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v17

    .line 585
    .local v17, e:Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/io/IOException;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 586
    .end local v17           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v17

    .line 587
    .local v17, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/io/IOException;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 596
    .end local v17           #e:Ljava/security/InvalidAlgorithmParameterException;
    .restart local v8       #encStart:J
    .restart local v16       #c:Ljavax/crypto/Cipher;
    .restart local v18       #end:J
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->getMacInstance(Landroid/content/pm/ContainerEncryptionParams;)Ljavax/crypto/Mac;

    move-result-object v20

    .line 597
    .local v20, mac:Ljavax/crypto/Mac;
    if-eqz v20, :cond_8

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ContainerEncryptionParams;->getAuthenticatedDataStart()J

    move-result-wide v21

    .line 599
    .local v21, macStart:J
    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v21, v6

    if-ltz v3, :cond_1

    .line 600
    new-instance v3, Ljava/io/IOException;

    const-string v6, "macStart >= Integer.MAX_VALUE"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 604
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v21, v6

    if-ltz v3, :cond_5

    const-wide/16 v6, 0x0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_5

    cmp-long v3, v21, v8

    if-gez v3, :cond_5

    .line 609
    sub-long v14, v8, v21

    .line 610
    .local v14, authenticatedLengthLong:J
    const-wide/16 v6, 0x4000

    cmp-long v3, v14, v6

    if-lez v3, :cond_2

    .line 611
    new-instance v3, Ljava/io/IOException;

    const-string v6, "authenticated data is too long"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 613
    :cond_2
    long-to-int v13, v14

    .line 615
    .local v13, authenticatedLength:I
    new-array v12, v13, [B

    .line 617
    .local v12, authenticatedData:[B
    move-wide/from16 v0, v21

    long-to-int v3, v0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v3, v13}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 619
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v3, v13}, Ljavax/crypto/Mac;->update([BII)V

    .line 621
    const-wide/16 v4, 0x0

    .line 638
    .end local v12           #authenticatedData:[B
    .end local v13           #authenticatedLength:I
    .end local v14           #authenticatedLengthLong:J
    .local v4, furtherOffset:J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_7

    cmp-long v3, v18, v4

    if-lez v3, :cond_7

    .line 639
    new-instance v2, Landroid/content/pm/LimitedLengthInputStream;

    sub-long v6, v18, v8

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/LimitedLengthInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .end local p1
    .local v2, inStream:Ljava/io/InputStream;
    move-object/from16 p1, v2

    .line 644
    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_3
    :goto_1
    new-instance v3, Landroid/content/pm/MacAuthenticatedInputStream;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/content/pm/MacAuthenticatedInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Mac;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->mAuthenticatedStream:Landroid/content/pm/MacAuthenticatedInputStream;

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->mAuthenticatedStream:Landroid/content/pm/MacAuthenticatedInputStream;

    move-object/from16 p1, v0

    .line 657
    .end local v4           #furtherOffset:J
    .end local v21           #macStart:J
    :cond_4
    :goto_2
    new-instance v3, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    .line 627
    .restart local v21       #macStart:J
    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v3, v8, v6

    if-lez v3, :cond_6

    .line 628
    move-wide v4, v8

    .restart local v4       #furtherOffset:J
    goto :goto_0

    .line 630
    .end local v4           #furtherOffset:J
    :cond_6
    const-wide/16 v4, 0x0

    .restart local v4       #furtherOffset:J
    goto :goto_0

    .line 640
    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 641
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    goto :goto_1

    .line 648
    .end local v4           #furtherOffset:J
    .end local v21           #macStart:J
    :cond_8
    const-wide/16 v6, 0x0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_4

    .line 649
    cmp-long v3, v18, v8

    if-lez v3, :cond_9

    .line 650
    new-instance v2, Landroid/content/pm/LimitedLengthInputStream;

    sub-long v10, v18, v8

    move-object v6, v2

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Landroid/content/pm/LimitedLengthInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .end local p1
    .restart local v2       #inStream:Ljava/io/InputStream;
    move-object/from16 p1, v2

    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local p1
    goto :goto_2

    .line 652
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/InputStream;->skip(J)J

    goto :goto_2
.end method

.method private getMacInstance(Landroid/content/pm/ContainerEncryptionParams;)Ljavax/crypto/Mac;
    .locals 5
    .parameter "encryptionParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/ContainerEncryptionParams;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, macAlgo:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 553
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 554
    .local v1, m:Ljavax/crypto/Mac;
    invoke-virtual {p1}, Landroid/content/pm/ContainerEncryptionParams;->getMacKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ContainerEncryptionParams;->getMacSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 559
    :goto_0
    return-object v1

    .line 556
    .end local v1           #m:Ljavax/crypto/Mac;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #m:Ljavax/crypto/Mac;
    goto :goto_0

    .line 560
    .end local v1           #m:Ljavax/crypto/Mac;
    .end local v2           #macAlgo:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 561
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 562
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 563
    .local v0, e:Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 564
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 565
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->mInStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->mAuthenticatedStream:Landroid/content/pm/MacAuthenticatedInputStream;

    if-nez v0, :cond_0

    .line 541
    const/4 v0, 0x1

    .line 544
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->mAuthenticatedStream:Landroid/content/pm/MacAuthenticatedInputStream;

    iget-object v1, p0, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->mTag:[B

    invoke-virtual {v0, v1}, Landroid/content/pm/MacAuthenticatedInputStream;->isTagEqual([B)Z

    move-result v0

    goto :goto_0
.end method
