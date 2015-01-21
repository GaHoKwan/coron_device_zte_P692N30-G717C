.class public final Lcom/itextpdf/text/pdf/parser/PdfTextExtractor;
.super Ljava/lang/Object;
.source "PdfTextExtractor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static getTextFromPage(Lcom/itextpdf/text/pdf/PdfReader;I)Ljava/lang/String;
    .locals 1
    .parameter "reader"
    .parameter "pageNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/itextpdf/text/pdf/parser/PdfTextExtractor;->getTextFromPage(Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/parser/TextExtractionStrategy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextFromPage(Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/parser/TextExtractionStrategy;)Ljava/lang/String;
    .locals 2
    .parameter "reader"
    .parameter "pageNumber"
    .parameter "strategy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/itextpdf/text/pdf/parser/PdfReaderContentParser;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/parser/PdfReaderContentParser;-><init>(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 73
    .local v0, parser:Lcom/itextpdf/text/pdf/parser/PdfReaderContentParser;
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/parser/PdfReaderContentParser;->processContent(ILcom/itextpdf/text/pdf/parser/RenderListener;)Lcom/itextpdf/text/pdf/parser/RenderListener;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/parser/TextExtractionStrategy;

    invoke-interface {v1}, Lcom/itextpdf/text/pdf/parser/TextExtractionStrategy;->getResultantText()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
