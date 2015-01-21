.class Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$2;
.super Ljava/lang/Object;
.source "ZteAccountUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$2;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 290
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$2;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$2;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$2;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 292
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$2;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    const/4 v1, 0x0

    #setter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$2(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/app/ProgressDialog;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$2;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #calls: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->cancelDownload()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$3(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V

    .line 295
    return-void
.end method
