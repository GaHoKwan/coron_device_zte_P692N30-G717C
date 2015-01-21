.class public abstract Ltmsdk/common/TMSService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/TMSService$TipsReceiver;
    }
.end annotation


# static fields
.field private static final xn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ltmsdk/common/BaseService;",
            ">;"
        }
    .end annotation
.end field

.field private static final xo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/BaseServiceConnection;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private vQ:Ltmsdkobf/kf;

.field private xp:Ltmsdk/common/TMSService$TipsReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltmsdk/common/TMSService;->xn:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltmsdk/common/TMSService;->xo:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    return-void
.end method

.method public static bindService(Ljava/lang/Class;Ltmsdk/common/BaseServiceConnection;)Landroid/os/IBinder;
    .locals 5
    .parameter
    .parameter "connection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ltmsdk/common/BaseService;",
            ">;",
            "Ltmsdk/common/BaseServiceConnection;",
            ")",
            "Landroid/os/IBinder;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, claxx:Ljava/lang/Class;,"Ljava/lang/Class<+Ltmsdk/common/BaseService;>;"
    const-class v4, Ltmsdk/common/BaseService;

    monitor-enter v4

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, binder:Landroid/os/IBinder;
    :try_start_0
    sget-object v3, Ltmsdk/common/TMSService;->xn:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/common/BaseService;

    .line 240
    .local v1, service:Ltmsdk/common/BaseService;
    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {v1}, Ltmsdk/common/BaseService;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 242
    sget-object v3, Ltmsdk/common/TMSService;->xo:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 243
    .local v2, serviceCons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/BaseServiceConnection;>;"
    if-nez v2, :cond_0

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #serviceCons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/BaseServiceConnection;>;"
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .restart local v2       #serviceCons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/BaseServiceConnection;>;"
    sget-object v3, Ltmsdk/common/TMSService;->xo:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v2           #serviceCons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/BaseServiceConnection;>;"
    :cond_1
    monitor-exit v4

    return-object v0

    .line 251
    .end local v1           #service:Ltmsdk/common/BaseService;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static startService(Ltmsdk/common/BaseService;)Ltmsdk/common/BaseService;
    .locals 1
    .parameter "service"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ltmsdk/common/TMSService;->startService(Ltmsdk/common/BaseService;Landroid/content/Intent;)Ltmsdk/common/BaseService;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Ltmsdk/common/BaseService;Landroid/content/Intent;)Ltmsdk/common/BaseService;
    .locals 3
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 177
    const-class v1, Ltmsdk/common/BaseService;

    monitor-enter v1

    .line 178
    :try_start_0
    sget-object v0, Ltmsdk/common/TMSService;->xn:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Ltmsdk/common/TMSService;->xn:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/BaseService;

    invoke-virtual {v0, p1}, Ltmsdk/common/BaseService;->onStart(Landroid/content/Intent;)V

    .line 185
    :goto_0
    monitor-exit v1

    return-object p0

    .line 181
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdk/common/BaseService;->onCreate(Landroid/content/Context;)V

    .line 182
    invoke-virtual {p0, p1}, Ltmsdk/common/BaseService;->onStart(Landroid/content/Intent;)V

    .line 183
    sget-object v0, Ltmsdk/common/TMSService;->xn:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static stopService(Ljava/lang/Class;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ltmsdk/common/BaseService;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, claxx:Ljava/lang/Class;,"Ljava/lang/Class<+Ltmsdk/common/BaseService;>;"
    const/4 v2, 0x1

    .line 204
    const-class v3, Ltmsdk/common/BaseService;

    monitor-enter v3

    .line 205
    :try_start_0
    sget-object v4, Ltmsdk/common/TMSService;->xn:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    sget-object v4, Ltmsdk/common/TMSService;->xo:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 207
    .local v0, serviceCons:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/BaseServiceConnection;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 208
    :cond_0
    sget-object v4, Ltmsdk/common/TMSService;->xn:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/common/BaseService;

    .line 209
    .local v1, theService:Ltmsdk/common/BaseService;
    invoke-virtual {v1}, Ltmsdk/common/BaseService;->onDestory()V

    .line 210
    sget-object v4, Ltmsdk/common/TMSService;->xn:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v4, Ltmsdk/common/TMSService;->xo:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    monitor-exit v3

    .line 217
    .end local v0           #serviceCons:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/BaseServiceConnection;>;"
    .end local v1           #theService:Ltmsdk/common/BaseService;
    :goto_0
    return v2

    .line 214
    .restart local v0       #serviceCons:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/BaseServiceConnection;>;"
    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 218
    .end local v0           #serviceCons:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/BaseServiceConnection;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 217
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized stopService(Ltmsdk/common/BaseService;)Z
    .locals 2
    .parameter "service"

    .prologue
    .line 227
    const-class v1, Ltmsdk/common/TMSService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ltmsdk/common/TMSService;->stopService(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unBindService(Ljava/lang/Class;Ltmsdk/common/BaseServiceConnection;)V
    .locals 3
    .parameter
    .parameter "connection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ltmsdk/common/BaseService;",
            ">;",
            "Ltmsdk/common/BaseServiceConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, claxx:Ljava/lang/Class;,"Ljava/lang/Class<+Ltmsdk/common/BaseService;>;"
    const-class v2, Ltmsdk/common/BaseService;

    monitor-enter v2

    .line 261
    :try_start_0
    sget-object v1, Ltmsdk/common/TMSService;->xo:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 262
    .local v0, serviceCons:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/BaseServiceConnection;>;"
    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 265
    :cond_0
    monitor-exit v2

    .line 266
    return-void

    .line 265
    .end local v0           #serviceCons:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/BaseServiceConnection;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 84
    invoke-static {}, Ltmsdkobf/if;->cK()Ltmsdkobf/if;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 99
    sget-object v1, Ltmsdk/common/TMSService;->xn:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 100
    sget-object v1, Ltmsdk/common/TMSService;->xo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 101
    new-instance v1, Ltmsdkobf/kf;

    const-string v2, "wup"

    invoke-direct {v1, v2}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ltmsdk/common/TMSService;->vQ:Ltmsdkobf/kf;

    .line 103
    new-instance v1, Ltmsdk/common/TMSService$TipsReceiver;

    invoke-direct {v1, p0}, Ltmsdk/common/TMSService$TipsReceiver;-><init>(Ltmsdk/common/TMSService;)V

    iput-object v1, p0, Ltmsdk/common/TMSService;->xp:Ltmsdk/common/TMSService$TipsReceiver;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "action_verify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "action_direct_verify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Ltmsdk/common/TMSService;->xp:Ltmsdk/common/TMSService$TipsReceiver;

    invoke-virtual {p0, v1, v0}, Ltmsdk/common/TMSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-static {}, Ltmsdkobf/ku;->fy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Ltmsdkobf/lz;->hm()Ltmsdkobf/lz;

    move-result-object v1

    invoke-static {v1}, Ltmsdkobf/ly;->a(Ltmsdkobf/mf;)V

    .line 112
    invoke-static {}, Ltmsdkobf/ly;->hl()V

    .line 114
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 155
    const-class v3, Ltmsdk/common/BaseService;

    monitor-enter v3

    .line 157
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Ltmsdk/common/TMSService;->xn:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/common/BaseService;

    .line 158
    .local v1, service:Ltmsdk/common/BaseService;
    invoke-virtual {v1}, Ltmsdk/common/BaseService;->onDestory()V

    goto :goto_0

    .line 161
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #service:Ltmsdk/common/BaseService;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 160
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    sget-object v2, Ltmsdk/common/TMSService;->xn:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 161
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    sget-object v2, Ltmsdk/common/TMSService;->xo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 167
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 168
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 120
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 123
    .local v0, action:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 124
    const-string v6, "com.tencent.tmsecure.action.SKIP_SMS_RECEIVED_EVENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    new-instance v5, Ltmsdk/common/DataEntity;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ltmsdk/common/DataEntity;-><init>(I)V

    .line 127
    .local v5, entity:Ltmsdk/common/DataEntity;
    const-string v6, "command"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, commond:Ljava/lang/String;
    const-string v6, "data"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, data:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {v5}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v1

    .line 133
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "command"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v6, "data"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Ltmsdkobf/if;->cK()Ltmsdkobf/if;

    move-result-object v6

    invoke-virtual {v6, v5}, Ltmsdkobf/if;->sendMessage(Ltmsdk/common/DataEntity;)Ltmsdk/common/DataEntity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #commond:Ljava/lang/String;
    .end local v3           #data:Ljava/lang/String;
    .end local v5           #entity:Ltmsdk/common/DataEntity;
    :cond_0
    :goto_1
    return-void

    .line 120
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #commond:Ljava/lang/String;
    .restart local v3       #data:Ljava/lang/String;
    .restart local v5       #entity:Ltmsdk/common/DataEntity;
    :catch_0
    move-exception v4

    .line 138
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 140
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 150
    const/4 v0, 0x1

    return v0
.end method
