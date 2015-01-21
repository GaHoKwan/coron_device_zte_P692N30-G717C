.class public Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;
.super Ljava/lang/Object;
.source "LocationTextExtractionStrategy.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/parser/TextExtractionStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;
    }
.end annotation


# static fields
.field static DUMP_STATE:Z


# instance fields
.field private final locationalResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;->DUMP_STATE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;->locationalResult:Ljava/util/List;

    .line 83
    return-void
.end method

.method private dumpState()V
    .locals 3

    .prologue
    .line 156
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;->locationalResult:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;

    .line 159
    .local v1, location:Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;
    #calls: Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->printDiagnostics()V
    invoke-static {v1}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->access$000(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)V

    .line 161
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    goto :goto_0

    .line 164
    .end local v1           #location:Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;
    :cond_0
    return-void
.end method

.method private endsWithSpace(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startsWithSpace(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public beginTextBlock()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public endTextBlock()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public getResultantText()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 121
    sget-boolean v5, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;->DUMP_STATE:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;->dumpState()V

    .line 123
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;->locationalResult:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 125
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 127
    .local v3, lastChunk:Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;->locationalResult:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;

    .line 129
    .local v0, chunk:Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;
    if-nez v3, :cond_1

    .line 130
    iget-object v5, v0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :goto_1
    move-object v3, v0

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->sameLine(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 133
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distanceFromEndOf(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)F

    move-result v1

    .line 135
    .local v1, dist:F
    iget v5, v0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->charSpaceWidth:F

    neg-float v5, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    .line 136
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    :cond_2
    :goto_2
    iget-object v5, v0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 138
    :cond_3
    iget v5, v0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->charSpaceWidth:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    iget-object v5, v0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->text:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;->startsWithSpace(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v3, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->text:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;->endsWithSpace(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 139
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 143
    .end local v1           #dist:F
    :cond_4
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    iget-object v5, v0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 150
    .end local v0           #chunk:Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public renderImage(Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;)V
    .locals 0
    .parameter "renderInfo"

    .prologue
    .line 292
    return-void
.end method

.method public renderText(Lcom/itextpdf/text/pdf/parser/TextRenderInfo;)V
    .locals 6
    .parameter "renderInfo"

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getBaseline()Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v1

    .line 172
    .local v1, segment:Lcom/itextpdf/text/pdf/parser/LineSegment;
    new-instance v0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getStartPoint()Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getEndPoint()Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v4

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getSingleSpaceWidth()F

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/Vector;Lcom/itextpdf/text/pdf/parser/Vector;F)V

    .line 173
    .local v0, location:Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;->locationalResult:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
