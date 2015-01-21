.class Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$4;
.super Ljava/lang/Object;
.source "BackupRestoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->initActivity()V

    .line 227
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->access$2(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->access$2(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$4;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->access$2(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 230
    :cond_0
    return-void
.end method
