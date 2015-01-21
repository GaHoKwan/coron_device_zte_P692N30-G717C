.class public Lcom/itextpdf/text/xml/xmp/PdfSchema;
.super Lcom/itextpdf/text/xml/xmp/XmpSchema;
.source "PdfSchema.java"


# static fields
.field public static final DEFAULT_XPATH_ID:Ljava/lang/String; = "pdf"

.field public static final DEFAULT_XPATH_URI:Ljava/lang/String; = "http://ns.adobe.com/pdf/1.3/"

.field public static final KEYWORDS:Ljava/lang/String; = "pdf:Keywords"

.field public static final PRODUCER:Ljava/lang/String; = "pdf:Producer"

.field public static final VERSION:Ljava/lang/String; = "pdf:PDFVersion"

.field private static final serialVersionUID:J = -0x1563428c99339a79L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "xmlns:pdf=\"http://ns.adobe.com/pdf/1.3/\""

    invoke-direct {p0, v0}, Lcom/itextpdf/text/xml/xmp/XmpSchema;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/itextpdf/text/Document;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/xml/xmp/PdfSchema;->addProducer(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public addKeywords(Ljava/lang/String;)V
    .locals 1
    .parameter "keywords"

    .prologue
    .line 77
    const-string v0, "pdf:Keywords"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/xml/xmp/PdfSchema;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public addProducer(Ljava/lang/String;)V
    .locals 1
    .parameter "producer"

    .prologue
    .line 85
    const-string v0, "pdf:Producer"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/xml/xmp/PdfSchema;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public addVersion(Ljava/lang/String;)V
    .locals 1
    .parameter "version"

    .prologue
    .line 93
    const-string v0, "pdf:PDFVersion"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/xml/xmp/PdfSchema;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    return-void
.end method
