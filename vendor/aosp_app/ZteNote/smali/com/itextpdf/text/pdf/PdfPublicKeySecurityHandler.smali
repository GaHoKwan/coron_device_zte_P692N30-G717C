.class public Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;
.super Ljava/lang/Object;
.source "PdfPublicKeySecurityHandler.java"


# static fields
.field static final SEED_LENGTH:I = 0x14


# instance fields
.field private recipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private seed:[B


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0x14

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->recipients:Ljava/util/ArrayList;

    .line 130
    new-array v3, v8, [B

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->seed:[B

    .line 135
    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 136
    .local v1, key:Ljavax/crypto/KeyGenerator;
    const/16 v3, 0xc0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 137
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 138
    .local v2, sk:Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->seed:[B

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1           #key:Ljavax/crypto/KeyGenerator;
    .end local v2           #sk:Ljavax/crypto/SecretKey;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->recipients:Ljava/util/ArrayList;

    .line 144
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-static {v8}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->seed:[B

    goto :goto_0
.end method

.method private computeRecipientInfo(Ljava/security/cert/X509Certificate;[B)Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;
    .locals 11
    .parameter "x509certificate"
    .parameter "abyte0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 257
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v8}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 259
    .local v1, asn1inputstream:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v7

    .line 261
    .local v7, tbscertificatestructure:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 262
    .local v0, algorithmidentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v5, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    .line 266
    .local v5, issuerandserialnumber:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 268
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v2, v8, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 273
    .local v3, deroctetstring:Lorg/bouncycastle/asn1/DEROctetString;
    new-instance v6, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    .line 274
    .local v6, recipId:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    new-instance v8, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-direct {v8, v6, v0, v3}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/RecipientIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v8

    .line 269
    .end local v3           #deroctetstring:Lorg/bouncycastle/asn1/DEROctetString;
    .end local v6           #recipId:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    :catch_0
    move-exception v4

    .line 270
    .local v4, e:Ljava/security/InvalidKeyException;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-virtual {v2, v10, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0
.end method

.method private createDERForRecipient([BLjava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 22
    .parameter "in"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 229
    const-string v18, "1.2.840.113549.3.2"

    .line 231
    .local v18, s:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/security/AlgorithmParameterGenerator;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v5

    .line 232
    .local v5, algorithmparametergenerator:Ljava/security/AlgorithmParameterGenerator;
    invoke-virtual {v5}, Ljava/security/AlgorithmParameterGenerator;->generateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v6

    .line 233
    .local v6, algorithmparameters:Ljava/security/AlgorithmParameters;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    const-string v20, "ASN.1"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/security/AlgorithmParameters;->getEncoded(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 234
    .local v8, bytearrayinputstream:Ljava/io/ByteArrayInputStream;
    new-instance v7, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 235
    .local v7, asn1inputstream:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    .line 236
    .local v11, derobject:Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-static/range {v18 .. v18}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v16

    .line 237
    .local v16, keygenerator:Ljavax/crypto/KeyGenerator;
    const/16 v20, 0x80

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 238
    invoke-virtual/range {v16 .. v16}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v19

    .line 239
    .local v19, secretkey:Ljavax/crypto/SecretKey;
    invoke-static/range {v18 .. v18}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v9

    .line 240
    .local v9, cipher:Ljavax/crypto/Cipher;
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 241
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 242
    .local v3, abyte1:[B
    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v12, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 243
    .local v12, deroctetstring:Lorg/bouncycastle/asn1/DEROctetString;
    invoke-interface/range {v19 .. v19}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->computeRecipientInfo(Ljava/security/cert/X509Certificate;[B)Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    move-result-object v17

    .line 244
    .local v17, keytransrecipientinfo:Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;
    new-instance v13, Lorg/bouncycastle/asn1/DERSet;

    new-instance v20, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;)V

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 245
    .local v13, derset:Lorg/bouncycastle/asn1/DERSet;
    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v20, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v4, v0, v11}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 246
    .local v4, algorithmidentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v14, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    sget-object v20, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v20

    invoke-direct {v14, v0, v4, v12}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 248
    .local v14, encryptedcontentinfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    new-instance v15, Lorg/bouncycastle/asn1/cms/EnvelopedData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v13, v14, v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 249
    .local v15, env:Lorg/bouncycastle/asn1/cms/EnvelopedData;
    new-instance v10, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v20, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v20

    invoke-direct {v10, v0, v15}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 251
    .local v10, contentinfo:Lorg/bouncycastle/asn1/cms/ContentInfo;
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/cms/ContentInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v20

    return-object v20
.end method


# virtual methods
.method public addRecipient(Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;)V
    .locals 1
    .parameter "recipient"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->recipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public getEncodedRecipient(I)[B
    .locals 22
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->recipients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;

    .line 166
    .local v14, recipient:Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->getCms()[B

    move-result-object v6

    .line 168
    .local v6, cms:[B
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 204
    .end local v6           #cms:[B
    .local v7, cms:[B
    :goto_0
    return-object v7

    .line 170
    .end local v7           #cms:[B
    .restart local v6       #cms:[B
    :cond_0
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    .line 171
    .local v5, certificate:Ljava/security/cert/Certificate;
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->getPermission()I

    move-result v12

    .line 172
    .local v12, permission:I
    const/4 v15, 0x3

    .line 174
    .local v15, revision:I
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    const/16 v18, -0xf40

    :goto_1
    or-int v12, v12, v18

    .line 175
    and-int/lit8 v12, v12, -0x4

    .line 176
    add-int/lit8 v12, v12, 0x1

    .line 178
    const/16 v18, 0x18

    move/from16 v0, v18

    new-array v13, v0, [B

    .line 180
    .local v13, pkcs7input:[B
    int-to-byte v11, v12

    .line 181
    .local v11, one:B
    shr-int/lit8 v18, v12, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 182
    .local v17, two:B
    shr-int/lit8 v18, v12, 0x10

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 183
    .local v16, three:B
    shr-int/lit8 v18, v12, 0x18

    move/from16 v0, v18

    int-to-byte v8, v0

    .line 185
    .local v8, four:B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->seed:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x14

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    const/16 v18, 0x14

    aput-byte v8, v13, v18

    .line 188
    const/16 v18, 0x15

    aput-byte v16, v13, v18

    .line 189
    const/16 v18, 0x16

    aput-byte v17, v13, v18

    .line 190
    const/16 v18, 0x17

    aput-byte v11, v13, v18

    .line 192
    check-cast v5, Ljava/security/cert/X509Certificate;

    .end local v5           #certificate:Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->createDERForRecipient([BLjava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    .line 194
    .local v10, obj:Lorg/bouncycastle/asn1/ASN1Primitive;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v9, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v9, v4}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 198
    .local v9, k:Lorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 200
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 202
    invoke-virtual {v14, v6}, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->setCms([B)V

    move-object v7, v6

    .line 204
    .end local v6           #cms:[B
    .restart local v7       #cms:[B
    goto :goto_0

    .line 174
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #cms:[B
    .end local v8           #four:B
    .end local v9           #k:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v10           #obj:Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v11           #one:B
    .end local v13           #pkcs7input:[B
    .end local v16           #three:B
    .end local v17           #two:B
    .restart local v5       #certificate:Ljava/security/cert/Certificate;
    .restart local v6       #cms:[B
    :cond_1
    const/16 v18, -0x40

    goto :goto_1
.end method

.method public getEncodedRecipients()Lcom/itextpdf/text/pdf/PdfArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 210
    .local v0, EncodedRecipients:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v1, 0x0

    .line 211
    .local v1, cms:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->recipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 213
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->getEncodedRecipient(I)[B

    move-result-object v1

    .line 214
    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, e:Ljava/security/GeneralSecurityException;
    const/4 v0, 0x0

    .line 219
    goto :goto_1

    .line 217
    .end local v2           #e:Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v2

    .line 218
    .local v2, e:Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_1

    .line 221
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    return-object v0
.end method

.method public getRecipientsSize()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->recipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getSeed()[B
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->seed:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
