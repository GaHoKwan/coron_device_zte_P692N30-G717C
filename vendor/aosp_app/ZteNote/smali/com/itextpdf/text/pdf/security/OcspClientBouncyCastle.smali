.class public Lcom/itextpdf/text/pdf/security/OcspClientBouncyCastle;
.super Ljava/lang/Object;
.source "OcspClientBouncyCastle.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/security/OcspClient;


# static fields
.field private static final LOGGER:Lcom/itextpdf/text/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/itextpdf/text/pdf/security/OcspClientBouncyCastle;

    invoke-static {v0}, Lcom/itextpdf/text/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/itextpdf/text/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/security/OcspClientBouncyCastle;->LOGGER:Lcom/itextpdf/text/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateOCSPRequest(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 8
    .parameter "issuerCert"
    .parameter "serialNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/io/IOException;,
            Lorg/bouncycastle/operator/OperatorException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 101
    new-instance v3, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v3}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 104
    new-instance v2, Lorg/bouncycastle/cert/ocsp/CertificateID;

    new-instance v3, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v3}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/cert/ocsp/CertificateID;->HASH_SHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v3, v4}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v4, p0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {v2, v3, v4, p1}, Lorg/bouncycastle/cert/ocsp/CertificateID;-><init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V

    .line 109
    .local v2, id:Lorg/bouncycastle/cert/ocsp/CertificateID;
    new-instance v1, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;-><init>()V

    .line 111
    .local v1, gen:Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    invoke-virtual {v1, v2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->addRequest(Lorg/bouncycastle/cert/ocsp/CertificateID;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;

    .line 113
    new-instance v0, Lorg/bouncycastle/asn1/x509/Extension;

    sget-object v3, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v3, v7, v4}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 114
    .local v0, ext:Lorg/bouncycastle/asn1/x509/Extension;
    new-instance v3, Lorg/bouncycastle/asn1/x509/Extensions;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/bouncycastle/asn1/x509/Extension;

    aput-object v0, v4, v7

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/Extensions;-><init>([Lorg/bouncycastle/asn1/x509/Extension;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->setRequestExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;

    .line 116
    invoke-virtual {v1}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->build()Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getEncoded(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .locals 17
    .parameter "checkCert"
    .parameter "rootCert"
    .parameter "url"

    .prologue
    .line 129
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 130
    :cond_0
    const/4 v14, 0x0

    .line 179
    :goto_0
    return-object v14

    .line 131
    :cond_1
    if-nez p3, :cond_2

    .line 132
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/text/pdf/security/CertificateUtil;->getOCSPURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p3

    .line 134
    :cond_2
    if-nez p3, :cond_3

    .line 135
    const/4 v14, 0x0

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/itextpdf/text/pdf/security/OcspClientBouncyCastle;->generateOCSPRequest(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object v9

    .line 137
    .local v9, request:Lorg/bouncycastle/cert/ocsp/OCSPReq;
    invoke-virtual {v9}, Lorg/bouncycastle/cert/ocsp/OCSPReq;->getEncoded()[B

    move-result-object v1

    .line 138
    .local v1, array:[B
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 139
    .local v13, urlt:Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 140
    .local v3, con:Ljava/net/HttpURLConnection;
    const-string v14, "Content-Type"

    const-string v15, "application/ocsp-request"

    invoke-virtual {v3, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v14, "Accept"

    const-string v15, "application/ocsp-response"

    invoke-virtual {v3, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 143
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 144
    .local v8, out:Ljava/io/OutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 145
    .local v4, dataOut:Ljava/io/DataOutputStream;
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 146
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 147
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 148
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    div-int/lit8 v14, v14, 0x64

    const/4 v15, 0x2

    if-eq v14, v15, :cond_5

    .line 149
    new-instance v14, Ljava/io/IOException;

    const-string v15, "invalid.http.response.1"

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1           #array:[B
    .end local v3           #con:Ljava/net/HttpURLConnection;
    .end local v4           #dataOut:Ljava/io/DataOutputStream;
    .end local v8           #out:Ljava/io/OutputStream;
    .end local v9           #request:Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .end local v13           #urlt:Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 176
    .local v5, ex:Ljava/lang/Exception;
    sget-object v14, Lcom/itextpdf/text/pdf/security/OcspClientBouncyCastle;->LOGGER:Lcom/itextpdf/text/log/Logger;

    sget-object v15, Lcom/itextpdf/text/log/Level;->ERROR:Lcom/itextpdf/text/log/Level;

    invoke-interface {v14, v15}, Lcom/itextpdf/text/log/Logger;->isLogging(Lcom/itextpdf/text/log/Level;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 177
    sget-object v14, Lcom/itextpdf/text/pdf/security/OcspClientBouncyCastle;->LOGGER:Lcom/itextpdf/text/log/Logger;

    const-string v15, "OcspClientBouncyCastle"

    invoke-interface {v14, v15, v5}, Lcom/itextpdf/text/log/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 179
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_4
    const/4 v14, 0x0

    goto :goto_0

    .line 152
    .restart local v1       #array:[B
    .restart local v3       #con:Ljava/net/HttpURLConnection;
    .restart local v4       #dataOut:Ljava/io/DataOutputStream;
    .restart local v8       #out:Ljava/io/OutputStream;
    .restart local v9       #request:Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .restart local v13       #urlt:Ljava/net/URL;
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;

    .line 153
    .local v6, in:Ljava/io/InputStream;
    new-instance v7, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    invoke-static {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->InputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v14

    invoke-direct {v7, v14}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>([B)V

    .line 155
    .local v7, ocspResponse:Lorg/bouncycastle/cert/ocsp/OCSPResp;
    invoke-virtual {v7}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getStatus()I

    move-result v14

    if-eqz v14, :cond_6

    .line 156
    new-instance v14, Ljava/io/IOException;

    const-string v15, "invalid.status.1"

    invoke-virtual {v7}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getStatus()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 157
    :cond_6
    invoke-virtual {v7}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getResponseObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 158
    .local v2, basicResponse:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    if-eqz v2, :cond_4

    .line 159
    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;

    move-result-object v11

    .line 160
    .local v11, responses:[Lorg/bouncycastle/cert/ocsp/SingleResp;
    array-length v14, v11

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 161
    const/4 v14, 0x0

    aget-object v10, v11, v14

    .line 162
    .local v10, resp:Lorg/bouncycastle/cert/ocsp/SingleResp;
    invoke-virtual {v10}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertStatus()Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    move-result-object v12

    .line 163
    .local v12, status:Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    sget-object v14, Lorg/bouncycastle/cert/ocsp/CertificateStatus;->GOOD:Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    if-ne v12, v14, :cond_7

    .line 164
    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getEncoded()[B

    move-result-object v14

    goto/16 :goto_0

    .line 166
    :cond_7
    instance-of v14, v12, Lorg/bouncycastle/ocsp/RevokedStatus;

    if-eqz v14, :cond_8

    .line 167
    new-instance v14, Ljava/io/IOException;

    const-string v15, "ocsp.status.is.revoked"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 170
    :cond_8
    new-instance v14, Ljava/io/IOException;

    const-string v15, "ocsp.status.is.unknown"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
