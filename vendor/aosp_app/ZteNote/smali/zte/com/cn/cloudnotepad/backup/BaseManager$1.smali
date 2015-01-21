.class Lzte/com/cn/cloudnotepad/backup/BaseManager$1;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/backup/BaseManager;
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$1;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 2
    .parameter "bytes"
    .parameter "total"

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 58
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 59
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$1;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    return-void
.end method
