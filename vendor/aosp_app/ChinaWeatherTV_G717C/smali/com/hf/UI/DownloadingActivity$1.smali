.class Lcom/hf/UI/DownloadingActivity$1;
.super Landroid/os/Handler;
.source "DownloadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/DownloadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/DownloadingActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/DownloadingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/DownloadingActivity$1;->this$0:Lcom/hf/UI/DownloadingActivity;

    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 37
    iget v3, p1, Landroid/os/Message;->what:I

    .line 38
    .local v3, what:I
    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 39
    iget-object v4, p0, Lcom/hf/UI/DownloadingActivity$1;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/hf/UI/DownloadingActivity;->access$0(Lcom/hf/UI/DownloadingActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/hf/UI/DownloadingActivity$1;->this$0:Lcom/hf/UI/DownloadingActivity;

    const v6, 0x7f080141

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/hf/UI/DownloadingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v4, p0, Lcom/hf/UI/DownloadingActivity$1;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/hf/UI/DownloadingActivity;->access$1(Lcom/hf/UI/DownloadingActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const/16 v4, 0x65

    if-ne v3, v4, :cond_2

    .line 42
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 44
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v4, p0, Lcom/hf/UI/DownloadingActivity$1;->this$0:Lcom/hf/UI/DownloadingActivity;

    invoke-virtual {v4, v0}, Lcom/hf/UI/DownloadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    iget-object v4, p0, Lcom/hf/UI/DownloadingActivity$1;->this$0:Lcom/hf/UI/DownloadingActivity;

    invoke-virtual {v4}, Lcom/hf/UI/DownloadingActivity;->finish()V

    goto :goto_0

    .line 50
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    const/16 v4, 0x66

    if-ne v3, v4, :cond_3

    .line 51
    iget-object v4, p0, Lcom/hf/UI/DownloadingActivity$1;->this$0:Lcom/hf/UI/DownloadingActivity;

    const v5, 0x7f0800c1

    invoke-static {v4, v5}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 52
    iget-object v4, p0, Lcom/hf/UI/DownloadingActivity$1;->this$0:Lcom/hf/UI/DownloadingActivity;

    invoke-virtual {v4}, Lcom/hf/UI/DownloadingActivity;->finish()V

    goto :goto_0

    .line 53
    :cond_3
    const/16 v4, 0x67

    if-ne v3, v4, :cond_0

    .line 54
    iget-object v4, p0, Lcom/hf/UI/DownloadingActivity$1;->this$0:Lcom/hf/UI/DownloadingActivity;

    invoke-virtual {v4}, Lcom/hf/UI/DownloadingActivity;->finish()V

    goto :goto_0
.end method
