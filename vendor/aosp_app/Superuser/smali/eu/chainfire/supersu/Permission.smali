.class public Leu/chainfire/supersu/Permission;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static 鷭(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .line 0
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 25
    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    const-string v0, "android.permission.ACCESS_SUPERUSER"

    invoke-virtual {v4, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 29
    const/4 v0, 0x1

    return v0

    .line 41
    :cond_1
    :try_start_0
    const/4 v0, 0x0

    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 42
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    nop

    .line 47
    :catch_0
    :cond_2
    if-nez v3, :cond_3

    const/4 v0, 0x0

    return v0

    .line 49
    :cond_3
    const/4 v4, 0x0

    .line 52
    :try_start_1
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 58
    :try_start_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v5, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 59
    :try_start_3
    nop

    .line 62
    :catch_1
    if-nez v5, :cond_4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 64
    :try_start_4
    new-instance p0, Ljava/util/zip/ZipFile;

    invoke-direct {p0, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v0, "AndroidManifest.xml"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 67
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v8, v0, [B

    .line 68
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    .line 69
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 70
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 72
    const-string v0, "android.content.res.XmlBlock"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, [B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 74
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    .line 75
    const-string v0, "newParser"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 76
    const-string v0, "close"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v7, v0

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/XmlResourceParser;

    move-object v5, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 78
    :try_start_5
    goto :goto_0

    .line 79
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :cond_4
    :goto_0
    if-eqz v5, :cond_a

    .line 85
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result p1

    .line 86
    goto/16 :goto_3

    .line 87
    :cond_5
    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    .line 88
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 92
    if-eqz v3, :cond_9

    const-string v0, "uses-permission"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v8

    .line 94
    const/4 p0, 0x0

    goto :goto_1

    .line 95
    :cond_6
    invoke-interface {v5, p0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5, p0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_SUPERUSER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    const/4 v4, 0x1

    .line 97
    goto :goto_2

    .line 94
    :cond_7
    add-int/lit8 p0, p0, 0x1

    :goto_1
    if-lt p0, v8, :cond_6

    .line 101
    :goto_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result p0

    .line 103
    :cond_8
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v0, 0x1

    if-eq v3, v0, :cond_9

    const/4 v0, 0x3

    if-ne v3, v0, :cond_8

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-gt v0, p0, :cond_8

    .line 86
    :cond_9
    :goto_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-gt v0, p1, :cond_5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 110
    :cond_a
    :try_start_6
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 111
    if-eqz v7, :cond_b

    if-eqz v6, :cond_b

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 112
    :try_start_7
    goto :goto_4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 114
    :catch_3
    goto :goto_4

    .line 115
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :cond_b
    :goto_4
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 124
    return v4
.end method
