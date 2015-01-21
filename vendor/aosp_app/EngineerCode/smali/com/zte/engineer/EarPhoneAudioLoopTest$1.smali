.class Lcom/zte/engineer/EarPhoneAudioLoopTest$1;
.super Landroid/content/BroadcastReceiver;
.source "EarPhoneAudioLoopTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/EarPhoneAudioLoopTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/EarPhoneAudioLoopTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/EarPhoneAudioLoopTest;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest$1;->this$0:Lcom/zte/engineer/EarPhoneAudioLoopTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, mState:I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 46
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 48
    const-string v3, "state"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest$1;->this$0:Lcom/zte/engineer/EarPhoneAudioLoopTest;

    #getter for: Lcom/zte/engineer/EarPhoneAudioLoopTest;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/zte/engineer/EarPhoneAudioLoopTest;->access$000(Lcom/zte/engineer/EarPhoneAudioLoopTest;)Landroid/media/AudioManager;

    move-result-object v3

    const-string v4, "SET_LOOPBACK_TYPE=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 53
    if-nez v2, :cond_3

    .line 64
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest$1;->this$0:Lcom/zte/engineer/EarPhoneAudioLoopTest;

    #setter for: Lcom/zte/engineer/EarPhoneAudioLoopTest;->isHeadsetConnect:I
    invoke-static {v3, v2}, Lcom/zte/engineer/EarPhoneAudioLoopTest;->access$102(Lcom/zte/engineer/EarPhoneAudioLoopTest;I)I

    .line 66
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_2
    return-void

    .line 57
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_3
    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    .line 61
    iget-object v3, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest$1;->this$0:Lcom/zte/engineer/EarPhoneAudioLoopTest;

    #getter for: Lcom/zte/engineer/EarPhoneAudioLoopTest;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/zte/engineer/EarPhoneAudioLoopTest;->access$000(Lcom/zte/engineer/EarPhoneAudioLoopTest;)Landroid/media/AudioManager;

    move-result-object v3

    const-string v4, "SET_LOOPBACK_TYPE=22"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method
