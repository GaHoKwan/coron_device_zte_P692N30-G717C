.class public Lcom/android/camera/ui/FaceView;
.super Lcom/android/camera/ui/FrameView;
.source "FaceView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceView"


# instance fields
.field private mLastFaceNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 41
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 91
    return-void
.end method

.method public enableFaceBeauty(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/camera/ui/FrameView;->mEnableBeauty:Z

    .line 95
    iget-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mEnableBeauty:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 98
    :cond_0
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 102
    const-string v1, "FaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/ui/FrameView;->mEnableBeauty:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 104
    iget-boolean v1, p0, Lcom/android/camera/ui/FrameView;->mEnableBeauty:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/camera/ui/FrameView;->mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/camera/ui/FrameView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v2, p0, Lcom/android/camera/ui/FrameView;->mMirror:Z

    iget v3, p0, Lcom/android/camera/ui/FrameView;->mDisplayOrientation:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 113
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/camera/ui/FrameView;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 114
    iget v1, p0, Lcom/android/camera/ui/FrameView;->mOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/ui/FrameView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 118
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    const-string v2, "Original rect"

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 120
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    const-string v2, "Transformed rect"

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 128
    .end local v0           #i:I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/ui/FrameView;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)V
    .locals 2
    .parameter "faces"

    .prologue
    .line 44
    array-length v0, p1

    .line 45
    .local v0, num:I
    iget-boolean v1, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mLastFaceNum:I

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/FrameView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 47
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mLastFaceNum:I

    .line 48
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->isFocusing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 52
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 3
    .parameter "mirror"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/camera/ui/FrameView;->mMirror:Z

    .line 57
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMirror="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public showFail(Z)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 82
    return-void
.end method

.method public showStart()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 68
    return-void
.end method

.method public showSuccess(Z)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 75
    return-void
.end method
