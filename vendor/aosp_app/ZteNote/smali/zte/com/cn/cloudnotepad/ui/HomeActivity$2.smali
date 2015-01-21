.class Lzte/com/cn/cloudnotepad/ui/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 756
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 758
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    const/4 v1, 0x0

    #setter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$1(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/app/ProgressDialog;)V

    .line 760
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->cancelDownload()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$2(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    .line 761
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedUpdate:Z
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$3(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->finish()V

    .line 764
    :cond_1
    return-void
.end method
