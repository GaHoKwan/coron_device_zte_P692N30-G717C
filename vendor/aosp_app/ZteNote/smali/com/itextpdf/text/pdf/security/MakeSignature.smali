.class public Lcom/itextpdf/text/pdf/security/MakeSignature;
.super Ljava/lang/Object;
.source "MakeSignature.java"


# static fields
.field public static final CADES:Z = true

.field public static final CMS:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processCrl(Ljava/security/cert/Certificate;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .parameter "cert"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Lcom/itextpdf/text/pdf/security/CrlClient;",
            ">;)",
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation

    .prologue
    .local p1, crlList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/itextpdf/text/pdf/security/CrlClient;>;"
    const/4 v5, 0x0

    .line 165
    if-nez p1, :cond_1

    move-object v2, v5

    .line 179
    :cond_0
    :goto_0
    return-object v2

    .line 167
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v2, crlBytes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/security/CrlClient;

    .line 169
    .local v1, cc:Lcom/itextpdf/text/pdf/security/CrlClient;
    if-eqz v1, :cond_2

    move-object v4, p0

    .line 171
    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v4, v5}, Lcom/itextpdf/text/pdf/security/CrlClient;->getEncoded(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 172
    .local v0, b:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 176
    .end local v0           #b:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    .end local v1           #cc:Lcom/itextpdf/text/pdf/security/CrlClient;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v5

    .line 177
    goto :goto_0
.end method

.method public static signDetached(Lcom/itextpdf/text/pdf/PdfSignatureAppearance;Lcom/itextpdf/text/pdf/security/ExternalSignature;[Ljava/security/cert/Certificate;Ljava/util/Collection;Lcom/itextpdf/text/pdf/security/OcspClient;Lcom/itextpdf/text/pdf/security/TSAClient;Ljava/lang/String;IZ)V
    .locals 32
    .parameter "sap"
    .parameter "externalSignature"
    .parameter "chain"
    .parameter
    .parameter "ocspClient"
    .parameter "tsaClient"
    .parameter "provider"
    .parameter "estimatedSize"
    .parameter "cades"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfSignatureAppearance;",
            "Lcom/itextpdf/text/pdf/security/ExternalSignature;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Lcom/itextpdf/text/pdf/security/CrlClient;",
            ">;",
            "Lcom/itextpdf/text/pdf/security/OcspClient;",
            "Lcom/itextpdf/text/pdf/security/TSAClient;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 96
    .local p3, crlList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/itextpdf/text/pdf/security/CrlClient;>;"
    const/4 v4, 0x0

    aget-object v4, p2, v4

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/itextpdf/text/pdf/security/MakeSignature;->processCrl(Ljava/security/cert/Certificate;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v11

    .line 97
    .local v11, crlBytes:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    if-nez p7, :cond_2

    .line 98
    const/16 p7, 0x2000

    .line 99
    if-eqz v11, :cond_0

    .line 100
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    .line 101
    .local v23, element:[B
    move-object/from16 v0, v23

    array-length v4, v0

    add-int/lit8 v4, v4, 0xa

    add-int p7, p7, v4

    goto :goto_0

    .line 104
    .end local v23           #element:[B
    .end local v27           #i$:Ljava/util/Iterator;
    :cond_0
    if-eqz p4, :cond_1

    .line 105
    move/from16 v0, p7

    add-int/lit16 v0, v0, 0x1060

    move/from16 p7, v0

    .line 106
    :cond_1
    if-eqz p5, :cond_2

    .line 107
    move/from16 v0, p7

    add-int/lit16 v0, v0, 0x1060

    move/from16 p7, v0

    .line 109
    :cond_2
    const/4 v4, 0x0

    aget-object v4, p2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 110
    new-instance v21, Lcom/itextpdf/text/pdf/PdfSignature;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ADOBE_PPKLITE:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz p8, :cond_3

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ETSI_CADES_DETACHED:Lcom/itextpdf/text/pdf/PdfName;

    :goto_1
    move-object/from16 v0, v21

    invoke-direct {v0, v5, v4}, Lcom/itextpdf/text/pdf/PdfSignature;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 111
    .local v21, dic:Lcom/itextpdf/text/pdf/PdfSignature;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getReason()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfSignature;->setReason(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getLocation()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfSignature;->setLocation(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getContact()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfSignature;->setContact(Ljava/lang/String;)V

    .line 114
    new-instance v4, Lcom/itextpdf/text/pdf/PdfDate;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getSignDate()Ljava/util/Calendar;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfDate;-><init>(Ljava/util/Calendar;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfSignature;->setDate(Lcom/itextpdf/text/pdf/PdfDate;)V

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->setCryptoDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 117
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v25, exc:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/Integer;>;"
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Ljava/lang/Integer;

    mul-int/lit8 v7, p7, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClose(Ljava/util/HashMap;)V

    .line 121
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/pdf/security/ExternalSignature;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, hashAlgorithm:Ljava/lang/String;
    new-instance v3, Lcom/itextpdf/text/pdf/security/PdfPKCS7;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    .local v3, sgn:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getRangeStream()Ljava/io/InputStream;

    move-result-object v20

    .line 125
    .local v20, data:Ljava/io/InputStream;
    if-nez p6, :cond_4

    .line 126
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v28

    .line 129
    .local v28, messageDigest:Ljava/security/MessageDigest;
    :goto_2
    const/16 v4, 0x2000

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 131
    .local v19, buf:[B
    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v29

    .local v29, n:I
    if-lez v29, :cond_5

    .line 132
    const/4 v4, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move/from16 v2, v29

    invoke-virtual {v0, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_3

    .line 110
    .end local v3           #sgn:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    .end local v6           #hashAlgorithm:Ljava/lang/String;
    .end local v19           #buf:[B
    .end local v20           #data:Ljava/io/InputStream;
    .end local v21           #dic:Lcom/itextpdf/text/pdf/PdfSignature;
    .end local v25           #exc:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/Integer;>;"
    .end local v28           #messageDigest:Ljava/security/MessageDigest;
    .end local v29           #n:I
    :cond_3
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ADBE_PKCS7_DETACHED:Lcom/itextpdf/text/pdf/PdfName;

    goto/16 :goto_1

    .line 128
    .restart local v3       #sgn:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    .restart local v6       #hashAlgorithm:Ljava/lang/String;
    .restart local v20       #data:Ljava/io/InputStream;
    .restart local v21       #dic:Lcom/itextpdf/text/pdf/PdfSignature;
    .restart local v25       #exc:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/Integer;>;"
    :cond_4
    move-object/from16 v0, p6

    invoke-static {v6, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v28

    .restart local v28       #messageDigest:Ljava/security/MessageDigest;
    goto :goto_2

    .line 134
    .restart local v19       #buf:[B
    .restart local v29       #n:I
    :cond_5
    invoke-virtual/range {v28 .. v28}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 135
    .local v8, hash:[B
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 136
    .local v9, cal:Ljava/util/Calendar;
    const/4 v10, 0x0

    .line 137
    .local v10, ocsp:[B
    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_6

    if-eqz p4, :cond_6

    .line 138
    const/4 v4, 0x0

    aget-object v4, p2, v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    const/4 v5, 0x1

    aget-object v5, p2, v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v4, v5, v7}, Lcom/itextpdf/text/pdf/security/OcspClient;->getEncoded(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v10

    :cond_6
    move-object v7, v3

    move/from16 v12, p8

    .line 140
    invoke-virtual/range {v7 .. v12}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getAuthenticatedAttributeBytes([BLjava/util/Calendar;[BLjava/util/Collection;Z)[B

    move-result-object v31

    .line 141
    .local v31, sh:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/itextpdf/text/pdf/security/ExternalSignature;->sign([B)[B

    move-result-object v26

    .line 142
    .local v26, extSignature:[B
    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/pdf/security/ExternalSignature;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v4, v5}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->setExternalDigest([B[BLjava/lang/String;)V

    move-object v12, v3

    move-object v13, v8

    move-object v14, v9

    move-object/from16 v15, p5

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move/from16 v18, p8

    .line 144
    invoke-virtual/range {v12 .. v18}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->getEncodedPKCS7([BLjava/util/Calendar;Lcom/itextpdf/text/pdf/security/TSAClient;[BLjava/util/Collection;Z)[B

    move-result-object v24

    .line 146
    .local v24, encodedSig:[B
    add-int/lit8 v4, p7, 0x2

    move-object/from16 v0, v24

    array-length v5, v0

    if-ge v4, v5, :cond_7

    .line 147
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not enough space"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :cond_7
    move/from16 v0, p7

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 150
    .local v30, paddedSig:[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    array-length v7, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-static {v0, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    new-instance v22, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 153
    .local v22, dic2:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Lcom/itextpdf/text/pdf/PdfString;-><init>([B)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/itextpdf/text/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 154
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->close(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 156
    return-void
.end method
