.class Lcom/android/camera/Camera$9;
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
    .line 2115
    iput-object p1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 5
    .parameter "button"

    .prologue
    const/4 v4, 0x1

    .line 2147
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Photo.onShutterButtonClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")isFullScreen()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2149
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 2151
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2152
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5600(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SubSettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 2154
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    .line 2155
    .local v0, listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    if-eqz v0, :cond_1

    .line 2156
    invoke-interface {v0, p1}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 2159
    .end local v0           #listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    :cond_1
    return-void
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 5
    .parameter "button"
    .parameter "pressed"

    .prologue
    const/4 v4, 0x1

    .line 2133
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Photo.onShutterButtonFocus("

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

    .line 2134
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 2136
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2137
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5600(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SubSettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 2139
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    .line 2140
    .local v0, listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    if-eqz v0, :cond_1

    .line 2141
    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 2143
    :cond_1
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 5
    .parameter "button"

    .prologue
    const/4 v4, 0x1

    .line 2119
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Photo.onShutterButtonLongPressed("

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

    .line 2120
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 2122
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2123
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5600(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SubSettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 2125
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    .line 2126
    .local v0, listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    if-eqz v0, :cond_1

    .line 2127
    invoke-interface {v0, p1}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V

    .line 2129
    :cond_1
    return-void
.end method
