.class public final Ltmsdkobf/kj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/ig$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/kj$a;
    }
.end annotation


# static fields
.field private static volatile yp:Ltmsdkobf/kj;

.field private static final yq:[Ljava/lang/String;


# instance fields
.field private yr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/ka;",
            ">;"
        }
    .end annotation
.end field

.field private ys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/kj$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "phone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "phone1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "phone2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "phoneEX"

    aput-object v2, v0, v1

    sput-object v0, Ltmsdkobf/kj;->yq:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdkobf/kj;->yr:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltmsdkobf/kj;->ys:Ljava/util/List;

    .line 170
    invoke-direct {p0}, Ltmsdkobf/kj;->fi()Z

    .line 171
    return-void
.end method

.method private a(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 292
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 293
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Ltmsdkobf/kj;->fj()Ljava/util/List;

    move-result-object v2

    .line 294
    .local v2, phoneServices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 295
    .local v4, serviceName:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 296
    .local v3, service:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v6, v3, Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_0

    move-object v5, v3

    .line 297
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 298
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 301
    .end local v3           #service:Ljava/lang/Object;
    .end local v4           #serviceName:Ljava/lang/String;
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method

.method public static declared-synchronized fh()Ltmsdkobf/kj;
    .locals 2

    .prologue
    .line 157
    const-class v1, Ltmsdkobf/kj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/kj;->yp:Ltmsdkobf/kj;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ltmsdkobf/kj;

    invoke-direct {v0}, Ltmsdkobf/kj;-><init>()V

    sput-object v0, Ltmsdkobf/kj;->yp:Ltmsdkobf/kj;

    .line 161
    :cond_0
    sget-object v0, Ltmsdkobf/kj;->yp:Ltmsdkobf/kj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private fi()Z
    .locals 6

    .prologue
    .line 175
    iget-object v3, p0, Ltmsdkobf/kj;->yr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 177
    iget-object v4, p0, Ltmsdkobf/kj;->yr:Ljava/util/List;

    monitor-enter v4

    .line 179
    :try_start_0
    iget-object v3, p0, Ltmsdkobf/kj;->yr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 180
    invoke-static {}, Ltmsdkobf/kj;->fj()Ljava/util/List;

    move-result-object v2

    .line 181
    .local v2, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Ltmsdkobf/kj;->yr:Ljava/util/List;

    new-instance v5, Ltmsdkobf/kb;

    invoke-direct {v5, v1}, Ltmsdkobf/kb;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_1
    iget-object v3, p0, Ltmsdkobf/kj;->yr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static final fj()Ljava/util/List;
    .locals 7
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
    .line 237
    sget-object v0, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 238
    .local v0, adapter:Ltmsdkobf/lm;
    if-nez v0, :cond_2

    const/4 v5, 0x0

    .line 239
    .local v5, serviceNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-nez v5, :cond_0

    .line 240
    sget-object v6, Ltmsdkobf/kj;->yq:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 243
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v2, checkedServiceNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 245
    .local v4, name:Ljava/lang/String;
    invoke-static {v4}, Ltmsdkobf/ki;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 246
    .local v1, binder:Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v2           #checkedServiceNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #serviceNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0}, Ltmsdkobf/lm;->gt()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 251
    .restart local v2       #checkedServiceNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #serviceNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-object v2
.end method


# virtual methods
.method public cancelMissedCallsNotification()V
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Ltmsdkobf/kj;->fi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Ltmsdkobf/kj;->yr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 209
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ka;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ka;

    invoke-interface {v1}, Ltmsdkobf/ka;->cancelMissedCallsNotification()V

    goto :goto_0

    .line 213
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ka;>;"
    :cond_0
    return-void
.end method

.method public endCall()Z
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Ltmsdkobf/kj;->fi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Ltmsdkobf/kj;->yr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 221
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ka;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ka;

    invoke-interface {v1}, Ltmsdkobf/ka;->endCall()Z

    goto :goto_0

    .line 224
    :cond_0
    const/4 v1, 0x1

    .line 226
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ka;>;"
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handleSdkContextEvent(I)V
    .locals 4
    .parameter "event"

    .prologue
    .line 305
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 307
    const-string v2, "TelephonyProxy"

    const-string v3, "Re-register phone states"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    iget-object v2, p0, Ltmsdkobf/kj;->yr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 309
    invoke-direct {p0}, Ltmsdkobf/kj;->fi()Z

    .line 310
    iget-object v2, p0, Ltmsdkobf/kj;->ys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/kj$a;

    .line 311
    .local v1, info:Ltmsdkobf/kj$a;
    iget-object v2, v1, Ltmsdkobf/kj$a;->wZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneStateListener;

    iget v3, v1, Ltmsdkobf/kj$a;->xa:I

    invoke-direct {p0, v2, v3}, Ltmsdkobf/kj;->a(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 314
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Ltmsdkobf/kj$a;
    :cond_0
    return-void
.end method
