.class Lcom/android/camera/Camera$19;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 3258
    iput-object p1, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3261
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mReceiver.onReceive("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3263
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3264
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isSameStorage(Landroid/content/Intent;)Z
    invoke-static {v3, p2}, Lcom/android/camera/Camera;->access$7000(Lcom/android/camera/Camera;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3265
    invoke-static {v6}, Lcom/android/camera/Storage;->setStorageReady(Z)V

    .line 3266
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/actor/CameraActor;->onMediaEject()V

    .line 3324
    :cond_0
    :goto_0
    return-void

    .line 3268
    :cond_1
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3269
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isSameStorage(Landroid/content/Intent;)Z
    invoke-static {v3, p2}, Lcom/android/camera/Camera;->access$7000(Lcom/android/camera/Camera;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3270
    invoke-static {}, Lcom/android/camera/Storage;->getInternalVolumePath()Ljava/lang/String;

    move-result-object v1

    .line 3271
    .local v1, internal:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 3272
    invoke-static {v1}, Lcom/android/camera/Storage;->updateDirectory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3273
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/manager/RemainingManager;->showHint()V

    goto :goto_0

    .line 3276
    :cond_2
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/manager/RemainingManager;->clearAvaliableSpace()V

    .line 3277
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/manager/RemainingManager;->showHint()V

    goto :goto_0

    .line 3280
    .end local v1           #internal:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3281
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isSameStorage(Landroid/content/Intent;)Z
    invoke-static {v3, p2}, Lcom/android/camera/Camera;->access$7000(Lcom/android/camera/Camera;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3282
    invoke-static {v7}, Lcom/android/camera/Storage;->setStorageReady(Z)V

    .line 3283
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/manager/RemainingManager;->showHint()V

    goto :goto_0

    .line 3285
    :cond_4
    const-string v3, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3286
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isSameStorage(Landroid/content/Intent;)Z
    invoke-static {v3, p2}, Lcom/android/camera/Camera;->access$7000(Lcom/android/camera/Camera;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3287
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/manager/RemainingManager;->showHint()V

    goto :goto_0

    .line 3289
    :cond_5
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3290
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    #calls: Lcom/android/camera/Camera;->isSameStorage(Landroid/net/Uri;)Z
    invoke-static {v3, v4}, Lcom/android/camera/Camera;->access$7100(Lcom/android/camera/Camera;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3291
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    const v4, 0x7f0c011d

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->showToast(I)V

    goto/16 :goto_0

    .line 3293
    :cond_6
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3295
    sput-boolean v7, Lcom/android/camera/Camera;->mPowerLow:Z

    .line 3296
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPowerLevel(low): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    iget v5, v5, Lcom/android/camera/Camera;->mPowerLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v3, v6}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 3298
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_7

    .line 3299
    const-string v3, "off"

    invoke-virtual {v2, v3}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 3300
    const-string v3, "Camera"

    const-string v4, "flash setValue() value=off"

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    :cond_7
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3300(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3303
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/android/camera/Camera;->access$3300(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3304
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)Lcom/android/camera/SettingChecker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SettingChecker;->applyParametersToUIImmediately()V

    goto/16 :goto_0

    .line 3305
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_8
    const-string v3, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3306
    sput-boolean v6, Lcom/android/camera/Camera;->mPowerLow:Z

    .line 3307
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPowerLevel(okay): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    iget v5, v5, Lcom/android/camera/Camera;->mPowerLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v3, v6}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 3309
    .restart local v2       #pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_9

    .line 3310
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 3311
    const-string v3, "Camera"

    const-string v4, "flash setValue() value=auto"

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    :cond_9
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3300(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3314
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/android/camera/Camera;->access$3300(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3315
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)Lcom/android/camera/SettingChecker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SettingChecker;->applyParametersToUIImmediately()V

    goto/16 :goto_0

    .line 3317
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_a
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3318
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    #calls: Lcom/android/camera/Camera;->isSameStorage(Landroid/net/Uri;)Z
    invoke-static {v3, v4}, Lcom/android/camera/Camera;->access$7100(Lcom/android/camera/Camera;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3319
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/manager/RemainingManager;->clearAvaliableSpace()V

    .line 3320
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/manager/RemainingManager;->showHint()V

    .line 3321
    iget-object v3, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$7200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ThumbnailManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/manager/ThumbnailManager;->forceUpdate()V

    goto/16 :goto_0
.end method
