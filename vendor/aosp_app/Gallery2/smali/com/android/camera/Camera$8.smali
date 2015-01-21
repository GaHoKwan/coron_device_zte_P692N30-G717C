.class Lcom/android/camera/Camera$8;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;


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
    .line 2034
    iput-object p1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 7
    .parameter "button"

    .prologue
    const/16 v6, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2067
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video.onShutterButtonClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") isFullScreen()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCameraOpened = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraOpened:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCameraStartUpThread ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$CameraStartUpThread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5800(Lcom/android/camera/Camera;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    #setter for: Lcom/android/camera/Camera;->tempCallState:I
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$5702(Lcom/android/camera/Camera;I)I

    .line 2071
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->tempCallState:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5800(Lcom/android/camera/Camera;)Landroid/telephony/TelephonyManager;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2073
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showToast(I)V

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2077
    :cond_1
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerVideoShutterClick()V

    .line 2078
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 2080
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2081
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5600(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SubSettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 2085
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraOpened:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$CameraStartUpThread;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2086
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getVideoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    .line 2087
    .local v0, listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    if-eqz v0, :cond_3

    .line 2088
    invoke-interface {v0, p1}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    goto :goto_0

    .line 2089
    :cond_3
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/ModePicker;->getModeIndex(I)I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 2090
    invoke-static {}, Lcom/android/camera/Storage;->getLeftSpace()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 2091
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 2092
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/manager/ModePicker;->setEnabled(Z)V

    .line 2093
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/PickerManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/manager/PickerManager;->setEnabled(Z)V

    .line 2094
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$6000(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    .line 2095
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 2096
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 2097
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 2098
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/SettingManager;->hide()V

    .line 2099
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)V

    .line 2106
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera$8;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 5
    .parameter "button"
    .parameter "pressed"

    .prologue
    const/4 v4, 0x1

    .line 2052
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video.onShutterButtonFocus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerVideoShutterFocus()V

    .line 2054
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 2056
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2057
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5600(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SubSettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 2059
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getVideoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    .line 2060
    .local v0, listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    if-eqz v0, :cond_1

    .line 2061
    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 2063
    :cond_1
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 5
    .parameter "button"

    .prologue
    const/4 v4, 0x1

    .line 2038
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video.onShutterButtonLongPressed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 2041
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2042
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5600(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SubSettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 2044
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getVideoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    .line 2045
    .local v0, listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    if-eqz v0, :cond_1

    .line 2046
    invoke-interface {v0, p1}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V

    .line 2048
    :cond_1
    return-void
.end method
