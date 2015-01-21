.class Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$4;
.super Ljava/lang/Object;
.source "ZteAccountUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->downloadApk(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$4;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$4;->val$context:Landroid/content/Context;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 278
    new-instance v0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$4;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$4;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;-><init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 279
    return-void
.end method
