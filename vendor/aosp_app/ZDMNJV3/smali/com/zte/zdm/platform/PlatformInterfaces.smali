.class public Lcom/zte/zdm/platform/PlatformInterfaces;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "agps-settings"

.field public static final b:Ljava/lang/Class;

.field private static f:Lcom/zte/zdm/platform/PlatformInterfaces;


# instance fields
.field c:Lcom/zte/zdm/platform/ConfigClassLoader;

.field private d:Lcom/zte/zdm/platform/interfaces/AgpsInterface;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/zte/zdm/platform/defaults/DefaultAgpsSettings;

    sput-object v0, Lcom/zte/zdm/platform/PlatformInterfaces;->b:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/zte/zdm/b/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/platform/PlatformInterfaces;->e:Landroid/content/Context;

    new-instance v0, Lcom/zte/zdm/platform/ConfigClassLoader;

    invoke-direct {v0, p2}, Lcom/zte/zdm/platform/ConfigClassLoader;-><init>(Lcom/zte/zdm/b/b/a;)V

    iput-object v0, p0, Lcom/zte/zdm/platform/PlatformInterfaces;->c:Lcom/zte/zdm/platform/ConfigClassLoader;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/platform/PlatformInterfaces;
    .locals 1

    sget-object v0, Lcom/zte/zdm/platform/PlatformInterfaces;->f:Lcom/zte/zdm/platform/PlatformInterfaces;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/zte/zdm/platform/PlatformInterfaces;->b(Landroid/content/Context;Lcom/zte/zdm/b/b/a;)V

    :cond_0
    sget-object v0, Lcom/zte/zdm/platform/PlatformInterfaces;->f:Lcom/zte/zdm/platform/PlatformInterfaces;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/zte/zdm/b/b/a;)V
    .locals 1

    new-instance v0, Lcom/zte/zdm/platform/PlatformInterfaces;

    invoke-direct {v0, p0, p1}, Lcom/zte/zdm/platform/PlatformInterfaces;-><init>(Landroid/content/Context;Lcom/zte/zdm/b/b/a;)V

    sput-object v0, Lcom/zte/zdm/platform/PlatformInterfaces;->f:Lcom/zte/zdm/platform/PlatformInterfaces;

    :try_start_0
    sget-object v0, Lcom/zte/zdm/platform/PlatformInterfaces;->f:Lcom/zte/zdm/platform/PlatformInterfaces;

    invoke-virtual {v0}, Lcom/zte/zdm/platform/PlatformInterfaces;->b()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/zte/zdm/platform/interfaces/AgpsInterface;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/platform/PlatformInterfaces;->d:Lcom/zte/zdm/platform/interfaces/AgpsInterface;

    return-object v0
.end method

.method b()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/platform/PlatformInterfaces;->c:Lcom/zte/zdm/platform/ConfigClassLoader;

    const-string v1, "agps-settings"

    sget-object v2, Lcom/zte/zdm/platform/PlatformInterfaces;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/platform/ConfigClassLoader;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/platform/PlatformInterfaces;->c:Lcom/zte/zdm/platform/ConfigClassLoader;

    const-class v2, Lcom/zte/zdm/platform/interfaces/AgpsInterface;

    invoke-virtual {v1, v0, v2}, Lcom/zte/zdm/platform/ConfigClassLoader;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "this class is not implement AgpsInterface,change to Default Agps Setting Interface"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/platform/PlatformInterfaces;->b:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/platform/interfaces/AgpsInterface;

    iput-object v0, p0, Lcom/zte/zdm/platform/PlatformInterfaces;->d:Lcom/zte/zdm/platform/interfaces/AgpsInterface;

    iget-object v0, p0, Lcom/zte/zdm/platform/PlatformInterfaces;->d:Lcom/zte/zdm/platform/interfaces/AgpsInterface;

    iget-object v1, p0, Lcom/zte/zdm/platform/PlatformInterfaces;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/zte/zdm/platform/interfaces/AgpsInterface;->a(Landroid/content/Context;)V

    return-void
.end method
