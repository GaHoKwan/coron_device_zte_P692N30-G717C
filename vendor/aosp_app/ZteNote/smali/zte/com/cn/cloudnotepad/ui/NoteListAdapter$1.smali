.class Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$1;
.super Ljava/lang/Object;
.source "NoteListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->CreateMutiDeleteAlertDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$1;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 304
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$1;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-direct {v0, v1}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;-><init>(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 305
    return-void
.end method
