.class public Lcom/itextpdf/text/pdf/parser/FilteredRenderListener;
.super Ljava/lang/Object;
.source "FilteredRenderListener.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/parser/RenderListener;


# instance fields
.field private final delegate:Lcom/itextpdf/text/pdf/parser/RenderListener;

.field private final filters:[Lcom/itextpdf/text/pdf/parser/RenderFilter;


# direct methods
.method public varargs constructor <init>(Lcom/itextpdf/text/pdf/parser/RenderListener;[Lcom/itextpdf/text/pdf/parser/RenderFilter;)V
    .locals 0
    .parameter "delegate"
    .parameter "filters"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/FilteredRenderListener;->delegate:Lcom/itextpdf/text/pdf/parser/RenderListener;

    .line 65
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/FilteredRenderListener;->filters:[Lcom/itextpdf/text/pdf/parser/RenderFilter;

    .line 66
    return-void
.end method


# virtual methods
.method public beginTextBlock()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/FilteredRenderListener;->delegate:Lcom/itextpdf/text/pdf/parser/RenderListener;

    invoke-interface {v0}, Lcom/itextpdf/text/pdf/parser/RenderListener;->beginTextBlock()V

    .line 87
    return-void
.end method

.method public endTextBlock()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/FilteredRenderListener;->delegate:Lcom/itextpdf/text/pdf/parser/RenderListener;

    invoke-interface {v0}, Lcom/itextpdf/text/pdf/parser/RenderListener;->endTextBlock()V

    .line 95
    return-void
.end method

.method public renderImage(Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;)V
    .locals 5
    .parameter "renderInfo"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/FilteredRenderListener;->filters:[Lcom/itextpdf/text/pdf/parser/RenderFilter;

    .local v0, arr$:[Lcom/itextpdf/text/pdf/parser/RenderFilter;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 104
    .local v1, filter:Lcom/itextpdf/text/pdf/parser/RenderFilter;
    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/parser/RenderFilter;->allowImage(Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    .end local v1           #filter:Lcom/itextpdf/text/pdf/parser/RenderFilter;
    :goto_1
    return-void

    .line 103
    .restart local v1       #filter:Lcom/itextpdf/text/pdf/parser/RenderFilter;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v1           #filter:Lcom/itextpdf/text/pdf/parser/RenderFilter;
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/FilteredRenderListener;->delegate:Lcom/itextpdf/text/pdf/parser/RenderListener;

    invoke-interface {v4, p1}, Lcom/itextpdf/text/pdf/parser/RenderListener;->renderImage(Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;)V

    goto :goto_1
.end method

.method public renderText(Lcom/itextpdf/text/pdf/parser/TextRenderInfo;)V
    .locals 5
    .parameter "renderInfo"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/FilteredRenderListener;->filters:[Lcom/itextpdf/text/pdf/parser/RenderFilter;

    .local v0, arr$:[Lcom/itextpdf/text/pdf/parser/RenderFilter;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 75
    .local v1, filter:Lcom/itextpdf/text/pdf/parser/RenderFilter;
    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/parser/RenderFilter;->allowText(Lcom/itextpdf/text/pdf/parser/TextRenderInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    .end local v1           #filter:Lcom/itextpdf/text/pdf/parser/RenderFilter;
    :goto_1
    return-void

    .line 74
    .restart local v1       #filter:Lcom/itextpdf/text/pdf/parser/RenderFilter;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v1           #filter:Lcom/itextpdf/text/pdf/parser/RenderFilter;
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/FilteredRenderListener;->delegate:Lcom/itextpdf/text/pdf/parser/RenderListener;

    invoke-interface {v4, p1}, Lcom/itextpdf/text/pdf/parser/RenderListener;->renderText(Lcom/itextpdf/text/pdf/parser/TextRenderInfo;)V

    goto :goto_1
.end method
