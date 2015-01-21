.class public final Ltmsdk/common/TMSDKContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CON_ATHENA_NAME:Ljava/lang/String; = "athena_name"

.field public static final CON_AUTO_REPORT:Ljava/lang/String; = "auto_report"

.field public static final CON_BOA_LIBNAME:Ljava/lang/String; = "boa_libname"

.field public static final CON_BUILD:Ljava/lang/String; = "build"

.field public static final CON_CHANNEL:Ljava/lang/String; = "channel"

.field public static final CON_CVERSION:Ljava/lang/String; = "cversion"

.field public static final CON_HOST_URL:Ljava/lang/String; = "host_url"

.field public static final CON_HOTFIX:Ljava/lang/String; = "hotfix"

.field public static final CON_LC:Ljava/lang/String; = "lc"

.field public static final CON_LOGIN_HOST_URL:Ljava/lang/String; = "login_host_url"

.field public static final CON_PLATFORM:Ljava/lang/String; = "platform"

.field public static final CON_PRE_LIB_PATH:Ljava/lang/String; = "pre_lib_path"

.field public static final CON_PRODUCT:Ljava/lang/String; = "product"

.field public static final CON_PVERSION:Ljava/lang/String; = "pversion"

.field public static final CON_ROOT_GOT_ACTION:Ljava/lang/String; = "root_got_action"

.field public static final CON_SDK_LIBNAME:Ljava/lang/String; = "sdk_libname"

.field public static final CON_SOFTVERSION:Ljava/lang/String; = "softversion"

.field public static final CON_SUB_PLATFORM:Ljava/lang/String; = "sub_platform"

.field public static final CON_SU_CMD:Ljava/lang/String; = "su_cmd"

.field public static final CON_VIRUS_SCAN_LIBNAME:Ljava/lang/String; = "virus_scan_libname"

.field public static final SDK_VERSION:Ljava/lang/String; = "2.0.0"

.field public static final SPIRIT_LIBNAME:Ljava/lang/String; = "spirit_libname"

.field public static final TYPE_OF_BACKGROUND:I = 0x2

.field public static final TYPE_OF_FOREGROUND:I = 0x1

.field public static final TYPE_OF_NONE:I

.field private static xj:Landroid/content/Context;

.field private static xk:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ltmsdk/common/TMSService;",
            ">;"
        }
    .end annotation
.end field

.field private static xl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static xm:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    .line 213
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "boa_libname"

    const-string v2, "boa-1.0.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "virus_scan_libname"

    const-string v2, "Tms2-Ams-1.3.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "sdk_libname"

    const-string v2, "Tmsdk-2.0.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "spirit_libname"

    const-string v2, "libspirit-1.0.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "pre_lib_path"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "login_host_url"

    const-string v2, "sync.3g.qq.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "su_cmd"

    const-string v2, "su"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "softversion"

    const-string v2, "2.0.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "build"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "host_url"

    const-string v2, "http://pmir.3g.qq.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "lc"

    const-string v2, "0CD0AD809CBCBF41"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "channel"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "platform"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "pversion"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "cversion"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "hotfix"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "auto_report"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "sub_platform"

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "product"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v1, "athena_name"

    const-string v2, "athena_v4.dat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLisence()Z
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Ltmsdkobf/is;->dt()Ltmsdkobf/is;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/is;->dp()Z

    move-result v0

    return v0
.end method

