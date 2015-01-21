.class Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$14;
.super Ljava/lang/Object;
.source "CreateAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateShareDlg(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$14;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$14;->val$noteData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$14;->val$suffixs:[Ljava/lang/String;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 418
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$14;->val$activity:Landroid/app/Activity;

    const v2, 0x7f090071

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$14;->val$noteData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$14;->val$suffixs:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;-><init>(Landroid/app/Activity;ILzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 419
    return-void
.end method
