.class public Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
.super Ljava/lang/Object;
.source "RtfSectionFormatAndHeaderFooter.java"


# instance fields
.field final rtf:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "rtf"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;->rtf:Ljava/lang/CharSequence;

    .line 49
    return-void
.end method

.method public static beginningPageNumber(I)Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 3
    .parameter "pageNumber"

    .prologue
    .line 183
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\pgnstarts"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static bottomAlignText()Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "\\vertalb"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static breakStartsNewColumn()Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "\\sbkcol"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static breakStartsNewEvenPage()Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "\\sbkeven"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static breakStartsNewOddPage()Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "\\sbkodd"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static breakStartsNewPage()Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "\\sbkpage"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static centerVerticalText()Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "\\vertalc"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static columns(I)Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 3
    .parameter "columns"

    .prologue
    .line 144
    if-gtz p0, :cond_0

    .line 145
    new-instance v0, Lcom/tutego/jrtf/RtfException;

    const-string v1, "Number of colums can\'t be <= 0"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\cols"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static endnotesIncluded()Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "\\endnhere"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static footerOnAllPages(Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2
    .parameter "para"

    .prologue
    .line 278
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "footer"

    invoke-static {v1, p0}, Lcom/tutego/jrtf/Rtf;->frameRtfParagraphWithEndingPar(Ljava/lang/String;Lcom/tutego/jrtf/RtfPara;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static headerForAllPages(Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2
    .parameter "para"

    .prologue
    .line 238
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "header"

    invoke-static {v1, p0}, Lcom/tutego/jrtf/Rtf;->frameRtfParagraphWithEndingPar(Ljava/lang/String;Lcom/tutego/jrtf/RtfPara;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static headerForFirstPage(Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2
    .parameter "para"

    .prologue
    .line 268
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "headerf"

    invoke-static {v1, p0}, Lcom/tutego/jrtf/Rtf;->frameRtfParagraphWithEndingPar(Ljava/lang/String;Lcom/tutego/jrtf/RtfPara;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static headerForLeftHandPages(Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2
    .parameter "para"

    .prologue
    .line 248
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "headerl"

    invoke-static {v1, p0}, Lcom/tutego/jrtf/Rtf;->frameRtfParagraphWithEndingPar(Ljava/lang/String;Lcom/tutego/jrtf/RtfPara;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static headerForRightHandPages(Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2
    .parameter "para"

    .prologue
    .line 258
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "headerr"

    invoke-static {v1, p0}, Lcom/tutego/jrtf/Rtf;->frameRtfParagraphWithEndingPar(Ljava/lang/String;Lcom/tutego/jrtf/RtfPara;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static justifyVerticalText()Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "\\vertalj"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static lineBetweenColumns()Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "\\linebetcol"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static noBreak()Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "\\sbknone"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static reset()Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "\\sectd"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static varargs sectionFormatting([Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;)Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 5
    .parameter "sectionFormats"

    .prologue
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    .local v1, sb:Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 67
    new-instance v2, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    invoke-direct {v2, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v2

    .line 64
    :cond_0
    aget-object v0, p0, v2

    .line 65
    .local v0, rtfSectionFormat:Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    iget-object v4, v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;->rtf:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static spaceBetweenColumns(DLcom/tutego/jrtf/RtfUnit;)Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 3
    .parameter "space"
    .parameter "unit"

    .prologue
    .line 158
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\colsx"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/tutego/jrtf/RtfUnit;->toTwips(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static topAlignText()Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;

    const-string v1, "\\vertalt"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
