.class public Lcom/mediatek/ngin3d/Plane;
.super Lcom/mediatek/ngin3d/Actor;
.source "Plane.java"


# static fields
.field public static final PROP_ANCHOR_POINT:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Point;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_DOUBLE_SIDED:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SIZE:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Dimension;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SRC_RECT:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Box;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mIsYUp:Z

.field protected mRenderLayerForAttachment:Lcom/mediatek/ngin3d/presentation/RenderLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 86
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "anchor"

    new-instance v2, Lcom/mediatek/ngin3d/ImmutablePoint;

    invoke-direct {v2, v3, v3}, Lcom/mediatek/ngin3d/ImmutablePoint;-><init>(FF)V

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;I[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Plane;->PROP_ANCHOR_POINT:Lcom/mediatek/ngin3d/Property;

    .line 92
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "size"

    new-instance v2, Lcom/mediatek/ngin3d/ImmutableDimension;

    invoke-direct {v2}, Lcom/mediatek/ngin3d/ImmutableDimension;-><init>()V

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Plane;->PROP_SIZE:Lcom/mediatek/ngin3d/Property;

    .line 95
    sget-object v0, Lcom/mediatek/ngin3d/Plane;->PROP_POSITION:Lcom/mediatek/ngin3d/Property;

    new-array v1, v5, [Lcom/mediatek/ngin3d/Property;

    sget-object v2, Lcom/mediatek/ngin3d/Plane;->PROP_ANCHOR_POINT:Lcom/mediatek/ngin3d/Property;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Property;->addDependsOn([Lcom/mediatek/ngin3d/Property;)V

    .line 101
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "src_rect"

    const/4 v2, 0x0

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Plane;->PROP_SRC_RECT:Lcom/mediatek/ngin3d/Property;

    .line 103
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "double_sided"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Plane;->PROP_DOUBLE_SIDED:Lcom/mediatek/ngin3d/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/Plane;-><init>(Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "isYUp"

    .prologue
    const/high16 v1, 0x3f00

    .line 61
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Actor;-><init>()V

    .line 62
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v0, v1, v1}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Plane;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    .line 63
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/Plane;->mIsYUp:Z

    .line 64
    return-void
.end method

.method public static create(Lcom/mediatek/ngin3d/Dimension;)Lcom/mediatek/ngin3d/Plane;
    .locals 1
    .parameter "size"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/ngin3d/Plane;->create(Lcom/mediatek/ngin3d/Dimension;Z)Lcom/mediatek/ngin3d/Plane;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/mediatek/ngin3d/Dimension;Z)Lcom/mediatek/ngin3d/Plane;
    .locals 1
    .parameter "size"
    .parameter "isYUp"

    .prologue
    .line 151
    invoke-static {p1}, Lcom/mediatek/ngin3d/Plane;->create(Z)Lcom/mediatek/ngin3d/Plane;

    move-result-object v0

    .line 152
    .local v0, plane:Lcom/mediatek/ngin3d/Plane;
    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/Plane;->setSize(Lcom/mediatek/ngin3d/Dimension;)V

    .line 153
    return-object v0
.end method

.method public static create(Z)Lcom/mediatek/ngin3d/Plane;
    .locals 1
    .parameter "isYUp"

    .prologue
    .line 134
    new-instance v0, Lcom/mediatek/ngin3d/Plane;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/Plane;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method protected applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 7
    .parameter "property"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 105
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Actor;->applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    :goto_0
    return v4

    .line 109
    :cond_0
    sget-object v5, Lcom/mediatek/ngin3d/Plane;->PROP_SRC_RECT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v5}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, p2

    .line 110
    check-cast v0, Lcom/mediatek/ngin3d/Box;

    .line 111
    .local v0, box:Lcom/mediatek/ngin3d/Box;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Plane;->getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/mediatek/ngin3d/presentation/ImageDisplay;->setSourceRect(Lcom/mediatek/ngin3d/Box;)V

    goto :goto_0

    .line 113
    .end local v0           #box:Lcom/mediatek/ngin3d/Box;
    :cond_1
    sget-object v5, Lcom/mediatek/ngin3d/Plane;->PROP_ANCHOR_POINT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v5}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, p2

    .line 114
    check-cast v2, Lcom/mediatek/ngin3d/Point;

    .line 115
    .local v2, point:Lcom/mediatek/ngin3d/Point;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Plane;->getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/mediatek/ngin3d/presentation/ImageDisplay;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    goto :goto_0

    .line 117
    .end local v2           #point:Lcom/mediatek/ngin3d/Point;
    :cond_2
    sget-object v5, Lcom/mediatek/ngin3d/Plane;->PROP_SIZE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v5}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, p2

    .line 118
    check-cast v3, Lcom/mediatek/ngin3d/Dimension;

    .line 119
    .local v3, size:Lcom/mediatek/ngin3d/Dimension;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Plane;->getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/mediatek/ngin3d/presentation/ImageDisplay;->setSize(Lcom/mediatek/ngin3d/Dimension;)V

    goto :goto_0

    .line 121
    .end local v3           #size:Lcom/mediatek/ngin3d/Dimension;
    :cond_3
    sget-object v5, Lcom/mediatek/ngin3d/Plane;->PROP_DOUBLE_SIDED:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v5}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v1, p2

    .line 122
    check-cast v1, Ljava/lang/Boolean;

    .line 123
    .local v1, enable:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Plane;->getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/mediatek/ngin3d/presentation/ImageDisplay;->enableDoubleSided(Z)V

    goto :goto_0

    .line 126
    .end local v1           #enable:Ljava/lang/Boolean;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected attachToRenderLayer(Lcom/mediatek/ngin3d/presentation/RenderLayer;)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    if-nez v0, :cond_0

    .line 210
    iput-object p1, p0, Lcom/mediatek/ngin3d/Plane;->mRenderLayerForAttachment:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Plane;->getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setRenderTarget(Lcom/mediatek/ngin3d/presentation/ImageDisplay;)V

    goto :goto_0
