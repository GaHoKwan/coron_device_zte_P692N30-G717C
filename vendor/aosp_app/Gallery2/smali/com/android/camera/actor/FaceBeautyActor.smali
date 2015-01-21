.class public Lcom/android/camera/actor/FaceBeautyActor;
.super Lcom/android/camera/actor/PhotoActor;
.source "FaceBeautyActor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;
    }
.end annotation


# static fields
.field private static final SMILESHOT_IN_PROGRESS:I = 0x1

.field private static final SMILESHOT_STANDBY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FaceBeautyActor"


# instance fields
.field private mOriginalSaveRequest:Lcom/android/camera/SaveRequest;

.field private mStatus:I


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actor/FaceBeautyActor;->mStatus:I

    .line 26
    const-string v0, "FaceBeautyActor"

    const-string v1, "FaceBeautyActor initialize"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;-><init>(Lcom/android/camera/actor/FaceBeautyActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actor/FaceBeautyActor;)Lcom/android/camera/SaveRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/actor/FaceBeautyActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/actor/FaceBeautyActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/camera/actor/FaceBeautyActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;

    return-object p1
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    return v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public initializeView(Z)V
    .locals 2
    .parameter "isOtStarted"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->initializeView(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFrameManager()Lcom/android/camera/manager/FrameManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/FrameManager;->enableFaceBeauty(Z)V

    .line 49
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 2
    .parameter "startPreview"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onCameraParameterReady(Z)V

    .line 38
    const-string v0, "FaceBeautyActor"

    const-string v1, "FaceBeautyActor onCameraParameterReady"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 53
    const-string v0, "FaceBeautyActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceBeauty.onShutterButtonLongPressed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c0039

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->release()V

    .line 63
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v2

    aget-object v0, v1, v2

    .line 64
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopFaceDetection()V

    .line 67
    :cond_0
    return-void
.end method
