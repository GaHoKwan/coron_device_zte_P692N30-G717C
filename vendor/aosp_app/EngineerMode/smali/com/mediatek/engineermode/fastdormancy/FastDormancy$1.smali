.class Lcom/mediatek/engineermode/fastdormancy/FastDormancy$1;
.super Landroid/os/Handler;
.source "FastDormancy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/fastdormancy/FastDormancy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/fastdormancy/FastDormancy;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/fastdormancy/FastDormancy;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/FastDormancy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0xc9

    const/4 v3, 0x1

    .line 164
    const-string v1, "EM/FD"

    const-string v2, "Receive msg from modem"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 167
    const-string v1, "EM/FD"

    const-string v2, "Receive MSG_SET_TIME"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 169
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/FastDormancy;

    const-string v2, "Success!"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 183
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_0
    :goto_0
    return-void

    .line 172
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/FastDormancy;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 174
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    .line 175
    const-string v1, "EM/FD"

    const-string v2, "Receive MSG_SEND_FD"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 177
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/FastDormancy;

    const-string v2, "Success!"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/FastDormancy;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
