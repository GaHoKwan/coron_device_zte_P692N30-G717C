.class Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;
.super Landroid/os/Handler;
.source "NetworkInfoInfomation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 258
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 260
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 261
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 262
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v2, v4

    check-cast v2, [Ljava/lang/String;

    .line 263
    .local v2, data:[Ljava/lang/String;
    const-string v4, "NetworkInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data[0] is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v4, "NetworkInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flag is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v4, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    aget-object v5, v2, v7

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #setter for: Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mFlag:I
    invoke-static {v4, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$102(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;I)I

    .line 266
    iget-object v4, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    #getter for: Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mFlag:I
    invoke-static {v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$100(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)I

    move-result v5

    or-int/lit8 v5, v5, 0x8

    #setter for: Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mFlag:I
    invoke-static {v4, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$102(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;I)I

    .line 267
    const-string v4, "NetworkInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flag change is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    #getter for: Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mFlag:I
    invoke-static {v6}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$100(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    iget-object v4, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    #getter for: Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItemCount:I
    invoke-static {v4}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$200(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 269
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    .line 270
    .local v1, atCommand:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AT+EINFO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    #getter for: Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mFlag:I
    invoke-static {v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$100(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    #getter for: Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItem:[I
    invoke-static {v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$300(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)[I

    move-result-object v5

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    .line 271
    const/4 v4, 0x1

    const-string v5, "+EINFO"

    aput-object v5, v1, v4

    .line 272
    iget-object v4, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    const/4 v5, 0x3

    #calls: Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->sendATCommand([Ljava/lang/String;I)V
    invoke-static {v4, v1, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$400(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;[Ljava/lang/String;I)V

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #atCommand:[Ljava/lang/String;
    .end local v2           #data:[Ljava/lang/String;
    .end local v3           #j:I
    :cond_1
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 279
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 280
    iget-object v4, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    const v6, 0x7f080476

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
