.class public final Ltmsdkobf/gu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/gu$a;
    }
.end annotation


# static fields
.field private static volatile or:Ltmsdkobf/gu;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;

.field private os:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ot:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ltmsdkobf/ib;",
            ">;"
        }
    .end annotation
.end field

.field private ou:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltmsdkobf/gu;->os:Ljava/util/ArrayList;

    .line 40
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Ltmsdkobf/gu;->ot:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    iput-object p1, p0, Ltmsdkobf/gu;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ltmsdkobf/gu;->bR()Z

    move-result v1

    iput-boolean v1, p0, Ltmsdkobf/gu;->ou:Z

    .line 65
    iget-boolean v1, p0, Ltmsdkobf/gu;->ou:Z

    if-eqz v1, :cond_0

    .line 66
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v1

    const-class v2, Ltmsdkobf/gu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltmsdkobf/ij;->bj(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 67
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/gu;->mLooper:Landroid/os/Looper;

    .line 69
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Ltmsdkobf/gu;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ltmsdkobf/gu;->mHandler:Landroid/os/Handler;

    .line 71
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method static synthetic a(Ltmsdkobf/gu;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Ltmsdkobf/gu;->ot:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private a(Landroid/content/pm/ServiceInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 163
    if-eqz p1, :cond_1

    const-string v0, "com.tencent.qqpimsecure"

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tencent.qqphonebook"

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ltmsdkobf/gu;->os:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "com.tencent.tmsecure.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ltmsdkobf/gu;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Ltmsdkobf/gu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/content/pm/ServiceInfo;)Ltmsdkobf/ib;
    .locals 7
    .parameter "serviceinfo"

    .prologue
    .line 242
    const/4 v3, 0x0

    .line 244
    .local v3, result:Ltmsdkobf/ib;
    iget-object v5, p0, Ltmsdkobf/gu;->ot:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ltmsdkobf/ib;
    check-cast v3, Ltmsdkobf/ib;

    .line 245
    .restart local v3       #result:Ltmsdkobf/ib;
    if-nez v3, :cond_0

    .line 246
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 250
    .local v2, mLock:Ljava/lang/Object;
    new-instance v4, Ltmsdkobf/gu$1;

    iget-object v5, p0, Ltmsdkobf/gu;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, p1, v2}, Ltmsdkobf/gu$1;-><init>(Ltmsdkobf/gu;Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/Object;)V

    .line 270
    .local v4, serviceConnection:Ltmsdkobf/gu$a;
    iget-object v5, p0, Ltmsdkobf/gu;->mHandler:Landroid/os/Handler;

    new-instance v6, Ltmsdkobf/gu$2;

    invoke-direct {v6, p0, v1, v4}, Ltmsdkobf/gu$2;-><init>(Ltmsdkobf/gu;Landroid/content/Intent;Ltmsdkobf/gu$a;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    monitor-enter v2

    .line 283
    const-wide/16 v5, 0x1388

    :try_start_0
    invoke-virtual {v2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    iget-object v3, v4, Ltmsdkobf/gu$a;->oA:Ltmsdkobf/ib;

    .line 293
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mLock:Ljava/lang/Object;
    .end local v4           #serviceConnection:Ltmsdkobf/gu$a;
    :cond_0
    return-object v3

    .line 284
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #mLock:Ljava/lang/Object;
    .restart local v4       #serviceConnection:Ltmsdkobf/gu$a;
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public static bO()Ltmsdkobf/gu;
    .locals 3

    .prologue
    .line 50
    sget-object v0, Ltmsdkobf/gu;->or:Ltmsdkobf/gu;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Ltmsdkobf/gu;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Ltmsdkobf/gu;->or:Ltmsdkobf/gu;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ltmsdkobf/gu;

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ltmsdkobf/gu;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdkobf/gu;->or:Ltmsdkobf/gu;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Ltmsdkobf/gu;->or:Ltmsdkobf/gu;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private bR()Z
    .locals 19

    .prologue
    .line 178
    const/4 v10, 0x0

    .line 188
    .local v10, result:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Ltmsdkobf/gu;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/gu;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1004

    const/16 v18, 0x1

    invoke-static/range {v15 .. v18}, Ltmsdkobf/id;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 189
    .local v4, info:Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_0

    .line 190
    const/4 v15, 0x0

    .line 233
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v15

    .line 193
    .restart local v4       #info:Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v11, 0x0

    .line 194
    .local v11, result_1:Z
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 195
    .local v9, permissions:[Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 196
    move-object v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v6, v1, v3

    .line 197
    .local v6, per:Ljava/lang/String;
    const-string v15, "com.tencent.tmsecure.permission.RECEIVE_SMS"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 198
    const/4 v11, 0x1

    .line 205
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #per:Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    .line 206
    .local v12, result_2:Z
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 207
    .local v7, perinfos:[Landroid/content/pm/PermissionInfo;
    if-eqz v7, :cond_2

    .line 208
    move-object v1, v7

    .local v1, arr$:[Landroid/content/pm/PermissionInfo;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v6, v1, v3

    .line 209
    .local v6, per:Landroid/content/pm/PermissionInfo;
    iget-object v15, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v16, "com.tencent.tmsecure.permission.RECEIVE_SMS"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 210
    const/4 v12, 0x1

    .line 217
    .end local v1           #arr$:[Landroid/content/pm/PermissionInfo;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #per:Landroid/content/pm/PermissionInfo;
    :cond_2
    const/4 v13, 0x0

    .line 218
    .local v13, result_3:Z
    iget-object v15, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v15, :cond_3

    .line 219
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v1, arr$:[Landroid/content/pm/ServiceInfo;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v5, :cond_3

    aget-object v14, v1, v3

    .line 220
    .local v14, serviceinfo:Landroid/content/pm/ServiceInfo;
    iget-object v8, v14, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 222
    .local v8, permission:Ljava/lang/String;
    if-eqz v8, :cond_6

    const-string v15, "com.tencent.tmsecure.permission.RECEIVE_SMS"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    iget-boolean v15, v14, Landroid/content/pm/ServiceInfo;->exported:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v15, :cond_6

    .line 223
    const/4 v13, 0x1

    .line 228
    .end local v1           #arr$:[Landroid/content/pm/ServiceInfo;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v8           #permission:Ljava/lang/String;
    .end local v14           #serviceinfo:Landroid/content/pm/ServiceInfo;
    :cond_3
    and-int v15, v11, v12

    and-int v10, v15, v13

    .end local v4           #info:Landroid/content/pm/PackageInfo;
    .end local v7           #perinfos:[Landroid/content/pm/PermissionInfo;
    .end local v9           #permissions:[Ljava/lang/String;
    .end local v11           #result_1:Z
    .end local v12           #result_2:Z
    .end local v13           #result_3:Z
    :goto_4
    move v15, v10

    .line 233
    goto :goto_0

    .line 196
    .local v1, arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #info:Landroid/content/pm/PackageInfo;
    .restart local v5       #len$:I
    .local v6, per:Ljava/lang/String;
    .restart local v9       #permissions:[Ljava/lang/String;
    .restart local v11       #result_1:Z
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 208
    .local v1, arr$:[Landroid/content/pm/PermissionInfo;
    .local v6, per:Landroid/content/pm/PermissionInfo;
    .restart local v7       #perinfos:[Landroid/content/pm/PermissionInfo;
    .restart local v12       #result_2:Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 219
    .end local v6           #per:Landroid/content/pm/PermissionInfo;
    .local v1, arr$:[Landroid/content/pm/ServiceInfo;
    .restart local v8       #permission:Ljava/lang/String;
    .restart local v13       #result_3:Z
    .restart local v14       #serviceinfo:Landroid/content/pm/ServiceInfo;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 229
    .end local v1           #arr$:[Landroid/content/pm/ServiceInfo;
    .end local v3           #i$:I
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    .end local v5           #len$:I
    .end local v7           #perinfos:[Landroid/content/pm/PermissionInfo;
    .end local v8           #permission:Ljava/lang/String;
    .end local v9           #permissions:[Ljava/lang/String;
    .end local v11           #result_1:Z
    .end local v12           #result_2:Z
    .end local v13           #result_3:Z
    .end local v14           #serviceinfo:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v2

    .line 230
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public aT(Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"

    .prologue
    .line 146
    iget-object v0, p0, Ltmsdkobf/gu;->os:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Ltmsdkobf/gu;->os:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    return-void
.end method

.method public aU(Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"

    .prologue
    .line 152
    iget-object v0, p0, Ltmsdkobf/gu;->os:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Ltmsdkobf/gu;->os:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    return-void
.end method

.method public bP()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ib;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ib;>;"
    iget-boolean v10, p0, Ltmsdkobf/gu;->ou:Z

    if-eqz v10, :cond_2

    .line 82
    iget-object v10, p0, Ltmsdkobf/gu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 83
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.tencent.tmsecure.action.SMS_RECEIVED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, intent:Landroid/content/Intent;
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v7, v4, v10, v11}, Ltmsdkobf/id;->b(Landroid/content/pm/PackageManager;Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v3

    .line 93
    .local v3, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v6, pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 95
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 96
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 97
    .local v9, serviceinfo:Landroid/content/pm/ServiceInfo;
    iget-object v5, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 99
    .local v5, pkg:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-direct {p0, v9}, Ltmsdkobf/gu;->a(Landroid/content/pm/ServiceInfo;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 103
    .local v0, client:Ltmsdkobf/ib;
    iget-object v10, p0, Ltmsdkobf/gu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 104
    invoke-static {}, Ltmsdkobf/if;->cK()Ltmsdkobf/if;

    move-result-object v0

    .line 109
    :goto_1
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0, v9}, Ltmsdkobf/gu;->b(Landroid/content/pm/ServiceInfo;)Ltmsdkobf/ib;

    move-result-object v0

    goto :goto_1

    .line 117
    .end local v0           #client:Ltmsdkobf/ib;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #pkg:Ljava/lang/String;
    .end local v6           #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #serviceinfo:Landroid/content/pm/ServiceInfo;
    :cond_2
    return-object v8
.end method

.method public bQ()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method
