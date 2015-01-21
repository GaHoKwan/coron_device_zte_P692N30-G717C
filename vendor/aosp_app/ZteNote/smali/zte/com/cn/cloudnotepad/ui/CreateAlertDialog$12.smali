.class Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$12;
.super Ljava/lang/Object;
.source "CreateAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateExportDlg(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$noteData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

.field private final synthetic val$suffixs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$12;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$12;->val$noteData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$12;->val$suffixs:[Ljava/lang/String;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 352
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$12;->val$activity:Landroid/app/Activity;

    const v2, 0x7f09006f

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$12;->val$activity:Landroid/app/Activity;

    const v4, 0x7f090087

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$12;->val$noteData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$12;->val$suffixs:[Ljava/lang/String;

    aget-object v5, v5, p2

    .line 352
    invoke-direct/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;-><init>(Landroid/app/Activity;ILjava/lang/String;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)V

    .line 353
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 354
    return-void
.end method
