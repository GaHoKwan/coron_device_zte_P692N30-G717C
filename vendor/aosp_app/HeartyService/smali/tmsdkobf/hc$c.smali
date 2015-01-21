.class final Ltmsdkobf/hc$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private pe:Ltmsdkobf/gu;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ltmsdkobf/gu;->bO()Ltmsdkobf/gu;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/hc$c;->pe:Ltmsdkobf/gu;

    return-void
.end method

.method synthetic constructor <init>(Ltmsdkobf/hc$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Ltmsdkobf/hc$c;-><init>()V

    return-void
.end method

.method private a(Ltmsdk/common/module/aresengine/SmsEntity;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 13
    .parameter "sms"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/hb;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ib;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, outInfos:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/hb;>;"
    iget-object v10, p0, Ltmsdkobf/hc$c;->pe:Ltmsdkobf/gu;

    invoke-virtual {v10}, Ltmsdkobf/gu;->bP()Ljava/util/ArrayList;

    move-result-object v3

    .line 124
    .local v3, clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ib;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v1, blocked_clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ib;>;"
    const/4 v9, 0x0

    .line 127
    .local v9, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ib;>;"
    new-instance v7, Ltmsdk/common/DataEntity;

    const/4 v10, 0x2

    invoke-direct {v7, v10}, Ltmsdk/common/DataEntity;-><init>(I)V

    .line 128
    .local v7, param:Ltmsdk/common/DataEntity;
    invoke-virtual {v7}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "sms"

    invoke-static {p1}, Ltmsdk/common/module/aresengine/SmsEntity;->marshall(Ltmsdk/common/module/aresengine/SmsEntity;)[B

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 131
    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_3

    .line 132
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/ib;

    .line 133
    .local v2, client:Ltmsdkobf/ib;
    invoke-interface {v2, v7}, Ltmsdkobf/ib;->sendMessage(Ltmsdk/common/DataEntity;)Ltmsdk/common/DataEntity;

    move-result-object v8

    .line 134
    .local v8, r:Ltmsdk/common/DataEntity;
    if-eqz v8, :cond_2

    .line 136
    invoke-virtual {v8}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "blocked"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 137
    .local v0, blocked:Z
    invoke-virtual {v8}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "information"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ltmsdkobf/hb;->aV(Ljava/lang/String;)Ltmsdkobf/hb;

    move-result-object v6

    .line 139
    .local v6, information:Ltmsdkobf/hb;
    if-eqz v6, :cond_0

    .line 140
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v0           #blocked:Z
    .end local v6           #information:Ltmsdkobf/hb;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 152
    .end local v2           #client:Ltmsdkobf/ib;
    .end local v5           #i:I
    .end local v8           #r:Ltmsdk/common/DataEntity;
    :catch_0
    move-exception v4

    .line 153
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 157
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_4

    .line 158
    move-object v9, v3

    .line 163
    :goto_2
    return-object v9

    .line 160
    :cond_4
    move-object v9, v1

    goto :goto_2
.end method

.method static synthetic a(Ltmsdkobf/hc$c;Ltmsdk/common/module/aresengine/SmsEntity;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ltmsdkobf/hc$c;->a(Ltmsdk/common/module/aresengine/SmsEntity;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 119
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Ltmsdk/common/module/aresengine/SmsEntity;Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .parameter "sms"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/ib;",
            ">;",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/hb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, clients:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/ib;>;"
    .local p3, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/hb;>;"
    new-instance v3, Ltmsdk/common/DataEntity;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ltmsdk/common/DataEntity;-><init>(I)V

    .line 169
    .local v3, data:Ltmsdk/common/DataEntity;
    invoke-virtual {v3}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v1

    .line 170
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "sms"

    invoke-static {p2}, Ltmsdk/common/module/aresengine/SmsEntity;->marshall(Ltmsdk/common/module/aresengine/SmsEntity;)[B

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 171
    invoke-direct {p0, p1}, Ltmsdkobf/hc$c;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, bestpkg:Ljava/lang/String;
    const-string v6, "event_sender"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v6, "informations"

    invoke-static {p3}, Ltmsdkobf/hb;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/ib;

    .line 177
    .local v2, client:Ltmsdkobf/ib;
    invoke-interface {v2, v3}, Ltmsdkobf/ib;->sendMessage(Ltmsdk/common/DataEntity;)Ltmsdk/common/DataEntity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v2           #client:Ltmsdkobf/ib;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 180
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 182
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method static synthetic a(Ltmsdkobf/hc$c;Ljava/util/List;Ltmsdk/common/module/aresengine/SmsEntity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Ltmsdkobf/hc$c;->a(Ljava/util/List;Ltmsdk/common/module/aresengine/SmsEntity;Ljava/util/ArrayList;)V

    return-void
.end method

.method private d(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/ib;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, clients:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/ib;>;"
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, result:Ljava/lang/String;
    new-instance v1, Ltmsdk/common/DataEntity;

    const/4 v6, 0x4

    invoke-direct {v1, v6}, Ltmsdk/common/DataEntity;-><init>(I)V

    .line 190
    .local v1, data:Ltmsdk/common/DataEntity;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/ib;

    .line 191
    .local v0, client:Ltmsdkobf/ib;
    invoke-interface {v0, v1}, Ltmsdkobf/ib;->sendMessage(Ltmsdk/common/DataEntity;)Ltmsdk/common/DataEntity;

    move-result-object v4

    .line 192
    .local v4, reply:Ltmsdk/common/DataEntity;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "support_this_phone"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    invoke-virtual {v4}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "pkg"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 201
    .end local v0           #client:Ltmsdkobf/ib;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #reply:Ltmsdk/common/DataEntity;
    :cond_1
    :goto_0
    return-object v5

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public varargs c(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)Z
    .locals 5
    .parameter "sms"
    .parameter "objects"

    .prologue
    const/4 v1, 0x0

    .line 87
    aget-object v0, p2, v1

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 89
    .local v0, receiver:Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Ltmsdkobf/hc$c;->pe:Ltmsdkobf/gu;

    invoke-virtual {v2}, Ltmsdkobf/gu;->bQ()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 110
    :goto_0
    return v1

    .line 93
    :cond_0
    invoke-direct {p0, v0}, Ltmsdkobf/hc$c;->a(Landroid/content/BroadcastReceiver;)V

    .line 96
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v2

    new-instance v3, Ltmsdkobf/hc$c$1;

    invoke-direct {v3, p0, p1}, Ltmsdkobf/hc$c$1;-><init>(Ltmsdkobf/hc$c;Ltmsdk/common/module/aresengine/SmsEntity;)V

    const-string v4, "onCallingNotifyDataReachedThread"

    invoke-virtual {v2, v3, v4}, Ltmsdkobf/ij;->b(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method
