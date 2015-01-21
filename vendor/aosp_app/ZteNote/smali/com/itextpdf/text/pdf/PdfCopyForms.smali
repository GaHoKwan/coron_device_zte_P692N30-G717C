.class public Lcom/itextpdf/text/pdf/PdfCopyForms;
.super Ljava/lang/Object;
.source "PdfCopyForms.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/interfaces/PdfViewerPreferences;
.implements Lcom/itextpdf/text/pdf/interfaces/PdfEncryptionSettings;


# instance fields
.field private fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    .line 76
    return-void
.end method


# virtual methods
.method public addDocument(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->addDocument(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 85
    return-void
.end method

.method public addDocument(Lcom/itextpdf/text/pdf/PdfReader;Ljava/lang/String;)V
    .locals 2
    .parameter "reader"
    .parameter "ranges"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v1

    invoke-static {p2, v1}, Lcom/itextpdf/text/pdf/SequenceList;->expand(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->addDocument(Lcom/itextpdf/text/pdf/PdfReader;Ljava/util/List;)V

    .line 109
    return-void
.end method

.method public addDocument(Lcom/itextpdf/text/pdf/PdfReader;Ljava/util/List;)V
    .locals 1
    .parameter "reader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    .local p2, pagesToKeep:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->addDocument(Lcom/itextpdf/text/pdf/PdfReader;Ljava/util/List;)V

    .line 97
    return-void
.end method

.method public addJavaScript(Ljava/lang/String;)V
    .locals 2
    .parameter "js"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfEncodings;->isPdfDocEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->addJavaScript(Ljava/lang/String;Z)V

    .line 174
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 222
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->close()V

    .line 158
    return-void
.end method

.method public copyDocumentFields(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->copyDocumentFields(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 118
    return-void
.end method

.method public getWriter()Lcom/itextpdf/text/pdf/PdfWriter;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    return-object v0
.end method

.method public isFullCompression()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->isFullCompression()Z

    move-result v0

    return v0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->openDoc()V

    .line 166
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
    .line 150
    invoke-static {p2}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p4, p1}, Lcom/itextpdf/text/pdf/PdfCopyForms;->setEncryption([B[BIZ)V

    .line 151
    return-void
.end method

.method public setEncryption([B[BII)V
    .locals 1
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
    .line 214
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->setEncryption([B[BII)V

    .line 215
    return-void
.end method

.method public setEncryption([B[BIZ)V
    .locals 2
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
    .line 133
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->setEncryption([B[BII)V

    .line 134
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEncryption([Ljava/security/cert/Certificate;[II)V
    .locals 1
    .parameter "certs"
    .parameter "permissions"
    .parameter "encryptionType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->setEncryption([Ljava/security/cert/Certificate;[II)V

    .line 236
    return-void
.end method

.method public setFullCompression()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->setFullCompression()V

    .line 208
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
    .line 182
    .local p1, outlines:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->setOutlines(Ljava/util/List;)V

    .line 183
    return-void
.end method

.method public setViewerPreferences(I)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyForms;->fc:Lcom/itextpdf/text/pdf/PdfCopyFormsImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->setViewerPreferences(I)V

    .line 229
    return-void
.end method
