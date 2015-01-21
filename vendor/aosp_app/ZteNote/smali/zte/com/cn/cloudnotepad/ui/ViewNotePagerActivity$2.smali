.class Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;
.super Ljava/lang/Object;
.source "ViewNotePagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->deleteNote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;)Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;
    .locals 1
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 412
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;-><init>(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;)V

    .line 445
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 446
    return-void
.end method
