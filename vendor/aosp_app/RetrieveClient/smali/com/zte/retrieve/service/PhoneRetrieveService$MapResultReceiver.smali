.class Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;
.super Lcom/zte/retrieve/receiver/OperResReceiver;
.source "PhoneRetrieveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/PhoneRetrieveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;


# direct methods
.method private constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    invoke-direct {p0}, Lcom/zte/retrieve/receiver/OperResReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService;Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 788
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #setter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->isMapping:Z
    invoke-static {v4, v5}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$17(Lcom/zte/retrieve/service/PhoneRetrieveService;Z)V

    .line 789
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService;->unregMapReceiver()V
    invoke-static {v4}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$21(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    .line 790
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->clientFlag:Z
    invoke-static {v4}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$20(Lcom/zte/retrieve/service/PhoneRetrieveService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 791
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$11(Lcom/zte/retrieve/service/PhoneRetrieveService;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "map_content"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6, v6}, Lcom/zte/retrieve/utils/SMSSender;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 804
    :goto_0
    return-void

    .line 793
    :cond_0
    const-string v4, "result"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 794
    .local v2, rescode:I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 795
    .local v0, data:Landroid/os/Bundle;
    const-string v4, "map_info"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/zte/retrieve/service/instruct/Location$MapInfo;

    .line 796
    .local v1, mapInfo:Lcom/zte/retrieve/service/instruct/Location$MapInfo;
    invoke-static {}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getInstance()Lcom/zte/retrieve/cloud/PRConnectUrl;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$2(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/zte/retrieve/utils/PhoneInfo;

    iget-object v7, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$2(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/zte/retrieve/utils/PhoneInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2, v1}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getMapUrl(Landroid/content/Context;Ljava/lang/String;ILcom/zte/retrieve/service/instruct/Location$MapInfo;)Ljava/lang/String;

    move-result-object v3

    .line 799
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelephoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;
    invoke-static {v4}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$22(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/utils/PhoneInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/retrieve/utils/PhoneInfo;->isDataConncected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 800
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v4}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->openDataConnect()V

    .line 802
    :cond_1
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$2(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;->sendOperResultReport(ILjava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
