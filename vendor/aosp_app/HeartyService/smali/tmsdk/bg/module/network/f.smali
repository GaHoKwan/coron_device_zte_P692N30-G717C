.class final Ltmsdk/bg/module/network/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static vM:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final vI:Ljava/lang/String;

.field private final vJ:Ljava/lang/String;

.field private final vK:Ljava/lang/String;

.field private final vL:Ljava/lang/String;

.field private final vN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final vO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final vP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vQ:Ltmsdkobf/kf;

.field private vR:I

.field private vS:Ljava/lang/String;

.field private vz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "upload_config_des"

    sput-object v0, Ltmsdk/bg/module/network/f;->vM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "netdevapth"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "MOBILE"

    iput-object v0, p0, Ltmsdk/bg/module/network/f;->vI:Ljava/lang/String;

    .line 33
    const-string v0, "WIFI"

    iput-object v0, p0, Ltmsdk/bg/module/network/f;->vJ:Ljava/lang/String;

    .line 34
    const-string v0, "EXCLUDE"

    iput-object v0, p0, Ltmsdk/bg/module/network/f;->vK:Ljava/lang/String;

    .line 36
    const-string v0, "net_interface_type_traffic_stat.dat"

    iput-object v0, p0, Ltmsdk/bg/module/network/f;->vL:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/network/f;->vN:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/network/f;->vO:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/network/f;->vP:Ljava/util/ArrayList;

    .line 48
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/bg/module/network/f;->mContext:Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/bg/module/network/f;->vR:I

    .line 53
    iput-object p1, p0, Ltmsdk/bg/module/network/f;->vz:Ljava/lang/String;

    .line 54
    new-instance v0, Ltmsdkobf/kf;

    const-string v1, "NetInterfaceManager"

    invoke-direct {v0, v1}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltmsdk/bg/module/network/f;->vQ:Ltmsdkobf/kf;

    .line 55
    return-void
.end method

.method private a(Ltmsdkobf/am;)V
    .locals 4
    .parameter "infoList"

    .prologue
    .line 107
    if-eqz p1, :cond_3

    .line 108
    iget-object v2, p1, Ltmsdkobf/am;->dU:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/al;

    .line 109
    .local v0, element:Ltmsdkobf/al;
    const-string v2, "MOBILE"

    iget-object v3, v0, Ltmsdkobf/al;->dR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Ltmsdk/bg/module/network/f;->vN:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 111
    iget-object v2, p0, Ltmsdk/bg/module/network/f;->vN:Ljava/util/List;

    iget-object v3, v0, Ltmsdkobf/al;->dS:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 112
    :cond_1
    const-string v2, "WIFI"

    iget-object v3, v0, Ltmsdkobf/al;->dR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Ltmsdk/bg/module/network/f;->vO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 114
    iget-object v2, p0, Ltmsdk/bg/module/network/f;->vO:Ljava/util/List;

    iget-object v3, v0, Ltmsdkobf/al;->dS:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 115
    :cond_2
    const-string v2, "EXCLUDE"

    iget-object v3, v0, Ltmsdkobf/al;->dR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Ltmsdk/bg/module/network/f;->vP:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 117
    iget-object v2, p0, Ltmsdk/bg/module/network/f;->vP:Ljava/util/ArrayList;

    iget-object v3, v0, Ltmsdkobf/al;->dS:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 121
    .end local v0           #element:Ltmsdkobf/al;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, strList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    .local v1, item:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const/4 v2, 0x1

    .line 136
    .end local v1           #item:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private bW(Ljava/lang/String;)Z
    .locals 3
    .parameter "field"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 171
    const-string v2, "ppp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    iget-object v2, p0, Ltmsdk/bg/module/network/f;->vS:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltmsdk/bg/module/network/f;->vS:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 175
    goto :goto_0

    .line 178
    :cond_2
    invoke-direct {p0}, Ltmsdk/bg/module/network/f;->eC()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltmsdk/bg/module/network/f;->vS:Ljava/lang/String;

    .line 179
    iget-object v2, p0, Ltmsdk/bg/module/network/f;->vS:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdk/bg/module/network/f;->vS:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 180
    goto :goto_0
.end method

