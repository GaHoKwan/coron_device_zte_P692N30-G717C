.class Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/naviservice/x;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCityNoData(I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$100(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070059

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->requestId:I
    invoke-static {v2}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$200(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onError(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onLoginFailed()V
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[RealTrafficLayer] onLoginFailed"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$100(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070056

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->requestId:I
    invoke-static {v2}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$200(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onError(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onLoginNetError(I)V
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RealTrafficLayer] onLoginNetError ErrorCode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$100(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->requestId:I
    invoke-static {v2}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$200(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onError(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onTMCStatusChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RealTrafficLayer] onTMCStatusChanged isOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->requestId:I
    invoke-static {v2}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$200(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onDataChanged(Ljava/util/List;Landroid/graphics/Bitmap;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->requestId:I
    invoke-static {v2}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$200(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onDataChanged(Ljava/util/List;Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public onUpdateFailed()V
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[RealTrafficLayer] onLoginFailed"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$100(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070057

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->requestId:I
    invoke-static {v2}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$200(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onError(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onUpdateNetError(I)V
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RealTrafficLayer] onUpdateNetError ErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$100(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07005b

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;->this$0:Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    #getter for: Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->requestId:I
    invoke-static {v2}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->access$200(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onError(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
