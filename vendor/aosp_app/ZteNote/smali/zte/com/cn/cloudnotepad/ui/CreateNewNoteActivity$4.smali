.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$4;
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 2628
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2633
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2634
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2635
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->onCancel()V

    .line 2636
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2639
    :cond_0
    return-void
.end method
