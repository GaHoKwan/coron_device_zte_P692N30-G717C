.class Lzte/com/cn/cloudnotepad/backup/BaseManager$3;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/backup/BaseManager;->startPreWorkThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$3;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$3;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    iget-boolean v0, v0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mCancelled:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$3;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #calls: Lzte/com/cn/cloudnotepad/backup/BaseManager;->preTask()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$11(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    .line 71
    :cond_0
    return-void
.end method
