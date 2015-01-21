.class Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$4;
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
    .line 210
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$4;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    packed-switch p2, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$4;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$4;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    #getter for: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$200(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->playCommand(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->access$300(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$4;->this$0:Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
