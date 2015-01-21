.class public Lcom/autonavi/xmgd/search/OnBoardSearchProvider;
.super Landroid/content/ContentProvider;


# static fields
.field private static final b:Landroid/content/UriMatcher;


# instance fields
.field private a:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->b:Landroid/content/UriMatcher;

    sget-object v0, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.autonavi.xmgd.provider.search"

    const-string v2, "search_poi/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    iput-object v0, p0, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->a:Ljava/util/Locale;

    return-void
.end method

.method private a(I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    const v0, 0x18768

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    const v0, 0x16120

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    const/16 v0, 0x7594

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne p1, v1, :cond_4

    const v0, 0x29a04

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    const/16 v0, 0x2710

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    const v0, 0xebf0

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    const/16 v0, 0x4e20

    goto :goto_0

    :cond_7
    const/16 v1, 0x8

    if-ne p1, v1, :cond_8

    const v0, 0x2993c

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    const v0, 0x9c40

    goto :goto_0

    :cond_9
    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    const v0, 0xea60

    goto :goto_0
.end method

.method private a([Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/autonavi/xm/navigation/server/poi/GPoi;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    const-wide v6, 0x412e848000000000L

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "distance"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "match_code"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "latitude"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-double v0, v0

    cmpl-double v2, v0, v4

    if-nez v2, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "longitude"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-double v0, v0

    cmpl-double v2, v0, v4

    if-nez v2, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_6
    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v1, "full_address"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v1, "icon_path"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v1, "area"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getNameFromAdmincode(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v2

    new-instance v3, Lcom/autonavi/xmgd/search/c;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/search/c;-><init>(Lcom/autonavi/xmgd/search/OnBoardSearchProvider;)V

    invoke-virtual {v3}, Lcom/autonavi/xmgd/search/c;->a()Lcom/autonavi/xmgd/search/b;

    move-result-object v3

    iget-object v4, v3, Lcom/autonavi/xmgd/search/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_SetDataDir(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_SetApplication(Landroid/content/Context;)Lcom/autonavi/xm/navigation/server/GStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/autonavi/xmgd/search/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lcom/autonavi/xmgd/search/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_SetDataDir(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_Startup(Lcom/autonavi/xm/navigation/server/guide/GSoundCallback;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GParam;->G_H_MAP_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    new-instance v5, Lcom/autonavi/xm/navigation/server/GRect;

    invoke-direct {v5, v1, v1, v0, v0}, Lcom/autonavi/xm/navigation/server/GRect;-><init>(IIII)V

    invoke-virtual {v3, v4, v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GParam;->G_V_MAP_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    new-instance v5, Lcom/autonavi/xm/navigation/server/GRect;

    invoke-direct {v5, v1, v1, v0, v0}, Lcom/autonavi/xm/navigation/server/GRect;-><init>(IIII)V

    invoke-virtual {v3, v4, v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v1

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_LANGUAGE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "autonavi_offlinesearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnBoardSearchProvider initMek: status ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a(IILjava/lang/String;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi_offlinesearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnBoardSearchProvider] doCommonQuery adminCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " keyword = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->a:Ljava/util/Locale;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_LANGUAGE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/PoiManager;->setSearchAdmincode(I)V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager;->searchByKeyword(Ljava/lang/String;I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Double;Ljava/lang/Double;IIILjava/lang/String;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 7

    const/4 v0, 0x0

    const-wide v4, 0x412e848000000000L

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "autonavi_offlinesearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnBoardSearchProvider] doAroundQuery lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " radius = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keyword = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ltz p3, :cond_1

    const/16 v1, 0xa

    if-le p3, v1, :cond_2

    :cond_1
    const-string v1, "autonavi_offlinesearch"

    const-string v2, "[OnBoardSearchProvider] doAroundQuery search type is illegal"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    :cond_3
    const-string v1, "autonavi_offlinesearch"

    const-string v2, "[OnBoardSearchProvider] doAroundQuery lon,lat is illegal"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->a:Ljava/util/Locale;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_LANGUAGE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v1, v0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getAdmincode(II)I

    move-result v0

    sget-boolean v3, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v3, :cond_5

    const-string v3, "autonavi_offlinesearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnBoardSearchProvider adminCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/autonavi/xm/navigation/engine/PoiManager;->setSearchAdmincode(I)V

    invoke-direct {p0, p3}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->a(I)I

    move-result v3

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;

    move-result-object v0

    move v4, p5

    move v5, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/xm/navigation/engine/PoiManager;->searchByAround(IIIIILjava/lang/String;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    goto :goto_0
.end method

.method private a([Lcom/autonavi/xm/navigation/server/poi/GPoi;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 7

    const-wide v5, 0x412e848000000000L

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v1, v0

    :try_start_1
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v0, v3

    :try_start_2
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v0}, Lcom/autonavi/xm/navigation/engine/PoiManager;->reCalDis([Lcom/autonavi/xm/navigation/server/poi/GPoi;II)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p1

    :cond_2
    const-string v2, "important"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_3

    const-string v0, "autonavi_offlinesearch"

    const-string v1, "OnBoardSearchProvider SORT_BY_IMPORTANT"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/PoiManager;->sortByName([Lcom/autonavi/xm/navigation/server/poi/GPoi;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    move v1, v2

    :goto_1
    array-length v3, p1

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v4, p1, v2

    const/4 v5, -0x1

    iput v5, v4, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string v2, "alphabet"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_5

    const-string v0, "autonavi_offlinesearch"

    const-string v1, "OnBoardSearchProvider SORT_BY_ALPHABET"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->a:Ljava/util/Locale;

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/xm/navigation/engine/PoiManager;->sortByAlphabet([Lcom/autonavi/xm/navigation/server/poi/GPoi;Ljava/util/Locale;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string v2, "distance"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v2}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>()V

    iput v1, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iput v0, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/autonavi/xm/navigation/engine/PoiManager;->sortByDistance([Lcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/GCoord;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object p1

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi_offlinesearch"

    const-string v1, "OnBoardSearchProvider SORT_BY_DISTANCE"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private b([Ljava/lang/String;)I
    .locals 6

    const/16 v0, 0x32

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gt v1, v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    aget-object v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "autonavi_offlinesearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnBoardSearchProvider]  getCountParam error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->destroy()V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_Cleanup()Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v0, 0x1

    return v0
.end method

.method private c([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, p1, v1

    goto :goto_0
.end method

.method private d([Ljava/lang/String;)Ljava/lang/Double;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x3

    :try_start_0
    aget-object v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e([Ljava/lang/String;)Ljava/lang/Double;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x4

    :try_start_0
    aget-object v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private f([Ljava/lang/String;)I
    .locals 3

    const v0, 0x186a0

    const/4 v2, 0x5

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x5

    :try_start_0
    aget-object v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private g([Ljava/lang/String;)Lcom/autonavi/xmgd/search/d;
    .locals 2

    const/4 v1, 0x6

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gt v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/search/d;->a:Lcom/autonavi/xmgd/search/d;

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, p1, v1

    if-eqz v0, :cond_2

    aget-object v0, p1, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/autonavi/xmgd/search/d;->b:Lcom/autonavi/xmgd/search/d;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/autonavi/xmgd/search/d;->a:Lcom/autonavi/xmgd/search/d;

    goto :goto_0
.end method

.method private h([Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x7

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gt v0, v2, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;

    move-result-object v1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/PoiManager;->parseAdminCode(Ljava/lang/String;Ljava/util/Locale;)I

    move-result v0

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

    sget-object v0, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->b:Landroid/content/UriMatcher;

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
    const-string v0, "vnd.android.cursor.dir/vnd.amap.navi.onboardsearch.provider.nearby"

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

    const-string v0, "autonavi_offlinesearch"

    const-string v1, "OnBoardSearchProvider onCreate"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/16 v5, 0x1f4

    const/4 v8, 0x0

    const/4 v7, 0x0

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi_offlinesearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnBoardSearchProvider] start query path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_3

    :cond_1
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "autonavi_offlinesearch"

    const-string v1, "[OnBoardSearchProvider] projection == null || projection.length == 0"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v7

    :goto_0
    return-object v0

    :cond_3
    invoke-direct {p0, p4}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->a([Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p4}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->b([Ljava/lang/String;)I

    move-result v0

    if-le v0, v5, :cond_16

    :goto_1
    invoke-direct {p0, p4}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p4}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->e([Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, p4}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->d([Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->f([Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, p4}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->g([Ljava/lang/String;)Lcom/autonavi/xmgd/search/d;

    move-result-object v0

    invoke-direct {p0}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->a()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->b()Z

    move-object v0, v7

    goto :goto_0

    :cond_4
    sget-object v9, Lcom/autonavi/xmgd/search/d;->a:Lcom/autonavi/xmgd/search/d;

    if-ne v0, v9, :cond_8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->a(Ljava/lang/Double;Ljava/lang/Double;IIILjava/lang/String;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    array-length v3, v0

    if-nez v3, :cond_e

    :cond_6
    invoke-direct {p0}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->b()Z

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_7

    const-string v0, "autonavi_offlinesearch"

    const-string v1, "[OnBoardSearchProvider]  cannot search result"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v0, v7

    goto :goto_0

    :cond_8
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_9

    const-string v0, "autonavi_offlinesearch"

    const-string v3, "[OnBoardSearchProvider]common search"

    invoke-static {v0, v3}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0, p4}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->h([Ljava/lang/String;)I

    move-result v0

    sget-boolean v3, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v3, :cond_a

    const-string v3, "autonavi_offlinesearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnBoardSearchProvider]common search adminCode \uff1a "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/4 v3, -0x1

    if-eq v0, v3, :cond_15

    invoke-direct {p0, v0, v5, v6}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->a(IILjava/lang/String;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    sget-boolean v3, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v3, :cond_b

    const-string v3, "autonavi_offlinesearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnBoardSearchProvider]doCommonQuery POIList \uff1a "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v0, :cond_c

    array-length v3, v0

    if-nez v3, :cond_5

    :cond_c
    sget-boolean v3, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v3, :cond_d

    const-string v3, "autonavi_offlinesearch"

    const-string v4, "OnBoardSearchProvider searchByAddress"

    invoke-static {v3, v4}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz v6, :cond_5

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lcom/autonavi/xm/navigation/engine/PoiManager;->searchByAddress(Ljava/lang/String;I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    goto :goto_2

    :cond_e
    sget-boolean v3, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v3, :cond_f

    const-string v3, "autonavi_offlinesearch"

    const-string v4, "[OnBoardSearchProvider]  start sort"

    invoke-static {v3, v4}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-direct {p0, v0, p5, v2, v1}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->a([Lcom/autonavi/xm/navigation/server/poi/GPoi;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_10

    const-string v0, "autonavi_offlinesearch"

    const-string v1, "[OnBoardSearchProvider]  end sort"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    array-length v4, v3

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_11

    const-string v1, "autonavi_offlinesearch"

    const-string v2, "[OnBoardSearchProvider] translate============="

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    move v2, v8

    :goto_3
    if-ge v2, v4, :cond_13

    aget-object v5, v3, v2

    array-length v6, p2

    new-array v7, v6, [Ljava/lang/Object;

    move v1, v8

    :goto_4
    if-ge v1, v6, :cond_12

    aget-object v9, p2, v1

    invoke-direct {p0, v5, v9}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->a(Lcom/autonavi/xm/navigation/server/poi/GPoi;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_13
    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_14

    const-string v1, "autonavi_offlinesearch"

    const-string v2, "[OnBoardSearchProvider] destroyMek"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-direct {p0}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->b()Z

    goto/16 :goto_0

    :cond_15
    move-object v0, v7

    goto/16 :goto_2

    :cond_16
    move v5, v0

    goto/16 :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
