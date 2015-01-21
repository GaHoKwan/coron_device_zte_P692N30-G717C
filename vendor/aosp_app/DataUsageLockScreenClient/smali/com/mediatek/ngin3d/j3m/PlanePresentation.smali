.class public Lcom/mediatek/ngin3d/j3m/PlanePresentation;
.super Lcom/mediatek/ngin3d/j3m/ActorPresentation;
.source "PlanePresentation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/ImageDisplay;


# static fields
.field public static final TAG:Ljava/lang/String; = "PlanePresentation"


# instance fields
.field private final mApparentSize:Lcom/mediatek/ngin3d/Dimension;

.field private mAspectRatio:F

.field private mFilterQuality:I

.field protected final mIsYUp:Z

.field private mKeepAspectRatio:Z

.field private mRenderBlockForAttachment:Lcom/mediatek/j3m/RenderBlock;

.field private mRepeatX:I

.field private mRepeatY:I

.field private mScale:Lcom/mediatek/ngin3d/Scale;

.field private mSize:Lcom/mediatek/ngin3d/Dimension;

.field private mSourceRect:Lcom/mediatek/ngin3d/Box;

.field private mTexture:Lcom/mediatek/j3m/Texture2D;

.field private mUseMipmaps:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Z)V
    .locals 3
    .parameter "engine"
    .parameter "isYUp"

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f80

    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    .line 66
    new-instance v0, Lcom/mediatek/ngin3d/Dimension;

    invoke-direct {v0, v1, v1}, Lcom/mediatek/ngin3d/Dimension;-><init>(FF)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mApparentSize:Lcom/mediatek/ngin3d/Dimension;

    .line 71
    new-instance v0, Lcom/mediatek/ngin3d/Dimension;

    invoke-direct {v0, v1, v1}, Lcom/mediatek/ngin3d/Dimension;-><init>(FF)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSize:Lcom/mediatek/ngin3d/Dimension;

    .line 72
    new-instance v0, Lcom/mediatek/ngin3d/Scale;

    invoke-direct {v0, v1, v1, v1}, Lcom/mediatek/ngin3d/Scale;-><init>(FFF)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mScale:Lcom/mediatek/ngin3d/Scale;

    .line 73
    iput v1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mAspectRatio:F

    .line 75
    iput v2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mRepeatX:I

    .line 76
    iput v2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mRepeatY:I

    .line 78
    iput v2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mFilterQuality:I

    .line 79
    iput-boolean v2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mUseMipmaps:Z

    .line 86
    iput-boolean p2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mIsYUp:Z

    .line 87
    return-void
.end method

.method private applyScale()V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getRootSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mScale:Lcom/mediatek/ngin3d/Scale;

    iget v1, v1, Lcom/mediatek/ngin3d/Scale;->x:F

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mApparentSize:Lcom/mediatek/ngin3d/Dimension;

    iget v2, v2, Lcom/mediatek/ngin3d/Dimension;->width:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mScale:Lcom/mediatek/ngin3d/Scale;

    iget v2, v2, Lcom/mediatek/ngin3d/Scale;->y:F

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mApparentSize:Lcom/mediatek/ngin3d/Dimension;

    iget v3, v3, Lcom/mediatek/ngin3d/Dimension;->height:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mScale:Lcom/mediatek/ngin3d/Scale;

    iget v3, v3, Lcom/mediatek/ngin3d/Scale;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/j3m/SceneNode;->setScale(FFF)V

    .line 264
    return-void
.end method

