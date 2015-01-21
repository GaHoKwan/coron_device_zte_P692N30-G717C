.class public Lcom/android/camera/ui/ObjectView;
.super Lcom/android/camera/ui/FrameView;
.source "ObjectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ObjectView$1;,
        Lcom/android/camera/ui/ObjectView$EndAction;,
        Lcom/android/camera/ui/ObjectView$StartAction;
    }
.end annotation


# static fields
.field private static final ANIMATION_DOING:I = 0x1

.field private static final ANIMATION_DONE:I = 0x2

.field private static final ANIMATION_IDLE:I = 0x0

.field private static final SCALING_DOWN_TIME:I = 0xc8

.field private static final SCALING_UP_TIME:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ObjectView"


# instance fields
.field private mEndAction:Ljava/lang/Runnable;

.field private mOldX:F

.field private mOldY:F

.field private mStartAction:Ljava/lang/Runnable;

.field private mZoomInAnimaState:I

.field private mZoomOutAnimaState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x44fa

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcom/android/camera/ui/ObjectView$StartAction;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/ui/ObjectView$StartAction;-><init>(Lcom/android/camera/ui/ObjectView;Lcom/android/camera/ui/ObjectView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/ObjectView;->mStartAction:Ljava/lang/Runnable;

    .line 39
    new-instance v0, Lcom/android/camera/ui/ObjectView$EndAction;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/ui/ObjectView$EndAction;-><init>(Lcom/android/camera/ui/ObjectView;Lcom/android/camera/ui/ObjectView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/ObjectView;->mEndAction:Ljava/lang/Runnable;

    .line 46
    iput v1, p0, Lcom/android/camera/ui/ObjectView;->mZoomInAnimaState:I

    .line 47
    iput v1, p0, Lcom/android/camera/ui/ObjectView;->mZoomOutAnimaState:I

    .line 49
    iput v2, p0, Lcom/android/camera/ui/ObjectView;->mOldX:F

    .line 50
    iput v2, p0, Lcom/android/camera/ui/ObjectView;->mOldY:F

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    .line 55
    check-cast p1, Lcom/android/camera/Camera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ui/FrameView;->mContext:Lcom/android/camera/Camera;

    .line 56
    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/ui/ObjectView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/camera/ui/ObjectView;->mZoomInAnimaState:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/ui/ObjectView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/camera/ui/ObjectView;->mZoomOutAnimaState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ObjectView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->resetView()V

    return-void
.end method

.method private calculateMiddlePoint(FF)F
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 204
    sub-float v0, p2, p1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private resetView()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 192
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 193
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 194
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getPreviewFrameWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getPreviewFrameHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 197
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "ObjectView"

    const-string v1, "clear()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mFace:Landroid/hardware/Camera$Face;

    .line 119
    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->resetView()V

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 121
    return-void
.end method

.method public enableFaceBeauty(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mEnableBeauty:Z

    .line 201
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFace:Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPointX()F
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mOldX:F

    return v0
.end method

.method public getPointY()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mOldY:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x2

    const/high16 v6, 0x4000

    .line 125
    const-string v0, "ObjectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw(), mZoomInAnimaState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomInAnimaState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mZoomOutAnimaState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomOutAnimaState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/FrameView;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomOutAnimaState:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomInAnimaState:I

    if-eq v0, v3, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFace:Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_4

    .line 131
    const-string v0, "ObjectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/FrameView;->mFace:Landroid/hardware/Camera$Face;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFace:Landroid/hardware/Camera$Face;

    iget v0, v0, Landroid/hardware/Camera$Face;->score:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/ui/FrameView;->mDisplayOrientation:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mFace:Landroid/hardware/Camera$Face;

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    const-string v1, "Original rect"

    invoke-static {v0, v1}, Lcom/android/camera/Util;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    const-string v1, "Transformed rect"

    invoke-static {v0, v1}, Lcom/android/camera/Util;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ObjectView;->calculateMiddlePoint(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mOldX:F

    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ObjectView;->calculateMiddlePoint(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mOldY:F

    .line 153
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mOldX:F

    iget v1, p0, Lcom/android/camera/ui/ObjectView;->mOldY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    neg-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getOrientationCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FrameView;->mOrientation:I

    .line 162
    iget v0, p0, Lcom/android/camera/ui/FrameView;->mDisplayOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/FrameView;->mDisplayOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_3

    .line 163
    :cond_2
    const/high16 v0, 0x42b4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 165
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/FrameView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 170
    :cond_4
    invoke-super {p0, p1}, Lcom/android/camera/ui/FrameView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public setObject(Landroid/hardware/Camera$Face;)V
    .locals 4
    .parameter "face"

    .prologue
    const/4 v3, 0x1

    .line 59
    const-string v0, "ObjectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setObject(), mZoomInAnimaState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomInAnimaState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mZoomOutAnimaState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomOutAnimaState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-object p1, p0, Lcom/android/camera/ui/FrameView;->mFace:Landroid/hardware/Camera$Face;

    .line 62
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomInAnimaState:I

    if-ne v0, v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomOutAnimaState:I

    if-nez v0, :cond_3

    .line 66
    iget v0, p1, Landroid/hardware/Camera$Face;->score:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 67
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ObjectView;->showSuccess(Z)V

    goto :goto_0

    .line 68
    :cond_2
    iget v0, p1, Landroid/hardware/Camera$Face;->score:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ObjectView;->showFail(Z)V

    goto :goto_0

    .line 71
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomOutAnimaState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    if-nez v0, :cond_0

    .line 72
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->isFocusing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 76
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->resetView()V

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public showFail(Z)V
    .locals 4
    .parameter "timeout"

    .prologue
    const v3, 0x3f4ccccd

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomOutAnimaState:I

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mEndAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 113
    return-void
.end method

.method public showStart()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x3fc0

    .line 87
    const-string v0, "ObjectView"

    const-string v1, "showStart()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomInAnimaState:I

    .line 89
    iput v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomOutAnimaState:I

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mStartAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 94
    return-void
.end method

.method public showSuccess(Z)V
    .locals 4
    .parameter "timeout"

    .prologue
    const/4 v2, 0x1

    const v3, 0x3f4ccccd

    .line 98
    const-string v0, "ObjectView"

    const-string v1, "showSuccess()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomOutAnimaState:I

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mEndAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 104
    return-void
.end method
