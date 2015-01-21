.class public Lcom/autonavi/xmgd/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;


# static fields
.field private static f:Lcom/autonavi/xmgd/b/a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xmgd/controls/aa;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/autonavi/xmgd/b/b;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/plugin/PluginManager;->shareInstance()Lcom/autonavi/xmgd/plugin/PluginManager;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/plugin/PluginManager;->queryPlugin(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/b/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public static a()Lcom/autonavi/xmgd/b/a;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/b/a;->f:Lcom/autonavi/xmgd/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/b/a;

    invoke-direct {v0}, Lcom/autonavi/xmgd/b/a;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/b/a;->f:Lcom/autonavi/xmgd/b/a;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/b/a;->f:Lcom/autonavi/xmgd/b/a;

    return-object v0
.end method

.method private a(IILandroid/os/Bundle;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    invoke-interface {v0, p0, p3, p2, p4}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->requestData(Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;Landroid/os/Bundle;II)V

    goto :goto_0
.end method

.method public static b()Lcom/autonavi/xmgd/b/a;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/b/a;->f:Lcom/autonavi/xmgd/b/a;

    return-object v0
.end method

.method public static h()V
    .locals 4

    sget-object v0, Lcom/autonavi/xmgd/b/a;->f:Lcom/autonavi/xmgd/b/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->a()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/w;->d()Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xmgd/b/a;->f:Lcom/autonavi/xmgd/b/a;

    iget-object v0, v0, Lcom/autonavi/xmgd/b/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/xmgd/b/a;->f:Lcom/autonavi/xmgd/b/a;

    iget-object v0, v0, Lcom/autonavi/xmgd/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/b/a;->f:Lcom/autonavi/xmgd/b/a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/autonavi/xmgd/b/a;->f:Lcom/autonavi/xmgd/b/a;

    iget-object v0, v0, Lcom/autonavi/xmgd/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    sget-object v0, Lcom/autonavi/xmgd/b/a;->f:Lcom/autonavi/xmgd/b/a;

    iget-object v0, v0, Lcom/autonavi/xmgd/b/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/aa;

    iget-object v3, v0, Lcom/autonavi/xmgd/controls/aa;->b:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget v0, v0, Lcom/autonavi/xmgd/controls/aa;->a:I

    invoke-virtual {v3, v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->unload(I)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0, p2}, Lcom/autonavi/xmgd/b/c;->a(I)Z

    goto :goto_0
.end method

.method public a(I[I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0, p2}, Lcom/autonavi/xmgd/b/c;->a([I)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/b/a;->b(I)I

    move-result v0

    if-ne v0, v7, :cond_2

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/b/a;->c(I)I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/b/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->onAddToMap()V

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->hasSubList()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->e()I

    move-result v4

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v5

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_6

    aget v6, v5, v0

    if-ne v6, v7, :cond_4

    invoke-direct {p0, v2, v0, p1, v2}, Lcom/autonavi/xmgd/b/a;->a(IILandroid/os/Bundle;I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    invoke-direct {p0, v2, v0, p1, v2}, Lcom/autonavi/xmgd/b/a;->a(IILandroid/os/Bundle;I)V

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xmgd/plugin/PluginWrapper;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->b:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/b/a;->b:Ljava/util/List;

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->load(Landroid/content/Context;)I

    move-result v1

    iget-object v4, p0, Lcom/autonavi/xmgd/b/a;->b:Ljava/util/List;

    new-instance v5, Lcom/autonavi/xmgd/controls/aa;

    invoke-direct {v5, v1, v0}, Lcom/autonavi/xmgd/controls/aa;-><init>(ILcom/autonavi/xmgd/plugin/PluginWrapper;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->getPlugin()Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    sget-boolean v4, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    invoke-interface {v0, v4}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->setLogFlag(Z)V

    iget-object v4, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/autonavi/xmgd/b/c;

    invoke-direct {v4, p0}, Lcom/autonavi/xmgd/b/c;-><init>(Lcom/autonavi/xmgd/b/a;)V

    new-instance v5, Lcom/autonavi/xmgd/b/c;

    invoke-direct {v5, p0}, Lcom/autonavi/xmgd/b/c;-><init>(Lcom/autonavi/xmgd/b/a;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/autonavi/xmgd/b/c;->a(Lcom/autonavi/xmgd/b/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/autonavi/xmgd/b/c;->a(Lcom/autonavi/xmgd/b/c;Ljava/lang/String;)Ljava/lang/String;

    sget-object v6, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "maplayers_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/autonavi/xmgd/b/c;->a(Lcom/autonavi/xmgd/b/c;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v4, v6}, Lcom/autonavi/xmgd/b/c;->a(Lcom/autonavi/xmgd/b/c;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/autonavi/xmgd/b/c;->a(Lcom/autonavi/xmgd/b/c;I)I

    invoke-interface {v0, v12}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->getTitle(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/autonavi/xmgd/b/c;->a(Ljava/lang/String;)V

    invoke-interface {v0, v12}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->getTitle(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/autonavi/xmgd/b/c;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->getLayerIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/autonavi/xmgd/b/c;->a(Landroid/graphics/Bitmap;)V

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->getLayerIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/autonavi/xmgd/b/c;->a(Landroid/graphics/Bitmap;)V

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->hasSubList()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0, v12}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->getSubTitles(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/autonavi/xmgd/b/c;->a(Lcom/autonavi/xmgd/b/c;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/autonavi/xmgd/b/c;->a(Lcom/autonavi/xmgd/b/c;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->getSubNum()I

    move-result v6

    new-array v7, v6, [I

    new-array v8, v6, [I

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_7

    sget-object v9, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "maplayers_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Lcom/autonavi/xmgd/b/c;->a(Lcom/autonavi/xmgd/b/c;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    aput v9, v7, v0

    aput v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-static {v4, v6}, Lcom/autonavi/xmgd/b/c;->b(Lcom/autonavi/xmgd/b/c;I)I

    move-result v0

    invoke-static {v5, v0}, Lcom/autonavi/xmgd/b/c;->b(Lcom/autonavi/xmgd/b/c;I)I

    invoke-static {v4, v7}, Lcom/autonavi/xmgd/b/c;->a(Lcom/autonavi/xmgd/b/c;[I)[I

    invoke-static {v5, v8}, Lcom/autonavi/xmgd/b/c;->a(Lcom/autonavi/xmgd/b/c;[I)[I

    :goto_2
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast v1, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, p0, v12, v2, v0}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->requestData(Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;Landroid/os/Bundle;II)V

    goto/16 :goto_0

    :cond_8
    invoke-static {v4, v2}, Lcom/autonavi/xmgd/b/c;->b(Lcom/autonavi/xmgd/b/c;I)I

    move-result v0

    invoke-static {v5, v0}, Lcom/autonavi/xmgd/b/c;->b(Lcom/autonavi/xmgd/b/c;I)I

    goto :goto_2
.end method

.method public a(Ljava/util/Locale;)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    invoke-interface {v1, p1}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->getTitle(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/b/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->hasSubList()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    invoke-interface {v1, p1}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->getSubTitles(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/b/c;->a([Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/b/a;->b(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->e()I

    move-result v3

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->e()I

    move-result v0

    if-gtz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v4

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v5

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v6, Lcom/autonavi/xmgd/plugin/maplayer/PoiPriorityLayer;

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move v0, v2

    :goto_1
    if-ge v2, v3, :cond_0

    if-eqz v6, :cond_6

    aget v7, v4, v2

    if-ne v7, v1, :cond_3

    aget v7, v5, v2

    if-eqz v7, :cond_4

    :cond_3
    aget v7, v4, v2

    if-nez v7, :cond_5

    aget v7, v5, v2

    if-ne v7, v1, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    aget v7, v4, v2

    if-ne v7, v1, :cond_5

    aget v7, v5, v2

    if-nez v7, :cond_5

    move v0, v1

    goto :goto_2
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->b()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/b/a;->c(I)I

    move-result v0

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->onAddToMap()V

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->hasSubList()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->e()I

    move-result v4

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v5

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    aget v6, v5, v0

    if-ne v6, v7, :cond_2

    invoke-direct {p0, v2, v0, p1, v2}, Lcom/autonavi/xmgd/b/a;->a(IILandroid/os/Bundle;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    invoke-direct {p0, v2, v0, p1, v2}, Lcom/autonavi/xmgd/b/a;->a(IILandroid/os/Bundle;I)V

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->b()I

    move-result v0

    goto :goto_0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->e()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public d(I)[I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    return-void
.end method

.method public f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xm/navigation/server/poi/GPoi;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/b/a;->b(I)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/b/a;->c(I)I

    move-result v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;->onRemoveFromMap()V

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xmgd/b/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i()V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/b/c;

    invoke-static {v1}, Lcom/autonavi/xmgd/b/c;->b(Lcom/autonavi/xmgd/b/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/b/c;->a(I)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v0

    if-eqz v0, :cond_2

    move v1, v3

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v4

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v0

    aget v0, v0, v1

    aput v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public j()V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/b/c;

    invoke-static {v1}, Lcom/autonavi/xmgd/b/c;->b(Lcom/autonavi/xmgd/b/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/b/c;->a(I)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v0

    if-eqz v0, :cond_2

    move v1, v3

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v4

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v0

    aget v0, v0, v1

    aput v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-static {v0}, Lcom/autonavi/xmgd/b/c;->a(Lcom/autonavi/xmgd/b/c;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/b/c;

    invoke-static {v1}, Lcom/autonavi/xmgd/b/c;->b(Lcom/autonavi/xmgd/b/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/b/c;->a(I)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/b/c;

    invoke-static {v1}, Lcom/autonavi/xmgd/b/c;->c(Lcom/autonavi/xmgd/b/c;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/b/c;->a([I)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public onBegin(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    :cond_0
    return-void
.end method

.method public onDataChanged(Ljava/util/List;Landroid/graphics/Bitmap;II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/plugin/maplayer/RealTrafficLayer;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez p3, :cond_1

    invoke-virtual {p0, p4, v2}, Lcom/autonavi/xmgd/b/a;->a(II)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/b/a;->k()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lcom/autonavi/xmgd/b/a;->a(II)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/b/a;->k()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p4}, Lcom/autonavi/xmgd/b/a;->b(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    invoke-interface {v0, v3, v3}, Lcom/autonavi/xmgd/b/b;->a(Ljava/util/List;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p4}, Lcom/autonavi/xmgd/b/a;->b(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    new-instance v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-direct {v3}, Lcom/autonavi/xm/navigation/server/poi/GPoi;-><init>()V

    iget-object v4, v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    const-string v5, "lon"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v4, v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    const-string v5, "lat"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    const-string v4, "admincode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    const-string v4, "name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    const-string v4, "address"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    const-string v4, "telephone"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    iget-object v1, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/b/c;->d()Ljava/util/List;

    move-result-object v1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/autonavi/xmgd/b/b;->a(Ljava/util/List;Ljava/util/List;Landroid/graphics/Bitmap;II)V

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/b/c;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/b/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinish(Ljava/util/List;Landroid/graphics/Bitmap;I)V
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    invoke-interface {v0, v1, v1}, Lcom/autonavi/xmgd/b/b;->a(Ljava/util/List;Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    new-instance v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-direct {v3}, Lcom/autonavi/xm/navigation/server/poi/GPoi;-><init>()V

    iget-object v4, v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    const-string v5, "lon"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v4, v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    const-string v5, "lat"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    const-string v4, "admincode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    const-string v4, "name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    const-string v4, "address"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    const-string v4, "telephone"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/b/c;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/b/a;->d:Lcom/autonavi/xmgd/b/b;

    invoke-interface {v0, v1, p2}, Lcom/autonavi/xmgd/b/b;->a(Ljava/util/List;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
