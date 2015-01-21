.class Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$4;
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
    .line 286
    iput-object p1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$4;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 288
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 289
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 290
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v1, v5

    check-cast v1, [Ljava/lang/String;

    .line 291
    .local v1, data:[Ljava/lang/String;
    const-string v5, "NetworkInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive URC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v4, -0x1

    .line 295
    .local v4, type:I
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 302
    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$4;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    #getter for: Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mNetworkInfo:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$500(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    .line 303
    .local v3, item:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;
    if-nez v3, :cond_1

    .line 304
    const-string v5, "NetworkInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid return type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #data:[Ljava/lang/String;
    .end local v3           #item:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;
    .end local v4           #type:I
    :cond_0
    :goto_0
    return-void

    .line 296
    .restart local v0       #ar:Landroid/os/AsyncResult;
    .restart local v1       #data:[Ljava/lang/String;
    .restart local v4       #type:I
    :catch_0
    move-exception v2

    .line 297
    .local v2, e:Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$4;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    const-string v6, "Return type error"

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 307
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #item:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;
    :cond_1
    aget-object v5, v1, v8

    iput-object v5, v3, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;->info:Ljava/lang/String;

    .line 309
    iget v5, v3, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;->size:I

    aget-object v6, v1, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 310
    const-string v5, "NetworkInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong return length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_2
    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$4;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    #getter for: Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mCurrentItem:I
    invoke-static {v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$600(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 314
    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$4;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    #calls: Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->showNetworkInfo()V
    invoke-static {v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$700(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)V

    goto :goto_0
.end method
