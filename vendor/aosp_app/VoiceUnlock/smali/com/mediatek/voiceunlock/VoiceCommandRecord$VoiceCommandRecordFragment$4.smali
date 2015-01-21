.class Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$4;
.super Landroid/os/Handler;
.source "VoiceCommandRecord.java"


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
    .line 273
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$4;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 276
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 278
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 279
    .local v0, first:Z
    :goto_1
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$4;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->playIndication(Z)V
    invoke-static {v1, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$200(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Z)V

    goto :goto_0

    .line 278
    .end local v0           #first:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
