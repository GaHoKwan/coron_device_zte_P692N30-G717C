.class public Lcom/itextpdf/text/pdf/PatternColor;
.super Lcom/itextpdf/text/pdf/ExtendedColor;
.source "PatternColor.java"


# static fields
.field private static final serialVersionUID:J = -0x10738f2d94c2051cL


# instance fields
.field painter:Lcom/itextpdf/text/pdf/PdfPatternPainter;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V
    .locals 2
    .parameter "painter"

    .prologue
    const/high16 v1, 0x3f00

    .line 59
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/itextpdf/text/pdf/ExtendedColor;-><init>(IFFF)V

    .line 60
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PatternColor;->painter:Lcom/itextpdf/text/pdf/PdfPatternPainter;

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 71
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPainter()Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PatternColor;->painter:Lcom/itextpdf/text/pdf/PdfPatternPainter;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PatternColor;->painter:Lcom/itextpdf/text/pdf/PdfPatternPainter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
