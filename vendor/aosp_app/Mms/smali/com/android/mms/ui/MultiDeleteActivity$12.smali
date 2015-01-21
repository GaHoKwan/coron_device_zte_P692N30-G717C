.class Lcom/android/mms/ui/MultiDeleteActivity$12;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity;->forwardOneMms(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1840
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;
    invoke-static {v3, v4}, Lcom/android/mms/ui/MultiDeleteActivity;->access$5100(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1841
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNeedExitComposerAfterForward()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1842
    const-string v3, "exit_on_sent"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1844
    :cond_0
    const-string v3, "forwarded_message"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1845
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mAsyncDialog:Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;
    invoke-static {v3}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4800(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

    move-result-object v3

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->mTempThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->access$5000(Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 1846
    const-string v3, "thread_id"

    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mAsyncDialog:Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4800(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

    move-result-object v4

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->mTempThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->access$5000(Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1848
    :cond_1
    const-string v3, "msg_uri"

    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mAsyncDialog:Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4800(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

    move-result-object v4

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->mTempMmsUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->access$4900(Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1849
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const v4, 0x7f0b0272

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1850
    .local v2, subject:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1853
    :cond_2
    const-string v3, "subject"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1854
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const-string v4, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1856
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1857
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNeedExitComposerAfterForward()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1858
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4000(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3ed

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1859
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4000(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1861
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    return-void
.end method
