.class Lcom/autonavi/xmgd/search/c;
.super Ljava/lang/Object;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/search/OnBoardSearchProvider;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/search/OnBoardSearchProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/search/c;->a:Lcom/autonavi/xmgd/search/OnBoardSearchProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/autonavi/xmgd/search/b;
    .locals 7

    new-instance v6, Lcom/autonavi/xmgd/search/b;

    iget-object v0, p0, Lcom/autonavi/xmgd/search/c;->a:Lcom/autonavi/xmgd/search/OnBoardSearchProvider;

    invoke-direct {v6, v0}, Lcom/autonavi/xmgd/search/b;-><init>(Lcom/autonavi/xmgd/search/OnBoardSearchProvider;)V

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "navi_data_path"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/autonavi/xmgd/search/c;->a:Lcom/autonavi/xmgd/search/OnBoardSearchProvider;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.autonavi.xmgd.plugin.contentprovider.tob/plugin_request/navi_data_path"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "navi_data_path"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/autonavi/xmgd/search/b;->a:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "navi_resource_path"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/autonavi/xmgd/search/c;->a:Lcom/autonavi/xmgd/search/OnBoardSearchProvider;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.autonavi.xmgd.plugin.contentprovider.tob/plugin_request/navi_resource_path"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "navi_resource_path"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/autonavi/xmgd/search/b;->b:Ljava/lang/String;

    :cond_1
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "autonavi_offlinesearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnBoardSearchProvider] getNaviInfonaviDataPath ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/autonavi/xmgd/search/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "autonavi_offlinesearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnBoardSearchProvider] initMek: naviInfo.assetPath ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/autonavi/xmgd/search/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, v6, Lcom/autonavi/xmgd/search/b;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/search/c;->a:Lcom/autonavi/xmgd/search/OnBoardSearchProvider;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/autonavi/xmgd/search/b;->a:Ljava/lang/String;

    :cond_3
    iget-object v0, v6, Lcom/autonavi/xmgd/search/b;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/search/c;->a:Lcom/autonavi/xmgd/search/OnBoardSearchProvider;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/search/OnBoardSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/autonavi/xmgd/search/b;->b:Ljava/lang/String;

    :cond_4
    return-object v6

    :catch_0
    move-exception v0

    const-string v1, "autonavi"

    const-string v2, "[OnBoardSearchProvider]getNavi Path Info error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
