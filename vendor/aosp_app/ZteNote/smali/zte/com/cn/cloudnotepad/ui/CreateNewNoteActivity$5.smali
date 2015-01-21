.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "CreateNewNoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 2642
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2647
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2648
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2649
    :cond_0
    const-string v0, "CreateNewNoteActivity"

    const-string v1, "mBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2651
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->onStop()V

    .line 2653
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2654
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 2657
    :cond_2
    return-void
.end method
