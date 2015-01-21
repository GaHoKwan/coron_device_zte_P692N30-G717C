.class Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;
.super Lcom/mediatek/apst/target/service/NewSmsFinder;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/target/service/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingSmsFinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/service/MainService;


# direct methods
.method public constructor <init>(Lcom/mediatek/apst/target/service/MainService;)V
    .locals 0
    .parameter

    .prologue
    .line 3239
    iput-object p1, p0, Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;->this$0:Lcom/mediatek/apst/target/service/MainService;

    .line 3240
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/NewSmsFinder;-><init>()V

    .line 3241
    return-void
.end method


# virtual methods
.method public findSms(JLjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/apst/util/entity/message/Sms;
    .locals 8
    .parameter "date"
    .parameter "address"
    .parameter "body"
    .parameter "box"

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v0}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3251
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v0}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->findSms(JLjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/apst/util/entity/message/Sms;

    move-result-object v6

    .line 3253
    .local v6, receivedSms:Lcom/mediatek/apst/util/entity/message/Sms;
    if-eqz v6, :cond_0

    .line 3254
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "findSms"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", date="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/message/Message;->getDate()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 3259
    new-instance v7, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;

    invoke-direct {v7}, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;-><init>()V

    .line 3260
    .local v7, req:Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;
    invoke-static {v0}, Lcom/mediatek/apst/target/service/MainService;->access$100(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/util/communication/common/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 3261
    invoke-virtual {v7, v6}, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;->setNewMessage(Lcom/mediatek/apst/util/entity/message/Message;)V

    .line 3263
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #calls: Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    invoke-static {v0, v7}, Lcom/mediatek/apst/target/service/MainService;->access$200(Lcom/mediatek/apst/target/service/MainService;Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 3271
    .end local v6           #receivedSms:Lcom/mediatek/apst/util/entity/message/Sms;
    .end local v7           #req:Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;
    :goto_0
    return-object v6

    .line 3266
    .restart local v6       #receivedSms:Lcom/mediatek/apst/util/entity/message/Sms;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 3269
    .end local v6           #receivedSms:Lcom/mediatek/apst/util/entity/message/Sms;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "findSms"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Message proxy is null."

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 3271
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3245
    const-string v0, "MainService$IncomingSmsFinder"

    return-object v0
.end method
