.class public Lcom/itextpdf/text/pdf/PdfStamper;
.super Ljava/lang/Object;
.source "PdfStamper.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/interfaces/PdfViewerPreferences;
.implements Lcom/itextpdf/text/pdf/interfaces/PdfEncryptionSettings;


# instance fields
.field private hasSignature:Z

.field private moreInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

.field protected stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

.field private verification:Lcom/itextpdf/text/pdf/security/LtvVerification;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "reader"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;C)V
    .locals 2
    .parameter "reader"
    .parameter "os"
    .parameter "pdfVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStamperImp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V
    .locals 1
    .parameter "reader"
    .parameter "os"
    .parameter "pdfVersion"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfStamperImp;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    .line 127
    return-void
.end method

.method public static createSignature(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;C)Lcom/itextpdf/text/pdf/PdfStamper;
    .locals 2
    .parameter "reader"
    .parameter "os"
    .parameter "pdfVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/itextpdf/text/pdf/PdfStamper;->createSignature(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CLjava/io/File;Z)Lcom/itextpdf/text/pdf/PdfStamper;

    move-result-object v0

    return-object v0
.end method

.method public static createSignature(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CLjava/io/File;)Lcom/itextpdf/text/pdf/PdfStamper;
    .locals 1
    .parameter "reader"
    .parameter "os"
    .parameter "pdfVersion"
    .parameter "tempFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfStamper;->createSignature(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CLjava/io/File;Z)Lcom/itextpdf/text/pdf/PdfStamper;

    move-result-object v0

    return-object v0
.end method

