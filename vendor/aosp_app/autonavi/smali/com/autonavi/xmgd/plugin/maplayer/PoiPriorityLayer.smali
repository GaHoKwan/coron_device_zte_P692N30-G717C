.class public Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mRes:Landroid/content/res/Resources;

.field private requestId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mRes:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mIcon:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->requestId:I

    return-void
.end method


# virtual methods
.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5174\u8da3\u70b9\u663e\u793a"

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5174\u8da3\u70b9\u663e\u793a"

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
    const-string v0, "\u8208\u8da3\u9ede\u986f\u793a"

    goto :goto_0

    :cond_4
    const-string v0, "POI layer"

    goto :goto_0
.end method

.method public getLayerIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMapIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSubDescriptions(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u52a0\u6cb9\u7ad9"

    aput-object v1, v0, v3

    const-string v1, "\u505c\u8f66\u573a"

    aput-object v1, v0, v4

    const-string v1, "\u9910\u5385"

    aput-object v1, v0, v5

    const-string v1, "\u4f4f\u5bbf"

    aput-object v1, v0, v6

    const-string v1, "\u5a31\u4e50"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u666f\u70b9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u533b\u9662"

    aput-object v2, v0, v1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u52a0\u6cb9\u7ad9"

    aput-object v1, v0, v3

    const-string v1, "\u505c\u8eca\u5834"

    aput-object v1, v0, v4

    const-string v1, "\u9910\u5ef3"

    aput-object v1, v0, v5

    const-string v1, "\u4f4f\u5bbf"

    aput-object v1, v0, v6

    const-string v1, "\u5a1b\u6a02"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u666f\u9ede"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u91ab\u9662"

    aput-object v2, v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Gas Station"

    aput-object v1, v0, v3

    const-string v1, "Park"

    aput-object v1, v0, v4

    const-string v1, "Restaurant"

    aput-object v1, v0, v5

    const-string v1, "Hotel"

    aput-object v1, v0, v6

    const-string v1, "Entertainment"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Spot"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Hospital"

    aput-object v2, v0, v1

    goto :goto_0
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

    const/4 v0, 0x7

    return v0
.end method

.method public getSubTitles(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u52a0\u6cb9\u7ad9"

    aput-object v1, v0, v3

    const-string v1, "\u505c\u8f66\u573a"

    aput-object v1, v0, v4

    const-string v1, "\u9910\u5385"

    aput-object v1, v0, v5

    const-string v1, "\u4f4f\u5bbf"

    aput-object v1, v0, v6

    const-string v1, "\u5a31\u4e50"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u666f\u70b9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u533b\u9662"

    aput-object v2, v0, v1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u52a0\u6cb9\u7ad9"

    aput-object v1, v0, v3

    const-string v1, "\u505c\u8eca\u5834"

    aput-object v1, v0, v4

    const-string v1, "\u9910\u5ef3"

    aput-object v1, v0, v5

    const-string v1, "\u4f4f\u5bbf"

    aput-object v1, v0, v6

    const-string v1, "\u5a1b\u6a02"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u666f\u9ede"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u91ab\u9662"

    aput-object v2, v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Gas Station"

    aput-object v1, v0, v3

    const-string v1, "Park"

    aput-object v1, v0, v4

    const-string v1, "Restaurant"

    aput-object v1, v0, v5

    const-string v1, "Hotel"

    aput-object v1, v0, v6

    const-string v1, "Entertainment"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Spot"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Hospital"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getTitle(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5174\u8da3\u70b9\u663e\u793a"

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5174\u8da3\u70b9\u663e\u793a"

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
    const-string v0, "\u8208\u8da3\u9ede\u986f\u793a"

    goto :goto_0

    :cond_4
    const-string v0, "POI layer"

    goto :goto_0
.end method

.method public hasSubList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f02015e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mIcon:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAddToMap()V
    .locals 3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_POI_PRIORITY:Lcom/autonavi/xm/navigation/server/GParam;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/l;->d()V

    :cond_0
    return-void
.end method

.method public onRemoveFromMap()V
    .locals 3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_POI_PRIORITY:Lcom/autonavi/xm/navigation/server/GParam;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/l;->d()V

    :cond_0
    return-void
.end method

.method public requestData(Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;Landroid/os/Bundle;II)V
    .locals 4

    const/4 v3, 0x0

    iput p4, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->requestId:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v3, v0, v3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_POI_PRIORITY:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    aget v0, v0, v3

    packed-switch p3, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_POI_PRIORITY:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/l;->d()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;->mIcon:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0, v1, p4}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onFinish(Ljava/util/List;Landroid/graphics/Bitmap;I)V

    :cond_1
    return-void

    :pswitch_0
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_2
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_3
    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :pswitch_4
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :pswitch_5
    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :pswitch_6
    or-int/lit8 v0, v0, 0x40

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setLogFlag(Z)V
    .locals 0

    return-void
.end method

.method public unload()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
