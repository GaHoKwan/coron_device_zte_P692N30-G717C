.class Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->onComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$7;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/BaseManager$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$7;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$7;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$7;)Lzte/com/cn/cloudnotepad/backup/BaseManager;

    move-result-object v0

    iget v0, v0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mResult:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$7;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$7;)Lzte/com/cn/cloudnotepad/backup/BaseManager;

    move-result-object v0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$7;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$7;)Lzte/com/cn/cloudnotepad/backup/BaseManager;

    move-result-object v1

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mAccessToken:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$7;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$7;)Lzte/com/cn/cloudnotepad/backup/BaseManager;

    move-result-object v2

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mExpires:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->updateBaiduDiskAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$7;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$7;)Lzte/com/cn/cloudnotepad/backup/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->doPreTask()V

    .line 269
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$7;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$7;)Lzte/com/cn/cloudnotepad/backup/BaseManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->sendMsg(I)V

    .line 270
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$7;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$7;)Lzte/com/cn/cloudnotepad/backup/BaseManager;

    move-result-object v0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$7;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$7;)Lzte/com/cn/cloudnotepad/backup/BaseManager;

    move-result-object v1

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mAccessToken:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;->this$1:Lzte/com/cn/cloudnotepad/backup/BaseManager$7;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$7;)Lzte/com/cn/cloudnotepad/backup/BaseManager;

    move-result-object v2

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mExpires:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->createBaiduDiskAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
