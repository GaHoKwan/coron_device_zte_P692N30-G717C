.class Lcom/android/mms/ui/FolderViewList$10;
.super Ljava/lang/Object;
.source "FolderViewList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderViewList;->confirmMultiDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderViewList;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderViewList;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    iput-object p2, p0, Lcom/android/mms/ui/FolderViewList$10;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1744
    const-string v0, "FolderViewList"

    const-string v1, "start to delete message"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1400(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->isHasProgressDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1400(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-static {v1}, Lcom/android/mms/ui/DeleteProgressDialogUtil;->getProgressDialog(Landroid/content/Context;)Lcom/android/mms/ui/NewProgressDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->setProgressDialog(Lcom/android/mms/ui/NewProgressDialog;)V

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1400(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->showProgressDialog()V

    .line 1753
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/FolderViewList$10$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/FolderViewList$10$1;-><init>(Lcom/android/mms/ui/FolderViewList$10;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1833
    return-void
.end method
