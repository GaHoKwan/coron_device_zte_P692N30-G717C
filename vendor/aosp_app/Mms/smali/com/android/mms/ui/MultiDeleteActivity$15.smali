.class Lcom/android/mms/ui/MultiDeleteActivity$15;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity;->showReachLimitDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;

.field final synthetic val$mcontent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1972
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$15;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$15;->val$mcontent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 1974
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1975
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$15;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$15;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/android/mms/ui/MultiDeleteActivity;->access$5100(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1976
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNeedExitComposerAfterForward()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1977
    const-string v2, "exit_on_sent"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1979
    :cond_0
    const-string v2, "forwarded_message"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1980
    const-string v2, "sms_body"

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$15;->val$mcontent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1981
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$15;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1982
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$15;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1983
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNeedExitComposerAfterForward()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1984
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$15;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4000(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1985
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$15;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4000(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1987
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method
