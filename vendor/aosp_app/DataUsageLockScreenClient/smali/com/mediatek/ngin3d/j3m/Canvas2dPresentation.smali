.class public Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;
.super Lcom/mediatek/ngin3d/j3m/PlanePresentation;
.source "Canvas2dPresentation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/Graphics2d;


# static fields
.field private static final TAG:Ljava/lang/String; = "Canvas2dPresentation"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBox:Lcom/mediatek/ngin3d/Box;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDimension:Lcom/mediatek/ngin3d/Dimension;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Z)V
    .locals 1
    .parameter "engine"
    .parameter "isYUp"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Z)V

    .line 78
    new-instance v0, Lcom/mediatek/ngin3d/Box;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Box;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBox:Lcom/mediatek/ngin3d/Box;

    .line 79
    new-instance v0, Lcom/mediatek/ngin3d/Dimension;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Dimension;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mDimension:Lcom/mediatek/ngin3d/Dimension;

    .line 80
    return-void
.end method

.method private convertToTexture()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->setImageSource(Lcom/mediatek/ngin3d/presentation/ImageSource;)V

    .line 166
    return-void
.end method

.method private createCanvas(III)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "backgroundColor"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 121
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    move v1, v2

    .line 122
    .local v1, bw:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    move v0, v2

    .line 123
    .local v0, bh:I
    :goto_1
    if-lt v1, p1, :cond_0

    if-lt v0, p2, :cond_0

    add-int/lit8 v2, p1, 0x64

    if-gt v1, v2, :cond_0

    add-int/lit8 v2, p2, 0x64

    if-le v0, v2, :cond_4

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->destroyCanvas()V

    .line 127
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBitmap:Landroid/graphics/Bitmap;

    .line 129
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mCanvas:Landroid/graphics/Canvas;

    .line 130
    if-eqz p3, :cond_1

    .line 131
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 136
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBox:Lcom/mediatek/ngin3d/Box;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/mediatek/ngin3d/Box;->set(FFFF)V

    .line 137
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mDimension:Lcom/mediatek/ngin3d/Dimension;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/ngin3d/Dimension;->set(FF)V

    .line 139
    return-void

    .line 121
    .end local v0           #bh:I
    .end local v1           #bw:I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0

    .line 122
    .restart local v1       #bw:I
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_1

    .line 134
    .restart local v0       #bh:I
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2
.end method

.method private destroyCanvas()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    iput-object v1, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBitmap:Landroid/graphics/Bitmap;

    .line 181
    :cond_0
    iput-object v1, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mCanvas:Landroid/graphics/Canvas;

    .line 182
    return-void
.end method

.method private fitTextureSize()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBox:Lcom/mediatek/ngin3d/Box;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->setSourceRect(Lcom/mediatek/ngin3d/Box;)V

    .line 170
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mDimension:Lcom/mediatek/ngin3d/Dimension;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->setSize(Lcom/mediatek/ngin3d/Dimension;)V

    .line 171
    return-void
.end method


# virtual methods
.method public beginDraw(III)Landroid/graphics/Canvas;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "backgroundColor"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->createCanvas(III)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public endDraw()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->convertToTexture()V

    .line 143
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->fitTextureSize()V

    .line 144
    return-void
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public onUninitialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->destroyCanvas()V

    .line 89
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBitmap:Landroid/graphics/Bitmap;

    .line 90
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mCanvas:Landroid/graphics/Canvas;

    .line 91
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mBox:Lcom/mediatek/ngin3d/Box;

    .line 92
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;->mDimension:Lcom/mediatek/ngin3d/Dimension;

    .line 94
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->onUninitialize()V

    .line 95
    return-void
.end method

.method public setFadeOutCoord(FF)V
    .locals 7
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 147
    cmpg-float v1, p2, p1

    if-gez v1, :cond_0

    .line 148
    new-instance v1, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v2, "Fade end (x2) must be bigger than fade start (x1)."

    invoke-direct {v1, v2}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    float-to-double v1, p2

    float-to-double v3, p1

    const-wide v5, 0x3ff0cccccccccccdL

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 155
    const/high16 v1, 0x3f80

    sub-float v2, p2, p1

    div-float v0, v1, v2

    .line 161
    .local v0, newX2:F
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/mediatek/j3m/Solid;

    invoke-interface {v1}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v1

    const-string v2, "M_FADEOUT_COORD"

    invoke-interface {v1, v2, p1, v0}, Lcom/mediatek/j3m/Appearance;->setVector2f(Ljava/lang/String;FF)V

    .line 162
    return-void

    .line 158
    .end local v0           #newX2:F
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #newX2:F
    goto :goto_0
.end method
