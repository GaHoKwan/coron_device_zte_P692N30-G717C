.class Lcom/mediatek/phone/VoiceCommandHandler$3;
.super Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;
.source "VoiceCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/VoiceCommandHandler;-><init>(Landroid/content/Context;Lcom/mediatek/phone/VoiceCommandHandler$Listener;)V
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
    .line 86
    iput-object p1, p0, Lcom/mediatek/phone/VoiceCommandHandler$3;->this$0:Lcom/mediatek/phone/VoiceCommandHandler;

    invoke-direct {p0}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 3
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(): mainAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/phone/VoiceCommandHandler;->access$100(Ljava/lang/String;)V

    .line 91
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 92
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 93
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 94
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/mediatek/phone/VoiceCommandHandler$3;->this$0:Lcom/mediatek/phone/VoiceCommandHandler;

    #getter for: Lcom/mediatek/phone/VoiceCommandHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/phone/VoiceCommandHandler;->access$400(Lcom/mediatek/phone/VoiceCommandHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    return-void
.end method
