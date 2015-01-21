.class public Lcom/android/providers/media/DrmHelper;
.super Ljava/lang/Object;
.source "DrmHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaProvider/DrmHelper"

.field private static sCurrentProcesses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sPermitedProcessNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isPermitedAccessDrm(Landroid/content/Context;I)Z
    .locals 12
    .parameter "context"
    .parameter "pid"

    .prologue
    .line 34
    const-class v9, Lcom/android/providers/media/DrmHelper;

    monitor-enter v9

    const/4 v5, 0x0

    .line 35
    .local v5, result:Ljava/lang/Boolean;
    :try_start_0
    sget-object v8, Lcom/android/providers/media/DrmHelper;->sCurrentProcesses:Ljava/util/HashMap;

    if-nez v8, :cond_1

    .line 36
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/android/providers/media/DrmHelper;->sCurrentProcesses:Ljava/util/HashMap;

    .line 41
    :goto_0
    if-nez v5, :cond_3

    .line 42
    const-string v8, "MediaProvider/DrmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "permitAccessDrm("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") can not get result!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v8, Lcom/android/providers/media/DrmHelper;->sPermitedProcessNames:Ljava/util/Set;

    if-nez v8, :cond_0

    .line 45
    invoke-static {}, Lcom/android/providers/media/DrmHelper;->setDefaultProcessNames()V

    .line 47
    :cond_0
    sget-object v8, Lcom/android/providers/media/DrmHelper;->sCurrentProcesses:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 48
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 49
    .local v2, am:Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 50
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 51
    .local v7, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 52
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 53
    .local v6, runInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    sget-object v8, Lcom/android/providers/media/DrmHelper;->sPermitedProcessNames:Ljava/util/Set;

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 54
    .local v1, allow:Z
    sget-object v8, Lcom/android/providers/media/DrmHelper;->sCurrentProcesses:Ljava/util/HashMap;

    iget v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v8, "MediaProvider/DrmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", allow="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 38
    .end local v1           #allow:Z
    .end local v2           #am:Landroid/app/ActivityManager;
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6           #runInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7           #size:I
    :cond_1
    sget-object v8, Lcom/android/providers/media/DrmHelper;->sCurrentProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    goto/16 :goto_0

    .line 57
    .restart local v2       #am:Landroid/app/ActivityManager;
    .restart local v3       #i:I
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v7       #size:I
    :cond_2
    sget-object v8, Lcom/android/providers/media/DrmHelper;->sCurrentProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    .line 58
    if-nez v5, :cond_3

    .line 59
    const-string v8, "MediaProvider/DrmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not get current pid\'s access drm info! pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/providers/media/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/4 v8, 0x1

    .line 66
    .end local v2           #am:Landroid/app/ActivityManager;
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v7           #size:I
    :goto_2
    monitor-exit v9

    return v8

    .line 63
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_4

    .line 64
    const-string v8, "MediaProvider/DrmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "permitAccessDrm("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    goto :goto_2

    .line 34
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private static setDefaultProcessNames()V
    .locals 3

    .prologue
    .line 92
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.music"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.gallery"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.gallery:CropImage"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.cooliris.media"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.process.media"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.mediatek.videoplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.mediatek.videoplayer2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.gallery3d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.gallery3d:crop"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.deskclock"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "system"

    aput-object v2, v0, v1

    .line 107
    .local v0, permitedProcessNames:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/media/DrmHelper;->setPermitedProcessNames([Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static declared-synchronized setPermitedProcessNames([Ljava/lang/String;)V
    .locals 6
    .parameter "permitedProcessNames"

    .prologue
    .line 75
    const-class v3, Lcom/android/providers/media/DrmHelper;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/providers/media/DrmHelper;->sPermitedProcessNames:Ljava/util/Set;

    if-nez v2, :cond_1

    .line 76
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/providers/media/DrmHelper;->sPermitedProcessNames:Ljava/util/Set;

    .line 80
    :goto_0
    if-nez p0, :cond_2

    .line 81
    const-string v2, "MediaProvider/DrmHelper"

    const-string v4, "setPermitedProcessNames() none permited access drm process!"

    invoke-static {v2, v4}, Lcom/android/providers/media/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit v3

    return-void

    .line 78
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/providers/media/DrmHelper;->sPermitedProcessNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 83
    :cond_2
    :try_start_2
    array-length v1, p0

    .line 84
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 85
    sget-object v2, Lcom/android/providers/media/DrmHelper;->sPermitedProcessNames:Ljava/util/Set;

    aget-object v4, p0, v0

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v2, "MediaProvider/DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPermitedProcessNames() add ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
