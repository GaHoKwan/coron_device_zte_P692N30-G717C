.class public Lcom/nuance/a/a/a/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/a/b/a/a;


# static fields
.field private static final a:Lcom/nuance/a/a/a/a/b/a/b$a;

.field private static b:Lcom/nuance/a/a/a/a/b/a/a;


# instance fields
.field private c:Landroid/telephony/TelephonyManager;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/c/c;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/c/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/a/a/a/c/c;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/a/a/a/c/c;->d:Landroid/content/Context;

    iput-object p1, p0, Lcom/nuance/a/a/a/c/c;->d:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/nuance/a/a/a/c/c;->c:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static declared-synchronized e()Lcom/nuance/a/a/a/a/b/a/a;
    .locals 2

    const-class v1, Lcom/nuance/a/a/a/c/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nuance/a/a/a/c/c;->b:Lcom/nuance/a/a/a/a/b/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/a/a/a/c/c;

    invoke-direct {v0}, Lcom/nuance/a/a/a/c/c;-><init>()V

    sput-object v0, Lcom/nuance/a/a/a/c/c;->b:Lcom/nuance/a/a/a/a/b/a/a;

    :cond_0
    sget-object v0, Lcom/nuance/a/a/a/c/c;->b:Lcom/nuance/a/a/a/a/b/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "Android"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/nuance/a/a/a/c/c;->d:Landroid/content/Context;

    const-string v1, "nuance_sdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "NUANCE_NMSP_UID"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NUANCE_NMSP_UID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/nuance/a/a/a/c/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "Storing nuance sdk uid has failed"

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method