.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$18;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->CreateBackAlertDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$18;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 1614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1616
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/NoteApp;->hasEnoughInternalStorage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1617
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$18;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$18;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    const v3, 0x7f0900ad

    invoke-virtual {v2, v3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1623
    :goto_0
    return-void

    .line 1621
    :cond_0
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$18;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$18;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-direct {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/content/Context;)V

    .line 1622
    .local v0, task:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
