.class public Lcom/itextpdf/awt/geom/Rectangle2D$Double;
.super Lcom/itextpdf/awt/geom/Rectangle2D;
.source "Rectangle2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/Rectangle2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Double"
.end annotation


# instance fields
.field public height:D

.field public width:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;-><init>()V

    .line 172
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;-><init>()V

    .line 175
    invoke-virtual/range {p0 .. p8}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->setRect(DDDD)V

    .line 176
    return-void
.end method


# virtual methods
.method public createIntersection(Lcom/itextpdf/awt/geom/Rectangle2D;)Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 1
    .parameter "r"

    .prologue
    .line 253
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;-><init>()V

    .line 254
    .local v0, dst:Lcom/itextpdf/awt/geom/Rectangle2D;
    invoke-static {p0, p1, v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->intersect(Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;)V

    .line 255
    return-object v0
.end method

.method public createUnion(Lcom/itextpdf/awt/geom/Rectangle2D;)Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 1
    .parameter "r"

    .prologue
    .line 260
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;-><init>()V

    .line 261
    .local v0, dest:Lcom/itextpdf/awt/geom/Rectangle2D;
    invoke-static {p0, p1, v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->union(Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;)V

    .line 262
    return-object v0
.end method

.method public getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 9

    .prologue
    .line 248
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->x:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->y:D

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->width:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->height:D

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->height:D

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->y:D

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 200
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->width:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->height:D

    cmpg-double v0, v0, v2

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
    .locals 7
    .parameter "px"
    .parameter "py"

    .prologue
    const-wide/16 v5, 0x0

    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, code:I
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->width:D

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_2

    .line 224
    or-int/lit8 v0, v0, 0x5

    .line 233
    :cond_0
    :goto_0
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->height:D

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_4

    .line 234
    or-int/lit8 v0, v0, 0xa

    .line 243
    :cond_1
    :goto_1
    return v0

    .line 226
    :cond_2
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->x:D

    cmpg-double v1, p1, v1

    if-gez v1, :cond_3

    .line 227
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_3
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->x:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->width:D

    add-double/2addr v1, v3

    cmpl-double v1, p1, v1

    if-lez v1, :cond_0

    .line 230
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 236
    :cond_4
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->y:D

    cmpg-double v1, p3, v1

    if-gez v1, :cond_5

    .line 237
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 239
    :cond_5
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->y:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->height:D

    add-double/2addr v1, v3

    cmpl-double v1, p3, v1

    if-lez v1, :cond_1

    .line 240
    or-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method public setRect(DDDD)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->x:D

    .line 206
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->y:D

    .line 207
    iput-wide p5, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->width:D

    .line 208
    iput-wide p7, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->height:D

    .line 209
    return-void
.end method

.method public setRect(Lcom/itextpdf/awt/geom/Rectangle2D;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->x:D

    .line 214
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->y:D

    .line 215
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->width:D

    .line 216
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->height:D

    .line 217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 269
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

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->width:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;->height:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
