.class public Lcom/zte/zdm/application/ui/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "dm_auto_update"

.field public static final b:Ljava/lang/String; = "dm_day_auto_update"

.field public static final c:Ljava/lang/String; = "dm_week_auto_update"

.field public static final d:Ljava/lang/String; = "dm_month_auto_update"

.field public static final e:Ljava/lang/String; = "dm_no_auto_update"

.field public static final f:Ljava/lang/String; = "auto_update_when_wifi_open"

.field public static final g:Ljava/lang/String; = "auto_update_when_cmcc_wifi_open"

.field public static final h:Ljava/lang/String; = "isWifiOnly"

.field private static final l:Ljava/lang/String; = "usersetting.xml"

.field private static m:Lcom/zte/zdm/application/ui/f;


# instance fields
.field i:Landroid/content/SharedPreferences;

.field j:Landroid/content/SharedPreferences$Editor;

.field k:Lcom/zte/zdm/application/ui/g;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/ui/f;->b(Landroid/content/Context;)V

    const-string v0, "usersetting.xml"

    const-string v1, ".xml"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/ui/f;->i:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/ui/f;->j:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Lcom/zte/zdm/application/ui/g;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/ui/g;-><init>(Lcom/zte/zdm/application/ui/f;)V

    iput-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;
    .locals 2

    const-class v1, Lcom/zte/zdm/application/ui/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/zdm/application/ui/f;->m:Lcom/zte/zdm/application/ui/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/ui/f;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/ui/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zdm/application/ui/f;->m:Lcom/zte/zdm/application/ui/f;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/ui/f;->m:Lcom/zte/zdm/application/ui/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    const-string v0, "shared_prefs"

    const-string v1, "/data/data"

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "usersetting.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "config/usersetting.xml"

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " result="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " createNewFile OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/zte/zdm/g/c;->a(Ljava/io/InputStream;Ljava/io/File;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const-string v0, "copyConfigFile OK"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "dm_auto_update"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dm_auto_update"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "auto_update_when_wifi_open"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "auto_update_when_wifi_open"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    :cond_1
    const-string v0, "auto_update_when_cmcc_wifi_open"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "auto_update_when_cmcc_wifi_open"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    :cond_2
    const-string v0, "isWifiOnly"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "isWifiOnly"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "editor put key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->j:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->j:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/zte/zdm/application/ui/g;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "dm_auto_update"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iget-object v1, p0, Lcom/zte/zdm/application/ui/f;->i:Landroid/content/SharedPreferences;

    const-string v2, "dm_auto_update"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/zte/zdm/application/ui/g;->a:Z

    :goto_0
    const-string v0, "dm_day_auto_update"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iget-object v1, p0, Lcom/zte/zdm/application/ui/f;->i:Landroid/content/SharedPreferences;

    const-string v2, "dm_day_auto_update"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/zte/zdm/application/ui/g;->e:Z

    :goto_1
    const-string v0, "dm_week_auto_update"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iget-object v1, p0, Lcom/zte/zdm/application/ui/f;->i:Landroid/content/SharedPreferences;

    const-string v2, "dm_week_auto_update"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/zte/zdm/application/ui/g;->f:Z

    :goto_2
    const-string v0, "dm_month_auto_update"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iget-object v1, p0, Lcom/zte/zdm/application/ui/f;->i:Landroid/content/SharedPreferences;

    const-string v2, "dm_month_auto_update"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/zte/zdm/application/ui/g;->g:Z

    :goto_3
    const-string v0, "dm_no_auto_update"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iget-object v1, p0, Lcom/zte/zdm/application/ui/f;->i:Landroid/content/SharedPreferences;

    const-string v2, "dm_no_auto_update"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/zte/zdm/application/ui/g;->h:Z

    :goto_4
    const-string v0, "auto_update_when_wifi_open"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iget-object v1, p0, Lcom/zte/zdm/application/ui/f;->i:Landroid/content/SharedPreferences;

    const-string v2, "auto_update_when_wifi_open"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/zte/zdm/application/ui/g;->b:Z

    :goto_5
    const-string v0, "auto_update_when_cmcc_wifi_open"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iget-object v1, p0, Lcom/zte/zdm/application/ui/f;->i:Landroid/content/SharedPreferences;

    const-string v2, "auto_update_when_cmcc_wifi_open"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/zte/zdm/application/ui/g;->d:Z

    :goto_6
    const-string v0, "isWifiOnly"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iget-object v1, p0, Lcom/zte/zdm/application/ui/f;->i:Landroid/content/SharedPreferences;

    const-string v2, "isWifiOnly"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/zte/zdm/application/ui/g;->c:Z

    :goto_7
    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iput-boolean v3, v0, Lcom/zte/zdm/application/ui/g;->a:Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iput-boolean v3, v0, Lcom/zte/zdm/application/ui/g;->e:Z

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iput-boolean v3, v0, Lcom/zte/zdm/application/ui/g;->f:Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iput-boolean v3, v0, Lcom/zte/zdm/application/ui/g;->g:Z

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iput-boolean v3, v0, Lcom/zte/zdm/application/ui/g;->h:Z

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iput-boolean v3, v0, Lcom/zte/zdm/application/ui/g;->b:Z

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iput-boolean v3, v0, Lcom/zte/zdm/application/ui/g;->d:Z

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/zte/zdm/application/ui/f;->k:Lcom/zte/zdm/application/ui/g;

    iput-boolean v3, v0, Lcom/zte/zdm/application/ui/g;->c:Z

    goto :goto_7
.end method
