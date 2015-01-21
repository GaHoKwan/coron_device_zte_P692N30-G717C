.class Lcom/mediatek/apst/target/service/MainService$CommandSender;
.super Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/target/service/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/service/MainService;


# direct methods
.method public constructor <init>(Lcom/mediatek/apst/target/service/MainService;I)V
    .locals 0
    .parameter
    .parameter "queueCapacity"

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/mediatek/apst/target/service/MainService$CommandSender;->this$0:Lcom/mediatek/apst/target/service/MainService;

    .line 1118
    invoke-direct {p0, p2}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;-><init>(I)V

    .line 1119
    return-void
.end method

.method private send(Lcom/mediatek/apst/util/command/BaseCommand;)V
    .locals 6
    .parameter "cmd"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1142
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$CommandSender;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mComm:Lcom/mediatek/apst/util/communication/common/CommHandler;
    invoke-static {v1}, Lcom/mediatek/apst/target/service/MainService;->access$600(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/util/communication/common/CommHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1143
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$CommandSender;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mComm:Lcom/mediatek/apst/util/communication/common/CommHandler;
    invoke-static {v1}, Lcom/mediatek/apst/target/service/MainService;->access$600(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/util/communication/common/CommHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/apst/util/communication/common/CommHandler;->sendPrimitive(Lcom/mediatek/apst/util/communication/common/TransportEntity;I)I

    move-result v0

    .line 1144
    .local v0, token:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 1145
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/MainService$CommandSender;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "send"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully, FeatureID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 1158
    .end local v0           #token:I
    :goto_0
    return-void

    .line 1149
    .restart local v0       #token:I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/MainService$CommandSender;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "send"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed, FeatureID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1154
    .end local v0           #token:I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/MainService$CommandSender;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "send"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const-string v4, "Failed, socket connection is null!"

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1123
    const-string v0, "MainService$CommandSender"

    return-object v0
.end method

.method public handle(Lcom/mediatek/apst/util/command/BaseCommand;)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 1128
    if-nez p1, :cond_0

    .line 1133
    :goto_0
    return-void

    .line 1131
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/service/MainService$CommandSender;->send(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0
.end method
