.class public Lcom/itextpdf/text/pdf/security/CertificateInfo;
.super Ljava/lang/Object;
.source "CertificateInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/security/CertificateInfo$X509NameTokenizer;,
        Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    return-void
.end method

.method public static getIssuer([B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .parameter "enc"

    .prologue
    .line 336
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 337
    .local v1, in:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 338
    .local v2, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    :goto_0
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    .line 340
    .end local v1           #in:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public static getIssuerFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;
    .locals 3
    .parameter "cert"

    .prologue
    .line 322
    :try_start_0
    new-instance v2, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/security/CertificateInfo;->getIssuer([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getSubject([B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .parameter "enc"

    .prologue
    .line 368
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 369
    .local v1, in:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 370
    .local v2, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    :goto_0
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    .line 372
    .end local v1           #in:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public static getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;
    .locals 3
    .parameter "cert"

    .prologue
    .line 354
    :try_start_0
    new-instance v2, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/security/CertificateInfo;->getSubject([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