.end method

.method protected createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/ImageDisplay;
    .locals 2
    .parameter "engine"

    .prologue
    .line 71
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/Plane;->mIsYUp:Z

    invoke-interface {p1, v1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->createImageDisplay(Z)Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v0

    .line 72
    .local v0, imageDisplay:Lcom/mediatek/ngin3d/presentation/ImageDisplay;
    iget-object v1, p0, Lcom/mediatek/ngin3d/Plane;->mRenderLayerForAttachment:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/mediatek/ngin3d/Plane;->mRenderLayerForAttachment:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-interface {v1, v0}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setRenderTarget(Lcom/mediatek/ngin3d/presentation/ImageDisplay;)V

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ngin3d/Plane;->mRenderLayerForAttachment:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    .line 76
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Plane;->createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorPoint()Lcom/mediatek/ngin3d/Point;
    .locals 6

    .prologue
    .line 256
    sget-object v2, Lcom/mediatek/ngin3d/Plane;->PROP_ANCHOR_POINT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Point;

    .line 258
    .local v0, point:Lcom/mediatek/ngin3d/Point;
    instance-of v2, v0, Lcom/mediatek/ngin3d/ImmutablePoint;

    if-eqz v2, :cond_0

    .line 259
    new-instance v1, Lcom/mediatek/ngin3d/Point;

    iget v2, v0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v3, v0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v4, v0, Lcom/mediatek/ngin3d/Point;->z:F

    iget-boolean v5, v0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/ngin3d/Point;-><init>(FFFZ)V

    .line 260
    .end local v0           #point:Lcom/mediatek/ngin3d/Point;
    .local v1, point:Lcom/mediatek/ngin3d/Point;
    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/Plane;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    move-object v0, v1

    .line 262
    .end local v1           #point:Lcom/mediatek/ngin3d/Point;
    .restart local v0       #point:Lcom/mediatek/ngin3d/Point;
    :cond_0
    return-object v0
.end method

.method public getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    check-cast v0, Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    return-object v0
.end method

.method public bridge synthetic getPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Plane;->getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Lcom/mediatek/ngin3d/Dimension;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/mediatek/ngin3d/Plane;->PROP_SIZE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Dimension;

    return-object v0
.end method

.method public getSourceRect()Lcom/mediatek/ngin3d/Box;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/mediatek/ngin3d/Plane;->PROP_SRC_RECT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Box;

    return-object v0
.end method

.method public final setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V
    .locals 3
    .parameter "anchorPoint"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 243
    iget v0, p1, Lcom/mediatek/ngin3d/Point;->x:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/mediatek/ngin3d/Point;->x:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x must be >= 0 and <= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    iget v0, p1, Lcom/mediatek/ngin3d/Point;->y:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p1, Lcom/mediatek/ngin3d/Point;->y:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 246
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "y must be >= 0 and <= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_3
    sget-object v0, Lcom/mediatek/ngin3d/Plane;->PROP_ANCHOR_POINT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public setDoubleSided(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 199
    sget-object v0, Lcom/mediatek/ngin3d/Plane;->PROP_DOUBLE_SIDED:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public setSize(Lcom/mediatek/ngin3d/Dimension;)V
    .locals 2
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 161
    iget v0, p1, Lcom/mediatek/ngin3d/Dimension;->width:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/mediatek/ngin3d/Dimension;->height:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    sget-object v0, Lcom/mediatek/ngin3d/Plane;->PROP_SIZE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public setSourceRect(Lcom/mediatek/ngin3d/Box;)V
    .locals 1
    .parameter "srcRect"

    .prologue
    .line 179
    sget-object v0, Lcom/mediatek/ngin3d/Plane;->PROP_SRC_RECT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 180
    return-void
.end method
