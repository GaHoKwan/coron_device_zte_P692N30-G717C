.class public final Lcom/zte/heartyservice/net/NetManagermentUtils;
.super Ljava/lang/Object;
.source "NetManagermentUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final IP_RULE_PREFIX:Ljava/lang/String; = "ztenet"

.field private static final TAG:Ljava/lang/String; = "NetManagermentUtils"

.field private static mNetUtils:Lcom/zte/heartyservice/net/NetManagermentUtils;

.field private static mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;


# instance fields
.field private final ITFS_3G:[Ljava/lang/String;

.field private final ITFS_WIFI:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

.field private mNetService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetUtils:Lcom/zte/heartyservice/net/NetManagermentUtils;

    .line 35
    sput-object v0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "mContext"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ccinet0"

    aput-object v1, v0, v3

    const-string v1, "rmnet0"

    aput-object v1, v0, v4

    const-string v1, "ppp0"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "ccmni0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cc2mni0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rmnet_usb0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ppp1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ppp2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->ITFS_3G:[Ljava/lang/String;

    .line 29
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "wlan0"

    aput-object v1, v0, v3

    const-string v1, "wwan0"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->ITFS_WIFI:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    .line 454
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mContext:Landroid/content/Context;

    .line 455
    invoke-static {}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getNetworkManagerService()Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    .line 456
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 457
    invoke-static {}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->getInstance()Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    .line 458
    return-void
.end method

.method private applyIptablesRulesImpl(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, acceptUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, forbidUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 410
    .local v1, uid:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/net/NetManagermentUtils;->applySingleRule(IZ)V

    goto :goto_0

    .line 412
    .end local v1           #uid:Ljava/lang/Integer;
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 415
    .restart local v1       #uid:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/net/NetManagermentUtils;->applySingleRule(IZ)V

    goto :goto_1

    .line 417
    .end local v1           #uid:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private applySingleRule(IZ)V
    .locals 9
    .parameter "uid"
    .parameter "reject"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->ITFS_3G:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 48
    .local v0, IP_RULE_IF:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ztenet -I OUTPUT -o "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, cmd:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " -m owner --uid-owner "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    .line 51
    const-string v6, " -j REJECT"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->setIptables(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const-string v6, " -j ACCEPT"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 57
    :catch_0
    move-exception v3

    .line 58
    .local v3, ex:Landroid/os/RemoteException;
    const-string v6, "NetManagermentUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applySingleRule::catch RemoteException error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 64
    .end local v0           #IP_RULE_IF:Ljava/lang/String;
    .end local v2           #cmd:Ljava/lang/StringBuilder;
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_1
    return-void

    .line 59
    .restart local v0       #IP_RULE_IF:Ljava/lang/String;
    .restart local v2       #cmd:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method private applySingleWifiRule(IZ)V
    .locals 11
    .parameter "uid"
    .parameter "reject"

    .prologue
    const/4 v10, 0x1

    .line 98
    const-string v7, "wifi.interface"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, mInterfaceName:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->ITFS_WIFI:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 102
    .local v0, IP_RULE_IF:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ztenet -I OUTPUT -o "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, cmd:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -m owner --uid-owner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    if-ne p2, v10, :cond_0

    .line 105
    const-string v7, " -j REJECT"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->setIptables(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 101
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_0
    const-string v7, " -j ACCEPT"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 111
    :catch_0
    move-exception v3

    .line 112
    .local v3, ex:Landroid/os/RemoteException;
    const-string v7, "NetManagermentUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applySingleRule::catch RemoteException error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 118
    .end local v0           #IP_RULE_IF:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #cmd:Ljava/lang/StringBuilder;
    .end local v3           #ex:Landroid/os/RemoteException;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ztenet -I OUTPUT -o "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v2       #cmd:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -m owner --uid-owner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    if-ne p2, v10, :cond_3

    .line 121
    const-string v7, " -j REJECT"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :goto_3
    :try_start_1
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->setIptables(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 133
    .end local v2           #cmd:Ljava/lang/StringBuilder;
    :cond_2
    :goto_4
    return-void

    .line 123
    .restart local v2       #cmd:Ljava/lang/StringBuilder;
    :cond_3
    const-string v7, " -j ACCEPT"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 127
    :catch_1
    move-exception v3

    .line 128
    .restart local v3       #ex:Landroid/os/RemoteException;
    const-string v7, "NetManagermentUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applySingleRule::catch RemoteException error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 129
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v7

    goto :goto_4

    .line 113
    .restart local v0       #IP_RULE_IF:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :catch_3
    move-exception v7

    goto/16 :goto_2
.end method

.method private deleteUidRules(IZ)V
    .locals 10
    .parameter "uid"
    .parameter "reject"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->ITFS_3G:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 69
    .local v0, IP_RULE_IF:Ljava/lang/String;
    const/4 v7, 0x1

    if-ne p2, v7, :cond_0

    .line 70
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ztenet -D OUTPUT -o "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, acceptCmd:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -m owner --uid-owner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -j ACCEPT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->setIptables(Ljava/lang/String;)V

    .line 67
    .end local v1           #acceptCmd:Ljava/lang/StringBuilder;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ztenet -D OUTPUT -o "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .local v6, rejectCmd:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -m owner --uid-owner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -j REJECT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->setIptables(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 78
    .end local v6           #rejectCmd:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 79
    .local v3, ex:Landroid/os/RemoteException;
    const-string v7, "NetManagermentUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteUidRules::catch RemoteException error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 84
    .end local v0           #IP_RULE_IF:Ljava/lang/String;
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_1
    return-void

    .line 80
    .restart local v0       #IP_RULE_IF:Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method private deleteUidWifiRules(IZ)V
    .locals 12
    .parameter "uid"
    .parameter "reject"

    .prologue
    const/4 v11, 0x1

    .line 136
    const-string v8, "wifi.interface"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, mInterfaceName:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 139
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->ITFS_WIFI:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 141
    .local v0, IP_RULE_IF:Ljava/lang/String;
    if-ne p2, v11, :cond_0

    .line 142
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ztenet -D OUTPUT -o "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, acceptCmd:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " -m owner --uid-owner "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -j ACCEPT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v8, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->setIptables(Ljava/lang/String;)V

    .line 139
    .end local v1           #acceptCmd:Ljava/lang/StringBuilder;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ztenet -D OUTPUT -o "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .local v7, rejectCmd:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " -m owner --uid-owner "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -j REJECT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v8, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->setIptables(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 150
    .end local v7           #rejectCmd:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 151
    .local v3, ex:Landroid/os/RemoteException;
    const-string v8, "NetManagermentUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteUidRules::catch RemoteException error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    .end local v0           #IP_RULE_IF:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #ex:Landroid/os/RemoteException;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    if-ne p2, v11, :cond_3

    .line 159
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ztenet -D OUTPUT -o "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v1       #acceptCmd:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " -m owner --uid-owner "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -j ACCEPT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v8, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->setIptables(Ljava/lang/String;)V

    .line 173
    .end local v1           #acceptCmd:Ljava/lang/StringBuilder;
    :cond_2
    :goto_2
    return-void

    .line 163
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ztenet -D OUTPUT -o "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v7       #rejectCmd:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " -m owner --uid-owner "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -j REJECT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v8, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->setIptables(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 167
    .end local v7           #rejectCmd:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    .line 168
    .restart local v3       #ex:Landroid/os/RemoteException;
    const-string v8, "NetManagermentUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteUidRules::catch RemoteException error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 169
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    goto :goto_2

    .line 152
    .restart local v0       #IP_RULE_IF:Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :catch_3
    move-exception v8

    goto/16 :goto_1
.end method

.method private getAcceptUids()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 315
    .local v5, uids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v7

    .line 316
    .local v7, utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    iget-object v8, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 319
    .local v3, pkgManager:Landroid/content/pm/PackageManager;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getTrustPackages(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 320
    .local v4, trustPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 321
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 322
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    const-string v8, "android.permission.INTERNET"

    iget-object v9, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 320
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_1
    iget-object v8, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 329
    .local v2, pkgInfo_uid:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 330
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #pkgInfo_uid:I
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getTrustPackages(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 336
    .local v6, untrustPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 337
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 338
    .restart local v1       #pkgInfo:Landroid/content/pm/PackageInfo;
    const-string v8, "android.permission.INTERNET"

    iget-object v9, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_4

    .line 336
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 342
    :cond_4
    iget-object v8, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 345
    .restart local v2       #pkgInfo_uid:I
    const/16 v8, 0x9

    iget-object v9, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 347
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 348
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 354
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #pkgInfo_uid:I
    :cond_5
    const-string v8, "root"

    invoke-static {v8}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v8, "media"

    invoke-static {v8}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-object v5
.end method

.method private getForbidUids()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x1

    .line 361
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 362
    .local v0, forbidUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 363
    .local v4, pkgManager:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v7

    .line 366
    .local v7, utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-virtual {v7, v10}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getTrustPackages(Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 367
    .local v5, trustPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 368
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 369
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    const-string v8, "android.permission.INTERNET"

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 367
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_1
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 377
    .local v3, pkgInfo_uid:I
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v11, v8}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 379
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 380
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #pkgInfo_uid:I
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getTrustPackages(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 387
    .local v6, untrustPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 388
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 389
    .restart local v2       #pkgInfo:Landroid/content/pm/PackageInfo;
    const-string v8, "android.permission.INTERNET"

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_4

    .line 387
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 393
    :cond_4
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 396
    .restart local v3       #pkgInfo_uid:I
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v11, v8}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_3

    .line 398
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 399
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 403
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #pkgInfo_uid:I
    :cond_5
    return-object v0
.end method

.method private getForbidWifiUids()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 220
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 221
    .local v2, forbidWifiUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 222
    .local v4, pkgManager:Landroid/content/pm/PackageManager;
    invoke-direct {p0, v6}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getWifiDisabledPackageName(I)Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, DisabledWifiPN:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 224
    const/4 v2, 0x0

    .line 234
    .end local v2           #forbidWifiUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    return-object v2

    .line 225
    .restart local v2       #forbidWifiUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 226
    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    .line 228
    :try_start_0
    const-string v6, "weijun"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bbbbbb   uid ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "weijun"

    const-string v6, "wifi disabled app uid can\'t be found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetManagermentUtils;
    .locals 1
    .parameter "mContext"

    .prologue
    .line 461
    if-nez p0, :cond_0

    .line 462
    const/4 v0, 0x0

    .line 468
    :goto_0
    return-object v0

    .line 465
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetUtils:Lcom/zte/heartyservice/net/NetManagermentUtils;

    if-nez v0, :cond_1

    .line 466
    new-instance v0, Lcom/zte/heartyservice/net/NetManagermentUtils;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/NetManagermentUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetUtils:Lcom/zte/heartyservice/net/NetManagermentUtils;

    .line 468
    :cond_1
    sget-object v0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetUtils:Lcom/zte/heartyservice/net/NetManagermentUtils;

    goto :goto_0
.end method

.method private static getNetworkManagerService()Landroid/os/INetworkManagementService;
    .locals 2

    .prologue
    .line 41
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 43
    .local v0, service:Landroid/os/INetworkManagementService;
    return-object v0
.end method

.method private getWifiDisabledPackageName(I)Ljava/util/List;
    .locals 7
    .parameter "number"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 186
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v6, p1}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->fetchDisabledData(I)Landroid/database/Cursor;

    move-result-object v1

    .line 187
    .local v1, cur:Landroid/database/Cursor;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 189
    .local v0, WifiDisabledPackageName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    move-object v0, v5

    .line 215
    .end local v0           #WifiDisabledPackageName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 192
    .restart local v0       #WifiDisabledPackageName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_3

    .line 193
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 195
    .local v3, miCount:I
    if-lez v3, :cond_2

    .line 196
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 197
    const-string v5, "packagename"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "wifiAlldisable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "packagename"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dataAlldisable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 199
    const-string v5, "packagename"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 201
    const-string v5, "packagename"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 203
    .local v4, nameColumn:I
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "wifiAllDsable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dataAllDsable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 205
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    .end local v4           #nameColumn:I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 211
    .local v2, i:I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 214
    .end local v2           #i:I
    .end local v3           #miCount:I
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 215
    goto :goto_0
.end method

.method private getWifiUidInt(Ljava/lang/String;I)I
    .locals 5
    .parameter "packageName"
    .parameter "def"

    .prologue
    .line 248
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v4, p1}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->fetchData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 249
    .local v0, cur:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 264
    .end local p2
    :goto_0
    return p2

    .line 252
    .restart local p2
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 254
    .local v1, miCount:I
    const/4 v3, 0x0

    .line 255
    .local v3, uid:I
    if-lez v1, :cond_1

    .line 256
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    const-string v4, "uid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 258
    .local v2, nameColumn:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 260
    .end local v2           #nameColumn:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move p2, v3

    .line 261
    goto :goto_0

    .line 263
    .end local v1           #miCount:I
    .end local v3           #uid:I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private purgeRules()V
    .locals 4

    .prologue
    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    const-string v2, "ztenet -F"

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIptables(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 451
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "NetManagermentUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purgeRules::catch RemoteException error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 449
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "NetManagermentUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purgeRules::catch IllegalStateException error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private putWifiCheckedInt(Ljava/lang/String;I)V
    .locals 7
    .parameter "packageName"
    .parameter "value"

    .prologue
    .line 269
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v4, p1}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->fetchData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 270
    .local v0, cur:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 271
    .local v2, pkgManager:Landroid/content/pm/PackageManager;
    const/4 v3, -0x1

    .line 273
    .local v3, uid:I
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 274
    const-string v4, "weijun"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app uid  found="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->updateMarkedData(Ljava/lang/String;I)V

    .line 283
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 284
    return-void

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "weijun"

    const-string v5, "app uid can\'t be found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v4, p1, p2, v3}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->insertData(Ljava/lang/String;II)J

    goto :goto_1
.end method


# virtual methods
.method public applyIptablesRulesImpl(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, forbidUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 423
    .local v1, uid:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/net/NetManagermentUtils;->applySingleRule(IZ)V

    goto :goto_0

    .line 425
    .end local v1           #uid:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public applyRootIptablesRules()V
    .locals 2

    .prologue
    .line 428
    const/4 v0, -0x1

    sget-object v1, Lcom/zte/heartyservice/net/NetManagermentUtils;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    invoke-virtual {v1}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getForbidUids()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetManagermentUtils;->applyIptablesRulesImpl(Ljava/util/List;)V

    .line 435
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getForbidWifiUids()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetManagermentUtils;->applyWifiIptablesRulesImpl(Ljava/util/List;)V

    goto :goto_0
.end method

.method public applyWifiIptablesRulesImpl(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, forbidUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 242
    .local v1, uid:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/net/NetManagermentUtils;->applySingleWifiRule(IZ)V

    goto :goto_0

    .line 245
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #uid:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public deleteWifiIptablesRulesImpl(Ljava/lang/String;)V
    .locals 10
    .parameter "PackageName"

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 287
    invoke-direct {p0, v6}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getWifiDisabledPackageName(I)Ljava/util/List;

    move-result-object v0

    .line 288
    .local v0, DisabledWifiPN:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 291
    .local v4, pkgManager:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 292
    .local v1, delete:Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 293
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    const/4 v1, 0x1

    goto :goto_1

    .line 295
    .end local v5           #str:Ljava/lang/String;
    :cond_3
    const-string v6, "weijun"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cccc  deleteWifiIptablesRulesImpl delete="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-eqz v1, :cond_0

    .line 299
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v6, p1}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->deleteData(Ljava/lang/String;)V

    .line 302
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/zte/heartyservice/net/NetManagermentUtils;->deleteUidWifiRules(IZ)V

    .line 303
    const/4 v6, -0x1

    invoke-direct {p0, p1, v6}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getWifiUidInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v9, :cond_4

    .line 304
    const/4 v6, -0x1

    invoke-direct {p0, p1, v6}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getWifiUidInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/zte/heartyservice/net/NetManagermentUtils;->deleteUidWifiRules(IZ)V

    .line 305
    :cond_4
    const-string v6, "weijun"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ddd  delete="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 306
    :catch_0
    move-exception v2

    .line 307
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "weijun"

    const-string v7, "ssssss  wifi disabled app uid can\'t be found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setAppIpRule(IZ)V
    .locals 3
    .parameter "uid"
    .parameter "reject"

    .prologue
    .line 87
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    .line 88
    .local v0, mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/net/NetManagermentUtils;->deleteUidRules(IZ)V

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/net/NetManagermentUtils;->applySingleRule(IZ)V

    goto :goto_0
.end method

.method public setWifiAppIpRule(IZ)V
    .locals 3
    .parameter "uid"
    .parameter "reject"

    .prologue
    .line 176
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    .line 177
    .local v0, mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetManagermentUtils;->mNetService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/net/NetManagermentUtils;->deleteUidWifiRules(IZ)V

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/net/NetManagermentUtils;->applySingleWifiRule(IZ)V

    goto :goto_0
.end method
