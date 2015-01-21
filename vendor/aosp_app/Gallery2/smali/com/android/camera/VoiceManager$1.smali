.class Lcom/android/camera/VoiceManager$1;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VoiceManager;


# direct methods
.method constructor <init>(Lcom/android/camera/VoiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/camera/VoiceManager$1;->this$0:Lcom/android/camera/VoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 297
    iget-object v0, p0, Lcom/android/camera/VoiceManager$1;->this$0:Lcom/android/camera/VoiceManager;

    invoke-static {p2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v1

    #setter for: Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/android/camera/VoiceManager;->access$602(Lcom/android/camera/VoiceManager;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 299
    const-string v0, "VoiceManager"

    const-string v1, "ServiceConnection onServiceConnected."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/camera/VoiceManager$1;->this$0:Lcom/android/camera/VoiceManager;

    iget-object v1, p0, Lcom/android/camera/VoiceManager$1;->this$0:Lcom/android/camera/VoiceManager;

    #getter for: Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/VoiceManager;->access$700(Lcom/android/camera/VoiceManager;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/camera/VoiceManager;->registerVoiceCommand(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/camera/VoiceManager;->access$800(Lcom/android/camera/VoiceManager;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/camera/VoiceManager$1;->this$0:Lcom/android/camera/VoiceManager;

    iget-object v1, p0, Lcom/android/camera/VoiceManager$1;->this$0:Lcom/android/camera/VoiceManager;

    #getter for: Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/VoiceManager;->access$700(Lcom/android/camera/VoiceManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    #calls: Lcom/android/camera/VoiceManager;->startVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/camera/VoiceManager;->access$900(Lcom/android/camera/VoiceManager;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 303
    iget-object v0, p0, Lcom/android/camera/VoiceManager$1;->this$0:Lcom/android/camera/VoiceManager;

    iget-object v1, p0, Lcom/android/camera/VoiceManager$1;->this$0:Lcom/android/camera/VoiceManager;

    #getter for: Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/VoiceManager;->access$700(Lcom/android/camera/VoiceManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    #calls: Lcom/android/camera/VoiceManager;->startVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/camera/VoiceManager;->access$900(Lcom/android/camera/VoiceManager;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/VoiceManager$1;->this$0:Lcom/android/camera/VoiceManager;

    iget-object v1, p0, Lcom/android/camera/VoiceManager$1;->this$0:Lcom/android/camera/VoiceManager;

    #getter for: Lcom/android/camera/VoiceManager;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/VoiceManager;->access$700(Lcom/android/camera/VoiceManager;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/camera/VoiceManager;->startVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    invoke-static {v0, v1, v3, v3, v4}, Lcom/android/camera/VoiceManager;->access$900(Lcom/android/camera/VoiceManager;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 308
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 312
    const-string v0, "VoiceManager"

    const-string v1, "Service disconnected"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/camera/VoiceManager$1;->this$0:Lcom/android/camera/VoiceManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/VoiceManager;->mRegistered:Z
    invoke-static {v0, v1}, Lcom/android/camera/VoiceManager;->access$1002(Lcom/android/camera/VoiceManager;Z)Z

    .line 314
    iget-object v0, p0, Lcom/android/camera/VoiceManager$1;->this$0:Lcom/android/camera/VoiceManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/VoiceManager;->mVoiceManagerService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/android/camera/VoiceManager;->access$602(Lcom/android/camera/VoiceManager;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 315
    return-void
.end method
