.class Lcom/android/camera/Camera$16;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/manager/SettingManager$SettingListener;


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
    .line 2391
    iput-object p1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2456
    iget-object v0, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2496
    :goto_0
    return-void

    .line 2459
    :cond_0
    new-instance v4, Lcom/android/camera/Camera$16$1;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$16$1;-><init>(Lcom/android/camera/Camera$16;)V

    .line 2492
    .local v4, runnable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    const v3, 0x7f0c0122

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    const v5, 0x104000a

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    const/high16 v6, 0x104

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Camera;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSettingContainerShowing(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 2499
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2500
    iget-object v0, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->stopObjectTrack()V

    .line 2502
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Lcom/android/camera/ListPreference;)V
    .locals 14
    .parameter "preference"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 2394
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onSharedPreferenceChanged ListPreference = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "pref_smile_shot_key"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "pref_hdr_key"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "pref_asd_key"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2399
    :cond_0
    iget-object v9, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v9}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v10}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/camera/manager/ModePicker;->getRealMode(Lcom/android/camera/ListPreference;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 2452
    :goto_0
    return-void

    .line 2403
    :cond_1
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "pref_video_effect_key"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2404
    iget-object v11, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v11}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v11

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v3

    .line 2405
    .local v3, effectType:I
    iget-object v11, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v11}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v11

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v2

    .line 2406
    .local v2, effectParameter:Ljava/lang/Object;
    iget-object v11, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastEffectType:I
    invoke-static {v11}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)I

    move-result v11

    if-eqz v11, :cond_5

    move v5, v10

    .line 2407
    .local v5, oldIsEffects:Z
    :goto_1
    if-eqz v3, :cond_6

    move v4, v10

    .line 2408
    .local v4, newIsEffects:Z
    :goto_2
    if-nez v2, :cond_2

    iget-object v11, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_7

    :cond_2
    if-eqz v2, :cond_3

    iget-object v11, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    :cond_3
    move v0, v10

    .line 2410
    .local v0, changedParameter:Z
    :goto_3
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onSharedPreferenceChanged() effectType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", effectParameter="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", oldIsEffects="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", newIsEffects="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mLastEffectType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastEffectType:I
    invoke-static {v13}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mLastEffectParameter="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;
    invoke-static {v13}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    iget-object v11, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mLastEffectType:I
    invoke-static {v11, v3}, Lcom/android/camera/Camera;->access$2702(Lcom/android/camera/Camera;I)I

    .line 2414
    iget-object v11, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;
    invoke-static {v11, v2}, Lcom/android/camera/Camera;->access$2802(Lcom/android/camera/Camera;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    if-eqz v0, :cond_4

    .line 2416
    iget-object v11, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v11}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 2418
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2419
    iget-object v11, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;
    invoke-static {v11}, Lcom/android/camera/Camera;->access$5600(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SubSettingManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 2422
    :cond_4
    if-eq v5, v4, :cond_9

    .line 2423
    if-eqz v4, :cond_8

    .line 2424
    iget-object v9, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v9}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    goto/16 :goto_0

    .end local v0           #changedParameter:Z
    .end local v4           #newIsEffects:Z
    .end local v5           #oldIsEffects:Z
    :cond_5
    move v5, v9

    .line 2406
    goto/16 :goto_1

    .restart local v5       #oldIsEffects:Z
    :cond_6
    move v4, v9

    .line 2407
    goto/16 :goto_2

    .restart local v4       #newIsEffects:Z
    :cond_7
    move v0, v9

    .line 2408
    goto/16 :goto_3

    .line 2426
    .restart local v0       #changedParameter:Z
    :cond_8
    iget-object v9, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v9}, Lcom/android/camera/Camera;->backToLastMode()V

    goto/16 :goto_0

    .line 2435
    .end local v0           #changedParameter:Z
    .end local v2           #effectParameter:Ljava/lang/Object;
    .end local v3           #effectType:I
    .end local v4           #newIsEffects:Z
    .end local v5           #oldIsEffects:Z
    :cond_9
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "pref_camera_picturesize_key"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2436
    iget-object v10, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v8

    .line 2437
    .local v8, sPref:Landroid/content/SharedPreferences;
    const-string v10, "pref_camera_picturesize_key"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2438
    .local v6, picSize:Ljava/lang/String;
    const-string v7, "1.3333"

    .line 2439
    .local v7, ratio:Ljava/lang/String;
    const-string v10, "1280x720"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "1600x912"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "2048x1152"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "2560x1440"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "3328x1872"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "4096x2304"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "4608x2592"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "5120x2880"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2442
    :cond_a
    const-string v7, "1.7778"

    .line 2444
    :cond_b
    const-string v10, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "jason applyParameters ratio="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2446
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "pref_camera_picturesize_ratio_key"

    invoke-interface {v1, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2447
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2451
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #picSize:Ljava/lang/String;
    .end local v7           #ratio:Ljava/lang/String;
    .end local v8           #sPref:Landroid/content/SharedPreferences;
    :cond_c
    iget-object v10, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applyParameters(Z)V
    invoke-static {v10, v9}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;Z)V

    goto/16 :goto_0
.end method

.method public onVoiceCommandChanged(I)V
    .locals 1
    .parameter "commandId"

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mVoiceManager:Lcom/android/camera/VoiceManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4500(Lcom/android/camera/Camera;)Lcom/android/camera/VoiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2506
    iget-object v0, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mVoiceManager:Lcom/android/camera/VoiceManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4500(Lcom/android/camera/Camera;)Lcom/android/camera/VoiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/VoiceManager;->playVoiceCommandById(I)V

    .line 2508
    :cond_0
    return-void
.end method
