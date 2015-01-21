.class Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$5;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 232
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$5;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$5;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    #calls: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isLastCommand()Z
    invoke-static {v0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$400(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$5;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$5;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    #getter for: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$200(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->resetCommand(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$500(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Ljava/lang/String;Z)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$5;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$5;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    #getter for: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$200(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->resetCommand(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$500(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Ljava/lang/String;Z)V

    goto :goto_0
.end method