.method private applyTextureMapping()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f80

    const/4 v1, 0x0

    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, offsetU:F
    const/high16 v3, 0x3f80

    .line 351
    .local v3, offsetV:F
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mRepeatX:I

    int-to-float v4, v0

    .line 352
    .local v4, scaleU:F
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mRepeatY:I

    neg-int v0, v0

    int-to-float v5, v0

    .line 354
    .local v5, scaleV:F
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSourceRect:Lcom/mediatek/ngin3d/Box;

    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->getSourceDimension()Lcom/mediatek/ngin3d/Dimension;

    move-result-object v6

    .line 358
    .local v6, dim:Lcom/mediatek/ngin3d/Dimension;
    iget v0, v6, Lcom/mediatek/ngin3d/Dimension;->width:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 359
    iput v7, v6, Lcom/mediatek/ngin3d/Dimension;->width:F

    .line 361
    :cond_0
    iget v0, v6, Lcom/mediatek/ngin3d/Dimension;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 362
    iput v7, v6, Lcom/mediatek/ngin3d/Dimension;->height:F

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSourceRect:Lcom/mediatek/ngin3d/Box;

    iget v0, v0, Lcom/mediatek/ngin3d/Box;->x1:F

    iget v1, v6, Lcom/mediatek/ngin3d/Dimension;->width:F

    div-float v2, v0, v1

    .line 366
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSourceRect:Lcom/mediatek/ngin3d/Box;

    iget v0, v0, Lcom/mediatek/ngin3d/Box;->y2:F

    iget v1, v6, Lcom/mediatek/ngin3d/Dimension;->height:F

    div-float v3, v0, v1

    .line 367
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSourceRect:Lcom/mediatek/ngin3d/Box;

    iget v0, v0, Lcom/mediatek/ngin3d/Box;->x2:F

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSourceRect:Lcom/mediatek/ngin3d/Box;

    iget v1, v1, Lcom/mediatek/ngin3d/Box;->x1:F

    sub-float/2addr v0, v1

    iget v1, v6, Lcom/mediatek/ngin3d/Dimension;->width:F

    div-float v4, v0, v1

    .line 368
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSourceRect:Lcom/mediatek/ngin3d/Box;

    iget v0, v0, Lcom/mediatek/ngin3d/Box;->y1:F

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSourceRect:Lcom/mediatek/ngin3d/Box;

    iget v1, v1, Lcom/mediatek/ngin3d/Box;->y2:F

    sub-float/2addr v0, v1

    iget v1, v6, Lcom/mediatek/ngin3d/Dimension;->height:F

    div-float v5, v0, v1

    .line 371
    .end local v6           #dim:Lcom/mediatek/ngin3d/Dimension;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/mediatek/j3m/Solid;

    invoke-interface {v0}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v0

    const-string v1, "M_UV_OFFSET_SCALE"

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/j3m/Appearance;->setVector4f(Ljava/lang/String;FFFF)V

    .line 374
    return-void
.end method

.method private replaceImageSource(Lcom/mediatek/ngin3d/presentation/ImageSource;Lcom/mediatek/j3m/Texture2D;)V
    .locals 8
    .parameter "src"
    .parameter "texture"

    .prologue
    const/4 v7, 0x0

    .line 140
    if-nez p2, :cond_2

    .line 141
    iget v3, p1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 142
    const-string v4, "PlanePresentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load image source: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v3, p1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;

    iget v3, v3, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resId:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v3, "PlanePresentation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load image source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    .line 153
    .local v1, replaced:Lcom/mediatek/j3m/Texture2D;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/mediatek/j3m/Solid;

    invoke-interface {v3}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v3

    const-string v4, "M_DIFFUSE_TEXTURE"

    invoke-interface {v3, v4, p2}, Lcom/mediatek/j3m/Appearance;->setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;)V

    .line 160
    iput-object p2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    .line 162
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mRenderBlockForAttachment:Lcom/mediatek/j3m/RenderBlock;

    if-eqz v3, :cond_4

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, depth:Lcom/mediatek/j3m/Texture2D;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v0, v5, v6}, Lcom/mediatek/j3m/J3m;->createRenderTarget(Lcom/mediatek/j3m/Texture2D;Lcom/mediatek/j3m/Texture2D;ZZ)Lcom/mediatek/j3m/RenderTarget;

    move-result-object v2

    .line 166
    .local v2, target:Lcom/mediatek/j3m/RenderTarget;
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mRenderBlockForAttachment:Lcom/mediatek/j3m/RenderBlock;

    invoke-interface {v3, v2}, Lcom/mediatek/j3m/RenderBlock;->setRenderTarget(Lcom/mediatek/j3m/RenderTarget;)V

    .line 167
    iput-object v7, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mRenderBlockForAttachment:Lcom/mediatek/j3m/RenderBlock;

    .line 170
    .end local v0           #depth:Lcom/mediatek/j3m/Texture2D;
    .end local v2           #target:Lcom/mediatek/j3m/RenderTarget;
    :cond_4
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v3}, Lcom/mediatek/j3m/Texture2D;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v4}, Lcom/mediatek/j3m/Texture2D;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mAspectRatio:F

    .line 172
    new-instance v3, Lcom/mediatek/ngin3d/Dimension;

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v4}, Lcom/mediatek/j3m/Texture2D;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v5}, Lcom/mediatek/j3m/Texture2D;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ngin3d/Dimension;-><init>(FF)V

    invoke-virtual {p0, v3}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->setSize(Lcom/mediatek/ngin3d/Dimension;)V

    .line 175
    iput-object v7, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSourceRect:Lcom/mediatek/ngin3d/Box;

    .line 176
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->applyTextureMapping()V

    .line 177
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->updateApparentSize()V

    .line 178
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->updateTextureFilter()V

    goto/16 :goto_0
