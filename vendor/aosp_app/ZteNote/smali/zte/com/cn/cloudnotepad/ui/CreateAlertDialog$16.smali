.class Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$16;
.super Ljava/lang/Object;
.source "CreateAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateMutiExportDlg(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$arrayList:Ljava/util/ArrayList;

.field private final synthetic val$folderPath:Ljava/lang/String;

.field private final synthetic val$suffixs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$16;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$16;->val$arrayList:Ljava/util/ArrayList;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$16;->val$suffixs:[Ljava/lang/String;

    iput-object p4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$16;->val$folderPath:Ljava/lang/String;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 529
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$16;->val$activity:Landroid/app/Activity;

    const v2, 0x7f09006f

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$16;->val$arrayList:Ljava/util/ArrayList;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$16;->val$suffixs:[Ljava/lang/String;

    aget-object v4, v4, p2

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$16;->val$folderPath:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;-><init>(Landroid/app/Activity;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 531
    return-void
.end method
