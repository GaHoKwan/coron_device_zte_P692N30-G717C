.class Lcom/sdk/util/SignUtil$8;
.super Landroid/os/Handler;
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
.field private final synthetic val$callBack:Lcom/sdk/http/NetCallBack;


# direct methods
.method constructor <init>(Lcom/sdk/http/NetCallBack;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sdk/util/SignUtil$8;->val$callBack:Lcom/sdk/http/NetCallBack;

    .line 527
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 530
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 531
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 542
    :goto_0
    return-void

    .line 533
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, info:Ljava/lang/String;
    const-string v2, "Response"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v2, p0, Lcom/sdk/util/SignUtil$8;->val$callBack:Lcom/sdk/http/NetCallBack;

    invoke-virtual {v2, v1}, Lcom/sdk/http/NetCallBack;->finish(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    .end local v1           #info:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, errorMessage:Ljava/lang/String;
    iget-object v2, p0, Lcom/sdk/util/SignUtil$8;->val$callBack:Lcom/sdk/http/NetCallBack;

    invoke-virtual {v2, v0}, Lcom/sdk/http/NetCallBack;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
