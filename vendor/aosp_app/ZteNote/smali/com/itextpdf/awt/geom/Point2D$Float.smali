.class public Lcom/itextpdf/awt/geom/Point2D$Float;
.super Lcom/itextpdf/awt/geom/Point2D;
.source "Point2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/Point2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Point2D;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Point2D;-><init>()V

    .line 39
    iput p1, p0, Lcom/itextpdf/awt/geom/Point2D$Float;->x:F

    .line 40
    iput p2, p0, Lcom/itextpdf/awt/geom/Point2D$Float;->y:F

    .line 41
    return-void
.end method


# virtual methods
.method public getX()D
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/itextpdf/awt/geom/Point2D$Float;->x:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/itextpdf/awt/geom/Point2D$Float;->y:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public setLocation(DD)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 60
    double-to-float v0, p1

    iput v0, p0, Lcom/itextpdf/awt/geom/Point2D$Float;->x:F

    .line 61
    double-to-float v0, p3

    iput v0, p0, Lcom/itextpdf/awt/geom/Point2D$Float;->y:F

    .line 62
    return-void
.end method

.method public setLocation(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 54
    iput p1, p0, Lcom/itextpdf/awt/geom/Point2D$Float;->x:F

    .line 55
    iput p2, p0, Lcom/itextpdf/awt/geom/Point2D$Float;->y:F

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/awt/geom/Point2D$Float;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/awt/geom/Point2D$Float;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
