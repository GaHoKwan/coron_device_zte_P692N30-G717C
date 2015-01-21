.class Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$8;
.super Ljava/lang/Object;
.source "VoiceCommandRecord.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$8;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$8;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    invoke-static {p2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v1

    #setter for: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$602(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 925
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$8;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$8;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    #getter for: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPkgName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$800(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->registerVoiceCommand(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$1200(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$8;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    const-string v1, "onServiceConnected   "

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$700(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$8;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->voiceTrainingStart()V
    invoke-static {v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$1300(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)V

    .line 929
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$8;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    const-string v1, "onServiceDisconnected   "

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$700(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$8;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->isRegistered:Z
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$1402(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Z)Z

    .line 933
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$8;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$602(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 934
    return-void
.end method
