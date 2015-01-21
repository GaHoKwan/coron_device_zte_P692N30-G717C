.class public Lcom/itextpdf/text/pdf/PdfPageEventHelper;
.super Ljava/lang/Object;
.source "PdfPageEventHelper.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/PdfPageEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChapter(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;FLcom/itextpdf/text/Paragraph;)V
    .locals 0
    .parameter "writer"
    .parameter "document"
    .parameter "paragraphPosition"
    .parameter "title"

    .prologue
    .line 141
    return-void
.end method

.method public onChapterEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V
    .locals 0
    .parameter "writer"
    .parameter "document"
    .parameter "position"

    .prologue
    .line 153
    return-void
.end method

.method public onCloseDocument(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V
    .locals 0
    .parameter "writer"
    .parameter "document"

    .prologue
    .line 101
    return-void
.end method

.method public onEndPage(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V
    .locals 0
    .parameter "writer"
    .parameter "document"

    .prologue
    .line 89
    return-void
.end method

.method public onGenericTag(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V
    .locals 0
    .parameter "writer"
    .parameter "document"
    .parameter "rect"
    .parameter "text"

    .prologue
    .line 194
    return-void
.end method

.method public onOpenDocument(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V
    .locals 0
    .parameter "writer"
    .parameter "document"

    .prologue
    .line 67
    return-void
.end method

.method public onParagraph(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V
    .locals 0
    .parameter "writer"
    .parameter "document"
    .parameter "paragraphPosition"

    .prologue
    .line 115
    return-void
.end method

.method public onParagraphEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V
    .locals 0
    .parameter "writer"
    .parameter "document"
    .parameter "paragraphPosition"

    .prologue
    .line 127
    return-void
.end method

.method public onSection(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;FILcom/itextpdf/text/Paragraph;)V
    .locals 0
    .parameter "writer"
    .parameter "document"
    .parameter "paragraphPosition"
    .parameter "depth"
    .parameter "title"

    .prologue
    .line 168
    return-void
.end method

.method public onSectionEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V
    .locals 0
    .parameter "writer"
    .parameter "document"
    .parameter "position"

    .prologue
    .line 180
    return-void
.end method

.method public onStartPage(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V
    .locals 0
    .parameter "writer"
    .parameter "document"

    .prologue
    .line 80
    return-void
.end method
