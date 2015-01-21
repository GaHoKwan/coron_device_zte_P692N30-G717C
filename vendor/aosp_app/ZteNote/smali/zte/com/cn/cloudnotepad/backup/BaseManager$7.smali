.class Lzte/com/cn/cloudnotepad/backup/BaseManager$7;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/backup/BaseManager;->bindAccount()V
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$7;)Lzte/com/cn/cloudnotepad/backup/BaseManager;
    .locals 1
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    return-object v0
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    iget-boolean v0, v0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mCancelled:Z

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$7$1;-><init>(Lzte/com/cn/cloudnotepad/backup/BaseManager$7;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$10(Lzte/com/cn/cloudnotepad/backup/BaseManager;Ljava/lang/Thread;)V

    .line 272
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreThread:Ljava/lang/Thread;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$9(Lzte/com/cn/cloudnotepad/backup/BaseManager;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 276
    :pswitch_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->sendMsg(I)V

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    const/16 v1, 0x70

    iput v1, v0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mResult:I

    .line 280
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->sendMsg(I)V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
