.class public Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;
.super Ljava/lang/Object;
.source "VerticalPositionMark.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/draw/DrawInterface;
.implements Lcom/itextpdf/text/Element;


# instance fields
.field protected drawInterface:Lcom/itextpdf/text/pdf/draw/DrawInterface;

.field protected offset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->drawInterface:Lcom/itextpdf/text/pdf/draw/DrawInterface;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->offset:F

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/draw/DrawInterface;F)V
    .locals 1
    .parameter "drawInterface"
    .parameter "offset"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->drawInterface:Lcom/itextpdf/text/pdf/draw/DrawInterface;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->offset:F

    .line 84
    iput-object p1, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->drawInterface:Lcom/itextpdf/text/pdf/draw/DrawInterface;

    .line 85
    iput p2, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->offset:F

    .line 86
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V
    .locals 7
    .parameter "canvas"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "y"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->drawInterface:Lcom/itextpdf/text/pdf/draw/DrawInterface;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->drawInterface:Lcom/itextpdf/text/pdf/draw/DrawInterface;

    iget v1, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->offset:F

    add-float v6, p6, v1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/itextpdf/text/pdf/draw/DrawInterface;->draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V

    .line 95
    :cond_0
    return-void
.end method

.method public getChunks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/Chunk;>;"
    new-instance v1, Lcom/itextpdf/text/Chunk;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/itextpdf/text/Chunk;-><init>(Lcom/itextpdf/text/pdf/draw/DrawInterface;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-object v0
.end method

.method public getDrawInterface()Lcom/itextpdf/text/pdf/draw/DrawInterface;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->drawInterface:Lcom/itextpdf/text/pdf/draw/DrawInterface;

    return-object v0
.end method

.method public getOffset()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->offset:F

    return v0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 102
    :try_start_0
    invoke-interface {p1, p0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 104
    :goto_0
    return v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Lcom/itextpdf/text/DocumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDrawInterface(Lcom/itextpdf/text/pdf/draw/DrawInterface;)V
    .locals 0
    .parameter "drawInterface"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->drawInterface:Lcom/itextpdf/text/pdf/draw/DrawInterface;

    .line 152
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 169
    iput p1, p0, Lcom/itextpdf/text/pdf/draw/VerticalPositionMark;->offset:F

    .line 170
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x37

    return v0
.end method
