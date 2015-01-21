.class public final Lcom/autonavi/xmgd/plugin/PluginWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/autonavi/xmgd/plugin/PluginWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAppPackageName:Ljava/lang/String;

.field mDescription:Ljava/lang/String;

.field mDir:Ljava/lang/String;

.field mEntry:Ljava/lang/String;

.field private mFullName:Ljava/lang/String;

.field mGrade:I

.field mInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mKey:Ljava/lang/String;

.field private mLockGenerator:I

.field private mLockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mName:Ljava/lang/String;

.field public mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

.field mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

.field private mRes:Landroid/content/res/Resources;

.field private mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

.field mTitle:Ljava/lang/String;

.field mTop:I

.field mUrl:Ljava/lang/String;

.field mVendor:Ljava/lang/String;

.field mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$1;

    invoke-direct {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper$1;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x270f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mInterfaces:Ljava/util/ArrayList;

    iput v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mGrade:I

    iput v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTop:I

    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_UNLOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockList:Ljava/util/ArrayList;

    return-void
.end method

.method private createPlugin(Landroid/content/Context;)Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v2, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_SDCARD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v2, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_HOST_ASSERTS:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    if-ne v0, v2, :cond_2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dex"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v2, v0, v3, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v2, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->JAR_HOST:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->getInstance()Lcom/autonavi/xmgd/plugin/PluginErrorManager;

    move-result-object v2

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createPlugin\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalAccessError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->setError(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessError;->printStackTrace()V

    :goto_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v2, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_INSTALLED:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mAppPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->inflectPlugin(Landroid/content/Context;Ljava/lang/Object;)Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;
    :try_end_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->getInstance()Lcom/autonavi/xmgd/plugin/PluginErrorManager;

    move-result-object v2

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createPlugin\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->setError(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static getApkFileInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "file path is not correct"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "android.content.pm.PackageParser"

    const-string v1, "android.content.res.AssetManager"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v4}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/io/File;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v6, "parsePackage"

    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    const/4 v4, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "applicationInfo"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const-string v5, "addAssetPath"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const-class v5, Landroid/content/res/Resources;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v3, :cond_3

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    :cond_3
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v3, :cond_4

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    :goto_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getMethodList(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/reflect/Method;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflectPlugin(Landroid/content/Context;Ljava/lang/Object;)Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;
    .locals 4

    new-instance v1, Lcom/autonavi/xmgd/plugin/PluginImp;

    invoke-direct {v1, p1, p2}, Lcom/autonavi/xmgd/plugin/PluginImp;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->getMethodList(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Lcom/autonavi/xmgd/plugin/PluginImp;->addMethod([Ljava/lang/reflect/Method;)V

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/plugin/PluginImp;->addInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/autonavi/xmgd/plugin/PluginImp;->getMethodCount()I

    move-result v0

    if-lez v0, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isInstanceOf(Ljava/lang/Class;Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/autonavi/xmgd/plugin/PluginImp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/autonavi/xmgd/plugin/PluginImp;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/xmgd/plugin/PluginImp;->existInterface(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyKey()Lcom/autonavi/xmgd/plugin/PluginWrapper;
    .locals 5

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginKey;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/autonavi/xmgd/plugin/PluginKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginKey;->getVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginKey;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginKey;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginKey;->getEntryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mVendor:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mVendor:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mAppPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v2, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->JAR_HOST:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    if-eq v1, v2, :cond_0

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verify key fail..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0
.end method

.method private verifyPackageName()Lcom/autonavi/xmgd/plugin/PluginWrapper;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_SDCARD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    return-object p0
.end method


# virtual methods
.method addInterface(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mInterfaces:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mInterfaces:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public createContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v2, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_INSTALLED:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mAppPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object p2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object p2, v0

    goto :goto_1
.end method

.method public download()V
    .locals 0

    return-void
.end method

.method public getEntry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mFullName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mFullName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mFullName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterfaceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mInterfaces:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin()Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    return-object v0
.end method

.method public getPluginForm()Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    return-object v0
.end method

.method public getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 6

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mRes:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "android.content.res.AssetManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "addAssetPath"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mRes:Landroid/content/res/Resources;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    const-class v1, Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mRes:Landroid/content/res/Resources;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getState()Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mVersionCode:I

    return v0
.end method

.method public isInstanceOf(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->isInstanceOf(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInstanceOf(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)I
    .locals 5

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_LOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockGenerator:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockGenerator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockGenerator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockGenerator:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->createPlugin(Landroid/content/Context;)Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    invoke-virtual {p0, p1, p1}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->createContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;->load(Landroid/content/Context;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_LOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockGenerator:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockGenerator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockGenerator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockGenerator:I
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->getInstance()Lcom/autonavi/xmgd/plugin/PluginErrorManager;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AbstractMethodError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->setError(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AbstractMethodError;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->getInstance()Lcom/autonavi/xmgd/plugin/PluginErrorManager;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->setError(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method load1(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_LOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->createPlugin(Landroid/content/Context;)Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    invoke-virtual {p0, p1, p1}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->createContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;->load(Landroid/content/Context;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_LOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    iput-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    goto :goto_0

    :cond_2
    const-string v0, "IPlugin instance is null."

    goto :goto_0
.end method

.method public queryUpdate()V
    .locals 0

    return-void
.end method

.method public same(Lcom/autonavi/xmgd/plugin/PluginWrapper;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mVendor:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mVendor:Ljava/lang/String;

    iget-object v1, p1, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mAppPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mAppPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->JAR_HOST:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    iget-object v1, p1, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEntry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mAppPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPluginForm(Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    return-void
.end method

.method unload()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    sget-object v2, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_UNLOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    invoke-interface {v1}, Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;->unload()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_UNLOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    iput-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unload(I)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    sget-object v2, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_UNLOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    invoke-interface {v1}, Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;->unload()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_UNLOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    iput-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    const-string v1, "plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockGenerator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->getInstance()Lcom/autonavi/xmgd/plugin/PluginErrorManager;

    move-result-object v1

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unload\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AbstractMethodError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->setError(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AbstractMethodError;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mLockList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->getInstance()Lcom/autonavi/xmgd/plugin/PluginErrorManager;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unload\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->setError(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method unload1()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    sget-object v2, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_UNLOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    invoke-interface {v1}, Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;->unload()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPlugin:Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_UNLOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mState:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "IPlugin instance is null."

    goto :goto_0
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method public verify()Lcom/autonavi/xmgd/plugin/PluginWrapper;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->verifyKey()Lcom/autonavi/xmgd/plugin/PluginWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->verifyPackageName()Lcom/autonavi/xmgd/plugin/PluginWrapper;

    move-result-object v0

    :cond_0
    return-object v0
.end method
