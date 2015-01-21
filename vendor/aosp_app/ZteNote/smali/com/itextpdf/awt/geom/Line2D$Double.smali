.class public Lcom/itextpdf/awt/geom/Line2D$Double;
.super Lcom/itextpdf/awt/geom/Line2D;
.source "Line2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/Line2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Double"
.end annotation


# instance fields
.field public x1:D

.field public x2:D

.field public y1:D

.field public y2:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Line2D;-><init>()V

    .line 123
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Line2D;-><init>()V

    .line 126
    invoke-virtual/range {p0 .. p8}, Lcom/itextpdf/awt/geom/Line2D$Double;->setLine(DDDD)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;)V
    .locals 0
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Line2D;-><init>()V

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/awt/geom/Line2D$Double;->setLine(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;)V

    .line 131
    return-void
.end method


# virtual methods
.method public getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 13

    .prologue
    .line 173
    iget-wide v9, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x1:D

    iget-wide v11, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x2:D

    cmpg-double v0, v9, v11

    if-gez v0, :cond_0

    .line 174
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x1:D

    .line 175
    .local v1, rx:D
    iget-wide v9, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x2:D

    iget-wide v11, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x1:D

    sub-double v5, v9, v11

    .line 180
    .local v5, rw:D
    :goto_0
    iget-wide v9, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y1:D

    iget-wide v11, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y2:D

    cmpg-double v0, v9, v11

    if-gez v0, :cond_1

    .line 181
    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y1:D

    .line 182
    .local v3, ry:D
    iget-wide v9, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y2:D

    iget-wide v11, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y1:D

    sub-double v7, v9, v11

    .line 187
    .local v7, rh:D
    :goto_1
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0

    .line 177
    .end local v1           #rx:D
    .end local v3           #ry:D
    .end local v5           #rw:D
    .end local v7           #rh:D
    :cond_0
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x2:D

    .line 178
    .restart local v1       #rx:D
    iget-wide v9, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x1:D

    iget-wide v11, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x2:D

    sub-double v5, v9, v11

    .restart local v5       #rw:D
    goto :goto_0

    .line 184
    :cond_1
    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y2:D

    .line 185
    .restart local v3       #ry:D
    iget-wide v9, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y1:D

    iget-wide v11, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y2:D

    sub-double v7, v9, v11

    .restart local v7       #rh:D
    goto :goto_1
.end method

.method public getP1()Lcom/itextpdf/awt/geom/Point2D;
    .locals 5

    .prologue
    .line 155
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Double;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x1:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y1:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getP2()Lcom/itextpdf/awt/geom/Point2D;
    .locals 5

    .prologue
    .line 160
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Double;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x2:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y2:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getX1()D
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x1:D

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x2:D

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y1:D

    return-wide v0
.end method

.method public getY2()D
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y2:D

    return-wide v0
.end method

.method public setLine(DDDD)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x1:D

    .line 166
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y1:D

    .line 167
    iput-wide p5, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->x2:D

    .line 168
    iput-wide p7, p0, Lcom/itextpdf/awt/geom/Line2D$Double;->y2:D

    .line 169
    return-void
.end method
