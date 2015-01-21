.class Lcom/mediatek/phone/VoiceCommandHandler$1;
.super Ljava/lang/Object;
.source "VoiceCommandHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/VoiceCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/VoiceCommandHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/VoiceCommandHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mediatek/phone/VoiceCommandHandler$1;->this$0:Lcom/mediatek/phone/VoiceCommandHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/phone/VoiceCommandHandler$1;->this$0:Lcom/mediatek/phone/VoiceCommandHandler;

    invoke-static {p2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v1

    #setter for: Lcom/mediatek/phone/VoiceCommandHandler;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/mediatek/phone/VoiceCommandHandler;->access$002(Lcom/mediatek/phone/VoiceCommandHandler;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 51
    invoke-static {}, Lcom/mediatek/phone/VoiceCommandHandler;->isValidCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mediatek/phone/VoiceCommandHandler$1;->this$0:Lcom/mediatek/phone/VoiceCommandHandler;

    invoke-virtual {v0}, Lcom/mediatek/phone/VoiceCommandHandler;->startVoiceCommand()V

    .line 54
    :cond_0
    const-string v0, "onServiceConnected, init mVCmdMgrService"

    #calls: Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/phone/VoiceCommandHandler;->access$100(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/phone/VoiceCommandHandler$1;->this$0:Lcom/mediatek/phone/VoiceCommandHandler;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/phone/VoiceCommandHandler;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/mediatek/phone/VoiceCommandHandler;->access$002(Lcom/mediatek/phone/VoiceCommandHandler;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 60
    const-string v0, "onServiceDisconnected, destroy mVCmdMgrService"

    #calls: Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/phone/VoiceCommandHandler;->access$100(Ljava/lang/String;)V

    .line 61
    return-void
.end method
