.class public Lcom/android/camera/manager/FrameManager;
.super Lcom/android/camera/manager/ViewManager;
.source "FrameManager.java"

# interfaces
.implements Lcom/android/camera/Camera$OnOrientationListener;


# static fields
.field public static final FACE_BEAUTY:I = 0x3

.field private static final FACE_DETECTION_ICON:[I = null

.field public static final FACE_DETECTION_ICON_NUM:I = 0x4

.field public static final FACE_FOCUSED:I = 0x1

.field public static final FACE_FOCUSFAILD:I = 0x2

.field public static final FACE_FOCUSING:I = 0x0

.field public static final FACE_TYPE:I = 0x1

.field public static final OBJECT_FOCUSED:I = 0x1

.field public static final OBJECT_FOCUSFAILED:I = 0x2

.field public static final OBJECT_FOCUSING:I = 0x0

.field public static final OBJECT_TRACKING_FAILED:I = 0x32

.field private static final OBJECT_TRACKING_ICON:[I = null

.field public static final OBJECT_TRACKING_ICON_NUM:I = 0x3

.field public static final OBJECT_TRACKING_SUCCEED:I = 0x64

.field public static final OBJECT_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FrameManager"


# instance fields
.field private mContext:Lcom/android/camera/Camera;

.field private mEnableFaceBeauty:Z

.field private mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

.field private mFrameView:Lcom/android/camera/ui/FrameView;

.field private mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/manager/FrameManager;->FACE_DETECTION_ICON:[I

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/manager/FrameManager;->OBJECT_TRACKING_ICON:[I

    return-void

    .line 71
    nop

    :array_0
    .array-data 0x4
        0xb3t 0x0t 0x2t 0x7ft
        0xb2t 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
        0xb4t 0x0t 0x2t 0x7ft
    .end array-data

    .line 83
    :array_1
    .array-data 0x4
        0x8t 0x1t 0x2t 0x7ft
        0xat 0x1t 0x2t 0x7ft
        0x9t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/manager/FrameManager;->mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/manager/FrameManager;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    .line 94
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 95
    iput-object p1, p0, Lcom/android/camera/manager/FrameManager;->mContext:Lcom/android/camera/Camera;

    .line 96
    return-void
.end method


# virtual methods
.method public enableFaceBeauty(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/camera/manager/FrameManager;->mEnableFaceBeauty:Z

    .line 151
    iget-object v0, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FrameView;->enableFaceBeauty(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public getFrameView()Lcom/android/camera/ui/FrameView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    return-object v0
.end method

.method protected getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewDrawable(I)[Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "type"

    .prologue
    .line 104
    if-nez p1, :cond_1

    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/camera/manager/FrameManager;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/camera/manager/FrameManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/camera/manager/FrameManager;->OBJECT_TRACKING_ICON:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/FrameManager;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    .line 115
    :goto_1
    return-object v1

    .line 111
    .end local v0           #i:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/camera/manager/FrameManager;->mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/camera/manager/FrameManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/camera/manager/FrameManager;->FACE_DETECTION_ICON:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/android/camera/manager/FrameManager;->mFaceStatusIndicator:[Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public initializeFrameView(Z)V
    .locals 5
    .parameter "isOtStated"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/manager/FrameManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v4

    aget-object v0, v1, v4

    .line 123
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    if-eqz p1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/camera/manager/FrameManager;->mContext:Lcom/android/camera/Camera;

    const v2, 0x7f0b010f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ObjectView;

    iput-object v1, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FrameView;->clear()V

    .line 130
    iget-object v1, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    iget-object v2, p0, Lcom/android/camera/manager/FrameManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getDisplayOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FrameView;->setDisplayOrientation(I)V

    .line 132
    iget-object v1, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FrameView;->resume()V

    .line 133
    iget-object v1, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/FrameManager;->setView(Lcom/android/camera/ui/FrameView;)V

    .line 134
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/FrameManager;->mContext:Lcom/android/camera/Camera;

    const v4, 0x7f0b010e

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    .line 127
    iget-object v4, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/camera/ui/FrameView;->setMirror(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FrameView;->setOrientation(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public setView(Lcom/android/camera/ui/FrameView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    .line 138
    iget-object v0, p0, Lcom/android/camera/manager/FrameManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/camera/manager/FrameManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    iget-object v1, p0, Lcom/android/camera/manager/FrameManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusLayout()Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FrameView;->setFocusIndicatorRotateLayout(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)V

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/manager/FrameManager;->mEnableFaceBeauty:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/FrameManager;->enableFaceBeauty(Z)V

    .line 143
    return-void
.end method
