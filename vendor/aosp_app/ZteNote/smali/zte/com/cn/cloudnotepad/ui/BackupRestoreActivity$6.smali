.class Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$6;
.super Ljava/lang/Object;
.source "BackupRestoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->createNoWifiDlg(Ljava/lang/String;)V
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 387
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mState:I
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->access$3(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lzte/com/cn/cloudnotepad/backup/BackupManager;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-direct {v0, v1, v2}, Lzte/com/cn/cloudnotepad/backup/BackupManager;-><init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    new-instance v0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-direct {v0, v1, v2}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;-><init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V

    goto :goto_0
.end method
