.class Lcom/android/deskclock/AlarmAlertFullScreen$3;
.super Ljava/lang/Object;
.source "AlarmAlertFullScreen.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmAlertFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmAlertFullScreen;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-static {p2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v2

    #setter for: Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v1, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$202(Lcom/android/deskclock/AlarmAlertFullScreen;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 216
    const-string v1, "ServiceConnection onServiceConnected."

    invoke-static {v1}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, pkgName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->registerVoiceCommand(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$300(Lcom/android/deskclock/AlarmAlertFullScreen;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$400(Lcom/android/deskclock/AlarmAlertFullScreen;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 221
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 224
    const-string v0, "Service disconnected"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdIsRegistered:Z
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$502(Lcom/android/deskclock/AlarmAlertFullScreen;Z)Z

    .line 226
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$202(Lcom/android/deskclock/AlarmAlertFullScreen;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 227
    return-void
.end method
