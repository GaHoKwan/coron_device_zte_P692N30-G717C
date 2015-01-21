.class public Lcom/mediatek/filemanager/MountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/filemanager/MountReceiver$MountListener;
    }
.end annotation


# static fields
.field private static final INTENT_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final TAG:Ljava/lang/String; = "MountReceiver"


# instance fields
.field private final mMountListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/filemanager/MountReceiver$MountListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    .line 95
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/MountReceiver;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    .line 96
    return-void
.end method

.method public static registerMountReceiver(Landroid/content/Context;)Lcom/mediatek/filemanager/MountReceiver;
    .locals 4
    .parameter "context"

    .prologue
    .line 161
    new-instance v2, Lcom/mediatek/filemanager/MountReceiver;

    invoke-direct {v2}, Lcom/mediatek/filemanager/MountReceiver;-><init>()V

    .line 163
    .local v2, receiver:Lcom/mediatek/filemanager/MountReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkSDSwapSurpported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v1, intentFilterSDSwap:Landroid/content/IntentFilter;
    const-string v3, "com.mediatek.SD_SWAP"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    .end local v1           #intentFilterSDSwap:Landroid/content/IntentFilter;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, action:Ljava/lang/String;
    const/4 v3, 0x0

    .line 116
    .local v3, mountPoint:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 117
    .local v4, mountPointUri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 120
    :cond_0
    const-string v5, "MountReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mountPoint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v5, "com.mediatek.SD_SWAP"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/filemanager/MountReceiver$MountListener;

    .line 124
    .local v2, listener:Lcom/mediatek/filemanager/MountReceiver$MountListener;
    const-string v5, "MountReceiver"

    const-string v6, "onReceive,handle SD_SWAP "

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-interface {v2}, Lcom/mediatek/filemanager/MountReceiver$MountListener;->onSdSwap()V

    goto :goto_0

    .line 127
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/mediatek/filemanager/MountReceiver$MountListener;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    if-eqz v3, :cond_3

    if-nez v4, :cond_4

    .line 151
    :cond_3
    return-void

    .line 134
    :cond_4
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 137
    iget-object v5, p0, Lcom/mediatek/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/filemanager/MountReceiver$MountListener;

    .line 138
    .restart local v2       #listener:Lcom/mediatek/filemanager/MountReceiver$MountListener;
    invoke-interface {v2, v3}, Lcom/mediatek/filemanager/MountReceiver$MountListener;->onMounted(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/mediatek/filemanager/MountReceiver$MountListener;
    :cond_5
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 141
    iget-object v5, p0, Lcom/mediatek/filemanager/MountReceiver;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/mediatek/filemanager/MountPointManager;->changeMountState(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    iget-object v5, p0, Lcom/mediatek/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/filemanager/MountReceiver$MountListener;

    .line 143
    .restart local v2       #listener:Lcom/mediatek/filemanager/MountReceiver$MountListener;
    invoke-interface {v2, v3}, Lcom/mediatek/filemanager/MountReceiver$MountListener;->onUnMounted(Ljava/lang/String;)V

    goto :goto_2

    .line 146
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/mediatek/filemanager/MountReceiver$MountListener;
    :cond_6
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 147
    iget-object v5, p0, Lcom/mediatek/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/filemanager/MountReceiver$MountListener;

    .line 148
    .restart local v2       #listener:Lcom/mediatek/filemanager/MountReceiver$MountListener;
    invoke-interface {v2, v3}, Lcom/mediatek/filemanager/MountReceiver$MountListener;->onEjected(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public registerMountListener(Lcom/mediatek/filemanager/MountReceiver$MountListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public unregisterMountListener(Lcom/mediatek/filemanager/MountReceiver$MountListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method