.end method

.method private updateApparentSize()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mApparentSize:Lcom/mediatek/ngin3d/Dimension;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSize:Lcom/mediatek/ngin3d/Dimension;

    iget v1, v1, Lcom/mediatek/ngin3d/Dimension;->width:F

    iput v1, v0, Lcom/mediatek/ngin3d/Dimension;->width:F

    .line 273
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mApparentSize:Lcom/mediatek/ngin3d/Dimension;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSize:Lcom/mediatek/ngin3d/Dimension;

    iget v1, v1, Lcom/mediatek/ngin3d/Dimension;->height:F

    iput v1, v0, Lcom/mediatek/ngin3d/Dimension;->height:F

    .line 275
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mKeepAspectRatio:Z

    if-eqz v0, :cond_0

    .line 278
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mAspectRatio:F

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSize:Lcom/mediatek/ngin3d/Dimension;

    iget v1, v1, Lcom/mediatek/ngin3d/Dimension;->width:F

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSize:Lcom/mediatek/ngin3d/Dimension;

    iget v2, v2, Lcom/mediatek/ngin3d/Dimension;->height:F

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mApparentSize:Lcom/mediatek/ngin3d/Dimension;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSize:Lcom/mediatek/ngin3d/Dimension;

    iget v1, v1, Lcom/mediatek/ngin3d/Dimension;->width:F

    iget v2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mAspectRatio:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/mediatek/ngin3d/Dimension;->height:F

    .line 285
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->applyScale()V

    .line 286
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mApparentSize:Lcom/mediatek/ngin3d/Dimension;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSize:Lcom/mediatek/ngin3d/Dimension;

    iget v1, v1, Lcom/mediatek/ngin3d/Dimension;->height:F

    iget v2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mAspectRatio:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/mediatek/ngin3d/Dimension;->width:F

    goto :goto_0
.end method

.method private updateTextureFilter()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 461
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 465
    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mFilterQuality:I

    if-nez v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v0, v2}, Lcom/mediatek/j3m/Texture2D;->setMagFilter(I)V

    .line 471
    :goto_1
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mUseMipmaps:Z

    if-eqz v0, :cond_4

    .line 472
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mFilterQuality:I

    if-ne v0, v3, :cond_2

    .line 473
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Texture2D;->setMinFilter(I)V

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Texture2D;->setMagFilter(I)V

    goto :goto_1

    .line 474
    :cond_2
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mFilterQuality:I

    if-ne v0, v1, :cond_3

    .line 475
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Texture2D;->setMinFilter(I)V

    goto :goto_0

    .line 477
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v0, v3}, Lcom/mediatek/j3m/Texture2D;->setMinFilter(I)V

    goto :goto_0

    .line 481
    :cond_4
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mFilterQuality:I

    if-nez v0, :cond_5

    .line 482
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v0, v2}, Lcom/mediatek/j3m/Texture2D;->setMinFilter(I)V

    goto :goto_0

    .line 484
    :cond_5
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Texture2D;->setMinFilter(I)V

    goto :goto_0
