.class public final Lcom/autonavi/xmgd/plugin/PluginManager;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/autonavi/xmgd/plugin/PluginManager;


# instance fields
.field private final APK_NAME_PREFIX:Ljava/lang/String;

.field private mHostContext:Landroid/content/Context;

.field private mPluginWrapper:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/plugin/PluginWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mVerify:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mVerify:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    const-string v0, "com.plugin.installapk"

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->APK_NAME_PREFIX:Ljava/lang/String;

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mHostContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/plugin/PluginManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/plugin/PluginManager;->collectInnerPlugin()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/plugin/PluginManager;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/plugin/PluginManager;->copyFromAssetsToSDcard(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/plugin/PluginManager;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/plugin/PluginManager;->collectOutterPluginFromSDCard(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/autonavi/xmgd/plugin/PluginManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/plugin/PluginManager;->collectOutterPluginFromInstallApk()I

    move-result v0

    return v0
.end method

.method private addPlugin(Lcom/autonavi/xmgd/plugin/PluginWrapper;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-virtual {p1, v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->same(Lcom/autonavi/xmgd/plugin/PluginWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private collectInnerPlugin()I
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v0, "inner"

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v7, Lcom/autonavi/xmgd/plugin/PluginXMLParser;

    invoke-direct {v7}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;-><init>()V

    array-length v8, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move v4, v1

    move-object v0, v2

    :goto_1
    if-ge v4, v8, :cond_5

    :try_start_1
    aget-object v3, v6, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inner"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, ".xml"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v3

    :try_start_3
    invoke-virtual {v7, v3}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->parse(Ljava/io/InputStream;)Lcom/autonavi/xmgd/plugin/PluginWrapper;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v3, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v9, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->JAR_HOST:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    if-ne v3, v9, :cond_9

    iget-boolean v3, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mVerify:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->verify()Lcom/autonavi/xmgd/plugin/PluginWrapper;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_9

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/plugin/PluginManager;->addPlugin(Lcom/autonavi/xmgd/plugin/PluginWrapper;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    :cond_3
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v3

    move-object v3, v11

    :goto_3
    :try_start_5
    sget-boolean v9, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v9, :cond_3

    const-string v9, "autonavi"

    const-string v10, "collectInnerPlugin Exception "

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    :goto_4
    :try_start_6
    sget-boolean v3, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v3, :cond_4

    const-string v3, "autonavi"

    const-string v4, "collectInnerPlugin FileNotFoundException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "autonavi"

    const-string v3, "plugin1 close error "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "autonavi"

    const-string v3, "plugin1 close error "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :goto_5
    :try_start_9
    sget-boolean v3, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v3, :cond_6

    const-string v3, "autonavi"

    const-string v4, "collectInnerPlugin IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_6
    if-eqz v2, :cond_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "autonavi"

    const-string v3, "plugin1 close error "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :goto_6
    :try_start_b
    sget-boolean v3, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v3, :cond_7

    const-string v3, "autonavi"

    const-string v4, "collectInnerPlugin Exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_7
    if-eqz v2, :cond_0

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "autonavi"

    const-string v3, "plugin1 close error "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v2, :cond_8

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :cond_8
    :goto_8
    throw v0

    :catch_8
    move-exception v1

    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_8

    const-string v2, "autonavi"

    const-string v3, "plugin1 close error "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_7

    :catch_9
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_6

    :catch_a
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catch_b
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_5

    :catch_c
    move-exception v0

    goto/16 :goto_4

    :catch_d
    move-exception v0

    move-object v2, v3

    goto/16 :goto_4

    :catch_e
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    goto/16 :goto_3

    :catch_f
    move-exception v3

    goto/16 :goto_3

    :cond_9
    move-object v0, v2

    goto/16 :goto_2
.end method

.method private collectOutterPluginFromInstallApk()I
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/autonavi/xmgd/plugin/PluginXMLParser;

    invoke-direct {v3}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;-><init>()V

    const/16 v4, 0x2000

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    :try_start_0
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.plugin.installapk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mHostContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v5, "plugin.xml"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->parse(Ljava/io/InputStream;)Lcom/autonavi/xmgd/plugin/PluginWrapper;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v6, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_INSTALLED:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    if-ne v5, v6, :cond_2

    iget-boolean v5, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mVerify:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->verify()Lcom/autonavi/xmgd/plugin/PluginWrapper;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/plugin/PluginManager;->addPlugin(Lcom/autonavi/xmgd/plugin/PluginWrapper;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private collectOutterPluginFromSDCard(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Lcom/autonavi/xmgd/plugin/PluginXMLParser;

    invoke-direct {v4}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;-><init>()V

    move v1, v0

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_4

    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, ".xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->parse(Ljava/lang/String;)Lcom/autonavi/xmgd/plugin/PluginWrapper;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v6, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_SDCARD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    if-eq v5, v6, :cond_0

    iget-object v5, v2, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v6, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_HOST_ASSERTS:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    if-ne v5, v6, :cond_2

    :cond_0
    iget-boolean v5, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mVerify:Z

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->verify()Lcom/autonavi/xmgd/plugin/PluginWrapper;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    iput-object p1, v2, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mDir:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/autonavi/xmgd/plugin/PluginManager;->addPlugin(Lcom/autonavi/xmgd/plugin/PluginWrapper;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :cond_4
    return v1
.end method

.method private comparePluginVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/autonavi/xmgd/plugin/PluginXMLParser;

    invoke-direct {v1}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;-><init>()V

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->setParseElement(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->parse(Ljava/io/InputStream;)Lcom/autonavi/xmgd/plugin/PluginWrapper;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->getParseElement()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p2}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->parse(Ljava/lang/String;)Lcom/autonavi/xmgd/plugin/PluginWrapper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->getParseElement()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private copyFromAssetsToSDcard(Ljava/lang/String;)I
    .locals 12

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    const-string v3, "outter"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "autonavi60"

    const-string v2, "copyFromAssetsToSDcard outter dir is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mp3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "outter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "outter"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, ".xml"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-direct {p0, v5, v2}, Lcom/autonavi/xmgd/plugin/PluginManager;->existOnSDCard(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-direct {p0, v7, v9}, Lcom/autonavi/xmgd/plugin/PluginManager;->comparePluginVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-gtz v10, :cond_4

    const-string v6, "plugin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "version not big... "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0, v8, v6}, Lcom/autonavi/xmgd/plugin/PluginManager;->copyFromAssetsToSDcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v7, v9}, Lcom/autonavi/xmgd/plugin/PluginManager;->copyFromAssetsToSDcard(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private copyFromAssetsToSDcard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const-string v1, ".mp3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    const-string v3, ".mp3"

    const-string v4, ".apk"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private existOnSDCard(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p2, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized freeManager()V
    .locals 2

    const-class v1, Lcom/autonavi/xmgd/plugin/PluginManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginManager;->instance:Lcom/autonavi/xmgd/plugin/PluginManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginManager;->instance:Lcom/autonavi/xmgd/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginManager;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginManager;->instance:Lcom/autonavi/xmgd/plugin/PluginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getManager(Landroid/content/Context;)Lcom/autonavi/xmgd/plugin/PluginManager;
    .locals 3

    const-class v1, Lcom/autonavi/xmgd/plugin/PluginManager;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "PluginManager getManager bad param , context is null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginManager;->instance:Lcom/autonavi/xmgd/plugin/PluginManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginManager;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/plugin/PluginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginManager;->instance:Lcom/autonavi/xmgd/plugin/PluginManager;

    :cond_1
    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginManager;->instance:Lcom/autonavi/xmgd/plugin/PluginManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized shareInstance()Lcom/autonavi/xmgd/plugin/PluginManager;
    .locals 2

    const-class v0, Lcom/autonavi/xmgd/plugin/PluginManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginManager;->instance:Lcom/autonavi/xmgd/plugin/PluginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static sortPlugin(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xmgd/plugin/PluginWrapper;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->comparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private test()V
    .locals 5

    const/16 v2, 0x3e8

    invoke-virtual {p0}, Lcom/autonavi/xmgd/plugin/PluginManager;->destroy()V

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-direct {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTop:I

    const-string v1, "a"

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-direct {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;-><init>()V

    iput v2, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTop:I

    const-string v1, "f"

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-direct {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;-><init>()V

    const/16 v1, 0xa

    iput v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTop:I

    const-string v1, "b"

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-direct {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;-><init>()V

    iput v2, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTop:I

    const-string v1, "d"

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-direct {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;-><init>()V

    const/16 v1, 0x64

    iput v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTop:I

    const-string v1, "c"

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/plugin/PluginManager;->sortPlugin()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sort "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTop:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public collectInnerPlugin(Landroid/os/Handler;I)I
    .locals 7

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginManager$1;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xmgd/plugin/PluginManager$1;-><init>(Lcom/autonavi/xmgd/plugin/PluginManager;Ljava/lang/String;Landroid/os/Handler;IZ)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :goto_0
    return v5

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/plugin/PluginManager;->collectInnerPlugin()I

    move-result v5

    goto :goto_0
.end method

.method public collectOutterPluginFromInstallApk(Landroid/os/Handler;I)I
    .locals 7

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginManager$3;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xmgd/plugin/PluginManager$3;-><init>(Lcom/autonavi/xmgd/plugin/PluginManager;Ljava/lang/String;Landroid/os/Handler;IZ)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :goto_0
    return v5

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/plugin/PluginManager;->collectOutterPluginFromInstallApk()I

    move-result v5

    goto :goto_0
.end method

.method public collectOutterPluginFromSDCard(Ljava/lang/String;ZLandroid/os/Handler;I)I
    .locals 7

    if-eqz p3, :cond_0

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginManager$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xmgd/plugin/PluginManager$2;-><init>(Lcom/autonavi/xmgd/plugin/PluginManager;Ljava/lang/String;Landroid/os/Handler;IZ)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/plugin/PluginManager;->copyFromAssetsToSDcard(Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/plugin/PluginManager;->collectOutterPluginFromSDCard(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->unload()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public queryPlugin()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xmgd/plugin/PluginWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    return-object v0
.end method

.method public queryPlugin(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xmgd/plugin/PluginWrapper;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/plugin/PluginManager;->queryPlugin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryPlugin(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xmgd/plugin/PluginWrapper;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->isInstanceOf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public setVerify(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mVerify:Z

    return-void
.end method

.method public sortPlugin()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager;->mPluginWrapper:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/PluginManager;->sortPlugin(Ljava/util/List;)V

    return-void
.end method
