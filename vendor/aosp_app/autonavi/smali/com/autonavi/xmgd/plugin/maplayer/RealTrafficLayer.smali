.class public Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;
.implements Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;


# instance fields
.field private mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mRes:Landroid/content/res/Resources;

.field private mTmcServiceCallBack:Lcom/autonavi/xmgd/naviservice/x;

.field private requestId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mRes:Landroid/content/res/Resources;

    iput-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mIcon:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->requestId:I

    iput-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    iput-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mTmcServiceCallBack:Lcom/autonavi/xmgd/naviservice/x;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->requestId:I

    return v0
.end method


# virtual methods
.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5b9e\u65f6\u8def\u51b5"

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5b9e\u65f6\u8def\u51b5"

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "\u5be6\u6642\u8def\u6cc1"

    goto :goto_0

    :cond_4
    const-string v0, "Real-time traffic"

    goto :goto_0
.end method

.method public getDialogType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getIndex()I
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->m:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    return v0
.end method

.method public getItemIcon()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mContext:Landroid/content/Context;

    const v1, 0x7f0200f2

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getItemValuesArray(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemValuesCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getLayerIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMapIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSecondTitle(ZILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSettingTitle(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubDescriptions(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubLayerIcons()[Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubMapIcons()[Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubNum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSubTitles(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5b9e\u65f6\u8def\u51b5"

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5b9e\u65f6\u8def\u51b5"

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "\u5be6\u6642\u8def\u6cc1"

    goto :goto_0

    :cond_4
    const-string v0, "Real-time traffic"

    goto :goto_0
.end method

.method public hasSubList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RealTrafficLayer] load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f02015f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NavloLoigc is null, please init it before load RealTrafiice plugin."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer$TmcServiceCallBack;-><init>(Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mTmcServiceCallBack:Lcom/autonavi/xmgd/naviservice/x;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->a()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mTmcServiceCallBack:Lcom/autonavi/xmgd/naviservice/x;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/w;->a(Lcom/autonavi/xmgd/naviservice/x;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAddToMap()V
    .locals 5

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/j;->h()I

    move-result v0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->a()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/naviservice/w;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    const v3, 0x7f070058

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    :cond_0
    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_1

    const-string v2, "autonavi60"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RealTrafficLayer] onAddToMap adcode ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",status="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onRemoveFromMap()V
    .locals 2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[RealTrafficLayer] onRemoveFromMap "

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->a()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/w;->d()Lcom/autonavi/xm/navigation/server/GStatus;

    return-void
.end method

.method public requestData(Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;Landroid/os/Bundle;II)V
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RealTrafficLayer] requestData  requestId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mCallBack:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    iput p4, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->requestId:I

    invoke-interface {p1, p4}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onBegin(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mIcon:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0, v1, p4}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onFinish(Ljava/util/List;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public reset()I
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->m:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->c(I)I

    move-result v0

    return v0
.end method

.method public setIndex(I)V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->m:I

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xmgd/naviservice/l;->a(II)Z

    return-void
.end method

.method public setLogFlag(Z)V
    .locals 0

    return-void
.end method

.method public setSettingNum(I)V
    .locals 0

    return-void
.end method

.method public unload()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[RealTrafficLayer] unload "

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->b()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mTmcServiceCallBack:Lcom/autonavi/xmgd/naviservice/x;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->a()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;->mTmcServiceCallBack:Lcom/autonavi/xmgd/naviservice/x;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/w;->b(Lcom/autonavi/xmgd/naviservice/x;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