.end method


# virtual methods
.method public attachToRenderBlock(Lcom/mediatek/j3m/RenderBlock;)V
    .locals 6
    .parameter "block"

    .prologue
    .line 450
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    if-nez v2, :cond_0

    .line 451
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mRenderBlockForAttachment:Lcom/mediatek/j3m/RenderBlock;

    .line 458
    :goto_0
    return-void

    .line 453
    :cond_0
    const/4 v0, 0x0

    .line 454
    .local v0, depth:Lcom/mediatek/j3m/Texture2D;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/mediatek/j3m/J3m;->createRenderTarget(Lcom/mediatek/j3m/Texture2D;Lcom/mediatek/j3m/Texture2D;ZZ)Lcom/mediatek/j3m/RenderTarget;

    move-result-object v1

    .line 456
    .local v1, target:Lcom/mediatek/j3m/RenderTarget;
    invoke-interface {p1, v1}, Lcom/mediatek/j3m/RenderBlock;->setRenderTarget(Lcom/mediatek/j3m/RenderTarget;)V

    goto :goto_0
.end method

.method public enableDoubleSided(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 438
    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/mediatek/j3m/Solid;

    invoke-interface {v0}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Appearance;->setCullingMode(I)V

    .line 447
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/mediatek/j3m/Solid;

    invoke-interface {v0}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Appearance;->setCullingMode(I)V

    goto :goto_0
.end method

.method public enableMipmap(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mUseMipmaps:Z

    .line 418
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->updateTextureFilter()V

    .line 419
    return-void
.end method

.method public getFilterQuality()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mFilterQuality:I

    return v0
.end method

.method public getRepeatX()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mRepeatX:I

    return v0
.end method

.method public getRepeatY()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mRepeatY:I

    return v0
.end method

.method public getScale()Lcom/mediatek/ngin3d/Scale;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mScale:Lcom/mediatek/ngin3d/Scale;

    return-object v0
.end method

.method public getSize()Lcom/mediatek/ngin3d/Dimension;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mApparentSize:Lcom/mediatek/ngin3d/Dimension;

    return-object v0
.end method

.method public getSourceDimension()Lcom/mediatek/ngin3d/Dimension;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/mediatek/ngin3d/Dimension;

    invoke-direct {v0, v1, v1}, Lcom/mediatek/ngin3d/Dimension;-><init>(FF)V

    .line 230
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/ngin3d/Dimension;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v1}, Lcom/mediatek/j3m/Texture2D;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v2}, Lcom/mediatek/j3m/Texture2D;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/Dimension;-><init>(FF)V

    goto :goto_0
.end method

.method public getTexName()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    if-nez v0, :cond_0

    .line 200
    const/4 v0, -0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v0}, Lcom/mediatek/j3m/Texture2D;->getOpenGlTextureId()I

    move-result v0

    goto :goto_0
.end method

.method public isKeepAspectRatio()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mKeepAspectRatio:Z

    return v0
.end method

.method public isMipmapEnabled()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mUseMipmaps:Z

    return v0
.end method

