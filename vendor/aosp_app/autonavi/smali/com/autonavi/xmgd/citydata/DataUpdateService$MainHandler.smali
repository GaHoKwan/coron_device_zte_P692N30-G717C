.class Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDownloadStarted(I)V
    invoke-static {v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$3200(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDownloadStopped(I)V
    invoke-static {v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$3300(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDownloadPrepared(II)V
    invoke-static {v2, v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$3400(Lcom/autonavi/xmgd/citydata/DataUpdateService;II)V

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDownloadProgressUpdate(II)V
    invoke-static {v2, v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$3500(Lcom/autonavi/xmgd/citydata/DataUpdateService;II)V

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDownloadCompletion(I)V
    invoke-static {v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$3600(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V

    goto :goto_0

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDownloadError(II)V
    invoke-static {v2, v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$3700(Lcom/autonavi/xmgd/citydata/DataUpdateService;II)V

    goto :goto_0

    :pswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$3800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$3800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$3800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;->onCompletion(I)V

    goto :goto_1

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDataRemoved(II)V
    invoke-static {v2, v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$3900(Lcom/autonavi/xmgd/citydata/DataUpdateService;II)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->loadDataList()Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;->onGetDataList(Ljava/util/ArrayList;)V

    goto :goto_2

    :pswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;->onError(I)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method
