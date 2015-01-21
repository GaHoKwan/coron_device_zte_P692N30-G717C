.class Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$2;
.super Landroid/os/Handler;
.source "VoiceCommandRecord.java"


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
    .line 187
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$2;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$2;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->handleVoiceCommandNotified(IILandroid/os/Bundle;)V

    .line 190
    return-void
.end method
