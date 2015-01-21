.class public Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;
.super Ljava/lang/Object;
.source "TSAClientBouncyCastle.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/security/TSAClient;


# static fields
.field public static final DEFAULTHASHALGORITHM:Ljava/lang/String; = "SHA-1"

.field public static final DEFAULTTOKENSIZE:I = 0x1000


# instance fields
.field protected digestAlgorithm:Ljava/lang/String;

.field protected tokenSizeEstimate:I

.field protected tsaPassword:Ljava/lang/String;

.field protected tsaURL:Ljava/lang/String;

.field protected tsaUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 103
    const/16 v4, 0x1000

    const-string v5, "SHA-1"

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "url"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 113
    const/16 v4, 0x1000

    const-string v5, "SHA-1"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "url"
    .parameter "username"
    .parameter "password"
    .parameter "tokSzEstimate"
    .parameter "digestAlgorithm"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tsaUsername:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tsaPassword:Ljava/lang/String;

    .line 130
    iput p4, p0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tokenSizeEstimate:I

    .line 131
    iput-object p5, p0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->digestAlgorithm:Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->digestAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method protected getTSAResponse([B)[B
    .locals 17
    .parameter "requestBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 204
    .local v10, url:Ljava/net/URL;
    :try_start_0
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 209
    .local v9, tsaConnection:Ljava/net/URLConnection;
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 210
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 211
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 212
    const-string v12, "Content-Type"

    const-string v13, "application/timestamp-query"

    invoke-virtual {v9, v12, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v12, "Content-Transfer-Encoding"

    const-string v13, "binary"

    invoke-virtual {v9, v12, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tsaUsername:Ljava/lang/String;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tsaUsername:Ljava/lang/String;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 217
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tsaUsername:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tsaPassword:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 218
    .local v11, userPassword:Ljava/lang/String;
    const-string v12, "Authorization"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Basic "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-static {v14}, Lcom/itextpdf/text/pdf/codec/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v11           #userPassword:Ljava/lang/String;
    :cond_0
    invoke-virtual {v9}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 222
    .local v7, out:Ljava/io/OutputStream;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 223
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 226
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 227
    .local v5, inp:Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 228
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x400

    new-array v2, v12, [B

    .line 229
    .local v2, buffer:[B
    const/4 v3, 0x0

    .line 230
    .local v3, bytesRead:I
    :goto_0
    const/4 v12, 0x0

    array-length v13, v2

    invoke-virtual {v5, v2, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_1

    .line 231
    const/4 v12, 0x0

    invoke-virtual {v1, v2, v12, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 206
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buffer:[B
    .end local v3           #bytesRead:I
    .end local v5           #inp:Ljava/io/InputStream;
    .end local v7           #out:Ljava/io/OutputStream;
    .end local v9           #tsaConnection:Ljava/net/URLConnection;
    :catch_0
    move-exception v6

    .line 207
    .local v6, ioe:Ljava/io/IOException;
    new-instance v12, Ljava/io/IOException;

    const-string v13, "failed.to.get.tsa.response.from.1"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 233
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #bytesRead:I
    .restart local v5       #inp:Ljava/io/InputStream;
    .restart local v7       #out:Ljava/io/OutputStream;
    .restart local v9       #tsaConnection:Ljava/net/URLConnection;
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 235
    .local v8, respBytes:[B
    invoke-virtual {v9}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, encoding:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v12, "base64"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 237
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v12}, Lcom/itextpdf/text/pdf/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v8

    .line 239
    :cond_2
    return-object v8
.end method

.method public getTimeStampToken([B)[B
    .locals 16
    .parameter "imprint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v6, 0x0

    .line 157
    .local v6, respBytes:[B
    new-instance v9, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;

    invoke-direct {v9}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;-><init>()V

    .line 158
    .local v9, tsqGenerator:Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setCertReq(Z)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 161
    .local v3, nonce:Ljava/math/BigInteger;
    new-instance v11, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->getAllowedDigests(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v11, v0, v3}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v4

    .line 162
    .local v4, request:Lorg/bouncycastle/tsp/TimeStampRequest;
    invoke-virtual {v4}, Lorg/bouncycastle/tsp/TimeStampRequest;->getEncoded()[B

    move-result-object v5

    .line 165
    .local v5, requestBytes:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->getTSAResponse([B)[B

    move-result-object v6

    .line 168
    new-instance v7, Lorg/bouncycastle/tsp/TimeStampResponse;

    invoke-direct {v7, v6}, Lorg/bouncycastle/tsp/TimeStampResponse;-><init>([B)V

    .line 171
    .local v7, response:Lorg/bouncycastle/tsp/TimeStampResponse;
    invoke-virtual {v7, v4}, Lorg/bouncycastle/tsp/TimeStampResponse;->validate(Lorg/bouncycastle/tsp/TimeStampRequest;)V

    .line 172
    invoke-virtual {v7}, Lorg/bouncycastle/tsp/TimeStampResponse;->getFailInfo()Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;

    move-result-object v2

    .line 173
    .local v2, failure:Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;
    if-nez v2, :cond_0

    const/4 v10, 0x0

    .line 174
    .local v10, value:I
    :goto_0
    if-eqz v10, :cond_1

    .line 176
    new-instance v11, Ljava/io/IOException;

    const-string v12, "invalid.tsa.1.response.code.2"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 173
    .end local v10           #value:I
    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->intValue()I

    move-result v10

    goto :goto_0

    .line 182
    .restart local v10       #value:I
    :cond_1
    invoke-virtual {v7}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v8

    .line 183
    .local v8, tsToken:Lorg/bouncycastle/tsp/TimeStampToken;
    if-nez v8, :cond_2

    .line 184
    new-instance v11, Ljava/io/IOException;

    const-string v12, "tsa.1.failed.to.return.time.stamp.token.2"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v7}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatusString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 186
    :cond_2
    invoke-virtual {v8}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    .line 187
    invoke-virtual {v8}, Lorg/bouncycastle/tsp/TimeStampToken;->getEncoded()[B

    move-result-object v1

    .line 190
    .local v1, encoded:[B
    array-length v11, v1

    add-int/lit8 v11, v11, 0x20

    move-object/from16 v0, p0

    iput v11, v0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tokenSizeEstimate:I

    .line 191
    return-object v1
.end method

.method public getTokenSizeEstimate()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/itextpdf/text/pdf/security/TSAClientBouncyCastle;->tokenSizeEstimate:I

    return v0
.end method
