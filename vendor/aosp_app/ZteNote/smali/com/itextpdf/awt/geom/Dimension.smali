.class public Lcom/itextpdf/awt/geom/Dimension;
.super Lcom/itextpdf/awt/geom/Dimension2D;
.source "Dimension.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x418ed9d7ac5f4414L


# instance fields
.field public height:D

.field public width:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0, v0}, Lcom/itextpdf/awt/geom/Dimension;-><init>(II)V

    .line 44
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Dimension2D;-><init>()V

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/Dimension;->setSize(DD)V

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Dimension2D;-><init>()V

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/awt/geom/Dimension;->setSize(II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/awt/geom/Dimension;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 39
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/Dimension;->width:D

    iget-wide v2, p1, Lcom/itextpdf/awt/geom/Dimension;->height:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Dimension;-><init>(DD)V

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-ne p1, p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    instance-of v3, p1, Lcom/itextpdf/awt/geom/Dimension;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/itextpdf/awt/geom/Dimension;

    .line 69
    .local v0, d:Lcom/itextpdf/awt/geom/Dimension;
    iget-wide v3, v0, Lcom/itextpdf/awt/geom/Dimension;->width:D

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/Dimension;->width:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, v0, Lcom/itextpdf/awt/geom/Dimension;->height:D

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/Dimension;->height:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #d:Lcom/itextpdf/awt/geom/Dimension;
    :cond_3
    move v1, v2

    .line 71
    goto :goto_0
.end method

.method public getHeight()D
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Dimension;->height:D

    return-wide v0
.end method

.method public getSize()Lcom/itextpdf/awt/geom/Dimension;
    .locals 5

    .prologue
    .line 96
    new-instance v0, Lcom/itextpdf/awt/geom/Dimension;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Dimension;->width:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Dimension;->height:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Dimension;-><init>(DD)V

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Dimension;->width:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/itextpdf/awt/geom/misc/HashCode;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/misc/HashCode;-><init>()V

    .line 57
    .local v0, hash:Lcom/itextpdf/awt/geom/misc/HashCode;
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Dimension;->width:D

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 58
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Dimension;->height:D

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 59
    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode()I

    move-result v1

    return v1
.end method

.method public setSize(DD)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 92
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/awt/geom/Dimension;->setSize(II)V

    .line 93
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 82
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Dimension;->width:D

    .line 83
    int-to-double v0, p2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Dimension;->height:D

    .line 84
    return-void
.end method

.method public setSize(Lcom/itextpdf/awt/geom/Dimension;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 87
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/Dimension;->width:D

    iget-wide v2, p1, Lcom/itextpdf/awt/geom/Dimension;->height:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Dimension;->setSize(DD)V

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Dimension;->width:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Dimension;->height:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
