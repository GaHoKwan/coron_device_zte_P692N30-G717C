.class public Lcom/itextpdf/text/pdf/ShadingColor;
.super Lcom/itextpdf/text/pdf/ExtendedColor;
.source "ShadingColor.java"


# static fields
.field private static final serialVersionUID:J = 0x42dcb95012ab551fL


# instance fields
.field shadingPattern:Lcom/itextpdf/text/pdf/PdfShadingPattern;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V
    .locals 2
    .parameter "shadingPattern"

    .prologue
    const/high16 v1, 0x3f00

    .line 60
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/itextpdf/text/pdf/ExtendedColor;-><init>(IFFF)V

    .line 61
    iput-object p1, p0, Lcom/itextpdf/text/pdf/ShadingColor;->shadingPattern:Lcom/itextpdf/text/pdf/PdfShadingPattern;

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 73
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPdfShadingPattern()Lcom/itextpdf/text/pdf/PdfShadingPattern;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ShadingColor;->shadingPattern:Lcom/itextpdf/text/pdf/PdfShadingPattern;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ShadingColor;->shadingPattern:Lcom/itextpdf/text/pdf/PdfShadingPattern;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
