.class public abstract Lcom/itextpdf/awt/geom/Point2D;
.super Ljava/lang/Object;
.source "Point2D.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/awt/geom/Point2D$Double;,
        Lcom/itextpdf/awt/geom/Point2D$Float;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static distance(DDDD)D
    .locals 2
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 133
    invoke-static/range {p0 .. p7}, Lcom/itextpdf/awt/geom/Point2D;->distanceSq(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceSq(DDDD)D
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 119
    sub-double/2addr p4, p0

    .line 120
    sub-double/2addr p6, p2

    .line 121
    mul-double v0, p4, p4

    mul-double v2, p6, p6

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 147
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public distance(DD)D
    .locals 2
    .parameter "px"
    .parameter "py"

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/Point2D;->distanceSq(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public distance(Lcom/itextpdf/awt/geom/Point2D;)D
    .locals 2
    .parameter "p"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/itextpdf/awt/geom/Point2D;->distanceSq(Lcom/itextpdf/awt/geom/Point2D;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceSq(DD)D
    .locals 8
    .parameter "px"
    .parameter "py"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v2

    move-wide v4, p1

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/awt/geom/Point2D;->distanceSq(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceSq(Lcom/itextpdf/awt/geom/Point2D;)D
    .locals 8
    .parameter "p"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/awt/geom/Point2D;->distanceSq(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    if-ne p1, p0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    instance-of v3, p1, Lcom/itextpdf/awt/geom/Point2D;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 167
    check-cast v0, Lcom/itextpdf/awt/geom/Point2D;

    .line 168
    .local v0, p:Lcom/itextpdf/awt/geom/Point2D;
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #p:Lcom/itextpdf/awt/geom/Point2D;
    :cond_3
    move v1, v2

    .line 170
    goto :goto_0
.end method

.method public abstract getX()D
.end method

.method public abstract getY()D
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 155
    new-instance v0, Lcom/itextpdf/awt/geom/misc/HashCode;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/misc/HashCode;-><init>()V

    .line 156
    .local v0, hash:Lcom/itextpdf/awt/geom/misc/HashCode;
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 157
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 158
    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode()I

    move-result v1

    return v1
.end method

.method public abstract setLocation(DD)V
.end method

.method public setLocation(Lcom/itextpdf/awt/geom/Point2D;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Point2D;->setLocation(DD)V

    .line 116
    return-void
.end method
