.class Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$3;
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
    .line 248
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$3;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$3;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    #setter for: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mBindToService:Z
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$102(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Z)Z

    .line 254
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$3;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->playIndication(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$200(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Z)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$3;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateIntensity(I)V
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$300(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;I)V

    goto :goto_0

    .line 260
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$3;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->handleUpdateNotify(II)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$400(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;II)V

    goto :goto_0

    .line 263
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$3;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mErrorMsg:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$502(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$3;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