.method public static createSignature(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CLjava/io/File;Z)Lcom/itextpdf/text/pdf/PdfStamper;
    .locals 7
    .parameter "reader"
    .parameter "os"
    .parameter "pdfVersion"
    .parameter "tempFile"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    if-nez p3, :cond_1

    .line 631
    new-instance v1, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 632
    .local v1, bout:Lcom/itextpdf/text/pdf/ByteBuffer;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfStamper;

    invoke-direct {v4, p0, v1, p2, p4}, Lcom/itextpdf/text/pdf/PdfStamper;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V

    .line 633
    .local v4, stp:Lcom/itextpdf/text/pdf/PdfStamper;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    iget-object v6, v4, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfStamperImp;)V

    iput-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    .line 634
    iget-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    invoke-virtual {v5, v1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->setSigout(Lcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 644
    .end local v1           #bout:Lcom/itextpdf/text/pdf/ByteBuffer;
    :goto_0
    iget-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->setOriginalout(Ljava/io/OutputStream;)V

    .line 645
    iget-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->setStamper(Lcom/itextpdf/text/pdf/PdfStamper;)V

    .line 646
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->hasSignature:Z

    .line 647
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 648
    .local v2, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 649
    .local v0, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    .line 650
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->NEEDAPPEARANCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 651
    iget-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 653
    :cond_0
    return-object v4

    .line 637
    .end local v0           #acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #stp:Lcom/itextpdf/text/pdf/PdfStamper;
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 638
    const-string v5, "pdf"

    const/4 v6, 0x0

    invoke-static {v5, v6, p3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p3

    .line 639
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 640
    .local v3, fout:Ljava/io/FileOutputStream;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfStamper;

    invoke-direct {v4, p0, v3, p2, p4}, Lcom/itextpdf/text/pdf/PdfStamper;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V

    .line 641
    .restart local v4       #stp:Lcom/itextpdf/text/pdf/PdfStamper;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    iget-object v6, v4, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfStamperImp;)V

    iput-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    .line 642
    iget-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    invoke-virtual {v5, p3}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->setTempFile(Ljava/io/File;)V

    goto :goto_0
.end method


# virtual methods
.method public addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;I)V
    .locals 1
    .parameter "annot"
    .parameter "page"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;I)V

    .line 391
    return-void
.end method

.method public addComments(Lcom/itextpdf/text/pdf/FdfReader;)V
    .locals 1
    .parameter "fdf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addComments(Lcom/itextpdf/text/pdf/FdfReader;)V

    .line 420
    return-void
.end method

.method public addFileAttachment(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)V
    .locals 1
    .parameter "description"
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addFileAttachment(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)V

    .line 484
    return-void
.end method

.method public addFileAttachment(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "description"
    .parameter "fileStore"
    .parameter "file"
    .parameter "fileDisplay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-static {v0, p3, p4, p2}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[B)Lcom/itextpdf/text/pdf/PdfFileSpecification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfStamper;->addFileAttachment(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)V

    .line 475
    return-void
.end method

.method public addJavaScript(Ljava/lang/String;)V
    .locals 2
    .parameter "js"

    .prologue
    .line 461
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfEncodings;->isPdfDocEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addJavaScript(Ljava/lang/String;Z)V

    .line 462
    return-void

    .line 461
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addSignature(Ljava/lang/String;IFFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 7
    .parameter "name"
    .parameter "page"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 405
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroForm()Lcom/itextpdf/text/pdf/PdfAcroForm;

    move-result-object v0

    .line 406
    .local v0, acroForm:Lcom/itextpdf/text/pdf/PdfAcroForm;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfFormField;->createSignature(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    .local v1, signature:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 407
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setSignatureParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;FFFF)V

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 408
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawSignatureAppearences(Lcom/itextpdf/text/pdf/PdfFormField;FFFF)V

    .line 409
    invoke-virtual {p0, v1, p2}, Lcom/itextpdf/text/pdf/PdfStamper;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;I)V

    .line 410
    return-object v1
.end method

.method public addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 530
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->hasSignature:Z

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfStamper;->mergeVerification()V

    .line 192
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamper;->moreInfo:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->close(Ljava/util/Map;)V

    .line 193
    return-void

    .line 196
    :cond_0
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "Signature defined. Must be closed in PdfSignatureAppearance."

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v0

    return-object v0
.end method

.method public getImportedPage(Lcom/itextpdf/text/pdf/PdfReader;I)Lcom/itextpdf/text/pdf/PdfImportedPage;
    .locals 1
    .parameter "reader"
    .parameter "pageNumber"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getImportedPage(Lcom/itextpdf/text/pdf/PdfReader;I)Lcom/itextpdf/text/pdf/PdfImportedPage;

    move-result-object v0

    return-object v0
.end method

.method public getLtvVerification()Lcom/itextpdf/text/pdf/security/LtvVerification;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->verification:Lcom/itextpdf/text/pdf/security/LtvVerification;

    if-nez v0, :cond_0

    .line 749
    new-instance v0, Lcom/itextpdf/text/pdf/security/LtvVerification;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/security/LtvVerification;-><init>(Lcom/itextpdf/text/pdf/PdfStamper;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->verification:Lcom/itextpdf/text/pdf/security/LtvVerification;

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->verification:Lcom/itextpdf/text/pdf/security/LtvVerification;

    return-object v0
.end method

.method public getMoreInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->moreInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getOverContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getOverContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    return-object v0
.end method

.method public getPdfLayers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getPdfLayers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Lcom/itextpdf/text/pdf/PdfReader;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    return-object v0
.end method

.method public getSignatureAppearance()Lcom/itextpdf/text/pdf/PdfSignatureAppearance;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    return-object v0
.end method

.method public getUnderContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getUnderContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    return-object v0
.end method

.method public getWriter()Lcom/itextpdf/text/pdf/PdfWriter;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    return-object v0
.end method

.method public insertPage(ILcom/itextpdf/text/Rectangle;)V
    .locals 1
    .parameter "pageNumber"
    .parameter "mediabox"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->insertPage(ILcom/itextpdf/text/Rectangle;)V

    .line 170
    return-void
.end method

.method public isFullCompression()Z
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isFullCompression()Z

    move-result v0

    return v0
.end method

.method public isRotateContents()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isRotateContents()Z

    move-result v0

    return v0
.end method

.method public makePackage(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 2
    .parameter "initialView"

    .prologue
    .line 500
    new-instance v0, Lcom/itextpdf/text/pdf/collection/PdfCollection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollection;-><init>(I)V

    .line 501
    .local v0, collection:Lcom/itextpdf/text/pdf/collection/PdfCollection;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->VIEW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/text/pdf/collection/PdfCollection;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 502
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->makePackage(Lcom/itextpdf/text/pdf/collection/PdfCollection;)V

    .line 503
    return-void
.end method

.method public makePackage(Lcom/itextpdf/text/pdf/collection/PdfCollection;)V
    .locals 1
    .parameter "collection"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->makePackage(Lcom/itextpdf/text/pdf/collection/PdfCollection;)V

    .line 511
    return-void
.end method

.method public markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 745
    return-void
.end method

.method mergeVerification()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->verification:Lcom/itextpdf/text/pdf/security/LtvVerification;

    if-nez v0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->verification:Lcom/itextpdf/text/pdf/security/LtvVerification;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/security/LtvVerification;->merge()V

    goto :goto_0
.end method

.method public partialFormFlattening(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFormFlattening(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public replacePage(Lcom/itextpdf/text/pdf/PdfReader;II)V
    .locals 1
    .parameter "r"
    .parameter "pageImported"
    .parameter "pageReplaced"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->replacePage(Lcom/itextpdf/text/pdf/PdfReader;II)V

    .line 159
    return-void
.end method

.method public setDuration(II)V
    .locals 1
    .parameter "seconds"
    .parameter "page"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setDuration(II)V

    .line 578
    return-void
.end method

.method public setEncryption(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "encryptionType"
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {p2}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p4, p1}, Lcom/itextpdf/text/pdf/PdfStamper;->setEncryption([B[BII)V

    .line 311
    return-void
.end method

.method public setEncryption(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "strength"
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {p2}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p4, p1}, Lcom/itextpdf/text/pdf/PdfStamper;->setEncryption([B[BIZ)V

    .line 293
    return-void
.end method

.method public setEncryption([B[BII)V
    .locals 3
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .parameter "encryptionType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isAppend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "append.mode.does.not.support.changing.the.encryption.status"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isContentWritten()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "content.was.already.written.to.the.output"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setEncryption([B[BII)V

    .line 276
    return-void
.end method

.method public setEncryption([B[BIZ)V
    .locals 3
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .parameter "strength128Bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 250
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isAppend()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    new-instance v1, Lcom/itextpdf/text/DocumentException;

    const-string v2, "append.mode.does.not.support.changing.the.encryption.status"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isContentWritten()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    new-instance v1, Lcom/itextpdf/text/DocumentException;

    const-string v2, "content.was.already.written.to.the.output"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setEncryption([B[BII)V

    .line 255
    return-void
.end method

.method public setEncryption([Ljava/security/cert/Certificate;[II)V
    .locals 3
    .parameter "certs"
    .parameter "permissions"
    .parameter "encryptionType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isAppend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "append.mode.does.not.support.changing.the.encryption.status"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isContentWritten()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "content.was.already.written.to.the.output"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setEncryption([Ljava/security/cert/Certificate;[II)V

    .line 332
    return-void
.end method

.method public setFormFlattening(Z)V
    .locals 1
    .parameter "flat"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setFormFlattening(Z)V

    .line 373
    return-void
.end method

.method public setFreeTextFlattening(Z)V
    .locals 1
    .parameter "flat"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setFreeTextFlattening(Z)V

    .line 381
    return-void
.end method

.method public setFullCompression()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isAppend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setFullCompression()V

    goto :goto_0
.end method

.method public setMoreInfo(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, moreInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfStamper;->moreInfo:Ljava/util/Map;

    .line 146
    return-void
.end method

.method public setOutlines(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, outlines:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setOutlines(Ljava/util/List;)V

    .line 429
    return-void
.end method

.method public setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;I)V
    .locals 1
    .parameter "actionType"
    .parameter "action"
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;I)V

    .line 569
    return-void
.end method

.method public setRotateContents(Z)V
    .locals 1
    .parameter "rotateContents"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setRotateContents(Z)V

    .line 235
    return-void
.end method

.method public setThumbnail(Lcom/itextpdf/text/Image;I)V
    .locals 1
    .parameter "image"
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setThumbnail(Lcom/itextpdf/text/Image;I)V

    .line 440
    return-void
.end method

.method public setTransition(Lcom/itextpdf/text/pdf/PdfTransition;I)V
    .locals 1
    .parameter "transition"
    .parameter "page"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setTransition(Lcom/itextpdf/text/pdf/PdfTransition;I)V

    .line 587
    return-void
.end method

.method public setViewerPreferences(I)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setViewerPreferences(I)V

    .line 520
    return-void
.end method

.method public setXmpMetadata([B)V
    .locals 1
    .parameter "xmp"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setXmpMetadata([B)V

    .line 539
    return-void
.end method
