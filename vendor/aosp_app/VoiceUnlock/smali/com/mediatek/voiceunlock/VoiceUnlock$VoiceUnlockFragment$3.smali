.class Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$3;
.super Landroid/os/Handler;
.source "VoiceUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->onCreate(Landroid/os/Bundle;)V
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
    .line 138
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$3;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$3;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->handleServiceError(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$100(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
