.class public Lcom/itextpdf/text/pdf/parser/PdfReaderContentParser;
.super Ljava/lang/Object;
.source "PdfReaderContentParser.java"


# instance fields
.field private final reader:Lcom/itextpdf/text/pdf/PdfReader;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 0
    .parameter "reader"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/PdfReaderContentParser;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 63
    return-void
.end method


# virtual methods
.method public processContent(ILcom/itextpdf/text/pdf/parser/RenderListener;)Lcom/itextpdf/text/pdf/parser/RenderListener;
    .locals 4
    .parameter "pageNumber"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/itextpdf/text/pdf/parser/RenderListener;",
            ">(ITE;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    .local p2, renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;,"TE;"
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/PdfReaderContentParser;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 76
    .local v0, pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 78
    .local v2, resourcesDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;

    invoke-direct {v1, p2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;-><init>(Lcom/itextpdf/text/pdf/parser/RenderListener;)V

    .line 79
    .local v1, processor:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/PdfReaderContentParser;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-static {v3, p1}, Lcom/itextpdf/text/pdf/parser/ContentByteUtils;->getContentBytesForPage(Lcom/itextpdf/text/pdf/PdfReader;I)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->processContent([BLcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 80
    return-object p2
.end method
