.class public Lcom/itextpdf/text/pdf/security/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCRL(Ljava/lang/String;)Ljava/security/cert/CRL;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v2, 0x0

    .line 143
    :goto_0
    return-object v2

    .line 141
    :cond_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 142
    .local v1, is:Ljava/io/InputStream;
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 143
    .local v0, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCRL(Ljava/security/cert/X509Certificate;)Ljava/security/cert/CRL;
    .locals 1
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p0}, Lcom/itextpdf/text/pdf/security/CertificateUtil;->getCRLURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/security/CertificateUtil;->getCRL(Ljava/lang/String;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method public static getCRLURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 20
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    sget-object v18, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/security/CertificateUtil;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 107
    .local v16, obj:Lorg/bouncycastle/asn1/ASN1Primitive;
    :goto_0
    if-nez v16, :cond_0

    .line 108
    const/16 v18, 0x0

    .line 127
    :goto_1
    return-object v18

    .line 104
    .end local v16           #obj:Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v8

    .line 105
    .local v8, e:Ljava/io/IOException;
    const/16 v16, 0x0

    .restart local v16       #obj:Lorg/bouncycastle/asn1/ASN1Primitive;
    goto :goto_0

    .line 110
    .end local v8           #e:Ljava/io/IOException;
    :cond_0
    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v5

    .line 111
    .local v5, dist:Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v7

    .line 112
    .local v7, dists:[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    move-object v2, v7

    .local v2, arr$:[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    array-length v12, v2

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v2           #arr$:[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .local v11, i$:I
    :goto_2
    if-ge v11, v12, :cond_4

    aget-object v17, v2, v11

    .line 113
    .local v17, p:Lorg/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v6

    .line 114
    .local v6, distributionPointName:Lorg/bouncycastle/asn1/x509/DistributionPointName;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v18

    if-eqz v18, :cond_2

    .line 112
    .end local v11           #i$:I
    :cond_1
    add-int/lit8 v10, v11, 0x1

    .restart local v10       #i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto :goto_2

    .line 117
    :cond_2
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 118
    .local v9, generalNames:Lorg/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v15

    .line 119
    .local v15, names:[Lorg/bouncycastle/asn1/x509/GeneralName;
    move-object v3, v15

    .local v3, arr$:[Lorg/bouncycastle/asn1/x509/GeneralName;
    array-length v13, v3

    .local v13, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_3
    if-ge v10, v13, :cond_1

    aget-object v14, v3, v10

    .line 120
    .local v14, name:Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 119
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 123
    :cond_3
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/GeneralName;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v18

    check-cast v18, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v4

    .line 124
    .local v4, derStr:Lorg/bouncycastle/asn1/DERIA5String;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    .line 127
    .end local v3           #arr$:[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v4           #derStr:Lorg/bouncycastle/asn1/DERIA5String;
    .end local v6           #distributionPointName:Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v9           #generalNames:Lorg/bouncycastle/asn1/x509/GeneralNames;
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v14           #name:Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v15           #names:[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v17           #p:Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v11       #i$:I
    :cond_4
    const/16 v18, 0x0

    goto :goto_1
.end method

.method private static getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5
    .parameter "certificate"
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 221
    .local v1, bytes:[B
    if-nez v1, :cond_0

    .line 222
    const/4 v3, 0x0

    .line 227
    :goto_0
    return-object v3

    .line 224
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 225
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 226
    .local v2, octs:Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 227
    .restart local v0       #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    goto :goto_0
.end method

.method public static getOCSPURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 12
    .parameter "certificate"

    .prologue
    const/4 v9, 0x0

    .line 157
    :try_start_0
    sget-object v10, Lorg/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/itextpdf/text/pdf/security/CertificateUtil;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    .line 158
    .local v8, obj:Lorg/bouncycastle/asn1/ASN1Primitive;
    if-nez v8, :cond_1

    move-object v3, v9

    .line 184
    .end local v8           #obj:Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_0
    :goto_0
    return-object v3

    .line 161
    .restart local v8       #obj:Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    move-object v0, v8

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v2, v0

    .line 162
    .local v2, AccessDescriptions:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    if-ge v6, v10, :cond_4

    .line 163
    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 164
    .local v1, AccessDescription:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    .line 162
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 167
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    instance-of v10, v10, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v10, :cond_2

    .line 168
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 169
    .local v7, id:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const-string v10, "1.3.6.1.5.5.7.48.1"

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 170
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 171
    .local v4, description:Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-static {v4}, Lcom/itextpdf/text/pdf/security/CertificateUtil;->getStringFromGeneralName(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, AccessLocation:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 173
    const-string v3, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v1           #AccessDescription:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v2           #AccessDescriptions:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v3           #AccessLocation:Ljava/lang/String;
    .end local v4           #description:Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v6           #i:I
    .end local v7           #id:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v8           #obj:Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v5

    .local v5, e:Ljava/io/IOException;
    move-object v3, v9

    .line 182
    goto :goto_0

    .end local v5           #e:Ljava/io/IOException;
    .restart local v2       #AccessDescriptions:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v6       #i:I
    .restart local v8       #obj:Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_4
    move-object v3, v9

    .line 184
    goto :goto_0
.end method

.method private static getStringFromGeneralName(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;
    .locals 4
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 238
    .local v0, taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static getTSAURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 8
    .parameter "certificate"

    .prologue
    const/4 v6, 0x0

    .line 196
    const-string v7, "1.2.840.113583.1.1.9.1"

    invoke-virtual {p0, v7}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 197
    .local v3, der:[B
    if-nez v3, :cond_0

    .line 207
    :goto_0
    return-object v6

    .line 201
    :cond_0
    :try_start_0
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 202
    .local v1, asn1obj:Lorg/bouncycastle/asn1/ASN1Primitive;
    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/asn1/DEROctetString;

    move-object v5, v0

    .line 203
    .local v5, octets:Lorg/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 204
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 205
    .local v2, asn1seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/security/CertificateUtil;->getStringFromGeneralName(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 206
    .end local v1           #asn1obj:Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v2           #asn1seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v5           #octets:Lorg/bouncycastle/asn1/DEROctetString;
    :catch_0
    move-exception v4

    .line 207
    .local v4, e:Ljava/io/IOException;
    goto :goto_0
.end method
