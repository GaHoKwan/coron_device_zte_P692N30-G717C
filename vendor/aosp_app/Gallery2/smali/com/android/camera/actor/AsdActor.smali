.class public Lcom/android/camera/actor/AsdActor;
.super Lcom/android/camera/actor/PhotoActor;
.source "AsdActor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/AsdActor$AsdCameraCategory;
    }
.end annotation


# static fields
.field private static final SAVE_ORIGINAL_PICTURE:Z = true

.field private static final TAG:Ljava/lang/String; = "AsdActor"


# instance fields
.field private final mASDCaptureCallback:Landroid/hardware/Camera$ASDCallback;

.field private mOriginalSaveRequest:Lcom/android/camera/SaveRequest;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    .line 37
    new-instance v0, Lcom/android/camera/actor/AsdActor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/AsdActor$1;-><init>(Lcom/android/camera/actor/AsdActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/AsdActor;->mASDCaptureCallback:Landroid/hardware/Camera$ASDCallback;

    .line 21
    const-string v0, "AsdActor"

    const-string v1, "AsdActor initialize"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/android/camera/actor/AsdActor$AsdCameraCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/AsdActor$AsdCameraCategory;-><init>(Lcom/android/camera/actor/AsdActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    .line 23
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIndicatorManager()Lcom/android/camera/manager/IndicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/IndicatorManager;->saveSceneMode()V

    .line 24
    return-void
.end method


# virtual methods
.method public getASDCallback()Landroid/hardware/Camera$ASDCallback;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/actor/AsdActor;->mASDCaptureCallback:Landroid/hardware/Camera$ASDCallback;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x5

    return v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method

.method public onCameraParameterReady(Z)V
    .locals 2
    .parameter "startPreview"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onCameraParameterReady(Z)V

    .line 34
    const-string v0, "AsdActor"

    const-string v1, "AsdActor onCameraParameterReady"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 56
    const-string v0, "AsdActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asd.onShutterButtonLongPressed("

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

    .line 57
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c006c

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

    .line 59
    return-void
.end method
