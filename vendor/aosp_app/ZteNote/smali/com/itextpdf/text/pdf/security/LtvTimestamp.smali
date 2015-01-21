.class public Lcom/itextpdf/text/pdf/security/LtvTimestamp;
.super Ljava/lang/Object;
.source "LtvTimestamp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static timestamp(Lcom/itextpdf/text/pdf/PdfSignatureAppearance;Lcom/itextpdf/text/pdf/security/TSAClient;Ljava/lang/String;)V
    .locals 18
    .parameter "sap"
    .parameter "tsa"
    .parameter "signatureName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/pdf/security/TSAClient;->getTokenSizeEstimate()I

    move-result v3

    .line 71
    .local v3, contentEstimated:I
    new-instance v13, Lcom/itextpdf/text/Rectangle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v17}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v14, v1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->setVisibleSignature(Lcom/itextpdf/text/Rectangle;ILjava/lang/String;)V

    .line 73
    new-instance v5, Lcom/itextpdf/text/pdf/PdfSignature;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->ADOBE_PPKLITE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->ETSI_RFC3161:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v5, v13, v14}, Lcom/itextpdf/text/pdf/PdfSignature;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 74
    .local v5, dic:Lcom/itextpdf/text/pdf/PdfSignature;
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->DOCTIMESTAMP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v13, v14}, Lcom/itextpdf/text/pdf/PdfSignature;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 75
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->setCryptoDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 77
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v7, exc:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/Integer;>;"
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v14, Ljava/lang/Integer;

    mul-int/lit8 v15, v3, 0x2

    add-int/lit8 v15, v15, 0x2

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClose(Ljava/util/HashMap;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getRangeStream()Ljava/io/InputStream;

    move-result-object v4

    .line 81
    .local v4, data:Ljava/io/InputStream;
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/pdf/security/TSAClient;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 82
    .local v8, messageDigest:Ljava/security/MessageDigest;
    const/16 v13, 0x1000

    new-array v2, v13, [B

    .line 84
    .local v2, buf:[B
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, n:I
    if-lez v9, :cond_0

    .line 85
    const/4 v13, 0x0

    invoke-virtual {v8, v2, v13, v9}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    .line 88
    .local v11, tsImprint:[B
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcom/itextpdf/text/pdf/security/TSAClient;->getTimeStampToken([B)[B

    move-result-object v12

    .line 90
    .local v12, tsToken:[B
    add-int/lit8 v13, v3, 0x2

    array-length v14, v12

    if-ge v13, v14, :cond_1

    .line 91
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "Not enough space"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13

    .line 93
    :cond_1
    new-array v10, v3, [B

    .line 94
    .local v10, paddedSig:[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v12

    invoke-static {v12, v13, v10, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    new-instance v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 97
    .local v6, dic2:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v14, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v14, v10}, Lcom/itextpdf/text/pdf/PdfString;-><init>([B)V

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 98
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->close(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 99
    return-void
.end method