.method private eA()Ltmsdkobf/am;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    .local v9, infoList:Ltmsdkobf/am;
    iget-object v12, p0, Ltmsdk/bg/module/network/f;->mContext:Landroid/content/Context;

    const-string v13, "net_interface_type_traffic_stat.dat"

    invoke-static {v12, v13, v14}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, path:Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    move-object v10, v9

    .line 100
    .end local v9           #infoList:Ltmsdkobf/am;
    .local v10, infoList:Ltmsdkobf/am;
    :goto_0
    return-object v10

    .line 71
    .end local v10           #infoList:Ltmsdkobf/am;
    .restart local v9       #infoList:Ltmsdkobf/am;
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v6, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 75
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v8}, Ltmsdkobf/ju;->a(Ljava/io/InputStream;)Ltmsdkobf/jt;

    move-result-object v5

    .line 77
    .local v5, fh:Ltmsdkobf/jt;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v12

    new-array v2, v12, [B

    .line 78
    .local v2, data:[B
    invoke-virtual {v8, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 81
    invoke-static {v2}, Ltmsdkobf/kd;->t([B)[B

    move-result-object v12

    invoke-static {v12}, Ltmsdkobf/jr;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Ltmsdkobf/jt;->eQ()[B

    move-result-object v13

    invoke-static {v13}, Ltmsdkobf/jr;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 82
    const/4 v12, 0x0

    invoke-static {v2, v12}, Ltmsdk/common/tcc/TccCryptor;->decrypt([B[B)[B

    move-result-object v3

    .line 83
    .local v3, decryptData:[B
    new-instance v1, Ltmsdkobf/cw;

    invoke-direct {v1}, Ltmsdkobf/cw;-><init>()V

    .line 84
    .local v1, attribute:Ltmsdkobf/cw;
    invoke-virtual {v1, v3}, Ltmsdkobf/cw;->b([B)V

    .line 85
    sget-object v12, Ltmsdkobf/an;->dX:Ltmsdkobf/an;

    invoke-virtual {v12}, Ltmsdkobf/an;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ltmsdkobf/am;

    invoke-direct {v13}, Ltmsdkobf/am;-><init>()V

    invoke-virtual {v1, v12, v13}, Ltmsdkobf/cw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ltmsdkobf/am;

    move-object v9, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 90
    .end local v1           #attribute:Ltmsdkobf/cw;
    .end local v3           #decryptData:[B
    :cond_2
    if-eqz v8, :cond_5

    .line 92
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    :goto_1
    const/4 v7, 0x0

    .end local v2           #data:[B
    .end local v5           #fh:Ltmsdkobf/jt;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    move-object v10, v9

    .line 100
    .end local v9           #infoList:Ltmsdkobf/am;
    .restart local v10       #infoList:Ltmsdkobf/am;
    goto :goto_0

    .line 93
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v10           #infoList:Ltmsdkobf/am;
    .restart local v2       #data:[B
    .restart local v5       #fh:Ltmsdkobf/jt;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v9       #infoList:Ltmsdkobf/am;
    :catch_0
    move-exception v4

    .line 94
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 87
    .end local v2           #data:[B
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #fh:Ltmsdkobf/jt;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 88
    .local v4, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    if-eqz v7, :cond_3

    .line 92
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 96
    .end local v4           #e:Ljava/lang/Exception;
    :goto_4
    const/4 v7, 0x0

    goto :goto_2

    .line 93
    .restart local v4       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 94
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 90
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v7, :cond_4

    .line 92
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 96
    :goto_6
    const/4 v7, 0x0

    :cond_4
    throw v12

    .line 93
    :catch_3
    move-exception v4

    .line 94
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 90
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 87
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v2       #data:[B
    .restart local v5       #fh:Ltmsdkobf/jt;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :cond_5
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private eC()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 190
    const/4 v4, 0x0

    .line 191
    .local v4, vpnField:Ljava/lang/String;
    invoke-direct {p0}, Ltmsdk/bg/module/network/f;->eD()Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, currentUsedFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v3, pppFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, currentField:Ljava/lang/String;
    const-string v5, "ppp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    .end local v0           #currentField:Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 200
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #vpnField:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 201
    .restart local v4       #vpnField:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 202
    invoke-direct {p0, v3}, Ltmsdk/bg/module/network/f;->j(Ljava/util/List;)V

    .line 208
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pppFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-object v4

    .line 205
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #pppFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #vpnField:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #vpnField:Ljava/lang/String;
    goto :goto_1
.end method

.method private eD()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .local v0, currentUsedFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0x3e8

    new-array v6, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ip route"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ltmsdk/common/utils/ScriptHelper;->runScript(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 257
    const-string v5, "dev\\s+([\\w]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 258
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 260
    .local v2, matcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, matched:Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 263
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    .end local v1           #matched:Ljava/lang/String;
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    :cond_1
    return-object v0
.end method

.method private j(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, pppFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ltmsdk/bg/module/network/f;->k(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, ipAddressInfos:Ljava/lang/String;
    const-string v2, "\n"

    const-string v3, ","

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IpAddr: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v2, p0, Ltmsdk/bg/module/network/f;->vQ:Ltmsdkobf/kf;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Ltmsdk/bg/module/network/f;->vQ:Ltmsdkobf/kf;

    sget-object v3, Ltmsdk/bg/module/network/f;->vM:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    :cond_0
    return-void
.end method

.method private k(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, fields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v2, ipAddresInfos:Ljava/lang/StringBuilder;
    const/16 v8, 0x3e8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "ip addr"

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ltmsdk/common/utils/ScriptHelper;->runScript(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    .local v0, field:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(?:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 234
    .end local v0           #field:Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 235
    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^\\d+:\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".*$\n*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(^[^\\d].*$\n*)*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    invoke-static {v8, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 237
    .local v5, p:Ljava/util/regex/Pattern;
    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 238
    .local v4, matcher:Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 239
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, matched:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 245
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #matched:Ljava/lang/String;
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    .end local v5           #p:Ljava/util/regex/Pattern;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public bU(Ljava/lang/String;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Ltmsdk/bg/module/network/f;->bW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltmsdk/bg/module/network/f;->vN:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Ltmsdk/bg/module/network/f;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bV(Ljava/lang/String;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Ltmsdk/bg/module/network/f;->bW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltmsdk/bg/module/network/f;->vO:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Ltmsdk/bg/module/network/f;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public eB()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ltmsdk/bg/module/network/f;->eA()Ltmsdkobf/am;

    move-result-object v0

    .line 144
    .local v0, list:Ltmsdkobf/am;
    invoke-direct {p0, v0}, Ltmsdk/bg/module/network/f;->a(Ltmsdkobf/am;)V

    .line 145
    return-void
.end method
