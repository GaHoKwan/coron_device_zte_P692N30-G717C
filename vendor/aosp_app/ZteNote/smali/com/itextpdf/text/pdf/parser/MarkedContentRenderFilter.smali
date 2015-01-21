.class public Lcom/itextpdf/text/pdf/parser/MarkedContentRenderFilter;
.super Lcom/itextpdf/text/pdf/parser/RenderFilter;
.source "MarkedContentRenderFilter.java"


# instance fields
.field private mcid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "mcid"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/RenderFilter;-><init>()V

    .line 60
    iput p1, p0, Lcom/itextpdf/text/pdf/parser/MarkedContentRenderFilter;->mcid:I

    .line 61
    return-void
.end method


# virtual methods
.method public allowText(Lcom/itextpdf/text/pdf/parser/TextRenderInfo;)Z
    .locals 1
    .parameter "renderInfo"

    .prologue
    .line 67
    iget v0, p0, Lcom/itextpdf/text/pdf/parser/MarkedContentRenderFilter;->mcid:I

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->hasMcid(I)Z

    move-result v0

    return v0
.end method
