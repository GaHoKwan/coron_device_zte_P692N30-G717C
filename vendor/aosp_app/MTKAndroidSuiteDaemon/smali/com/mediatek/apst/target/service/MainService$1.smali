.class Lcom/mediatek/apst/target/service/MainService$1;
.super Ljava/lang/Thread;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/apst/target/service/MainService;->onSmsSent(Lcom/mediatek/apst/target/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/service/MainService;

.field final synthetic val$date:J

.field final synthetic val$sent:Z

.field final synthetic val$smsId:J


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/service/MainService;JJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/mediatek/apst/target/service/MainService$1;->this$0:Lcom/mediatek/apst/target/service/MainService;

    iput-wide p2, p0, Lcom/mediatek/apst/target/service/MainService$1;->val$smsId:J

    iput-wide p4, p0, Lcom/mediatek/apst/target/service/MainService$1;->val$date:J

    iput-boolean p6, p0, Lcom/mediatek/apst/target/service/MainService$1;->val$sent:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 900
    new-array v2, v6, [J

    .line 901
    .local v2, ids:[J
    new-array v1, v6, [J

    .line 903
    .local v1, dates:[J
    iget-wide v4, p0, Lcom/mediatek/apst/target/service/MainService$1;->val$smsId:J

    aput-wide v4, v2, v7

    .line 904
    iget-wide v4, p0, Lcom/mediatek/apst/target/service/MainService$1;->val$date:J

    aput-wide v4, v1, v7

    .line 905
    iget-boolean v4, p0, Lcom/mediatek/apst/target/service/MainService$1;->val$sent:Z

    if-eqz v4, :cond_0

    .line 906
    const/4 v0, 0x2

    .line 911
    .local v0, box:I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$1;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual {v4, v2, v6, v1, v0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->moveSmsToBox([JZ[JI)I

    .line 912
    new-instance v3, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;

    invoke-direct {v3}, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;-><init>()V

    .line 913
    .local v3, req:Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$1;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$100(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/util/communication/common/Dispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 914
    iget-wide v4, p0, Lcom/mediatek/apst/target/service/MainService$1;->val$smsId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;->setId(J)V

    .line 915
    iget-wide v4, p0, Lcom/mediatek/apst/target/service/MainService$1;->val$date:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;->setDate(J)V

    .line 916
    iget-boolean v4, p0, Lcom/mediatek/apst/target/service/MainService$1;->val$sent:Z

    invoke-virtual {v3, v4}, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;->setSent(Z)V

    .line 917
    invoke-virtual {v3, v6}, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;->setMessageType(I)V

    .line 920
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$1;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #calls: Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    invoke-static {v4, v3}, Lcom/mediatek/apst/target/service/MainService;->access$200(Lcom/mediatek/apst/target/service/MainService;Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 921
    return-void

    .line 908
    .end local v0           #box:I
    .end local v3           #req:Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;
    :cond_0
    const/4 v0, 0x5

    .restart local v0       #box:I
    goto :goto_0
.end method
