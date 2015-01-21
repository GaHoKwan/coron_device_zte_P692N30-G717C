.class public Lcom/itextpdf/awt/geom/Rectangle2D$Float;
.super Lcom/itextpdf/awt/geom/Rectangle2D;
.source "Rectangle2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/Rectangle2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;-><init>()V

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->setRect(FFFF)V

    .line 50
    return-void
.end method


# virtual methods
.method public createIntersection(Lcom/itextpdf/awt/geom/Rectangle2D;)Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 2
    .parameter "r"

    .prologue
    .line 135
    instance-of v1, p1, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    if-eqz v1, :cond_0

    .line 136
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;-><init>()V

    .line 140
    .local v0, dst:Lcom/itextpdf/awt/geom/Rectangle2D;
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->intersect(Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;)V

    .line 141
    return-object v0

    .line 138
    .end local v0           #dst:Lcom/itextpdf/awt/geom/Rectangle2D;
    :cond_0
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/Rectangle2D$Float;-><init>()V

    .restart local v0       #dst:Lcom/itextpdf/awt/geom/Rectangle2D;
    goto :goto_0
.end method

.method public createUnion(Lcom/itextpdf/awt/geom/Rectangle2D;)Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 2
    .parameter "r"

    .prologue
    .line 147
    instance-of v1, p1, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    if-eqz v1, :cond_0

    .line 148
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;-><init>()V

    .line 152
    .local v0, dst:Lcom/itextpdf/awt/geom/Rectangle2D;
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->union(Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;)V

    .line 153
    return-object v0

    .line 150
    .end local v0           #dst:Lcom/itextpdf/awt/geom/Rectangle2D;
    :cond_0
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/Rectangle2D$Float;-><init>()V

    .restart local v0       #dst:Lcom/itextpdf/awt/geom/Rectangle2D;
    goto :goto_0
.end method

.method public getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 5

    .prologue
    .line 129
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    iget v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->x:F

    iget v2, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->y:F

    iget v3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->width:F

    iget v4, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->height:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->height:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->width:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->x:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->y:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->width:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->height:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public outcode(DD)I
    .locals 4
    .parameter "px"
    .parameter "py"

    .prologue
    const/4 v3, 0x0

    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, code:I
    iget v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->width:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    .line 105
    or-int/lit8 v0, v0, 0x5

    .line 114
    :cond_0
    :goto_0
    iget v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->height:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    .line 115
    or-int/lit8 v0, v0, 0xa

    .line 124
    :cond_1
    :goto_1
    return v0

    .line 107
    :cond_2
    iget v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->x:F

    float-to-double v1, v1

    cmpg-double v1, p1, v1

    if-gez v1, :cond_3

    .line 108
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_3
    iget v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->x:F

    iget v2, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->width:F

    add-float/2addr v1, v2

    float-to-double v1, v1

    cmpl-double v1, p1, v1

    if-lez v1, :cond_0

    .line 111
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 117
    :cond_4
    iget v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->y:F

    float-to-double v1, v1

    cmpg-double v1, p3, v1

    if-gez v1, :cond_5

    .line 118
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 120
    :cond_5
    iget v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->y:F

    iget v2, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->height:F

    add-float/2addr v1, v2

    float-to-double v1, v1

    cmpl-double v1, p3, v1

    if-lez v1, :cond_1

    .line 121
    or-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method public setRect(DDDD)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 86
    double-to-float v0, p1

    iput v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->x:F

    .line 87
    double-to-float v0, p3

    iput v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->y:F

    .line 88
    double-to-float v0, p5

    iput v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->width:F

    .line 89
    double-to-float v0, p7

    iput v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->height:F

    .line 90
    return-void
.end method

.method public setRect(FFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 78
    iput p1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->x:F

    .line 79
    iput p2, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->y:F

    .line 80
    iput p3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->width:F

    .line 81
    iput p4, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->height:F

    .line 82
    return-void
.end method

.method public setRect(Lcom/itextpdf/awt/geom/Rectangle2D;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->x:F

    .line 95
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->y:F

    .line 96
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->width:F

    .line 97
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->height:F

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
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

    iget v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Float;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
