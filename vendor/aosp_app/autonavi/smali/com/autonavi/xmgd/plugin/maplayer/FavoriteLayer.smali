.class public Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/d/e;
.implements Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;


# instance fields
.field private mCallback:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mMapIcon:Landroid/graphics/Bitmap;

.field private mRes:Landroid/content/res/Resources;

.field private requestId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mRes:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mMapIcon:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->requestId:I

    return-void
.end method


# virtual methods
.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u6536\u85cf\u5939\u663e\u793a"

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6536\u85cf\u5939\u663e\u793a"

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
    const-string v0, "\u6536\u85cf\u593e\u986f\u793a"

    goto :goto_0

    :cond_4
    const-string v0, "Favorite layer"

    goto :goto_0
.end method

.method public getLayerIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMapIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mMapIcon:Landroid/graphics/Bitmap;

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

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u6536\u85cf\u5939\u663e\u793a"

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6536\u85cf\u5939\u663e\u793a"

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
    const-string v0, "\u6536\u85cf\u593e\u986f\u793a"

    goto :goto_0

    :cond_4
    const-string v0, "Favorite layer"

    goto :goto_0
.end method

.method public hasSubList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f02015d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020134

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mMapIcon:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/autonavi/xmgd/d/a;->a()Lcom/autonavi/xmgd/d/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/d/a;->a(Lcom/autonavi/xmgd/d/e;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAddToMap()V
    .locals 0

    return-void
.end method

.method public onEventOccured(Lcom/autonavi/xmgd/d/d;Ljava/lang/Object;)V
    .locals 8

    instance-of v0, p1, Lcom/autonavi/xmgd/d/a;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/autonavi/xmgd/d/f;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/autonavi/xmgd/d/f;

    iget v0, p2, Lcom/autonavi/xmgd/d/f;->a:I

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/autonavi/xmgd/d/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mCallback:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mCallback:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mIcon:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->requestId:I

    invoke-interface {v0, v1, v3, v2, v4}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onDataChanged(Ljava/util/List;Landroid/graphics/Bitmap;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "lon"

    iget-object v7, v0, Lcom/autonavi/xmgd/e/c;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v7, v7, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "lat"

    iget-object v7, v0, Lcom/autonavi/xmgd/e/c;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v7, v7, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "admincode"

    iget v7, v0, Lcom/autonavi/xmgd/e/c;->lAdminCode:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "name"

    iget-object v7, v0, Lcom/autonavi/xmgd/e/c;->szName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "telephone"

    iget-object v7, v0, Lcom/autonavi/xmgd/e/c;->szTel:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "address"

    iget-object v0, v0, Lcom/autonavi/xmgd/e/c;->szAddr:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mCallback:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mCallback:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mIcon:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->requestId:I

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onDataChanged(Ljava/util/List;Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public onRemoveFromMap()V
    .locals 0

    return-void
.end method

.method public requestData(Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;Landroid/os/Bundle;II)V
    .locals 7

    iput p4, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->requestId:I

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mCallback:Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p4}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onBegin(I)V

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mIcon:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0, v1, p4}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onFinish(Ljava/util/List;Landroid/graphics/Bitmap;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "lon"

    iget-object v6, v0, Lcom/autonavi/xmgd/e/c;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v6, v6, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "lat"

    iget-object v6, v0, Lcom/autonavi/xmgd/e/c;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v6, v6, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "admincode"

    iget v6, v0, Lcom/autonavi/xmgd/e/c;->lAdminCode:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "name"

    iget-object v6, v0, Lcom/autonavi/xmgd/e/c;->szName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "telephone"

    iget-object v6, v0, Lcom/autonavi/xmgd/e/c;->szTel:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "address"

    iget-object v0, v0, Lcom/autonavi/xmgd/e/c;->szAddr:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/maplayer/FavoriteLayer;->mMapIcon:Landroid/graphics/Bitmap;

    invoke-interface {p1, v3, v0, p4}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;->onFinish(Ljava/util/List;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public setLogFlag(Z)V
    .locals 0

    return-void
.end method

.method public unload()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/d/a;->a()Lcom/autonavi/xmgd/d/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/d/a;->b(Lcom/autonavi/xmgd/d/e;)V

    const/4 v0, 0x0

    return-object v0
.end method
