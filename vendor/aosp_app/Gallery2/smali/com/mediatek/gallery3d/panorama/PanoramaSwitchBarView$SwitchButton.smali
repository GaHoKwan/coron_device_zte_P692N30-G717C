.class Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;
.super Ljava/lang/Object;
.source "PanoramaSwitchBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchButton"
.end annotation


# instance fields
.field private mContentRect:Landroid/graphics/Rect;

.field private mCurrTexture:Lcom/android/gallery3d/ui/Texture;

.field public mFocus:Z

.field private mFocusResID:I

.field private mForcusTexture:Lcom/android/gallery3d/ui/Texture;

.field private mGap:I

.field public mName:I

.field private mNormalResID:I

.field private mNormalTexture:Lcom/android/gallery3d/ui/Texture;

.field public mVisible:Z


# direct methods
.method public constructor <init>(ILandroid/content/Context;III)V
    .locals 5
    .parameter "name"
    .parameter "context"
    .parameter "focusResID"
    .parameter "normalResID"
    .parameter "gap"

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mName:I

    .line 190
    iput p3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mFocusResID:I

    .line 191
    iput p4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mNormalResID:I

    .line 192
    iput p5, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mGap:I

    .line 193
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-direct {v0, p2, p3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mForcusTexture:Lcom/android/gallery3d/ui/Texture;

    .line 194
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-direct {v0, p2, p4}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mNormalTexture:Lcom/android/gallery3d/ui/Texture;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mVisible:Z

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mForcusTexture:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v1

    mul-int/lit8 v2, p5, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mForcusTexture:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v2

    mul-int/lit8 v3, p5, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mContentRect:Landroid/graphics/Rect;

    .line 197
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1, v0, v0}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 223
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 4
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mVisible:Z

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mFocus:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mForcusTexture:Lcom/android/gallery3d/ui/Texture;

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mCurrTexture:Lcom/android/gallery3d/ui/Texture;

    .line 207
    :goto_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mCurrTexture:Lcom/android/gallery3d/ui/Texture;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mContentRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mGap:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mGap:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-interface {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mNormalTexture:Lcom/android/gallery3d/ui/Texture;

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mCurrTexture:Lcom/android/gallery3d/ui/Texture;

    goto :goto_1
.end method

.method public drawSplit(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;II)V
    .locals 7
    .parameter "canvas"
    .parameter "texture"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 211
    if-nez p2, :cond_0

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 213
    .local v6, h:I
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mContentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v0, p3

    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mContentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p4

    div-int/lit8 v1, v6, 0x4

    add-int v3, v0, v1

    const/4 v4, 0x1

    div-int/lit8 v5, v6, 0x2

    move-object v0, p2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public isNeedSplit(II)Z
    .locals 1
    .parameter "left"
    .parameter "right"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mContentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lt v0, p2, :cond_0

    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pressed(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public setPosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 231
    return-void
.end method

.method public setPress(Z)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mFocus:Z

    .line 247
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mVisible:Z

    .line 227
    return-void
.end method
