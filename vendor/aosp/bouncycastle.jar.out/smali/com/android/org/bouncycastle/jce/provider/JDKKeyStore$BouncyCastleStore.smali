.class public Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;
.super Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;
.source "JDKKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 939
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;-><init>()V

    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 14
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 949
    if-nez p1, :cond_1

    .line 1015
    :cond_0
    return-void

    .line 954
    :cond_1
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 955
    .local v8, dIn:Ljava/io/DataInputStream;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 957
    .local v13, version:I
    const/4 v0, 0x2

    if-eq v13, v0, :cond_2

    .line 959
    if-eqz v13, :cond_2

    const/4 v0, 0x1

    if-eq v13, v0, :cond_2

    .line 961
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wrong version of key store."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v4, v0, [B

    .line 967
    .local v4, salt:[B
    array-length v0, v4

    const/16 v2, 0x14

    if-eq v0, v2, :cond_3

    .line 969
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Key store corrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_3
    invoke-virtual {v8, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 974
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 976
    .local v5, iterationCount:I
    if-ltz v5, :cond_4

    const/16 v0, 0x1000

    if-le v5, v0, :cond_5

    .line 978
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Key store corrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_5
    if-nez v13, :cond_6

    .line 984
    const-string v1, "OldPBEWithSHAAndTwofish-CBC"

    .line 991
    .local v1, cipherAlg:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x2

    move-object v0, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 992
    .local v7, cipher:Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherInputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 995
    .local v6, cIn:Ljavax/crypto/CipherInputStream;
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v10

    .line 997
    .local v10, dig:Lcom/android/org/bouncycastle/crypto/Digest;
    new-instance v9, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;

    invoke-direct {v9, v6, v10}, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 999
    .local v9, dgIn:Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;
    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    .line 1002
    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v11, v0, [B

    .line 1003
    .local v11, hash:[B
    const/4 v0, 0x0

    invoke-interface {v10, v11, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 1007
    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v12, v0, [B

    .line 1008
    .local v12, oldHash:[B
    invoke-static {v6, v12}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 1010
    invoke-static {v11, v12}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1013
    new-instance v0, Ljava/io/IOException;

    const-string v2, "KeyStore integrity check failed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    .end local v1           #cipherAlg:Ljava/lang/String;
    .end local v6           #cIn:Ljavax/crypto/CipherInputStream;
    .end local v7           #cipher:Ljavax/crypto/Cipher;
    .end local v9           #dgIn:Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;
    .end local v10           #dig:Lcom/android/org/bouncycastle/crypto/Digest;
    .end local v11           #hash:[B
    .end local v12           #oldHash:[B
    :cond_6
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    .restart local v1       #cipherAlg:Ljava/lang/String;
    goto :goto_0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 11
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1021
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1022
    .local v8, dOut:Ljava/io/DataOutputStream;
    const/16 v0, 0x14

    new-array v4, v0, [B

    .line 1023
    .local v4, salt:[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    .line 1025
    .local v5, iterationCount:I
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1027
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1028
    array-length v0, v4

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1029
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 1030
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1032
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 1034
    .local v7, cipher:Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 1036
    .local v6, cOut:Ljavax/crypto/CipherOutputStream;
    new-instance v9, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 1039
    .local v9, dgOut:Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v0, v6, v9}, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    .line 1041
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->getDigest()[B

    move-result-object v10

    .line 1043
    .local v10, dig:[B
    invoke-virtual {v6, v10}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 1045
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 1046
    return-void
.end method
