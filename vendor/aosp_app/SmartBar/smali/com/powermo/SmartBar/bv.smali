.class public Lcom/powermo/SmartBar/bv;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powermo/SmartBar/bv;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/powermo/SmartBar/bv;->a:Landroid/content/Context;

    const-string v1, "com.powermo.configurations"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/bv;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/powermo/SmartBar/bv;->a(Ljava/io/File;)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/../databases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/powermo/SmartBar/bv;->a(Ljava/io/File;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/../shared_prefs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/powermo/SmartBar/bv;->a(Ljava/io/File;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/powermo/SmartBar/bv;->a(Ljava/io/File;)V

    return-void
.end method

.method private e()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bv;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/powermo/SmartBar/bv;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/powermo/SmartBar/bv;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/powermo/SmartBar/bv;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/powermo/SmartBar/bv;->d(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/powermo/SmartBar/bv;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    const-string v0, "cfg_cp_fit_hl_count"

    invoke-virtual {p0, v0, p1}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string v0, "cfg_show_disabled_mle"

    invoke-virtual {p0, v0, p1}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public a()Z
    .locals 2

    const-string v0, "cfg_show_disabled_mle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/powermo/SmartBar/bv;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/powermo/SmartBar/bv;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/powermo/SmartBar/bv;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    const-string v0, "cfg_showhelp_mle"

    invoke-virtual {p0, v0, p1}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Z
    .locals 2

    const-string v0, "cfg_showhelp_mle"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 1

    const-string v0, "cfg_showhelp_s"

    invoke-virtual {p0, v0, p1}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public c()Z
    .locals 2

    const-string v0, "cfg_showhelp_s"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    const-string v0, "cfg_cp_fit_hl_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
