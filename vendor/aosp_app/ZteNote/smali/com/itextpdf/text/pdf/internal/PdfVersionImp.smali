.class public Lcom/itextpdf/text/pdf/internal/PdfVersionImp;
.super Ljava/lang/Object;
.source "PdfVersionImp.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/interfaces/PdfVersion;


# static fields
.field public static final HEADER:[[B


# instance fields
.field protected appendmode:Z

.field protected catalog_version:Lcom/itextpdf/text/pdf/PdfName;

.field protected extensions:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected headerWasWritten:Z

.field protected header_version:C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const-string v2, "\n"

    invoke-static {v2}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "%PDF-"

    invoke-static {v2}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\n%\u00e2\u00e3\u00cf\u00d3\n"

    invoke-static {v2}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->HEADER:[[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->headerWasWritten:Z

    .line 74
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->appendmode:Z

    .line 76
    const/16 v0, 0x34

    iput-char v0, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->header_version:C

    .line 78
    iput-object v1, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->catalog_version:Lcom/itextpdf/text/pdf/PdfName;

    .line 83
    iput-object v1, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->extensions:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-void
.end method


# virtual methods
.method public addDeveloperExtension(Lcom/itextpdf/text/pdf/PdfDeveloperExtension;)V
    .locals 5
    .parameter "de"

    .prologue
    .line 184
    iget-object v2, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->extensions:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-nez v2, :cond_2

    .line 185
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->extensions:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->extensions:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->getPrefix()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->getDeveloperExtensions()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->extensions:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->getPrefix()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 189
    .local v1, extension:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->getBaseversion()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->BASEVERSION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;->compareTo(Lcom/itextpdf/text/pdf/PdfName;)I

    move-result v0

    .line 191
    .local v0, diff:I
    if-ltz v0, :cond_1

    .line 193
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->getExtensionLevel()I

    move-result v2

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->EXTENSIONLEVEL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    sub-int v0, v2, v3

    .line 194
    if-gtz v0, :cond_0

    goto :goto_0
.end method

.method public addToCatalog(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 2
    .parameter "catalog"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->catalog_version:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VERSION:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->catalog_version:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->extensions:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v0, :cond_1

    .line 175
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->EXTENSIONS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->extensions:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 177
    :cond_1
    return-void
.end method

.method public getVersionAsByteArray(C)[B
    .locals 2
    .parameter "version"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->getVersionAsName(C)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersionAsName(C)Lcom/itextpdf/text/pdf/PdfName;
    .locals 1
    .parameter "version"

    .prologue
    .line 143
    packed-switch p1, :pswitch_data_0

    .line 157
    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_4:Lcom/itextpdf/text/pdf/PdfName;

    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_2:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0

    .line 147
    :pswitch_1
    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_3:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0

    .line 149
    :pswitch_2
    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_4:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0

    .line 151
    :pswitch_3
    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_5:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0

    .line 153
    :pswitch_4
    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_6:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0

    .line 155
    :pswitch_5
    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_7:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setAppendmode(Z)V
    .locals 0
    .parameter "appendmode"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->appendmode:Z

    .line 120
    return-void
.end method

.method public setAtLeastPdfVersion(C)V
    .locals 1
    .parameter "version"

    .prologue
    .line 101
    iget-char v0, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->header_version:C

    if-le p1, v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->setPdfVersion(C)V

    .line 104
    :cond_0
    return-void
.end method

.method public setPdfVersion(C)V
    .locals 1
    .parameter "version"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->headerWasWritten:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->appendmode:Z

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->getVersionAsName(C)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->setPdfVersion(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_1
    iput-char p1, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->header_version:C

    goto :goto_0
.end method

.method public setPdfVersion(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "version"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->catalog_version:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->catalog_version:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfName;->compareTo(Lcom/itextpdf/text/pdf/PdfName;)I

    move-result v0

    if-gez v0, :cond_1

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->catalog_version:Lcom/itextpdf/text/pdf/PdfName;

    .line 113
    :cond_1
    return-void
.end method

.method public writeHeader(Lcom/itextpdf/text/pdf/OutputStreamCounter;)V
    .locals 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 127
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->appendmode:Z

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->HEADER:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->HEADER:[[B

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 132
    iget-char v0, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->header_version:C

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->getVersionAsByteArray(C)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 133
    sget-object v0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->HEADER:[[B

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 134
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->headerWasWritten:Z

    goto :goto_0
.end method
