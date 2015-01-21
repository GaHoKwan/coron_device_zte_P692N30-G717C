.class public Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;
.super Landroid/content/ContentProvider;


# static fields
.field private static final PROVIDER_TAG:Ljava/lang/String; = "[PluginContentProvider]"

.field private static final sMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->sMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.autonavi.xmgd.plugin.contentprovider"

    const-string v2, "plugin_request/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private doMD5KeyQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const-string v0, "autonavi60"

    const-string v1, "----------doMD5KeyQuery--------------"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    array-length v2, p2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, p2, v0

    if-eqz v4, :cond_0

    const-string v5, "md5key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "8DD389CC45284BF18CDC48BDE718CADB"

    aput-object v4, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1
.end method

.method private doNaviPathQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    array-length v2, p2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, p2, v0

    if-eqz v4, :cond_0

    const-string v5, "navi_data_path"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->getNaviDataPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1
.end method

.method private doNaviResourcePathQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    array-length v2, p2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, p2, v0

    if-eqz v4, :cond_0

    const-string v5, "navi_resource_path"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1
.end method

.method private doSearchCondtionQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    array-length v2, p2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, p2, v0

    invoke-direct {p0, v4}, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->getSearchValueFromName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1
.end method

.method private doSyscodeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    array-length v2, p2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, p2, v0

    invoke-direct {p0, v4}, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->getSyscodeValueFromName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1
.end method

.method private doTTSPathQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    array-length v2, p2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, p2, v0

    invoke-direct {p0, v4}, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->getTTSValueFromName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1
.end method

.method private getNaviDataPath()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "autonavi"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "data_dir"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/autonavi/xmgd/a/a;->c:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSearchValueFromName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "sci_car_lon"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sci_car_lat"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v1

    new-array v2, v2, [Lcom/autonavi/xm/navigation/server/map/GCarInfo;

    invoke-interface {v1, v2}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v3, :cond_1

    const-string v0, "sci_car_lon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, v2, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    aget-object v0, v2, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "sci_center_lon"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "sci_center_lat"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v1

    new-array v2, v2, [Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;

    invoke-interface {v1, v2}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v3, :cond_1

    const-string v0, "sci_center_lon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, v2, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_6
    aget-object v0, v2, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v1, "sci_center_adcode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->D()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "autonavi60"

    const-string v2, "[PluginContentProvider]getSearchValueFromName is unKnown !"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getSyscodeValueFromName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "syscode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4c3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi60"

    const-string v1, "[PluginContentProvider]getSyscodeValueFromName is unKnown !"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTTSValueFromName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "ttspath_dir"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ttspath_name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Resource5.irf"

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "autonavi60"

    const-string v1, "[PluginContentProvider]getTTSValueFromName is unKnown !"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.autonavi.xmgd.plugin.contentprovider"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[PluginContentProvider]PluginProvider onCreate"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi60"

    const-string v1, "[PluginContentProvider]PluginProvider onCreate Failed !"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "autonavi60"

    const-string v2, "[PluginContentProvider]PluginProvider query"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/tts_path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p5}, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->doTTSPathQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/search_center_info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct/range {p0 .. p5}, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->doSearchCondtionQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/syscode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct/range {p0 .. p5}, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->doSyscodeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/navi_data_path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct/range {p0 .. p5}, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->doNaviPathQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/navi_resource_path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p5}, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->doNaviResourcePathQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/md5_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct/range {p0 .. p5}, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProvider;->doMD5KeyQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_8
    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "autonavi60"

    const-string v2, "[PluginContentProvider]uri.getPath is unKnown !"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
