.class public Lcom/powermo/SmartBar/ad;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field static b:Lcom/powermo/SmartBar/ad;


# instance fields
.field c:Ljava/util/ArrayList;

.field private d:Landroid/content/Context;

.field private e:Lcom/powermo/SmartBar/ag;

.field private f:Ljava/lang/String;

.field private final g:Landroid/os/Handler;

.field private h:Lcom/powermo/SmartBar/af;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/powermo/SmartBar/ad;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/powermo/SmartBar/ad;->b:Lcom/powermo/SmartBar/ad;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/ad;->f:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/ad;->g:Landroid/os/Handler;

    new-instance v0, Lcom/powermo/SmartBar/af;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/af;-><init>(Lcom/powermo/SmartBar/ad;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ad;->h:Lcom/powermo/SmartBar/af;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/ad;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/powermo/SmartBar/ad;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/powermo/SmartBar/ad;->a()V

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/ad;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ad;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/powermo/SmartBar/ad;
    .locals 1

    sget-object v0, Lcom/powermo/SmartBar/ad;->b:Lcom/powermo/SmartBar/ad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/powermo/SmartBar/ad;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/ad;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/powermo/SmartBar/ad;->b:Lcom/powermo/SmartBar/ad;

    sget-object v0, Lcom/powermo/SmartBar/ad;->b:Lcom/powermo/SmartBar/ad;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/powermo/SmartBar/ad;->b:Lcom/powermo/SmartBar/ad;

    goto :goto_0
.end method

.method private a()V
    .locals 4

    new-instance v0, Lcom/powermo/SmartBar/ag;

    iget-object v1, p0, Lcom/powermo/SmartBar/ad;->d:Landroid/content/Context;

    const-string v2, "/system/etc/powermo_config.xml"

    invoke-direct {v0, v1, v2}, Lcom/powermo/SmartBar/ag;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ad;->e:Lcom/powermo/SmartBar/ag;

    iget-object v0, p0, Lcom/powermo/SmartBar/ad;->e:Lcom/powermo/SmartBar/ag;

    const-string v1, "global.acls-package-name"

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powermo/SmartBar/ad;->b(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/powermo/SmartBar/ad;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/powermo/SmartBar/dc;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/powermo/SmartBar/ad;->e:Lcom/powermo/SmartBar/ag;

    invoke-virtual {v2, v1}, Lcom/powermo/SmartBar/ag;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/powermo/SmartBar/ad;->e:Lcom/powermo/SmartBar/ag;

    const-string v3, "global.aclslist"

    invoke-virtual {v2, v3}, Lcom/powermo/SmartBar/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/SmartBar/ad;->f:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/powermo/SmartBar/ad;->e:Lcom/powermo/SmartBar/ag;

    invoke-virtual {v2}, Lcom/powermo/SmartBar/ag;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/powermo/SmartBar/ad;->h:Lcom/powermo/SmartBar/af;

    iget-object v3, p0, Lcom/powermo/SmartBar/ad;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/powermo/SmartBar/af;->a(Landroid/content/Context;)V

    :cond_1
    sget-boolean v2, Lcom/powermo/SmartBar/ad;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "ConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/powermo/SmartBar/ad;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/powermo/SmartBar/ad;->e:Lcom/powermo/SmartBar/ag;

    const-string v3, "global.defaultlist"

    invoke-virtual {v2, v3}, Lcom/powermo/SmartBar/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/SmartBar/ad;->f:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object v1, p0, Lcom/powermo/SmartBar/ad;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/powermo/SmartBar/ad;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/ad;->f:Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/powermo/SmartBar/ad;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ad;->d:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/powermo/SmartBar/ad;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/powermo/SmartBar/ad;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ad;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/powermo/SmartBar/ad;)V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/SmartBar/ad;->a()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ad;->e:Lcom/powermo/SmartBar/ag;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/ad;->e:Lcom/powermo/SmartBar/ag;

    invoke-virtual {v0, p1}, Lcom/powermo/SmartBar/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/powermo/SmartBar/ae;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ad;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ad;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/content/ComponentName;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ad;->e:Lcom/powermo/SmartBar/ag;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/SmartBar/ad;->e:Lcom/powermo/SmartBar/ag;

    iget-object v3, p0, Lcom/powermo/SmartBar/ad;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/powermo/SmartBar/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/pm/ResolveInfo;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/ad;->b(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/ad;->a(Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    const-string v1, "true"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "false"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0
.end method
