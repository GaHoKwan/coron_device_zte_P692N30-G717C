.class public Lcom/itextpdf/text/pdf/parser/TextRenderInfo;
.super Ljava/lang/Object;
.source "TextRenderInfo.java"


# instance fields
.field private final gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

.field private final markedContentInfos:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/String;

.field private final textToUserSpaceTransformMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/GraphicsState;Lcom/itextpdf/text/pdf/parser/Matrix;Ljava/util/Collection;)V
    .locals 1
    .parameter "text"
    .parameter "gs"
    .parameter "textMatrix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/parser/GraphicsState;",
            "Lcom/itextpdf/text/pdf/parser/Matrix;",
            "Ljava/util/Collection",
            "<",
            "Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p4, markedContentInfo:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->text:Ljava/lang/String;

    .line 80
    iget-object v0, p2, Lcom/itextpdf/text/pdf/parser/GraphicsState;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {p3, v0}, Lcom/itextpdf/text/pdf/parser/Matrix;->multiply(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 81
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->markedContentInfos:Ljava/util/Collection;

    .line 83
    return-void
.end method

.method private getStringWidth(Ljava/lang/String;)F
    .locals 8
    .parameter "string"

    .prologue
    .line 206
    iget-object v6, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    iget-object v1, v6, Lcom/itextpdf/text/pdf/parser/GraphicsState;->font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    .line 207
    .local v1, font:Lcom/itextpdf/text/pdf/DocumentFont;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 208
    .local v0, chars:[C
    const/4 v3, 0x0

    .line 209
    .local v3, totalWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_1

    .line 210
    aget-char v6, v0, v2

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/DocumentFont;->getWidth(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 211
    .local v4, w:F
    aget-char v6, v0, v2

    const/16 v7, 0x20

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    iget v5, v6, Lcom/itextpdf/text/pdf/parser/GraphicsState;->wordSpacing:F

    .line 212
    .local v5, wordSpacing:F
    :goto_1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    iget v6, v6, Lcom/itextpdf/text/pdf/parser/GraphicsState;->fontSize:F

    mul-float/2addr v6, v4

    iget-object v7, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    iget v7, v7, Lcom/itextpdf/text/pdf/parser/GraphicsState;->characterSpacing:F

    add-float/2addr v6, v7

    add-float/2addr v6, v5

    iget-object v7, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    iget v7, v7, Lcom/itextpdf/text/pdf/parser/GraphicsState;->horizontalScaling:F

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v5           #wordSpacing:F
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 215
    .end local v4           #w:F
    :cond_1
    return v3
.end method

.method private getUnscaledBaselineWithOffset(F)Lcom/itextpdf/text/pdf/parser/LineSegment;
    .locals 5
    .parameter "yOffset"

    .prologue
    const/high16 v4, 0x3f80

    .line 147
    new-instance v0, Lcom/itextpdf/text/pdf/parser/LineSegment;

    new-instance v1, Lcom/itextpdf/text/pdf/parser/Vector;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v4}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    new-instance v2, Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getUnscaledWidth()F

    move-result v3

    invoke-direct {v2, v3, p1, v4}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/parser/LineSegment;-><init>(Lcom/itextpdf/text/pdf/parser/Vector;Lcom/itextpdf/text/pdf/parser/Vector;)V

    return-object v0
.end method

.method private getUnscaledFontSpaceWidth()F
    .locals 2

    .prologue
    .line 194
    const/16 v0, 0x20

    .line 195
    .local v0, charToUse:C
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->getWidth(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const/16 v0, 0xa0

    .line 197
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getStringWidth(Ljava/lang/String;)F

    move-result v1

    return v1
.end method


# virtual methods
.method public getAscentLine()Lcom/itextpdf/text/pdf/parser/LineSegment;
    .locals 4

    .prologue
    .line 131
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/parser/GraphicsState;->getFont()Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/parser/GraphicsState;->getFontSize()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->getFontDescriptor(IF)F

    move-result v0

    .line 132
    .local v0, ascent:F
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getUnscaledBaselineWithOffset(F)Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/parser/LineSegment;->transformBy(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v1

    return-object v1
.end method

.method public getBaseline()Lcom/itextpdf/text/pdf/parser/LineSegment;
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getUnscaledBaselineWithOffset(F)Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/parser/LineSegment;->transformBy(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v0

    return-object v0
.end method

.method public getDescentLine()Lcom/itextpdf/text/pdf/parser/LineSegment;
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/parser/GraphicsState;->getFont()Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/parser/GraphicsState;->getFontSize()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->getFontDescriptor(IF)F

    move-result v0

    .line 143
    .local v0, descent:F
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getUnscaledBaselineWithOffset(F)Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/parser/LineSegment;->transformBy(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v1

    return-object v1
.end method

.method public getFont()Lcom/itextpdf/text/pdf/DocumentFont;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/parser/GraphicsState;->getFont()Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    move-result-object v0

    return-object v0
.end method

.method public getSingleSpaceWidth()F
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 163
    new-instance v0, Lcom/itextpdf/text/pdf/parser/LineSegment;

    new-instance v2, Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-direct {v2, v5, v5, v6}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    new-instance v3, Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getUnscaledFontSpaceWidth()F

    move-result v4

    invoke-direct {v3, v4, v5, v6}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    invoke-direct {v0, v2, v3}, Lcom/itextpdf/text/pdf/parser/LineSegment;-><init>(Lcom/itextpdf/text/pdf/parser/Vector;Lcom/itextpdf/text/pdf/parser/Vector;)V

    .line 164
    .local v0, textSpace:Lcom/itextpdf/text/pdf/parser/LineSegment;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/parser/LineSegment;->transformBy(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v1

    .line 165
    .local v1, userSpace:Lcom/itextpdf/text/pdf/parser/LineSegment;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getLength()F

    move-result v2

    return v2
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextRenderMode()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;

    iget v0, v0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->renderMode:I

    return v0
.end method

.method getUnscaledWidth()F
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getStringWidth(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public hasMcid(I)Z
    .locals 3
    .parameter "mcid"

    .prologue
    .line 100
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->markedContentInfos:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;

    .line 101
    .local v1, info:Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;->hasMcid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;->getMcid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 103
    const/4 v2, 0x1

    .line 106
    .end local v1           #info:Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
