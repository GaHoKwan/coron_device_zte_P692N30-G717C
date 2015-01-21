.class final Landroid/app/LoadedApk$ServiceDispatcher;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;,
        Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;,
        Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;,
        Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    }
.end annotation


# static fields
.field static mSmartShowContext:Landroid/content/SmartShowContext;


# instance fields
.field private final mActiveConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/os/Handler;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field mContextId:I

.field private mDied:Z

.field private final mFlags:I

.field private mForgotten:Z

.field private final mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

.field private final mLocation:Landroid/app/ServiceConnectionLeaked;

.field mTaskId:I

.field private mUnbindLocation:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 978
    const/4 v0, 0x0

    sput-object v0, Landroid/app/LoadedApk$ServiceDispatcher;->mSmartShowContext:Landroid/content/SmartShowContext;

    return-void
.end method

.method constructor <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2
    .parameter "conn"
    .parameter "context"
    .parameter "activityThread"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    .line 1001
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 979
    iput v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContextId:I

    .line 980
    iput v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mTaskId:I

    .line 997
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    .line 1002
    new-instance v0, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    invoke-direct {v0, p0}, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    .line 1003
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 1004
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    .line 1005
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 1006
    new-instance v0, Landroid/app/ServiceConnectionLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    .line 1007
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    invoke-virtual {v0}, Landroid/app/ServiceConnectionLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1008
    iput p4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:I

    .line 1009
    invoke-static {}, Landroid/content/SmartShowContextWrapper;->getDefaultContext()Landroid/content/SmartShowContextWrapper;

    move-result-object v0

    sput-object v0, Landroid/app/LoadedApk$ServiceDispatcher;->mSmartShowContext:Landroid/content/SmartShowContext;

    .line 1010
    sget-object v0, Landroid/app/LoadedApk$ServiceDispatcher;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v0}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v0

    iput v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContextId:I

    .line 1011
    sget-object v0, Landroid/app/LoadedApk$ServiceDispatcher;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v0}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v0

    iput v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mTaskId:I

    .line 1012
    return-void
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1066
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v1, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1071
    :goto_0
    return-void

    .line 1069
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public death(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x1

    .line 1076
    monitor-enter p0

    .line 1077
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mDied:Z

    .line 1078
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 1079
    .local v0, old:Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-eq v1, p2, :cond_1

    .line 1082
    :cond_0
    monitor-exit p0

    .line 1092
    :goto_0
    return-void

    .line 1084
    :cond_1
    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1085
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1088
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    invoke-direct {v2, p0, p1, p2, v4}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1085
    .end local v0           #old:Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1090
    .restart local v0       #old:Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1098
    sget-object v5, Landroid/app/LoadedApk$ServiceDispatcher;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v5}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v3

    .line 1099
    .local v3, oldContextId:I
    sget-object v5, Landroid/app/LoadedApk$ServiceDispatcher;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v5}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v4

    .line 1101
    .local v4, oldTaskId:I
    sget-object v5, Landroid/app/LoadedApk$ServiceDispatcher;->mSmartShowContext:Landroid/content/SmartShowContext;

    iget v6, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContextId:I

    iget v7, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mTaskId:I

    invoke-virtual {v5, v6, v7}, Landroid/content/SmartShowContext;->setContextAndTaskId(II)V

    .line 1103
    monitor-enter p0

    .line 1104
    :try_start_0
    iget-boolean v5, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mForgotten:Z

    if-eqz v5, :cond_0

    .line 1107
    sget-object v5, Landroid/app/LoadedApk$ServiceDispatcher;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v5, v3, v4}, Landroid/content/SmartShowContext;->setContextAndTaskId(II)V

    .line 1108
    monitor-exit p0

    .line 1155
    :goto_0
    return-void

    .line 1110
    :cond_0
    iget-object v5, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 1111
    .local v2, old:Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    if-eqz v2, :cond_1

    iget-object v5, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-ne v5, p2, :cond_1

    .line 1113
    sget-object v5, Landroid/app/LoadedApk$ServiceDispatcher;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v5, v3, v4}, Landroid/content/SmartShowContext;->setContextAndTaskId(II)V

    .line 1114
    monitor-exit p0

    goto :goto_0

    .line 1143
    .end local v2           #old:Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1117
    .restart local v2       #old:Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :cond_1
    if-eqz p2, :cond_5

    .line 1119
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mDied:Z

    .line 1120
    new-instance v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;-><init>(Landroid/app/LoadedApk$1;)V

    .line 1121
    .local v1, info:Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    iput-object p2, v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 1122
    new-instance v5, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;

    invoke-direct {v5, p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iput-object v5, v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1124
    :try_start_2
    iget-object v5, v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v6, 0x0

    invoke-interface {p2, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1125
    iget-object v5, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1140
    .end local v1           #info:Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :goto_1
    if-eqz v2, :cond_2

    .line 1141
    :try_start_3
    iget-object v5, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v6, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1143
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1146
    if-eqz v2, :cond_3

    .line 1147
    iget-object v5, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v5, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1150
    :cond_3
    if-eqz p2, :cond_4

    .line 1151
    iget-object v5, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v5, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1154
    :cond_4
    sget-object v5, Landroid/app/LoadedApk$ServiceDispatcher;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v5, v3, v4}, Landroid/content/SmartShowContext;->setContextAndTaskId(II)V

    goto :goto_0

    .line 1126
    .restart local v1       #info:Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :catch_0
    move-exception v0

    .line 1129
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    iget-object v5, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    sget-object v5, Landroid/app/LoadedApk$ServiceDispatcher;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v5, v3, v4}, Landroid/content/SmartShowContext;->setContextAndTaskId(II)V

    .line 1132
    monitor-exit p0

    goto :goto_0

    .line 1137
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #info:Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :cond_5
    iget-object v5, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1158
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1159
    return-void
.end method

.method doForget()V
    .locals 5

    .prologue
    .line 1030
    monitor-enter p0

    .line 1031
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1032
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1033
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 1034
    .local v0, ci:Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    iget-object v2, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 1038
    .end local v0           #ci:Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1036
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;>;"
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1037
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mForgotten:Z

    .line 1038
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    return-void
.end method

.method getFlags()I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:I

    return v0
.end method

.method getIServiceConnection()Landroid/app/IServiceConnection;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    return-object v0
.end method

.method getLocation()Landroid/app/ServiceConnectionLeaked;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    return-object v0
.end method

.method getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method getUnbindLocation()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method setUnbindLocation(Ljava/lang/RuntimeException;)V
    .locals 0
    .parameter "ex"

    .prologue
    .line 1058
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    .line 1059
    return-void
.end method

.method validate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "activityThread"

    .prologue
    .line 1015
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 1016
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing Context (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eq v0, p2, :cond_1

    .line 1022
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing handler (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_1
    return-void
.end method
