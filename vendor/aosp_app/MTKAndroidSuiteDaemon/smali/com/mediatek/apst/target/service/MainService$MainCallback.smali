.class Lcom/mediatek/apst/target/service/MainService$MainCallback;
.super Ljava/lang/Object;
.source "MainService.java"

# interfaces
.implements Lcom/mediatek/apst/util/communication/common/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/target/service/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/service/MainService;


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/service/MainService;)V
    .locals 0
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/mediatek/apst/target/service/MainService$MainCallback;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/mediatek/apst/util/communication/common/TransportEntity;)Z
    .locals 8
    .parameter "entity"

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1050
    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const-string v6, "Entity received."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    if-nez p1, :cond_1

    .line 1052
    const-string v4, "Entity is null."

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 1087
    :cond_0
    :goto_0
    return v3

    .line 1055
    :cond_1
    instance-of v5, p1, Lcom/mediatek/apst/util/command/BaseCommand;

    if-eqz v5, :cond_2

    move-object v0, p1

    .line 1057
    check-cast v0, Lcom/mediatek/apst/util/command/BaseCommand;

    .line 1058
    .local v0, cmd:Lcom/mediatek/apst/util/command/BaseCommand;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entity is command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 1060
    iget-object v3, p0, Lcom/mediatek/apst/target/service/MainService$MainCallback;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #calls: Lcom/mediatek/apst/target/service/MainService;->enqueueHandleCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    invoke-static {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->access$400(Lcom/mediatek/apst/target/service/MainService;Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v3

    goto :goto_0

    .line 1061
    .end local v0           #cmd:Lcom/mediatek/apst/util/command/BaseCommand;
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v5

    if-nez v5, :cond_0

    move-object v1, p1

    .line 1063
    check-cast v1, Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;

    .line 1064
    .local v1, connEntity:Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;
    invoke-virtual {v1}, Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;->getInfoID()I

    move-result v2

    .line 1065
    .local v2, infoId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entity is connection status entity, infoID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 1068
    packed-switch v2, :pswitch_data_0

    :goto_1
    move v3, v4

    .line 1085
    goto :goto_0

    .line 1071
    :pswitch_0
    const-string v3, "Disconnecting..."

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 1072
    iget-object v3, p0, Lcom/mediatek/apst/target/service/MainService$MainCallback;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MainService$MainHandler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1077
    :pswitch_1
    const-string v3, "Unexpected disconnection."

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 1078
    iget-object v3, p0, Lcom/mediatek/apst/target/service/MainService$MainCallback;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MainService$MainHandler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1068
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
