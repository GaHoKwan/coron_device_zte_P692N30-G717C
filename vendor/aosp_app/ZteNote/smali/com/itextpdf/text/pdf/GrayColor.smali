.class public Lcom/itextpdf/text/pdf/GrayColor;
.super Lcom/itextpdf/text/pdf/ExtendedColor;
.source "GrayColor.java"


# static fields
.field public static final GRAYBLACK:Lcom/itextpdf/text/pdf/GrayColor; = null

.field public static final GRAYWHITE:Lcom/itextpdf/text/pdf/GrayColor; = null

.field private static final serialVersionUID:J = -0x5b33d9bb8d78833aL


# instance fields
.field private gray:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/itextpdf/text/pdf/GrayColor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/GrayColor;-><init>(F)V

    sput-object v0, Lcom/itextpdf/text/pdf/GrayColor;->GRAYBLACK:Lcom/itextpdf/text/pdf/GrayColor;

    .line 57
    new-instance v0, Lcom/itextpdf/text/pdf/GrayColor;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/GrayColor;-><init>(F)V

    sput-object v0, Lcom/itextpdf/text/pdf/GrayColor;->GRAYWHITE:Lcom/itextpdf/text/pdf/GrayColor;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "floatGray"

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p1, p1}, Lcom/itextpdf/text/pdf/ExtendedColor;-><init>(IFFF)V

    .line 65
    invoke-static {p1}, Lcom/itextpdf/text/pdf/GrayColor;->normalize(F)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/GrayColor;->gray:F

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "intGray"

    .prologue
    .line 60
    int-to-float v0, p1

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/GrayColor;-><init>(F)V

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 73
    instance-of v0, p1, Lcom/itextpdf/text/pdf/GrayColor;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/itextpdf/text/pdf/GrayColor;

    .end local p1
    iget v0, p1, Lcom/itextpdf/text/pdf/GrayColor;->gray:F

    iget v1, p0, Lcom/itextpdf/text/pdf/GrayColor;->gray:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGray()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/itextpdf/text/pdf/GrayColor;->gray:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/itextpdf/text/pdf/GrayColor;->gray:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method
