.class public Lcom/itextpdf/awt/geom/Point2D$Double;
.super Lcom/itextpdf/awt/geom/Point2D;
.source "Point2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/Point2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Double"
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Point2D;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Point2D;-><init>()V

    .line 79
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/Point2D$Double;->x:D

    .line 80
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/Point2D$Double;->y:D

    .line 81
    return-void
.end method


# virtual methods
.method public getX()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Point2D$Double;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Point2D$Double;->y:D

    return-wide v0
.end method

.method public setLocation(DD)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/Point2D$Double;->x:D

    .line 96
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/Point2D$Double;->y:D

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
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

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Point2D$Double;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Point2D$Double;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
