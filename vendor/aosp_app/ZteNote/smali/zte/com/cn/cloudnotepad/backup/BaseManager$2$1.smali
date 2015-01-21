.class Lzte/com/cn/cloudnotepad/backup/BaseManager$2$1;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$2;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/BaseManager$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$2;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$2;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$2;)Lzte/com/cn/cloudnotepad/backup/BaseManager;

    move-result-object v0

    iget-boolean v0, v0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mCancelled:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$2;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$2;)Lzte/com/cn/cloudnotepad/backup/BaseManager;

    move-result-object v0

    const-string v1, "in doTask(), mThread "

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->printThreadInfo(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$2;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$2;)Lzte/com/cn/cloudnotepad/backup/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->doTask()V

    .line 150
    :cond_0
    return-void
.end method
