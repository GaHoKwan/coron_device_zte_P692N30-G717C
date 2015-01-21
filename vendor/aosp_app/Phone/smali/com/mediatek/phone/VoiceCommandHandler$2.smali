.class Lcom/mediatek/phone/VoiceCommandHandler$2;
.super Landroid/os/Handler;
.source "VoiceCommandHandler.java"


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
    .line 64
    iput-object p1, p0, Lcom/mediatek/phone/VoiceCommandHandler$2;->this$0:Lcom/mediatek/phone/VoiceCommandHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage(): msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/phone/VoiceCommandHandler;->access$100(Ljava/lang/String;)V

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    const-string v0, "VoiceCommandHandler"

    const-string v1, "handleMessage(), running in default"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/phone/VoiceCommandHandler$2;->this$0:Lcom/mediatek/phone/VoiceCommandHandler;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/mediatek/phone/VoiceCommandHandler;->handleCommonVoiceCommand(ILandroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/mediatek/phone/VoiceCommandHandler;->access$200(Lcom/mediatek/phone/VoiceCommandHandler;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/phone/VoiceCommandHandler$2;->this$0:Lcom/mediatek/phone/VoiceCommandHandler;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/mediatek/phone/VoiceCommandHandler;->handleUIVoiceCommand(ILandroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/mediatek/phone/VoiceCommandHandler;->access$300(Lcom/mediatek/phone/VoiceCommandHandler;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
