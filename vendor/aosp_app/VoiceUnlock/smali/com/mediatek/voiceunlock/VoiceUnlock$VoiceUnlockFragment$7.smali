.class Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$7;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$7;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$7;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    invoke-static {p2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v1

    #setter for: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$602(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 504
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$7;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$7;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    #getter for: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mPkgName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$700(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->registerVoiceCommand(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$800(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$7;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    const-string v1, "onServiceConnected   "

    #calls: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$900(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$7;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    const-string v1, "onServiceDisconnected   "

    #calls: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$900(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$7;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isRegistered:Z
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$1002(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Z)Z

    .line 510
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$7;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$602(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 511
    return-void
.end method
