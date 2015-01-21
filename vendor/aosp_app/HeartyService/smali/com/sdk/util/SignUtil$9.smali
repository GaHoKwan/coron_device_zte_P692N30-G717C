.class Lcom/sdk/util/SignUtil$9;
.super Ljava/lang/Thread;
.source "SignUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/util/SignUtil;->request(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$requestData:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sdk/util/SignUtil$9;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sdk/util/SignUtil$9;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdk/util/SignUtil$9;->val$requestData:Ljava/lang/String;

    .line 544
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 547
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 548
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 550
    .local v2, message:Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/sdk/util/SignUtil$9;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdk/util/SignUtil$9;->val$requestData:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sdk/http/HttpClientUtil;->postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, info:Ljava/lang/String;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 552
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    iget-object v3, p0, Lcom/sdk/util/SignUtil$9;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    .end local v1           #info:Ljava/lang/String;
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 555
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 556
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    iget-object v3, p0, Lcom/sdk/util/SignUtil$9;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 557
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 558
    iget-object v4, p0, Lcom/sdk/util/SignUtil$9;->val$handler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    throw v3
.end method
