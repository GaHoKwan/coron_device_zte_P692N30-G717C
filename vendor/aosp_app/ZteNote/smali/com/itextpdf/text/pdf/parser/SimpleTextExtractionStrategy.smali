.class public Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;
.super Ljava/lang/Object;
.source "SimpleTextExtractionStrategy.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/parser/TextExtractionStrategy;


# instance fields
.field private lastEnd:Lcom/itextpdf/text/pdf/parser/Vector;

.field private lastStart:Lcom/itextpdf/text/pdf/parser/Vector;

.field private final result:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuffer;

    .line 72
    return-void
.end method


# virtual methods
.method public beginTextBlock()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public endTextBlock()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public getResultantText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public renderImage(Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;)V
    .locals 0
    .parameter "renderInfo"

    .prologue
    .line 152
    return-void
.end method

.method public renderText(Lcom/itextpdf/text/pdf/parser/TextRenderInfo;)V
    .locals 13
    .parameter "renderInfo"

    .prologue
    .line 99
    iget-object v11, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-nez v11, :cond_2

    const/4 v2, 0x1

    .line 100
    .local v2, firstRender:Z
    :goto_0
    const/4 v3, 0x0

    .line 102
    .local v3, hardReturn:Z
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getBaseline()Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v5

    .line 103
    .local v5, segment:Lcom/itextpdf/text/pdf/parser/LineSegment;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getStartPoint()Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v7

    .line 104
    .local v7, start:Lcom/itextpdf/text/pdf/parser/Vector;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getEndPoint()Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v1

    .line 106
    .local v1, end:Lcom/itextpdf/text/pdf/parser/Vector;
    if-nez v2, :cond_0

    .line 107
    move-object v8, v7

    .line 108
    .local v8, x0:Lcom/itextpdf/text/pdf/parser/Vector;
    iget-object v9, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->lastStart:Lcom/itextpdf/text/pdf/parser/Vector;

    .line 109
    .local v9, x1:Lcom/itextpdf/text/pdf/parser/Vector;
    iget-object v10, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->lastEnd:Lcom/itextpdf/text/pdf/parser/Vector;

    .line 112
    .local v10, x2:Lcom/itextpdf/text/pdf/parser/Vector;
    invoke-virtual {v10, v9}, Lcom/itextpdf/text/pdf/parser/Vector;->subtract(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v11

    invoke-virtual {v9, v8}, Lcom/itextpdf/text/pdf/parser/Vector;->subtract(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/parser/Vector;->cross(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/parser/Vector;->lengthSquared()F

    move-result v11

    invoke-virtual {v10, v9}, Lcom/itextpdf/text/pdf/parser/Vector;->subtract(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/parser/Vector;->lengthSquared()F

    move-result v12

    div-float v0, v11, v12

    .line 114
    .local v0, dist:F
    const/high16 v4, 0x3f80

    .line 115
    .local v4, sameLineThreshold:F
    cmpl-float v11, v0, v4

    if-lez v11, :cond_0

    .line 116
    const/4 v3, 0x1

    .line 122
    .end local v0           #dist:F
    .end local v4           #sameLineThreshold:F
    .end local v8           #x0:Lcom/itextpdf/text/pdf/parser/Vector;
    .end local v9           #x1:Lcom/itextpdf/text/pdf/parser/Vector;
    .end local v10           #x2:Lcom/itextpdf/text/pdf/parser/Vector;
    :cond_0
    if-eqz v3, :cond_3

    .line 124
    iget-object v11, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuffer;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    iput-object v7, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->lastStart:Lcom/itextpdf/text/pdf/parser/Vector;

    .line 141
    iput-object v1, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->lastEnd:Lcom/itextpdf/text/pdf/parser/Vector;

    .line 143
    return-void

    .line 99
    .end local v1           #end:Lcom/itextpdf/text/pdf/parser/Vector;
    .end local v2           #firstRender:Z
    .end local v3           #hardReturn:Z
    .end local v5           #segment:Lcom/itextpdf/text/pdf/parser/LineSegment;
    .end local v7           #start:Lcom/itextpdf/text/pdf/parser/Vector;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 125
    .restart local v1       #end:Lcom/itextpdf/text/pdf/parser/Vector;
    .restart local v2       #firstRender:Z
    .restart local v3       #hardReturn:Z
    .restart local v5       #segment:Lcom/itextpdf/text/pdf/parser/LineSegment;
    .restart local v7       #start:Lcom/itextpdf/text/pdf/parser/Vector;
    :cond_3
    if-nez v2, :cond_1

    .line 126
    iget-object v11, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuffer;

    iget-object v12, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-eq v11, v12, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getText()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-eq v11, v12, :cond_1

    .line 127
    iget-object v11, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->lastEnd:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v11, v7}, Lcom/itextpdf/text/pdf/parser/Vector;->subtract(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/parser/Vector;->length()F

    move-result v6

    .line 128
    .local v6, spacing:F
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getSingleSpaceWidth()F

    move-result v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    cmpl-float v11, v6, v11

    if-lez v11, :cond_1

    .line 129
    iget-object v11, p0, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuffer;

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