.method private static native doRegisterNatives(ILjava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Ltmsdk/common/TMSDKContext;->xj:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDualSimAdapter()Ltmsdkobf/lm;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    return-object v0
.end method

.method public static getIntFromEnvMap(Ljava/lang/String;)I
    .locals 3
    .parameter "key"

    .prologue
    .line 259
    const-class v2, Ltmsdk/common/TMSDKContext;

    monitor-enter v2

    .line 260
    :try_start_0
    sget-object v1, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    .line 264
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 266
    .end local v0           #value:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSecureServiceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, Ltmsdk/common/TMSDKContext;->xk:Ljava/lang/Class;

    return-object v0
.end method

.method public static getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "key"

    .prologue
    .line 286
    const-class v6, Ltmsdk/common/TMSDKContext;

    monitor-enter v6

    .line 287
    :try_start_0
    sget-object v5, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 290
    .local v4, result:Ljava/lang/String;
    const-string v5, "softversion"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_0

    const-string v5, "0.0.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 291
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 292
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 295
    .local v3, packagemanager:Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v3, v5, v7}, Ltmsdkobf/id;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 296
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    .end local v3           #packagemanager:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v6

    return-object v4

    .line 297
    .restart local v0       #context:Landroid/content/Context;
    .restart local v3       #packagemanager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 298
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #packagemanager:Landroid/content/pm/PackageManager;
    .end local v4           #result:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 299
    .restart local v0       #context:Landroid/content/Context;
    .restart local v3       #packagemanager:Landroid/content/pm/PackageManager;
    .restart local v4       #result:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 300
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/Class;ILtmsdk/common/ITMSApplicaionConfig;)V
    .locals 8
    .parameter "context"
    .parameter
    .parameter "processType"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ltmsdk/common/TMSService;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Ltmsdk/common/ITMSApplicaionConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, serviceClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Ltmsdk/common/TMSDKContext;->xj:Landroid/content/Context;

    .line 334
    sput-object p1, Ltmsdk/common/TMSDKContext;->xk:Ljava/lang/Class;

    .line 335
    sput p2, Ltmsdk/common/TMSDKContext;->xm:I

    .line 340
    const-class v4, Ltmsdk/common/TMSDKContext;

    monitor-enter v4

    .line 342
    :try_start_0
    invoke-static {}, Ltmsdkobf/is;->dt()Ltmsdkobf/is;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdkobf/is;->dq()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, channel:Ljava/lang/String;
    sget-object v3, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v5, "channel"

    if-nez v0, :cond_0

    const-string v0, "null"

    .end local v0           #channel:Ljava/lang/String;
    :cond_0
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {}, Ltmsdkobf/is;->dt()Ltmsdkobf/is;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdkobf/is;->dr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltmsdkobf/x;->y(Ljava/lang/String;)Ltmsdkobf/x;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdkobf/x;->value()I

    move-result v2

    .line 347
    .local v2, pid:I
    sget-object v3, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v5, "product"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v3, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    const-string v5, "root_got_action"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ACTION_ROOT_GOT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    if-eqz p3, :cond_1

    .line 354
    new-instance v3, Ljava/util/HashMap;

    sget-object v5, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p3, v3}, Ltmsdk/common/ITMSApplicaionConfig;->config(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    .line 356
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :try_start_1
    invoke-static {}, Ltmsdkobf/ig;->cL()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 365
    :goto_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->start()V

    .line 366
    return-void

    .line 356
    .end local v2           #pid:I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 360
    .restart local v2       #pid:I
    :catch_0
    move-exception v1

    .line 361
    .local v1, e:Ljava/io/IOException;
    const-string v3, "TMSDKContext"

    const-string v4, "skipping initJniContext"

    invoke-static {v3, v4, v1}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static processType()I
    .locals 1

    .prologue
    .line 398
    sget v0, Ltmsdk/common/TMSDKContext;->xm:I

    return v0
.end method

.method public static registerNatives(ILjava/lang/Class;)V
    .locals 4
    .parameter "jniId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, jniClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Ltmsdkobf/ig;->cM()V

    .line 445
    invoke-static {p0, p1}, Ltmsdk/common/TMSDKContext;->doRegisterNatives(ILjava/lang/Class;)I

    move-result v0

    .line 446
    .local v0, r:I
    if-eqz v0, :cond_0

    .line 447
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    :cond_0
    return-void
.end method

.method public static reportChannelInfo()V
    .locals 0

    .prologue
    .line 382
    invoke-static {}, Ltmsdkobf/ie;->reportChannelInfo()V

    .line 383
    return-void
.end method

.method public static setAutoConnectionSwitch(Z)V
    .locals 2
    .parameter "canConnection"

    .prologue
    .line 461
    invoke-static {p0}, Ltmsdkobf/ku;->setAutoConnectionSwitch(Z)V

    .line 462
    sget-object v0, Ltmsdk/common/TMSDKContext;->xj:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "demo"

    const-string v1, "setAutoConnectionSwitch 00"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-eqz p0, :cond_0

    const-string v0, "auto_report"

    invoke-static {v0}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-static {}, Ltmsdk/common/TMSDKContext;->reportChannelInfo()V

    .line 466
    const-string v0, "demo"

    const-string v1, "setAutoConnectionSwitch 01"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    return-void
.end method

.method public static setDualSimAdapter(Ltmsdkobf/lm;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 406
    invoke-static {p0}, Ltmsdkobf/ig;->a(Ltmsdkobf/lm;)V

    .line 407
    return-void
.end method

.method public static setIntToEnvMap(Ljava/lang/String;I)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 276
    const-class v1, Ltmsdk/common/TMSDKContext;

    monitor-enter v1

    .line 277
    :try_start_0
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setStrToEnvMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 314
    const-class v1, Ltmsdk/common/TMSDKContext;

    monitor-enter v1

    .line 315
    :try_start_0
    sget-object v0, Ltmsdk/common/TMSDKContext;->xl:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static start()V
    .locals 3

    .prologue
    .line 370
    sget-object v1, Ltmsdk/common/TMSDKContext;->xk:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 371
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Ltmsdk/common/TMSDKContext;->xj:Landroid/content/Context;

    sget-object v2, Ltmsdk/common/TMSDKContext;->xk:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Ltmsdk/common/TMSDKContext;->xj:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 376
    :cond_0
    return-void
.end method
