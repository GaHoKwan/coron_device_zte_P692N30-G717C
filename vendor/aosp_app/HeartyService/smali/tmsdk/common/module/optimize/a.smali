.class final Ltmsdk/common/module/optimize/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/optimize/IAutoBootHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ltmsdk/common/module/optimize/a;->zE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    iput-object p1, p0, Ltmsdk/common/module/optimize/a;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "packageManager"
    .parameter "pkg"
    .parameter "name"

    .prologue
    .line 80
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 82
    .local v1, setting:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private cn(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkg"

    .prologue
    .line 91
    const/4 v3, 0x0

    .line 92
    .local v3, result:Z
    iget-object v5, p0, Ltmsdk/common/module/optimize/a;->zE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 94
    .local v2, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 95
    const/4 v4, 0x1

    .line 96
    .local v4, tmp:Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, name:Ljava/lang/String;
    iget-object v5, p0, Ltmsdk/common/module/optimize/a;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {p0, v5, p1, v1}, Ltmsdk/common/module/optimize/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v4, v5

    .line 99
    if-nez v4, :cond_0

    .line 104
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 107
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #tmp:Z
    :cond_2
    return v3
.end method


# virtual methods
.method public getAllAutoBootApps()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/optimize/IAutoBootHelper$Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v9, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/optimize/IAutoBootHelper$Pair<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    iget-object v11, p0, Ltmsdk/common/module/optimize/a;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 34
    .local v5, mPackageManager:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v3, intent:Landroid/content/Intent;
    const/16 v11, 0x200

    const/4 v12, 0x1

    invoke-static {v5, v3, v11, v12}, Ltmsdkobf/id;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v8

    .line 45
    .local v8, resolves:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v11, p0, Ltmsdk/common/module/optimize/a;->zE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 46
    if-eqz v8, :cond_2

    .line 47
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 48
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 49
    .local v7, pkg:Ljava/lang/String;
    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 50
    .local v6, name:Ljava/lang/String;
    const/4 v10, 0x0

    .line 52
    .local v10, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Ltmsdk/common/module/optimize/a;->zE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 53
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .restart local v10       #value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Ltmsdk/common/module/optimize/a;->zE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :goto_1
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 60
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    iget-object v11, p0, Ltmsdk/common/module/optimize/a;->zE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v10, Ljava/util/ArrayList;

    .restart local v10       #value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 65
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #pkg:Ljava/lang/String;
    .end local v10           #value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v11, p0, Ltmsdk/common/module/optimize/a;->zE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    .local v0, entity:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v4, Ltmsdk/common/module/optimize/IAutoBootHelper$Pair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11}, Ltmsdk/common/module/optimize/a;->cn(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v4, v12, v11}, Ltmsdk/common/module/optimize/IAutoBootHelper$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .local v4, item:Ltmsdk/common/module/optimize/IAutoBootHelper$Pair;,"Ltmsdk/common/module/optimize/IAutoBootHelper$Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 70
    .end local v0           #entity:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v4           #item:Ltmsdk/common/module/optimize/IAutoBootHelper$Pair;,"Ltmsdk/common/module/optimize/IAutoBootHelper$Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    return-object v9
.end method

.method public setAutoBootEnable(Ljava/lang/String;Z)Z
    .locals 10
    .parameter "pkg"
    .parameter "enable"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 116
    const v5, 0x1d4d9

    invoke-static {v5, v6}, Ltmsdkobf/im;->a(II)V

    .line 118
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isSystemUid()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isRootGot()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    :cond_0
    const/4 v3, 0x0

    .line 121
    .local v3, result:Z
    iget-object v5, p0, Ltmsdk/common/module/optimize/a;->zE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 122
    .local v2, recored:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v4, script:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 125
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, name:Ljava/lang/String;
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v5

    invoke-interface {v5, p1, v1, p2}, Ltmsdkobf/ln;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 129
    if-nez v3, :cond_1

    .line 142
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #recored:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #result:Z
    .end local v4           #script:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Ltmsdk/common/module/optimize/a;->cn(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, p2, :cond_6

    move v5, v6

    :goto_1
    return v5

    .line 134
    .restart local v2       #recored:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #result:Z
    .restart local v4       #script:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    .restart local v1       #name:Ljava/lang/String;
    const-string v8, "pm %s \'%s/%s\'"

    const/4 v5, 0x3

    new-array v9, v5, [Ljava/lang/Object;

    if-eqz p2, :cond_4

    const-string v5, "enable"

    :goto_3
    aput-object v5, v9, v7

    aput-object p1, v9, v6

    const/4 v5, 0x2

    aput-object v1, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v5, "disable"

    goto :goto_3

    .line 137
    .end local v1           #name:Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Ltmsdk/common/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot(Ljava/util/List;)I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #recored:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #result:Z
    .end local v4           #script:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    move v5, v7

    .line 142
    goto :goto_1
.end method
