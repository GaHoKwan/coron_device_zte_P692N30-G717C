.class Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$5;
.super Ljava/lang/Object;
.source "VoiceCommandRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->onCreate(Landroid/os/Bundle;)V
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
    .line 288
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$5;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 291
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$5;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    #getter for: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$600(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$5;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    const-string v1, "sendCommand TRAINING_INTENSITY"

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$700(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$5;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$5;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    #getter for: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPkgName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$800(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    invoke-static {v0, v1, v3, v3, v2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$900(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$5;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    #getter for: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIntensityHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$1000(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    return-void
.end method
