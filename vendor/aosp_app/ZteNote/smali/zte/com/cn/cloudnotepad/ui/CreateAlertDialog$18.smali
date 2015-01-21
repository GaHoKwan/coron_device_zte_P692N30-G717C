.class Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$18;
.super Ljava/lang/Object;
.source "CreateAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateNotebookDeleteAlertDlg(Landroid/content/Context;Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$notebookData:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;


# direct methods
.method constructor <init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$18;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$18;->val$notebookData:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 587
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$18;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f09001e

    .line 588
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$18;->val$context:Landroid/content/Context;

    const v4, 0x7f09008f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$18;->val$notebookData:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v7, v7, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$18;->val$notebookData:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    .line 587
    invoke-direct {v1, v0, v2, v3, v4}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;-><init>(Landroid/app/Activity;ILjava/lang/String;Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)V

    .line 588
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 589
    return-void
.end method
