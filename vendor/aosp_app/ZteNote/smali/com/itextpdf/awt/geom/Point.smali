.class public Lcom/itextpdf/awt/geom/Point;
.super Lcom/itextpdf/awt/geom/Point2D;
.source "Point.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x493b758dcb8137daL


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Point2D;-><init>()V

    .line 36
    invoke-virtual {p0, v0, v0}, Lcom/itextpdf/awt/geom/Point;->setLocation(II)V

    .line 37
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Point2D;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/Point;->setLocation(DD)V

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Point2D;-><init>()V

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/awt/geom/Point;->setLocation(II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/awt/geom/Point;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Point2D;-><init>()V

    .line 48
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/Point;->x:D

    iget-wide v2, p1, Lcom/itextpdf/awt/geom/Point;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Point;->setLocation(DD)V

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p1, p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    instance-of v3, p1, Lcom/itextpdf/awt/geom/Point;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/itextpdf/awt/geom/Point;

    .line 58
    .local v0, p:Lcom/itextpdf/awt/geom/Point;
    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Point;->x:D

    iget-wide v5, v0, Lcom/itextpdf/awt/geom/Point;->x:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Point;->y:D

    iget-wide v5, v0, Lcom/itextpdf/awt/geom/Point;->y:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #p:Lcom/itextpdf/awt/geom/Point;
    :cond_3
    move v1, v2

    .line 60
    goto :goto_0
.end method

.method public getLocation()Lcom/itextpdf/awt/geom/Point;
    .locals 5

    .prologue
    .line 79
    new-instance v0, Lcom/itextpdf/awt/geom/Point;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Point;->x:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Point;->y:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Point;-><init>(DD)V

    return-object v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Point;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Point;->y:D

    return-wide v0
.end method

.method public move(DD)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/Point;->setLocation(DD)V

    .line 101
    return-void
.end method

.method public move(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 97
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Point;->move(DD)V

    .line 98
    return-void
.end method

.method public setLocation(DD)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/Point;->x:D

    .line 93
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/Point;->y:D

    .line 94
    return-void
.end method

.method public setLocation(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 87
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Point;->setLocation(DD)V

    .line 88
    return-void
.end method

.method public setLocation(Lcom/itextpdf/awt/geom/Point;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 83
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/Point;->x:D

    iget-wide v2, p1, Lcom/itextpdf/awt/geom/Point;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Point;->setLocation(DD)V

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
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

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Point;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Point;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(DD)V
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Point;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Point;->x:D

    .line 108
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Point;->y:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Point;->y:D

    .line 109
    return-void
.end method

.method public translate(II)V
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Point;->x:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/Point;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Point;->translate(DD)V

    .line 105
    return-void
.end method
