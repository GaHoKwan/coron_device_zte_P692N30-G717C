.class public abstract Lcom/itextpdf/text/pdf/parser/RenderFilter;
.super Ljava/lang/Object;
.source "RenderFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowImage(Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;)Z
    .locals 1
    .parameter "renderInfo"

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public allowText(Lcom/itextpdf/text/pdf/parser/TextRenderInfo;)Z
    .locals 1
    .parameter "renderInfo"

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
