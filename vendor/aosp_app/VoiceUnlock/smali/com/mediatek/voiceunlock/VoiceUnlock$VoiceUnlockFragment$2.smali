.class Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$2;
.super Landroid/os/Handler;
.source "VoiceUnlock.java"


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
    .line 110
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$2;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$2;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->handleVoiceCommandNotified(IILandroid/os/Bundle;)V

    .line 113
    return-void
.end method
