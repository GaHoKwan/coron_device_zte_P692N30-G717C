.class public Lcom/android/camera/ui/FrameView;
.super Landroid/view/View;
.source "FrameView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;


# static fields
.field private static final INIT_OT_POINT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "BoxView"


# instance fields
.field protected mContext:Lcom/android/camera/Camera;

.field protected mDisplayOrientation:I

.field protected mEnableBeauty:Z

.field protected mFace:Landroid/hardware/Camera$Face;

.field protected mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field protected mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

.field protected mFaces:[Landroid/hardware/Camera$Face;

.field protected mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mMirror:Z

.field protected mOrientation:I

.field protected mPause:Z

.field protected mRect:Landroid/graphics/RectF;

.field protected mTrackIndicator:Landroid/graphics/drawable/Drawable;

.field protected mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mMatrix:Landroid/graphics/Matrix;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mMatrix:Landroid/graphics/Matrix;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mRect:Landroid/graphics/RectF;

    .line 86
    check-cast p1, Lcom/android/camera/Camera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ui/FrameView;->mContext:Lcom/android/camera/Camera;

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFrameManager()Lcom/android/camera/manager/FrameManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/FrameManager;->getViewDrawable(I)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/FrameView;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFrameManager()Lcom/android/camera/manager/FrameManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/FrameManager;->getViewDrawable(I)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    .line 89
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public enableFaceBeauty(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 150
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getPointX()F
    .locals 1

    .prologue
    .line 160
    const/high16 v0, 0x44fa

    return v0
.end method

.method public getPointY()F
    .locals 1

    .prologue
    .line 164
    const/high16 v0, 0x44fa

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    .line 102
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    .line 106
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 96
    iput p1, p0, Lcom/android/camera/ui/FrameView;->mDisplayOrientation:I

    .line 97
    const-string v0, "BoxView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)V
    .locals 0
    .parameter "faces"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/camera/ui/FrameView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 144
    return-void
.end method

.method public setFocusIndicatorRotateLayout(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)V
    .locals 0
    .parameter "indicator"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/camera/ui/FrameView;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    .line 111
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/camera/ui/FrameView;->mMirror:Z

    .line 140
    return-void
.end method

.method public setObject(Landroid/hardware/Camera$Face;)V
    .locals 0
    .parameter "face"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/camera/ui/FrameView;->mFace:Landroid/hardware/Camera$Face;

    .line 148
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/camera/ui/FrameView;->mOrientation:I

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 157
    return-void
.end method

.method public showFail(Z)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 132
    return-void
.end method

.method public showStart()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public showSuccess(Z)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 128
    return-void
.end method
