.class public Lcom/sohu/inputmethod/settings/InstallThemeService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field public a:Landroid/os/Handler;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " install the theme package in sdcard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    .line 368
    sget-object v0, Laox;->e:Ljava/lang/String;

    const-string v1, "/.theme/sogou_custom/res/"

    invoke-static {p1, v0, v1}, Lavi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 371
    packed-switch v0, :pswitch_data_0

    :cond_0
    move v3, v2

    .line 419
    :goto_0
    return v3

    .line 377
    :pswitch_0
    const/4 v3, 0x2

    goto :goto_0

    .line 383
    :pswitch_1
    const/4 v3, 0x3

    goto :goto_0

    .line 386
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "skin.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    if-nez v0, :cond_3

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Skin.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 398
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laox;->z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/res/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    const-string v4, "Skin.ini"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lavi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 405
    invoke-static {p0}, Lavj;->a(Landroid/content/Context;)Lavj;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/res/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_2

    const-string v0, "Skin.ini"

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v1, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v0, v1, v4}, Lavj;->a(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 398
    :cond_1
    const-string v4, "skin.ini"

    goto :goto_2

    .line 405
    :cond_2
    const-string v0, "skin.ini"

    goto :goto_3

    .line 417
    :pswitch_3
    const/4 v3, 0x4

    goto/16 :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/InstallThemeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 429
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 430
    const-string v1, "InstallThemeService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 433
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b()V

    .line 434
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v1

    invoke-virtual {v1, v2}, Laxc;->a(Z)V

    .line 435
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->requestHideSelf(I)V

    .line 442
    :goto_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 443
    return-void

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v1

    invoke-virtual {v1, v2}, Laxc;->b(Z)V

    .line 439
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v1

    invoke-virtual {v1}, Laxc;->a()V

    .line 440
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v1

    invoke-virtual {v1, v3}, Laxc;->a(Z)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/InstallThemeService;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-static {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/InstallThemeService;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Z

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/InstallThemeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/InstallThemeService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " install the theme package in assets = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 274
    :try_start_1
    instance-of v0, v10, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_4

    .line 275
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 276
    new-array v1, v0, [B

    .line 277
    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 278
    if-eq v2, v0, :cond_0

    :cond_0
    move v11, v0

    move-object v0, v1

    move v1, v11

    .line 285
    :goto_0
    const-string v2, "x"

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 286
    int-to-long v1, v1

    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    sget-boolean v7, Laox;->a:Z

    invoke-static/range {v0 .. v7}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeOpenThemeData([BJJJZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    invoke-static {v10}, Lazd;->a(Ljava/io/Closeable;)V

    .line 313
    :goto_1
    return v8

    .line 294
    :catch_0
    move-exception v0

    .line 295
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 297
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 299
    :goto_3
    sget-object v0, Laox;->e:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeSetTargetPath(Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeBeginExtract()Z

    move-result v0

    if-nez v0, :cond_2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******* begin extract = false , delete the target =  *********"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v9, :cond_1

    .line 305
    invoke-static {v0}, Lazj;->a(Ljava/io/File;)Z

    :cond_1
    move v0, v8

    :goto_4
    move v8, v0

    .line 313
    goto :goto_1

    .line 297
    :catchall_0
    move-exception v0

    move-object v10, v1

    :goto_5
    invoke-static {v10}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 309
    :cond_2
    const-string v0, "******* begin extract = true *********"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    move v0, v9

    .line 310
    goto :goto_4

    .line 297
    :cond_3
    invoke-static {v10}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_5

    .line 294
    :catch_1
    move-exception v0

    move-object v1, v10

    goto :goto_2

    :cond_4
    move-object v0, v1

    move v1, v8

    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/InstallThemeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 6

    .prologue
    const v5, 0x7f0b0076

    const v2, 0x7f0b006e

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------[[resetThemeSelect]], mCurrentStartThemeName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Landroid/content/SharedPreferences;

    .line 450
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Landroid/content/SharedPreferences$Editor;

    .line 451
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cB:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cB:I

    .line 452
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->eX:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->eX:I

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lavr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 456
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lavs;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 458
    if-nez v0, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->j()V

    .line 461
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lafp;->A(Z)V

    .line 463
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 467
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 470
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 471
    iput-boolean v4, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->b:Z

    .line 486
    :goto_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Z

    if-nez v0, :cond_1

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sohu.inputmethod.install.dimcode.theme"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    const-string v1, "com.sohu.inputmethod.install.dimcode.theme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    sget-object v1, Lage;->j:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->sendBroadcast(Landroid/content/Intent;)V

    .line 493
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->stopSelf()V

    .line 494
    return-void

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->k()V

    .line 476
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 480
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 483
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 484
    iput-boolean v3, p0, Lcom/sohu/inputmethod/settings/InstallThemeService;->b:Z

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/InstallThemeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " install the theme package in sdcard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 322
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v1, :cond_3

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " target path = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  resolution = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    .line 326
    :try_start_0
    const-string v2, "x"

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 328
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v7, v2

    invoke-static {p1, v5, v6, v7, v8}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeOpenThemePackage(Ljava/lang/String;JJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 360
    :goto_0
    return v0

    .line 333
    :catch_0
    move-exception v2

    .line 334
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    :cond_0
    sget-object v2, Laox;->e:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeSetTargetPath(Ljava/lang/String;Ljava/lang/String;)Z

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ***** after set target = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeBeginExtract()Z

    move-result v2

    if-nez v2, :cond_2

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "******* begin extract = false , delete the target =  *********"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    .line 343
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v5, v1, :cond_1

    .line 345
    invoke-static {v2}, Lazj;->a(Ljava/io/File;)Z

    .line 353
    :cond_1
    :goto_1
    const-string v1, "************ end try jni parser *********************"

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    .line 357
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>> extract the theme :  <<<<<<< cost time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_2
    const-string v0, "******* begin extract = true *********"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    move v0, v1

    .line 350
    goto :goto_1

    .line 355
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------ file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not exist --------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 425
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 63
    const-string v0, "    OnCreate"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 261
    const-string v0, " ------ onDestroy"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V

    .line 263
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 68
    const-string v0, "    onStart "

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Laed;

    invoke-direct {v1, p0, p1}, Laed;-><init>(Lcom/sohu/inputmethod/settings/InstallThemeService;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 254
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 256
    const-string v0, " after start "

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
