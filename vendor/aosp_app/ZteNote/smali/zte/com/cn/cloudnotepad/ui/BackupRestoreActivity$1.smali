.class Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$1;
.super Ljava/lang/Object;
.source "BackupRestoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->createNetworkPromptDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

.field private final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$1;->val$checkBox:Landroid/widget/CheckBox;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 100
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->saveNetworkPrompt()V

    .line 103
    :cond_0
    return-void
.end method
