.class Lcom/mediatek/apst/target/service/MainService$Connector;
.super Ljava/lang/Thread;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/target/service/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/service/MainService;


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/service/MainService;)V
    .locals 0
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/mediatek/apst/target/service/MainService$Connector;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1099
    const-string v0, "Thread started."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService$Connector;->this$0:Lcom/mediatek/apst/target/service/MainService;

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$Connector;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mComm:Lcom/mediatek/apst/util/communication/common/CommHandler;
    invoke-static {v1}, Lcom/mediatek/apst/target/service/MainService;->access$600(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/util/communication/common/CommHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/apst/util/communication/common/CommHandler;->createConnection()Z

    move-result v1

    #calls: Lcom/mediatek/apst/target/service/MainService;->setConnected(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->access$700(Lcom/mediatek/apst/target/service/MainService;Z)V

    .line 1102
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService$Connector;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #calls: Lcom/mediatek/apst/target/service/MainService;->isConnected()Z
    invoke-static {v0}, Lcom/mediatek/apst/target/service/MainService;->access$800(Lcom/mediatek/apst/target/service/MainService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    const-string v0, "Create connection successfully!"

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService$Connector;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;
    invoke-static {v0}, Lcom/mediatek/apst/target/service/MainService;->access$500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MainService$MainHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1109
    :goto_0
    const-string v0, "Thread terminated."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 1110
    return-void

    .line 1106
    :cond_0
    const-string v0, "Create connection failed."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService$Connector;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;
    invoke-static {v0}, Lcom/mediatek/apst/target/service/MainService;->access$500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MainService$MainHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
