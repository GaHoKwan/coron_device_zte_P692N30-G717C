.class Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;
.super Landroid/os/Handler;
.source "ConfigFD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/fastdormancy/ConfigFD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    const-string v3, "EM_FD"

    const-string v4, "Receive msg from modem"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 201
    :pswitch_0
    const-string v3, "EM_FD"

    const-string v4, "Receive EVENT_FD_QUERY_SIM1:"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 203
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    .line 204
    iget-object v4, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    #setter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$102(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;[Ljava/lang/String;)[Ljava/lang/String;

    .line 205
    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    iget-object v4, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    iget-object v5, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->parseData([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$500(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$102(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;[Ljava/lang/String;)[Ljava/lang/String;

    .line 206
    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3

    .line 207
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 208
    const-string v3, "EM_FD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mReturnData["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    :cond_1
    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ne v3, v7, :cond_2

    .line 212
    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #setter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v3, v6}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$202(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;I)I

    .line 221
    :goto_2
    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #calls: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->updateUI()V
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$600(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)V

    goto/16 :goto_0

    .line 215
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    iget-object v4, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #setter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v3, v4}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$202(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "EM_FD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid mReturnData format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #setter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v3, v6}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$202(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;I)I

    goto :goto_2

    .line 224
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #i:I
    :cond_3
    const-string v3, "EM_FD"

    const-string v4, "Received data is null"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :cond_4
    const-string v3, "EM_FD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive EVENT_FD_QUERY: exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v3, "EM_FD"

    const-string v4, "Receive EVENT_FD_SET:"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 233
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    .line 234
    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    const-string v4, "success!"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 236
    :cond_5
    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    invoke-virtual {v3, v6}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
