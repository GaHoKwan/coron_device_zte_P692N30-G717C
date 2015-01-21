.class public Lcom/itextpdf/text/pdf/security/LtvVerification;
.super Ljava/lang/Object;
.source "LtvVerification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/security/LtvVerification$1;,
        Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;,
        Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;,
        Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateOption;,
        Lcom/itextpdf/text/pdf/security/LtvVerification$Level;
    }
.end annotation


# instance fields
.field private acroFields:Lcom/itextpdf/text/pdf/AcroFields;

.field private reader:Lcom/itextpdf/text/pdf/PdfReader;

.field private stp:Lcom/itextpdf/text/pdf/PdfStamper;

.field private used:Z

.field private validated:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;",
            ">;"
        }
    .end annotation
.end field

.field private writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfStamper;)V
    .locals 1
    .parameter "stp"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->validated:Ljava/util/Map;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->used:Z

    .line 153
    iput-object p1, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->stp:Lcom/itextpdf/text/pdf/PdfStamper;

    .line 154
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfStamper;->getWriter()Lcom/itextpdf/text/pdf/PdfWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 155
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfStamper;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 156
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfStamper;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    .line 157
    return-void
.end method

.method private static buildOCSPResponse([B)[B
    .locals 9
    .parameter "BasicOCSPResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 247
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 248
    .local v1, doctet:Lorg/bouncycastle/asn1/DEROctetString;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 249
    .local v3, v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v5, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 250
    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 251
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, v8}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    .line 252
    .local v0, den:Lorg/bouncycastle/asn1/ASN1Enumerated;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 253
    .local v4, v3:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 254
    new-instance v5, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v6, 0x1

    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v5, v6, v8, v7}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 255
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 256
    .local v2, seq:Lorg/bouncycastle/asn1/DERSequence;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v5

    return-object v5
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 7
    .parameter "bt"

    .prologue
    .line 274
    new-instance v2, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 275
    .local v2, buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 276
    .local v1, b:B
    invoke-virtual {v2, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->appendHex(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    .end local v1           #b:B
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private createDss()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/security/LtvVerification;->outputDss(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfArray;)V

    .line 358
    return-void
.end method

.method private static deleteOldReferences(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfArray;)V
    .locals 8
    .parameter "all"
    .parameter "toDelete"

    .prologue
    .line 337
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 354
    :cond_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfObject;

    .line 340
    .local v2, pi:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v2

    .line 342
    check-cast v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 343
    .local v3, pir:Lcom/itextpdf/text/pdf/PRIndirectReference;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 344
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 345
    .local v4, po:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v6

    if-nez v6, :cond_4

    .line 343
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move-object v5, v4

    .line 347
    check-cast v5, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 348
    .local v5, pod:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v6

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 349
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    .line 350
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private getSignatureHashKey(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 8
    .parameter "signatureName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v6, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v6, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureDictionary(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 261
    .local v3, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v2

    .line 262
    .local v2, contents:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfString;->getOriginalBytes()[B

    move-result-object v0

    .line 263
    .local v0, bc:[B
    const/4 v1, 0x0

    .line 264
    .local v1, bt:[B
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->ETSI_RFC3161:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    new-instance v4, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 266
    .local v4, din:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    .line 267
    .local v5, pkcs:Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v0

    .line 269
    .end local v4           #din:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v5           #pkcs:Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/text/pdf/security/LtvVerification;->hashBytesSha1([B)[B

    move-result-object v1

    .line 270
    new-instance v6, Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/security/LtvVerification;->convertToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    return-object v6
.end method

.method private static hashBytesSha1([B)[B
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 283
    .local v0, sh:Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method private outputDss(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfArray;)V
    .locals 15
    .parameter "dss"
    .parameter "vrim"
    .parameter "ocsps"
    .parameter "crls"
    .parameter "certs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 362
    .local v2, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->stp:Lcom/itextpdf/text/pdf/PdfStamper;

    invoke-virtual {v12, v2}, Lcom/itextpdf/text/pdf/PdfStamper;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 363
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PdfName;

    .line 364
    .local v10, vkey:Lcom/itextpdf/text/pdf/PdfName;
    new-instance v8, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 365
    .local v8, ocsp:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 366
    .local v4, crl:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 367
    .local v3, cert:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v11}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 368
    .local v11, vri:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;

    iget-object v12, v12, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;->crls:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 369
    .local v1, b:[B
    new-instance v9, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-direct {v9, v1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 370
    .local v9, ps:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress()V

    .line 371
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    .line 372
    .local v7, iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 373
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_1

    .line 375
    .end local v1           #b:[B
    .end local v7           #iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v9           #ps:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_0
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;

    iget-object v12, v12, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 376
    .restart local v1       #b:[B
    new-instance v9, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-direct {v9, v1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 377
    .restart local v9       #ps:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress()V

    .line 378
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    .line 379
    .restart local v7       #iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {v8, v7}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 380
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_2

    .line 382
    .end local v1           #b:[B
    .end local v7           #iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v9           #ps:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_1
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;

    iget-object v12, v12, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;->certs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 383
    .restart local v1       #b:[B
    new-instance v9, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-direct {v9, v1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 384
    .restart local v9       #ps:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress()V

    .line 385
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    .line 386
    .restart local v7       #iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 387
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_3

    .line 389
    .end local v1           #b:[B
    .end local v7           #iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v9           #ps:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_2
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 390
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->OCSP:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v14, 0x0

    invoke-virtual {v13, v8, v14}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 391
    :cond_3
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 392
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->CRL:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 393
    :cond_4
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 394
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->CERT:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v14, 0x0

    invoke-virtual {v13, v3, v14}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 395
    :cond_5
    iget-object v12, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 397
    .end local v3           #cert:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v4           #crl:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #ocsp:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v10           #vkey:Lcom/itextpdf/text/pdf/PdfName;
    .end local v11           #vri:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_6
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->VRI:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 399
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->OCSPS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 400
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 401
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->CRLS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v13, v0, v14}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 402
    :cond_8
    invoke-virtual/range {p5 .. p5}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v12

    if-lez v12, :cond_9

    .line 403
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->CERTS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v13, v0, v14}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 404
    :cond_9
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->DSS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 405
    return-void
.end method

.method private updateDss()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 305
    .local v6, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->stp:Lcom/itextpdf/text/pdf/PdfStamper;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfStamper;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 306
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DSS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 307
    .local v1, dss:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OCSPS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v3

    .line 308
    .local v3, ocsps:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CRLS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v4

    .line 309
    .local v4, crls:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CERTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v5

    .line 310
    .local v5, certs:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OCSPS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 311
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CRLS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 312
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CERTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 313
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VRI:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 315
    .local v2, vrim:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v2, :cond_1

    .line 316
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfName;

    .line 317
    .local v8, n:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v2, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 319
    .local v9, vri:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v9, :cond_0

    .line 320
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OCSP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/itextpdf/text/pdf/security/LtvVerification;->deleteOldReferences(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfArray;)V

    .line 321
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CRL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/itextpdf/text/pdf/security/LtvVerification;->deleteOldReferences(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfArray;)V

    .line 322
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/itextpdf/text/pdf/security/LtvVerification;->deleteOldReferences(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfArray;)V

    goto :goto_0

    .line 327
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #n:Lcom/itextpdf/text/pdf/PdfName;
    .end local v9           #vri:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    if-nez v3, :cond_2

    .line 328
    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v3           #ocsps:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 329
    .restart local v3       #ocsps:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_2
    if-nez v4, :cond_3

    .line 330
    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v4           #crls:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 331
    .restart local v4       #crls:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_3
    if-nez v5, :cond_4

    .line 332
    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v5           #certs:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .restart local v5       #certs:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_4
    move-object v0, p0

    .line 333
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/security/LtvVerification;->outputDss(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfArray;)V

    .line 334
    return-void
.end method


# virtual methods
.method public addVerification(Ljava/lang/String;Lcom/itextpdf/text/pdf/security/OcspClient;Lcom/itextpdf/text/pdf/security/CrlClient;Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateOption;Lcom/itextpdf/text/pdf/security/LtvVerification$Level;Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;)Z
    .locals 21
    .parameter "signatureName"
    .parameter "ocsp"
    .parameter "crl"
    .parameter "certOption"
    .parameter "level"
    .parameter "certInclude"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/security/LtvVerification;->used:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 173
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "verification.already.output"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 174
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/LtvVerification;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->verifySignature(Ljava/lang/String;)Lcom/itextpdf/text/pdf/security/PdfPKCS7;

    move-result-object v15

    .line 175
    .local v15, pk:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getSignCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v17

    .line 176
    .local v17, xc:[Ljava/security/cert/Certificate;
    new-instance v16, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;-><init>(Lcom/itextpdf/text/pdf/security/LtvVerification$1;)V

    .line 177
    .local v16, vd:Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;
    const/4 v12, 0x0

    .local v12, k:I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_7

    .line 178
    const/4 v14, 0x0

    .line 179
    .local v14, ocspEnc:[B
    if-eqz p2, :cond_1

    sget-object v18, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_1

    .line 180
    aget-object v18, v17, v12

    check-cast v18, Ljava/security/cert/X509Certificate;

    add-int/lit8 v19, v12, 0x1

    aget-object v19, v17, v19

    check-cast v19, Ljava/security/cert/X509Certificate;

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/security/OcspClient;->getEncoded(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v14

    .line 181
    if-eqz v14, :cond_1

    .line 182
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static {v14}, Lcom/itextpdf/text/pdf/security/LtvVerification;->buildOCSPResponse([B)[B

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1
    if-eqz p3, :cond_6

    sget-object v18, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    sget-object v18, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->OCSP_CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    sget-object v18, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->OCSP_OPTIONAL_CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    if-nez v14, :cond_6

    .line 185
    :cond_2
    aget-object v18, v17, v12

    check-cast v18, Ljava/security/cert/X509Certificate;

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/itextpdf/text/pdf/security/CrlClient;->getEncoded(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v8

    .line 186
    .local v8, cims:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    if-eqz v8, :cond_6

    .line 187
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 188
    .local v7, cim:[B
    const/4 v9, 0x0

    .line 189
    .local v9, dup:Z
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;->crls:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 190
    .local v5, b:[B
    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 191
    const/4 v9, 0x1

    .line 195
    .end local v5           #b:[B
    :cond_5
    if-nez v9, :cond_3

    .line 196
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;->crls:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 200
    .end local v7           #cim:[B
    .end local v8           #cims:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    .end local v9           #dup:Z
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_6
    sget-object v18, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateOption;->SIGNING_CERTIFICATE:Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateOption;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 203
    .end local v14           #ocspEnc:[B
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;->crls:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 204
    const/16 v18, 0x0

    .line 211
    :goto_2
    return v18

    .line 177
    .restart local v14       #ocspEnc:[B
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 205
    .end local v14           #ocspEnc:[B
    :cond_9
    sget-object v18, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;->YES:Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 206
    move-object/from16 v4, v17

    .local v4, arr$:[Ljava/security/cert/Certificate;
    array-length v13, v4

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v13, :cond_a

    aget-object v6, v4, v10

    .line 207
    .local v6, c:Ljava/security/cert/Certificate;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;->certs:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 210
    .end local v4           #arr$:[Ljava/security/cert/Certificate;
    .end local v6           #c:Ljava/security/cert/Certificate;
    .end local v10           #i$:I
    .end local v13           #len$:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/security/LtvVerification;->validated:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/security/LtvVerification;->getSignatureHashKey(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const/16 v18, 0x1

    goto :goto_2
.end method

.method public addVerification(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 8
    .parameter "signatureName"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<[B>;",
            "Ljava/util/Collection",
            "<[B>;",
            "Ljava/util/Collection",
            "<[B>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 224
    .local p2, ocsps:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    .local p3, crls:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    .local p4, certs:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    iget-boolean v5, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->used:Z

    if-eqz v5, :cond_0

    .line 225
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "verification.already.output"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 226
    :cond_0
    new-instance v4, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;-><init>(Lcom/itextpdf/text/pdf/security/LtvVerification$1;)V

    .line 227
    .local v4, vd:Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;
    if-eqz p2, :cond_1

    .line 228
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 229
    .local v3, ocsp:[B
    iget-object v5, v4, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    invoke-static {v3}, Lcom/itextpdf/text/pdf/security/LtvVerification;->buildOCSPResponse([B)[B

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ocsp:[B
    :cond_1
    if-eqz p3, :cond_2

    .line 233
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 234
    .local v1, crl:[B
    iget-object v5, v4, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;->crls:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    .end local v1           #crl:[B
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    if-eqz p4, :cond_3

    .line 238
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 239
    .local v0, cert:[B
    iget-object v5, v4, Lcom/itextpdf/text/pdf/security/LtvVerification$ValidationData;->certs:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 242
    .end local v0           #cert:[B
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->validated:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/security/LtvVerification;->getSignatureHashKey(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const/4 v5, 0x1

    return v5
.end method

.method public merge()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->used:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->used:Z

    .line 295
    iget-object v2, p0, Lcom/itextpdf/text/pdf/security/LtvVerification;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 296
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DSS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 297
    .local v1, dss:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v1, :cond_2

    .line 298
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/security/LtvVerification;->createDss()V

    goto :goto_0

    .line 300
    :cond_2
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/security/LtvVerification;->updateDss()V

    goto :goto_0
.end method
