.class Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask$1;
.super Ljava/lang/Object;
.source "ZteAccountUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask$1;->this$1:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 239
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 240
    const-string v0, "zhangxue"

    const-string v1, "KeyEvent.KEYCODE_BACK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask$1;->this$1:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->access$3(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;)Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    move-result-object v0

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask$1;->this$1:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->access$3(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;)Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    move-result-object v0

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask$1;->this$1:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->access$3(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;)Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    move-result-object v0

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 244
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask$1;->this$1:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->context:Landroid/content/Context;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->access$2(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask$1;->this$1:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->context:Landroid/content/Context;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->access$2(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    :cond_1
    return v3
.end method