.method public onInitialize()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0x9

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 91
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->onInitialize()V

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 95
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/j3m/AssetPool;->createSquare()Lcom/mediatek/j3m/Solid;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setSceneNode(Lcom/mediatek/j3m/SceneNode;)V

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getAnchorSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v2

    invoke-interface {v2, v5, v5, v4}, Lcom/mediatek/j3m/SceneNode;->setPosition(FFF)V

    .line 105
    iget-boolean v2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mIsYUp:Z

    if-nez v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-interface {v2, v4, v3, v4, v4}, Lcom/mediatek/j3m/SceneNode;->setRotation(FFFF)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/mediatek/j3m/Solid;

    .line 110
    .local v1, solid:Lcom/mediatek/j3m/Solid;
    invoke-interface {v1}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v0

    .line 111
    .local v0, appearance:Lcom/mediatek/j3m/Appearance;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v2

    const-string v3, "ngin3d#quad.sp"

    invoke-interface {v2, v3}, Lcom/mediatek/j3m/AssetPool;->getShaderProgram(Ljava/lang/String;)Lcom/mediatek/j3m/ShaderProgram;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/j3m/Appearance;->setShaderProgram(Lcom/mediatek/j3m/ShaderProgram;)V

    .line 115
    invoke-interface {v0, v7, v7, v6, v6}, Lcom/mediatek/j3m/Appearance;->setBlendFactors(IIII)V

    .line 120
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/mediatek/j3m/Appearance;->setDepthWriteEnabled(Z)V

    .line 123
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->applyTextureMapping()V

    .line 126
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/j3m/J3m;->createSquare()Lcom/mediatek/j3m/Square;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setShape(Lcom/mediatek/j3m/Shape;)V

    .line 127
    return-void
.end method

.method public onUninitialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    .line 133
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSize:Lcom/mediatek/ngin3d/Dimension;

    .line 134
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mScale:Lcom/mediatek/ngin3d/Scale;

    .line 136
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->onUninitialize()V

    .line 137
    return-void
.end method

.method public setFilterQuality(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 316
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mFilterQuality:I

    .line 317
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->updateTextureFilter()V

    .line 318
    return-void
.end method

.method public setImageSource(Lcom/mediatek/ngin3d/presentation/ImageSource;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getTextureCache()Lcom/mediatek/ngin3d/j3m/TextureCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/ngin3d/j3m/TextureCache;->getTexture(Lcom/mediatek/ngin3d/presentation/ImageSource;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v0

    .line 188
    .local v0, texture:Lcom/mediatek/j3m/Texture2D;
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->replaceImageSource(Lcom/mediatek/ngin3d/presentation/ImageSource;Lcom/mediatek/j3m/Texture2D;)V

    .line 189
    return-void
.end method

.method public setKeepAspectRatio(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mKeepAspectRatio:Z

    if-eq p1, v0, :cond_0

    .line 331
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mKeepAspectRatio:Z

    .line 332
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->updateApparentSize()V

    .line 334
    :cond_0
    return-void
.end method

.method public setRepeat(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 385
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 386
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mRepeatX:I

    .line 387
    iput p2, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mRepeatY:I

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSourceRect:Lcom/mediatek/ngin3d/Box;

    .line 389
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->applyTextureMapping()V

    .line 391
    :cond_0
    return-void
.end method

.method public setScale(Lcom/mediatek/ngin3d/Scale;)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mScale:Lcom/mediatek/ngin3d/Scale;

    .line 243
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->applyScale()V

    .line 244
    return-void
.end method

.method public setSize(Lcom/mediatek/ngin3d/Dimension;)V
    .locals 2
    .parameter "size"

    .prologue
    const/high16 v1, 0x3f80

    .line 294
    iget v0, p1, Lcom/mediatek/ngin3d/Dimension;->width:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/mediatek/ngin3d/Dimension;->height:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSize:Lcom/mediatek/ngin3d/Dimension;

    iget v1, p1, Lcom/mediatek/ngin3d/Dimension;->width:F

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/mediatek/ngin3d/Dimension;->width:F

    .line 296
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSize:Lcom/mediatek/ngin3d/Dimension;

    iget v1, p1, Lcom/mediatek/ngin3d/Dimension;->height:F

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/mediatek/ngin3d/Dimension;->height:F

    .line 298
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->updateApparentSize()V

    .line 300
    :cond_0
    return-void
.end method

.method public setSourceRect(Lcom/mediatek/ngin3d/Box;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    new-instance v0, Lcom/mediatek/ngin3d/Box;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/Box;-><init>(Lcom/mediatek/ngin3d/Box;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->mSourceRect:Lcom/mediatek/ngin3d/Box;

    .line 217
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->applyTextureMapping()V

    .line 219
    :cond_0
    return-void
.end method
