.class public Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
.super Ljava/lang/Object;
.source "DigitalSignature.java"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final md5:Ljava/security/MessageDigest;

.field private md5_hash:[B

.field private final sha:Ljava/security/MessageDigest;

.field private sha_hash:[B

.field private final signature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "authType"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    .line 75
    const-string v1, "RSA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    .line 77
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    .line 96
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v1, "DSA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const-string v1, "NONEwithDSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 85
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 94
    .local v0, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public init(Ljava/security/PrivateKey;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/security/InvalidKeyException;
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v2, 0x2a

    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string v4, "init - invalid private key"

    invoke-direct {v3, v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1
.end method

.method public init(Ljava/security/cert/Certificate;)V
    .locals 5
    .parameter "cert"

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/security/InvalidKeyException;
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v2, 0x2a

    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string v4, "init - invalid certificate"

    invoke-direct {v3, v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1
.end method

.method public setMD5([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 150
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    .line 151
    return-void
.end method

.method public setSHA([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 158
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    .line 159
    return-void
.end method

.method public sign()[B
    .locals 5

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-nez v1, :cond_0

    .line 168
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    .line 169
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 171
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_4

    .line 173
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 178
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    if-nez v1, :cond_2

    .line 179
    const/16 v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    .line 180
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 182
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    if-eqz v1, :cond_3

    .line 183
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_5

    .line 184
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 189
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_6

    .line 190
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    .line 202
    :goto_2
    return-object v1

    .line 174
    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->update([B)[B
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/security/DigestException;
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_2

    .line 185
    .end local v0           #e:Ljava/security/DigestException;
    :cond_5
    :try_start_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_3

    .line 186
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->update([B)[B
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 197
    :catch_1
    move-exception v0

    .line 198
    .local v0, e:Ljava/security/SignatureException;
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_2

    .line 191
    .end local v0           #e:Ljava/security/SignatureException;
    :cond_6
    :try_start_2
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_7

    .line 192
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v1

    goto :goto_2

    .line 194
    :cond_7
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B
    :try_end_2
    .catch Ljava/security/DigestException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 199
    :catch_2
    move-exception v0

    .line 200
    .local v0, e:Ljavax/crypto/BadPaddingException;
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_2

    .line 201
    .end local v0           #e:Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v0

    .line 202
    .local v0, e:Ljavax/crypto/IllegalBlockSizeException;
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_2
.end method

.method public update([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 143
    :cond_1
    return-void
.end method

.method public verifySignature([B)Z
    .locals 7
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v4, :cond_2

    .line 214
    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    if-nez v4, :cond_0

    .line 215
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    .line 217
    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    invoke-virtual {v4, v5}, Ljava/security/Signature;->update([B)V

    .line 218
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v4, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 255
    :cond_1
    :goto_0
    return v3

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, e:Ljava/security/SignatureException;
    goto :goto_0

    .line 224
    .end local v1           #e:Ljava/security/SignatureException;
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v4, :cond_7

    .line 227
    :try_start_1
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 235
    .local v0, decrypt:[B
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    if-nez v4, :cond_3

    .line 236
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    .line 238
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-nez v4, :cond_4

    .line 239
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    .line 241
    :cond_4
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    if-eqz v4, :cond_5

    .line 242
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    array-length v4, v4

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v2, v4, [B

    .line 243
    .local v2, md5_sha:[B
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    array-length v5, v5

    invoke-static {v4, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    array-length v5, v5

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    array-length v6, v6

    invoke-static {v4, v3, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    :goto_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_0

    .line 228
    .end local v0           #decrypt:[B
    .end local v2           #md5_sha:[B
    :catch_1
    move-exception v1

    .line 229
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_0

    .line 230
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v1

    .line 231
    .local v1, e:Ljavax/crypto/BadPaddingException;
    goto :goto_0

    .line 245
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    .restart local v0       #decrypt:[B
    :cond_5
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-eqz v3, :cond_6

    .line 246
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    .restart local v2       #md5_sha:[B
    goto :goto_1

    .line 248
    .end local v2           #md5_sha:[B
    :cond_6
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    .restart local v2       #md5_sha:[B
    goto :goto_1

    .line 252
    .end local v0           #decrypt:[B
    .end local v2           #md5_sha:[B
    :cond_7
    if-eqz p1, :cond_8

    array-length v4, p1

    if-nez v4, :cond_1

    .line 253
    :cond_8
    const/4 v3, 0x1

    goto :goto_0
.end method
