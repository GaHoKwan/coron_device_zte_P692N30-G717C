.class public Lcom/itextpdf/text/ChapterAutoNumber;
.super Lcom/itextpdf/text/Chapter;
.source "ChapterAutoNumber.java"


# static fields
.field private static final serialVersionUID:J = -0x7feafce2b47a2757L


# instance fields
.field protected numberSet:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/Paragraph;)V
    .locals 1
    .parameter "para"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Chapter;-><init>(Lcom/itextpdf/text/Paragraph;I)V

    .line 61
    iput-boolean v0, p0, Lcom/itextpdf/text/ChapterAutoNumber;->numberSet:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Chapter;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-boolean v0, p0, Lcom/itextpdf/text/ChapterAutoNumber;->numberSet:Z

    .line 79
    return-void
.end method


# virtual methods
.method public addSection(Lcom/itextpdf/text/Paragraph;)Lcom/itextpdf/text/Section;
    .locals 3
    .parameter "title"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/itextpdf/text/ChapterAutoNumber;->isAddedCompletely()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this.largeelement.has.already.been.added.to.the.document"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/ChapterAutoNumber;->addSection(Lcom/itextpdf/text/Paragraph;I)Lcom/itextpdf/text/Section;

    move-result-object v0

    return-object v0
.end method

.method public addSection(Ljava/lang/String;)Lcom/itextpdf/text/Section;
    .locals 3
    .parameter "title"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/itextpdf/text/ChapterAutoNumber;->isAddedCompletely()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this.largeelement.has.already.been.added.to.the.document"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/ChapterAutoNumber;->addSection(Ljava/lang/String;I)Lcom/itextpdf/text/Section;

    move-result-object v0

    return-object v0
.end method

.method public setAutomaticNumber(I)I
    .locals 1
    .parameter "number"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/itextpdf/text/ChapterAutoNumber;->numberSet:Z

    if-nez v0, :cond_0

    .line 117
    add-int/lit8 p1, p1, 0x1

    .line 118
    invoke-super {p0, p1}, Lcom/itextpdf/text/Chapter;->setChapterNumber(I)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/ChapterAutoNumber;->numberSet:Z

    .line 121
    :cond_0
    return p1
.end method
