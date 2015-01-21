.class public final Lcom/itextpdf/text/pdf/Type3Glyph;
.super Lcom/itextpdf/text/pdf/PdfContentByte;
.source "Type3Glyph.java"


# instance fields
.field private colorized:Z

.field private pageResources:Lcom/itextpdf/text/pdf/PageResources;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PageResources;FFFFFZ)V
    .locals 3
    .parameter "writer"
    .parameter "pageResources"
    .parameter "wx"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "colorized"

    .prologue
    const/16 v2, 0x20

    .line 61
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 62
    iput-object p2, p0, Lcom/itextpdf/text/pdf/Type3Glyph;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 63
    iput-boolean p8, p0, Lcom/itextpdf/text/pdf/Type3Glyph;->colorized:Z

    .line 64
    if-eqz p8, :cond_0

    .line 65
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Type3Glyph;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " 0 d0\n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Type3Glyph;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " 0 "

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " d1\n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0
.end method


# virtual methods
.method public addImage(Lcom/itextpdf/text/Image;FFFFFFZ)V
    .locals 3
    .parameter "image"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"
    .parameter "inlineImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/Type3Glyph;->colorized:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->isMask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getBpc()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getBpc()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 78
    :cond_0
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "not.colorized.typed3.fonts.only.accept.mask.images"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    invoke-super/range {p0 .. p8}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;FFFFFFZ)V

    .line 80
    return-void
.end method

.method public getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/itextpdf/text/pdf/Type3Glyph;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/Type3Glyph;-><init>()V

    .line 84
    .local v0, dup:Lcom/itextpdf/text/pdf/Type3Glyph;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Type3Glyph;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/Type3Glyph;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 85
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Type3Glyph;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/Type3Glyph;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    .line 86
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Type3Glyph;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/Type3Glyph;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 87
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/Type3Glyph;->colorized:Z

    iput-boolean v1, v0, Lcom/itextpdf/text/pdf/Type3Glyph;->colorized:Z

    .line 88
    return-object v0
.end method

.method getPageResources()Lcom/itextpdf/text/pdf/PageResources;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Type3Glyph;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    return-object v0
.end method
