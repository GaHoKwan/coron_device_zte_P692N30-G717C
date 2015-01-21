.class public Lcom/itextpdf/text/pdf/security/PdfPKCS7;
.super Ljava/lang/Object;
.source "PdfPKCS7.java"


# instance fields
.field private RSAdata:[B

.field private basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

.field private certs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private crls:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation
.end field

.field private digest:[B

.field private digestAlgorithmOid:Ljava/lang/String;

.field private digestAttr:[B

.field private digestEncryptionAlgorithmOid:Ljava/lang/String;

.field private digestalgos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encContDigest:Ljava/security/MessageDigest;

.field private externalDigest:[B

.field private externalRSAdata:[B

.field private isTsp:Z

.field private location:Ljava/lang/String;

.field private messageDigest:Ljava/security/MessageDigest;

.field private provider:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private sig:Ljava/security/Signature;

.field private sigAttr:[B

.field private signCert:Ljava/security/cert/X509Certificate;

.field private signCerts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private signDate:Ljava/util/Calendar;

.field private signName:Ljava/lang/String;

.field private signerversion:I

.field private timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

.field private verified:Z

.field private verifyResult:Z

.field private version:I


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "privKey"
    .parameter "certChain"
    .parameter "hashAlgorithm"
    .parameter "provider"
    .parameter "hasRSAdata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput v6, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->version:I

    .line 489
    iput v6, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signerversion:I

    .line 134
    iput-object p4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->provider:Ljava/lang/String;

    .line 137
    invoke-static {p3}, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->getAllowedDigests(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    .line 138
    iget-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 139
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    const-string v5, "unknown.hash.algorithm.1"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v8

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_0
    aget-object v4, p2, v8

    check-cast v4, Ljava/security/cert/X509Certificate;

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    .line 143
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->certs:Ljava/util/Collection;

    .line 144
    move-object v0, p2

    .local v0, arr$:[Ljava/security/cert/Certificate;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 145
    .local v1, element:Ljava/security/cert/Certificate;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v1           #element:Ljava/security/cert/Certificate;
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestalgos:Ljava/util/Set;

    .line 151
    iget-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestalgos:Ljava/util/Set;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    if-eqz p1, :cond_2

    .line 155
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    .line 156
    iget-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    const-string v5, "RSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 157
    const-string v4, "1.2.840.113549.1.1.1"

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    .line 168
    :cond_2
    :goto_1
    if-eqz p5, :cond_4

    .line 169
    new-array v4, v8, [B

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    .line 170
    if-eqz p4, :cond_3

    const-string v4, "SunPKCS11"

    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    .line 177
    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 178
    if-nez p4, :cond_9

    .line 179
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    .line 183
    :goto_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v4, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 185
    :cond_5
    return-void

    .line 159
    :cond_6
    iget-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    const-string v5, "DSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 160
    const-string v4, "1.2.840.10040.4.1"

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    goto :goto_1

    .line 163
    :cond_7
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    const-string v5, "unknown.key.algorithm.1"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_8
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    goto :goto_2

    .line 181
    :cond_9
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    goto :goto_3
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .parameter "contentsKey"
    .parameter "provider"

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;-><init>([BZLjava/lang/String;)V

    .line 226
    return-void
.end method

.method public constructor <init>([BZLjava/lang/String;)V
    .locals 50
    .parameter "contentsKey"
    .parameter "tsp"
    .parameter "provider"

    .prologue
    .line 236
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->version:I

    .line 489
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signerversion:I

    .line 237
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->isTsp:Z

    .line 239
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->provider:Ljava/lang/String;

    .line 240
    new-instance v10, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v44, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v44

    invoke-direct {v10, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .local v10, din:Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_1
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v24

    .line 253
    .local v24, pkcs:Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_start_2
    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move/from16 v44, v0

    if-nez v44, :cond_0

    .line 254
    new-instance v44, Ljava/lang/IllegalArgumentException;

    const-string v45, "not.a.valid.pkcs.7.object.not.a.sequence"

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    invoke-static/range {v45 .. v46}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v44
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 395
    .end local v10           #din:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v24           #pkcs:Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v11

    .line 396
    .local v11, e:Ljava/lang/Exception;
    new-instance v44, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v44

    invoke-direct {v0, v11}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v44

    .line 250
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v10       #din:Lorg/bouncycastle/asn1/ASN1InputStream;
    :catch_1
    move-exception v11

    .line 251
    .local v11, e:Ljava/io/IOException;
    :try_start_3
    new-instance v44, Ljava/lang/IllegalArgumentException;

    const-string v45, "can.t.decode.pkcs7signeddata.object"

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    invoke-static/range {v45 .. v46}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 256
    .end local v11           #e:Ljava/io/IOException;
    .restart local v24       #pkcs:Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_0
    move-object/from16 v0, v24

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v34, v0

    .line 257
    .local v34, signedData:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v44, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v23

    check-cast v23, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 258
    .local v23, objId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual/range {v23 .. v23}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v44

    const-string v45, "1.2.840.113549.1.7.2"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_1

    .line 259
    new-instance v44, Ljava/lang/IllegalArgumentException;

    const-string v45, "not.a.valid.pkcs.7.object.not.signed.data"

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    invoke-static/range {v45 .. v46}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 260
    :cond_1
    const/16 v44, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 269
    .local v6, content:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/math/BigInteger;->intValue()I

    move-result v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->version:I

    .line 272
    new-instance v44, Ljava/util/HashSet;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestalgos:Ljava/util/Set;

    .line 273
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v12

    .line 274
    .local v12, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/bouncycastle/asn1/ASN1Sequence;>;"
    :goto_0
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v44

    if-eqz v44, :cond_2

    .line 275
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 276
    .local v27, s:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v44, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v22

    check-cast v22, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 277
    .local v22, o:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestalgos:Ljava/util/Set;

    move-object/from16 v44, v0

    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v45

    invoke-interface/range {v44 .. v45}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    .end local v22           #o:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v27           #s:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_2
    new-instance v9, Lorg/bouncycastle/jce/provider/X509CertParser;

    invoke-direct {v9}, Lorg/bouncycastle/jce/provider/X509CertParser;-><init>()V

    .line 282
    .local v9, cr:Lorg/bouncycastle/jce/provider/X509CertParser;
    new-instance v44, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v44

    invoke-virtual {v9, v0}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineInit(Ljava/io/InputStream;)V

    .line 283
    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineReadAll()Ljava/util/Collection;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->certs:Ljava/util/Collection;

    .line 286
    const/16 v44, 0x2

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v25

    check-cast v25, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 287
    .local v25, rsaData:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v25 .. v25}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_3

    .line 288
    const/16 v44, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v26

    check-cast v26, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 289
    .local v26, rsaDataContent:Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v26 .. v26}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    .line 293
    .end local v26           #rsaDataContent:Lorg/bouncycastle/asn1/ASN1OctetString;
    :cond_3
    const/16 v20, 0x3

    .line 294
    .local v20, next:I
    :goto_1
    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    move-object/from16 v0, v44

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move/from16 v44, v0

    if-eqz v44, :cond_4

    .line 295
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 296
    :cond_4
    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v36

    check-cast v36, Lorg/bouncycastle/asn1/ASN1Set;

    .line 297
    .local v36, signerInfos:Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual/range {v36 .. v36}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_5

    .line 298
    new-instance v44, Ljava/lang/IllegalArgumentException;

    const-string v45, "this.pkcs.7.object.has.multiple.signerinfos.only.one.is.supported.at.this.time"

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    invoke-static/range {v45 .. v46}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 299
    :cond_5
    const/16 v44, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v35

    check-cast v35, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 306
    .local v35, signerInfo:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v44, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/math/BigInteger;->intValue()I

    move-result v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signerversion:I

    .line 308
    const/16 v44, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    check-cast v17, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 309
    .local v17, issuerAndSerialNumber:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v16, Lorg/bouncycastle/jce/X509Principal;

    const/16 v44, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v44

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    .line 310
    .local v16, issuer:Lorg/bouncycastle/jce/X509Principal;
    const/16 v44, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v31

    .line 311
    .local v31, serialNumber:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->certs:Ljava/util/Collection;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/Certificate;

    .line 312
    .local v13, element:Ljava/security/cert/Certificate;
    move-object v0, v13

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    .line 313
    .local v5, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_6

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v44

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_6

    .line 314
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    .line 318
    .end local v5           #cert:Ljava/security/cert/X509Certificate;
    .end local v13           #element:Ljava/security/cert/Certificate;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v44, v0

    if-nez v44, :cond_8

    .line 319
    new-instance v44, Ljava/lang/IllegalArgumentException;

    const-string v45, "can.t.find.signing.certificate.with.serial.1"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/jce/X509Principal;->getName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " / "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const/16 v49, 0x10

    move-object/from16 v0, v31

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 322
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCertificateChain()V

    .line 323
    const/16 v44, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    .line 324
    const/16 v20, 0x3

    .line 325
    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    move-object/from16 v0, v44

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move/from16 v44, v0

    if-eqz v44, :cond_16

    .line 326
    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v39

    check-cast v39, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 327
    .local v39, tagsig:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    const/16 v44, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v37

    .line 328
    .local v37, sseq:Lorg/bouncycastle/asn1/ASN1Set;
    const-string v44, "DER"

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sigAttr:[B

    .line 330
    const/16 v19, 0x0

    .local v19, k:I
    :goto_2
    invoke-virtual/range {v37 .. v37}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v44

    move/from16 v0, v19

    move/from16 v1, v44

    if-ge v0, v1, :cond_d

    .line 331
    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v28

    check-cast v28, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 332
    .local v28, seq2:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v44, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v44

    const-string v45, "1.2.840.113549.1.9.4"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_a

    .line 333
    const/16 v44, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v32

    check-cast v32, Lorg/bouncycastle/asn1/ASN1Set;

    .line 334
    .local v32, set:Lorg/bouncycastle/asn1/ASN1Set;
    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAttr:[B

    .line 330
    .end local v32           #set:Lorg/bouncycastle/asn1/ASN1Set;
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 336
    :cond_a
    const/16 v44, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v44

    const-string v45, "1.2.840.113583.1.1.8"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_9

    .line 337
    const/16 v44, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v33

    check-cast v33, Lorg/bouncycastle/asn1/ASN1Set;

    .line 338
    .local v33, setout:Lorg/bouncycastle/asn1/ASN1Set;
    const/16 v44, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v30

    check-cast v30, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 339
    .local v30, seqout:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v18, 0x0

    .local v18, j:I
    :goto_3
    invoke-virtual/range {v30 .. v30}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v44

    move/from16 v0, v18

    move/from16 v1, v44

    if-ge v0, v1, :cond_9

    .line 340
    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v40

    check-cast v40, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 341
    .local v40, tg:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual/range {v40 .. v40}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v44

    if-nez v44, :cond_b

    .line 342
    invoke-virtual/range {v40 .. v40}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v29

    check-cast v29, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 343
    .local v29, seqin:Lorg/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->findCRL(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 345
    .end local v29           #seqin:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_b
    invoke-virtual/range {v40 .. v40}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_c

    .line 346
    invoke-virtual/range {v40 .. v40}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v29

    check-cast v29, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 347
    .restart local v29       #seqin:Lorg/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->findOcsp(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 339
    .end local v29           #seqin:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 352
    .end local v18           #j:I
    .end local v28           #seq2:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v30           #seqout:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v33           #setout:Lorg/bouncycastle/asn1/ASN1Set;
    .end local v40           #tg:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAttr:[B

    move-object/from16 v44, v0

    if-nez v44, :cond_e

    .line 353
    new-instance v44, Ljava/lang/IllegalArgumentException;

    const-string v45, "authenticated.attribute.is.missing.the.digest"

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    invoke-static/range {v45 .. v46}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 354
    :cond_e
    add-int/lit8 v20, v20, 0x1

    move/from16 v21, v20

    .line 356
    .end local v19           #k:I
    .end local v20           #next:I
    .end local v37           #sseq:Lorg/bouncycastle/asn1/ASN1Set;
    .end local v39           #tagsig:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .local v21, next:I
    :goto_4
    add-int/lit8 v20, v21, 0x1

    .end local v21           #next:I
    .restart local v20       #next:I
    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    .line 357
    add-int/lit8 v21, v20, 0x1

    .end local v20           #next:I
    .restart local v21       #next:I
    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    check-cast v44, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B

    .line 358
    invoke-virtual/range {v35 .. v35}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_f

    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    move-object/from16 v0, v44

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move/from16 v44, v0

    if-eqz v44, :cond_f

    .line 359
    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v38

    check-cast v38, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 360
    .local v38, taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    const/16 v44, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v43

    .line 361
    .local v43, unat:Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v3, Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-object/from16 v0, v43

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 362
    .local v3, attble:Lorg/bouncycastle/asn1/cms/AttributeTable;
    sget-object v44, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signatureTimeStampToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v42

    .line 363
    .local v42, ts:Lorg/bouncycastle/asn1/cms/Attribute;
    if-eqz v42, :cond_f

    invoke-virtual/range {v42 .. v42}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v44

    if-lez v44, :cond_f

    .line 364
    invoke-virtual/range {v42 .. v42}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    .line 365
    .local v4, attributeValues:Lorg/bouncycastle/asn1/ASN1Set;
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v41

    .line 366
    .local v41, tokenSequence:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v7, Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-object/from16 v0, v41

    invoke-direct {v7, v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 367
    .local v7, contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v44, Lorg/bouncycastle/tsp/TimeStampToken;

    move-object/from16 v0, v44

    invoke-direct {v0, v7}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    .line 370
    .end local v3           #attble:Lorg/bouncycastle/asn1/cms/AttributeTable;
    .end local v4           #attributeValues:Lorg/bouncycastle/asn1/ASN1Set;
    .end local v7           #contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v38           #taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v41           #tokenSequence:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v42           #ts:Lorg/bouncycastle/asn1/cms/Attribute;
    .end local v43           #unat:Lorg/bouncycastle/asn1/ASN1Set;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->isTsp:Z

    move/from16 v44, v0

    if-eqz v44, :cond_10

    .line 371
    new-instance v8, Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-object/from16 v0, v34

    invoke-direct {v8, v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 372
    .local v8, contentInfoTsp:Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v44, Lorg/bouncycastle/tsp/TimeStampToken;

    move-object/from16 v0, v44

    invoke-direct {v0, v8}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v15

    .line 374
    .local v15, info:Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    invoke-virtual {v15}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, algOID:Ljava/lang/String;
    invoke-static {v2}, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    .line 398
    .end local v2           #algOID:Ljava/lang/String;
    .end local v8           #contentInfoTsp:Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v15           #info:Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    :goto_5
    return-void

    .line 378
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    move-object/from16 v44, v0

    if-nez v44, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAttr:[B

    move-object/from16 v44, v0

    if-eqz v44, :cond_13

    .line 379
    :cond_11
    if-eqz p3, :cond_12

    const-string v44, "SunPKCS11"

    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_14

    .line 380
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->encContDigest:Ljava/security/MessageDigest;

    .line 388
    :cond_13
    :goto_6
    if-nez p3, :cond_15

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    .line 392
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    goto :goto_5

    .line 384
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->encContDigest:Ljava/security/MessageDigest;

    goto :goto_6

    .line 391
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    .end local v21           #next:I
    .restart local v20       #next:I
    :cond_16
    move/from16 v21, v20

    .end local v20           #next:I
    .restart local v21       #next:I
    goto/16 :goto_4
.end method

.method public constructor <init>([B[BLjava/lang/String;)V
    .locals 5
    .parameter "contentsKey"
    .parameter "certsKey"
    .parameter "provider"

    .prologue
    const/4 v3, 0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->version:I

    .line 489
    iput v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signerversion:I

    .line 198
    :try_start_0
    iput-object p3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->provider:Ljava/lang/String;

    .line 199
    new-instance v0, Lorg/bouncycastle/jce/provider/X509CertParser;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/X509CertParser;-><init>()V

    .line 200
    .local v0, cr:Lorg/bouncycastle/jce/provider/X509CertParser;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineInit(Ljava/io/InputStream;)V

    .line 201
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineReadAll()Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->certs:Ljava/util/Collection;

    .line 202
    iget-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->certs:Ljava/util/Collection;

    iput-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCerts:Ljava/util/Collection;

    .line 203
    iget-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    iput-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    .line 204
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->crls:Ljava/util/Collection;

    .line 205
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 206
    .local v2, in:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B

    .line 207
    if-nez p3, :cond_0

    .line 208
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 216
    return-void

    .line 210
    :cond_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v0           #cr:Lorg/bouncycastle/jce/provider/X509CertParser;
    .end local v2           #in:Lorg/bouncycastle/asn1/ASN1InputStream;
    :catch_0
    move-exception v1

    .line 214
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method private buildUnauthenticatedAttributes([B)Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 6
    .parameter "timeStampToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 811
    if-nez p1, :cond_0

    .line 812
    const/4 v3, 0x0

    .line 826
    :goto_0
    return-object v3

    .line 815
    :cond_0
    const-string v0, "1.2.840.113549.1.9.16.2.14"

    .line 817
    .local v0, ID_TIME_STAMP_TOKEN:Ljava/lang/String;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 818
    .local v2, tempstream:Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 820
    .local v3, unauthAttributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 821
    .local v4, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 822
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 823
    .local v1, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 825
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method

.method private findCRL(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .parameter "seq"

    .prologue
    .line 1128
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->crls:Ljava/util/Collection;

    .line 1129
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1130
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1131
    .local v0, ar:Ljava/io/ByteArrayInputStream;
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 1132
    .local v1, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 1133
    .local v2, crl:Ljava/security/cert/X509CRL;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->crls:Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1136
    .end local v0           #ar:Ljava/io/ByteArrayInputStream;
    .end local v1           #cf:Ljava/security/cert/CertificateFactory;
    .end local v2           #crl:Ljava/security/cert/X509CRL;
    .end local v3           #k:I
    :catch_0
    move-exception v4

    .line 1139
    :cond_0
    return-void
.end method

.method private findOcsp(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 9
    .parameter "seq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1186
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 1187
    const/4 v4, 0x0

    .line 1189
    .local v4, ret:Z
    :cond_0
    invoke-virtual {p1, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v6, :cond_2

    invoke-virtual {p1, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1214
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 1215
    .local v2, os:Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1216
    .local v0, inp:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v3

    .line 1217
    .local v3, resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    new-instance v6, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    invoke-direct {v6, v3}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V

    iput-object v6, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 1218
    .end local v0           #inp:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #os:Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v3           #resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    :cond_1
    :goto_0
    return-void

    .line 1193
    :cond_2
    const/4 v4, 0x1

    .line 1194
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1195
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v6, :cond_4

    .line 1196
    invoke-virtual {p1, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1197
    .restart local p1
    const/4 v4, 0x0

    .line 1211
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    goto :goto_0

    .line 1200
    :cond_4
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_5

    .line 1201
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 1202
    .local v5, tag:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v6, :cond_1

    .line 1203
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1204
    .restart local p1
    const/4 v4, 0x0

    .line 1205
    goto :goto_2

    .line 1194
    .end local v5           #tag:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getAuthenticatedAttributeSet([BLjava/util/Calendar;[BLjava/util/Collection;Z)Lorg/bouncycastle/asn1/DERSet;
    .locals 23
    .parameter "secondDigest"
    .parameter "signingTime"
    .parameter "ocsp"
    .parameter
    .parameter "cades"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Calendar;",
            "[B",
            "Ljava/util/Collection",
            "<[B>;Z)",
            "Lorg/bouncycastle/asn1/DERSet;"
        }
    .end annotation

    .prologue
    .line 877
    .local p4, crlBytes:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    :try_start_0
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 878
    .local v4, attribute:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v15, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 879
    .local v15, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v19, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v20, "1.2.840.113549.1.9.3"

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 880
    new-instance v19, Lorg/bouncycastle/asn1/DERSet;

    new-instance v20, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v21, "1.2.840.113549.1.7.1"

    invoke-direct/range {v20 .. v21}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 881
    new-instance v19, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 882
    new-instance v15, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v15           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 883
    .restart local v15       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v19, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v20, "1.2.840.113549.1.9.5"

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 884
    new-instance v19, Lorg/bouncycastle/asn1/DERSet;

    new-instance v20, Lorg/bouncycastle/asn1/DERUTCTime;

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/util/Date;)V

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 885
    new-instance v19, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 886
    new-instance v15, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v15           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 887
    .restart local v15       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v19, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v20, "1.2.840.113549.1.9.4"

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 888
    new-instance v19, Lorg/bouncycastle/asn1/DERSet;

    new-instance v20, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 889
    new-instance v19, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 890
    const/4 v10, 0x0

    .line 891
    .local v10, haveCrl:Z
    if-eqz p4, :cond_1

    .line 892
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 893
    .local v5, bCrl:[B
    if-eqz v5, :cond_0

    .line 894
    const/4 v10, 0x1

    .line 899
    .end local v5           #bCrl:[B
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_1
    if-nez p3, :cond_2

    if-eqz v10, :cond_7

    .line 900
    :cond_2
    new-instance v15, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v15           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 901
    .restart local v15       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v19, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v20, "1.2.840.113583.1.1.8"

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 903
    new-instance v13, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 905
    .local v13, revocationV:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    if-eqz v10, :cond_5

    .line 906
    new-instance v16, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 907
    .local v16, v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 908
    .restart local v5       #bCrl:[B
    if-eqz v5, :cond_3

    .line 910
    new-instance v14, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 911
    .local v14, t:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 950
    .end local v4           #attribute:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v5           #bCrl:[B
    .end local v10           #haveCrl:Z
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #revocationV:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v14           #t:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v15           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v16           #v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_0
    move-exception v9

    .line 951
    .local v9, e:Ljava/lang/Exception;
    new-instance v19, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v19

    .line 913
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v4       #attribute:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v10       #haveCrl:Z
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #revocationV:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v15       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v16       #v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_4
    :try_start_1
    new-instance v19, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/16 v20, 0x1

    const/16 v21, 0x0

    new-instance v22, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v19 .. v22}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 916
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v16           #v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_5
    if-eqz p3, :cond_6

    .line 917
    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 918
    .local v8, doctet:Lorg/bouncycastle/asn1/DEROctetString;
    new-instance v18, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v18 .. v18}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 919
    .local v18, vo1:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v16, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 920
    .restart local v16       #v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v19, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 921
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 922
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Enumerated;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    .line 923
    .local v6, den:Lorg/bouncycastle/asn1/ASN1Enumerated;
    new-instance v17, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 924
    .local v17, v3:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 925
    new-instance v19, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/16 v20, 0x1

    const/16 v21, 0x0

    new-instance v22, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v19 .. v22}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 926
    new-instance v19, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual/range {v18 .. v19}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 927
    new-instance v19, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/16 v20, 0x1

    const/16 v21, 0x1

    new-instance v22, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v19 .. v22}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 930
    .end local v6           #den:Lorg/bouncycastle/asn1/ASN1Enumerated;
    .end local v8           #doctet:Lorg/bouncycastle/asn1/DEROctetString;
    .end local v16           #v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v17           #v3:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v18           #vo1:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_6
    new-instance v19, Lorg/bouncycastle/asn1/DERSet;

    new-instance v20, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 931
    new-instance v19, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 933
    .end local v13           #revocationV:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_7
    if-eqz p5, :cond_8

    .line 934
    new-instance v15, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v15           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 935
    .restart local v15       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v19, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v20, "1.2.840.113549.1.9.16.2.47"

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 937
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 938
    .local v2, aaV2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v19, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 939
    .local v3, algoId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    .line 941
    .local v12, md:Ljava/security/MessageDigest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 942
    .local v7, dig:[B
    new-instance v19, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 944
    new-instance v19, Lorg/bouncycastle/asn1/DERSet;

    new-instance v20, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v21, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v22, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct/range {v20 .. v21}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 945
    new-instance v19, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 948
    .end local v2           #aaV2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3           #algoId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v7           #dig:[B
    .end local v12           #md:Ljava/security/MessageDigest;
    :cond_8
    new-instance v19, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v19
.end method

.method private signCertificateChain()V
    .locals 7

    .prologue
    .line 1079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .local v0, cc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    iget-object v5, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1082
    .local v3, oc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1083
    iget-object v5, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1084
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1085
    add-int/lit8 v2, v2, -0x1

    .line 1082
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1089
    :cond_1
    const/4 v1, 0x1

    .line 1090
    .local v1, found:Z
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 1091
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1092
    .local v4, v:Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 1093
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1095
    :try_start_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->provider:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1096
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 1099
    :goto_3
    const/4 v1, 0x1

    .line 1100
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1104
    :catch_0
    move-exception v5

    .line 1093
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1098
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1108
    .end local v4           #v:Ljava/security/cert/X509Certificate;
    :cond_4
    iput-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCerts:Ljava/util/Collection;

    .line 1109
    return-void
.end method


# virtual methods
.method public getAuthenticatedAttributeBytes([BLjava/util/Calendar;[BLjava/util/Collection;Z)[B
    .locals 3
    .parameter "secondDigest"
    .parameter "signingTime"
    .parameter "ocsp"
    .parameter
    .parameter "cades"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Calendar;",
            "[B",
            "Ljava/util/Collection",
            "<[B>;Z)[B"
        }
    .end annotation

    .prologue
    .line 860
    .local p4, crlBytes:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getAuthenticatedAttributeSet([BLjava/util/Calendar;[BLjava/util/Collection;Z)Lorg/bouncycastle/asn1/DERSet;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/DERSet;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getCRLs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->crls:Ljava/util/Collection;

    return-object v0
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->certs:Ljava/util/Collection;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 3

    .prologue
    .line 553
    iget-object v1, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/security/EncryptionAlgorithms;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, dea:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    .line 557
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDigestAlgorithmOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithmOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedPKCS1()[B
    .locals 5

    .prologue
    .line 631
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->externalDigest:[B

    if-eqz v3, :cond_0

    .line 632
    iget-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->externalDigest:[B

    iput-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B

    .line 635
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 637
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 638
    .local v1, dout:Lorg/bouncycastle/asn1/ASN1OutputStream;
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 639
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->close()V

    .line 641
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 634
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dout:Lorg/bouncycastle/asn1/ASN1OutputStream;
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 643
    :catch_0
    move-exception v2

    .line 644
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public getEncodedPKCS7()[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 655
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getEncodedPKCS7([BLjava/util/Calendar;Lcom/itextpdf/text/pdf/security/TSAClient;[BLjava/util/Collection;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPKCS7([BLjava/util/Calendar;)[B
    .locals 7
    .parameter "secondDigest"
    .parameter "signingTime"

    .prologue
    const/4 v3, 0x0

    .line 666
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getEncodedPKCS7([BLjava/util/Calendar;Lcom/itextpdf/text/pdf/security/TSAClient;[BLjava/util/Collection;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPKCS7([BLjava/util/Calendar;Lcom/itextpdf/text/pdf/security/TSAClient;[BLjava/util/Collection;Z)[B
    .locals 29
    .parameter "secondDigest"
    .parameter "signingTime"
    .parameter "tsaClient"
    .parameter "ocsp"
    .parameter
    .parameter "cades"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Calendar;",
            "Lcom/itextpdf/text/pdf/security/TSAClient;",
            "[B",
            "Ljava/util/Collection",
            "<[B>;Z)[B"
        }
    .end annotation

    .prologue
    .line 681
    .local p5, crlBytes:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->externalDigest:[B

    if-eqz v3, :cond_1

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->externalDigest:[B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    if-eqz v3, :cond_0

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->externalRSAdata:[B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    .line 700
    :cond_0
    :goto_0
    new-instance v14, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 701
    .local v14, digestAlgorithms:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestalgos:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 702
    .local v17, element:Ljava/lang/String;
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 703
    .local v9, algos:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    check-cast v17, Ljava/lang/String;

    .end local v17           #element:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 704
    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {v9, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 705
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 796
    .end local v9           #algos:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v14           #digestAlgorithms:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v18           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v16

    .line 797
    .local v16, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 686
    .end local v16           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->externalRSAdata:[B

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    if-eqz v3, :cond_2

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->externalRSAdata:[B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    invoke-virtual {v3, v4}, Ljava/security/Signature;->update([B)V

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B

    goto :goto_0

    .line 692
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    if-eqz v3, :cond_3

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    .line 694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    invoke-virtual {v3, v4}, Ljava/security/Signature;->update([B)V

    .line 696
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B

    goto/16 :goto_0

    .line 709
    .restart local v14       #digestAlgorithms:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v24, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v24 .. v24}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 710
    .local v24, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "1.2.840.113549.1.7.1"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    if-eqz v3, :cond_5

    .line 712
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 713
    :cond_5
    new-instance v12, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 717
    .local v12, contentinfo:Lorg/bouncycastle/asn1/DERSequence;
    new-instance v24, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v24           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v24 .. v24}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 718
    .restart local v24       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/Certificate;

    .line 719
    .local v17, element:Ljava/security/cert/Certificate;
    new-instance v20, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    check-cast v17, Ljava/security/cert/X509Certificate;

    .end local v17           #element:Ljava/security/cert/Certificate;
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 720
    .local v20, tempstream:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_2

    .line 723
    .end local v20           #tempstream:Lorg/bouncycastle/asn1/ASN1InputStream;
    :cond_6
    new-instance v13, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 727
    .local v13, dercertificates:Lorg/bouncycastle/asn1/DERSet;
    new-instance v19, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 731
    .local v19, signerinfo:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signerversion:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 733
    new-instance v24, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v24           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v24 .. v24}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 734
    .restart local v24       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/security/CertificateInfo;->getIssuer([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 735
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 736
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 739
    new-instance v24, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v24           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v24 .. v24}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 740
    .restart local v24       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 741
    new-instance v3, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 742
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 745
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 746
    new-instance v26, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getAuthenticatedAttributeSet([BLjava/util/Calendar;[BLjava/util/Collection;Z)Lorg/bouncycastle/asn1/DERSet;

    move-result-object v3

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 749
    :cond_7
    new-instance v24, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v24           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v24 .. v24}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 750
    .restart local v24       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 751
    new-instance v3, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 752
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 755
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 760
    if-eqz p3, :cond_8

    .line 761
    invoke-interface/range {p3 .. p3}, Lcom/itextpdf/text/pdf/security/TSAClient;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v21

    .line 762
    .local v21, tsImprint:[B
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/itextpdf/text/pdf/security/TSAClient;->getTimeStampToken([B)[B

    move-result-object v22

    .line 763
    .local v22, tsToken:[B
    if-eqz v22, :cond_8

    .line 764
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->buildUnauthenticatedAttributes([B)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v23

    .line 765
    .local v23, unauthAttributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    if-eqz v23, :cond_8

    .line 766
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v4, v5, v6}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 772
    .end local v21           #tsImprint:[B
    .end local v22           #tsToken:[B
    .end local v23           #unauthAttributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_8
    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 773
    .local v11, body:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->version:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(I)V

    invoke-virtual {v11, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 774
    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v3, v14}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v11, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 775
    invoke-virtual {v11, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 776
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v13}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v11, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 779
    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v11, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 784
    new-instance v25, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v25 .. v25}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 785
    .local v25, whole:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "1.2.840.113549.1.7.2"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 786
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 788
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 790
    .local v10, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v15, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v15, v10}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 791
    .local v15, dout:Lorg/bouncycastle/asn1/ASN1OutputStream;
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 792
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ASN1OutputStream;->close()V

    .line 794
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOcsp()Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSignCertificateChain()[Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCerts:Ljava/util/Collection;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCerts:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getSignDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSignName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigningCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getSigningInfoVersion()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signerversion:I

    return v0
.end method

.method public getTimeStampDate()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 1251
    iget-object v2, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    if-nez v2, :cond_0

    .line 1252
    const/4 v0, 0x0

    .line 1256
    :goto_0
    return-object v0

    .line 1253
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1254
    .local v0, cal:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v1

    .line 1255
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->version:I

    return v0
.end method

.method public isRevocationValid()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 1161
    iget-object v7, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    if-nez v7, :cond_0

    move v7, v8

    .line 1177
    :goto_0
    return v7

    .line 1163
    :cond_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signCerts:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v9, 0x2

    if-ge v7, v9, :cond_1

    move v7, v8

    .line 1164
    goto :goto_0

    .line 1166
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getSignCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/X509Certificate;

    move-object v0, v7

    check-cast v0, [Ljava/security/cert/X509Certificate;

    move-object v2, v0

    .line 1167
    .local v2, cs:[Ljava/security/cert/X509Certificate;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    invoke-virtual {v7}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v5, v7, v9

    .line 1168
    .local v5, sr:Lorg/bouncycastle/cert/ocsp/SingleResp;
    invoke-virtual {v5}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertID()Lorg/bouncycastle/cert/ocsp/CertificateID;

    move-result-object v1

    .line 1169
    .local v1, cid:Lorg/bouncycastle/cert/ocsp/CertificateID;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getSigningCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 1170
    .local v4, sigcer:Ljava/security/cert/X509Certificate;
    const/4 v7, 0x1

    aget-object v3, v2, v7

    .line 1171
    .local v3, isscer:Ljava/security/cert/X509Certificate;
    new-instance v6, Lorg/bouncycastle/cert/ocsp/CertificateID;

    new-instance v7, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v7}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v7

    sget-object v9, Lorg/bouncycastle/cert/ocsp/CertificateID;->HASH_SHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v7, v9}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v7

    new-instance v9, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v9, v3}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v6, v7, v9, v10}, Lorg/bouncycastle/cert/ocsp/CertificateID;-><init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V

    .line 1173
    .local v6, tis:Lorg/bouncycastle/cert/ocsp/CertificateID;
    invoke-virtual {v6, v1}, Lorg/bouncycastle/cert/ocsp/CertificateID;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 1175
    .end local v1           #cid:Lorg/bouncycastle/cert/ocsp/CertificateID;
    .end local v2           #cs:[Ljava/security/cert/X509Certificate;
    .end local v3           #isscer:Ljava/security/cert/X509Certificate;
    .end local v4           #sigcer:Ljava/security/cert/X509Certificate;
    .end local v5           #sr:Lorg/bouncycastle/cert/ocsp/SingleResp;
    .end local v6           #tis:Lorg/bouncycastle/cert/ocsp/CertificateID;
    :catch_0
    move-exception v7

    move v7, v8

    .line 1177
    goto :goto_0
.end method

.method public isTsp()Z
    .locals 1

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->isTsp:Z

    return v0
.end method

.method public setExternalDigest([B[BLjava/lang/String;)V
    .locals 5
    .parameter "digest"
    .parameter "RSAdata"
    .parameter "digestEncryptionAlgorithm"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->externalDigest:[B

    .line 582
    iput-object p2, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->externalRSAdata:[B

    .line 583
    if-eqz p3, :cond_0

    .line 584
    const-string v0, "RSA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    const-string v0, "1.2.840.113549.1.1.1"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    const-string v0, "DSA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    const-string v0, "1.2.840.10040.4.1"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    goto :goto_0

    .line 591
    :cond_2
    new-instance v0, Lcom/itextpdf/text/ExceptionConverter;

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "unknown.key.algorithm.1"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 464
    iput-object p1, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->location:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->reason:Ljava/lang/String;

    .line 449
    return-void
.end method

.method public setSignDate(Ljava/util/Calendar;)V
    .locals 0
    .parameter "signDate"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signDate:Ljava/util/Calendar;

    .line 481
    return-void
.end method

.method public setSignName(Ljava/lang/String;)V
    .locals 0
    .parameter "signName"

    .prologue
    .line 432
    iput-object p1, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->signName:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public update([BII)V
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAttr:[B

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->isTsp:Z

    if-eqz v0, :cond_1

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 621
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    goto :goto_0
.end method

.method public verify()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 980
    iget-boolean v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->verified:Z

    if-eqz v12, :cond_0

    .line 981
    iget-boolean v10, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->verifyResult:Z

    .line 1013
    :goto_0
    return v10

    .line 982
    :cond_0
    iget-boolean v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->isTsp:Z

    if-eqz v12, :cond_1

    .line 983
    iget-object v10, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v10}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v5

    .line 984
    .local v5, info:Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    invoke-virtual {v5}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v4

    .line 985
    .local v4, imprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;
    iget-object v10, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 986
    .local v6, md:[B
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v3

    .line 987
    .local v3, imphashed:[B
    invoke-static {v6, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    iput-boolean v10, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->verifyResult:Z

    .line 1012
    .end local v3           #imphashed:[B
    .end local v4           #imprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;
    .end local v5           #info:Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    .end local v6           #md:[B
    :goto_1
    iput-boolean v11, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->verified:Z

    .line 1013
    iget-boolean v10, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->verifyResult:Z

    goto :goto_0

    .line 990
    :cond_1
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sigAttr:[B

    if-eqz v12, :cond_6

    .line 991
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 992
    .local v7, msgDigestBytes:[B
    const/4 v9, 0x1

    .line 993
    .local v9, verifyRSAdata:Z
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sigAttr:[B

    invoke-virtual {v12, v13}, Ljava/security/Signature;->update([B)V

    .line 995
    const/4 v2, 0x0

    .line 996
    .local v2, encContDigestCompare:Z
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    if-eqz v12, :cond_2

    .line 997
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    invoke-static {v7, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    .line 998
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->encContDigest:Ljava/security/MessageDigest;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    invoke-virtual {v12, v13}, Ljava/security/MessageDigest;->update([B)V

    .line 999
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->encContDigest:Ljava/security/MessageDigest;

    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v12

    iget-object v13, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAttr:[B

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 1001
    :cond_2
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digestAttr:[B

    invoke-static {v7, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 1002
    .local v0, absentEncContDigestCompare:Z
    if-nez v0, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    move v1, v11

    .line 1003
    .local v1, concludingDigestCompare:Z
    :goto_2
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B

    invoke-virtual {v12, v13}, Ljava/security/Signature;->verify([B)Z

    move-result v8

    .line 1004
    .local v8, sigVerify:Z
    if-eqz v1, :cond_4

    if-eqz v8, :cond_4

    if-eqz v9, :cond_4

    move v10, v11

    :cond_4
    iput-boolean v10, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->verifyResult:Z

    goto :goto_1

    .end local v1           #concludingDigestCompare:Z
    .end local v8           #sigVerify:Z
    :cond_5
    move v1, v10

    .line 1002
    goto :goto_2

    .line 1007
    .end local v0           #absentEncContDigestCompare:Z
    .end local v2           #encContDigestCompare:Z
    .end local v7           #msgDigestBytes:[B
    .end local v9           #verifyRSAdata:Z
    :cond_6
    iget-object v10, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->RSAdata:[B

    if-eqz v10, :cond_7

    .line 1008
    iget-object v10, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/security/Signature;->update([B)V

    .line 1009
    :cond_7
    iget-object v10, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B

    invoke-virtual {v10, v12}, Ljava/security/Signature;->verify([B)Z

    move-result v10

    iput-boolean v10, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->verifyResult:Z

    goto :goto_1
.end method

.method public verifyTimestampImprint()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1023
    iget-object v6, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    if-nez v6, :cond_0

    .line 1024
    const/4 v5, 0x0

    .line 1031
    :goto_0
    return v5

    .line 1025
    :cond_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v6}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v3

    .line 1026
    .local v3, info:Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v2

    .line 1027
    .local v2, imprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;
    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, algOID:Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    iget-object v7, p0, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->digest:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 1029
    .local v4, md:[B
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v1

    .line 1030
    .local v1, imphashed:[B
    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    .line 1031
    .local v5, res:Z
    goto :goto_0
.end method
