.class Lcom/mediatek/engineermode/modemwarning/ModemWarning$1;
.super Landroid/os/Handler;
.source "ModemWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/modemwarning/ModemWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/modemwarning/ModemWarning;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/modemwarning/ModemWarning;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mediatek/engineermode/modemwarning/ModemWarning$1;->this$0:Lcom/mediatek/engineermode/modemwarning/ModemWarning;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 81
    const-string v5, "EM/ModemWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive msg from modem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 86
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    .line 87
    iget-object v6, p0, Lcom/mediatek/engineermode/modemwarning/ModemWarning$1;->this$0:Lcom/mediatek/engineermode/modemwarning/ModemWarning;

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    #calls: Lcom/mediatek/engineermode/modemwarning/ModemWarning;->parseData([Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/mediatek/engineermode/modemwarning/ModemWarning;->access$000(Lcom/mediatek/engineermode/modemwarning/ModemWarning;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 90
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 91
    .local v4, value:I
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    or-int/lit16 v4, v4, 0x100

    .line 96
    :goto_1
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AT+EINFO="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v1, v5

    .line 97
    .local v1, cmd:[Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/engineermode/modemwarning/ModemWarning$1;->this$0:Lcom/mediatek/engineermode/modemwarning/ModemWarning;

    iget-object v6, p0, Lcom/mediatek/engineermode/modemwarning/ModemWarning$1;->this$0:Lcom/mediatek/engineermode/modemwarning/ModemWarning;

    #getter for: Lcom/mediatek/engineermode/modemwarning/ModemWarning;->mResponseHander:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/engineermode/modemwarning/ModemWarning;->access$100(Lcom/mediatek/engineermode/modemwarning/ModemWarning;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    #calls: Lcom/mediatek/engineermode/modemwarning/ModemWarning;->sendAtCommand([Ljava/lang/String;Landroid/os/Message;)V
    invoke-static {v5, v1, v6}, Lcom/mediatek/engineermode/modemwarning/ModemWarning;->access$200(Lcom/mediatek/engineermode/modemwarning/ModemWarning;[Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v1           #cmd:[Ljava/lang/String;
    .end local v4           #value:I
    :catch_0
    move-exception v2

    .line 100
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v5, "EM/ModemWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/mediatek/engineermode/modemwarning/ModemWarning$1;->this$0:Lcom/mediatek/engineermode/modemwarning/ModemWarning;

    invoke-virtual {v5, v8}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 94
    .restart local v3       #str:Ljava/lang/String;
    .restart local v4       #value:I
    :cond_2
    and-int/lit16 v4, v4, -0x101

    goto :goto_1

    .line 104
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #value:I
    :cond_3
    const-string v5, "EM/ModemWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MODEM_QUERY: exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 109
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 110
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 111
    const-string v5, "EM/ModemWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MODEM_SET: exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/mediatek/engineermode/modemwarning/ModemWarning$1;->this$0:Lcom/mediatek/engineermode/modemwarning/ModemWarning;

    invoke-virtual {v5, v8}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
