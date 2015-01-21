.class public Lcom/zte/retrieve/service/format/FormatStorageManager;
.super Ljava/lang/Object;
.source "FormatStorageManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMethodOfGetVolumeState:Ljava/lang/reflect/Method;

.field private mMethodOfGetVolumelist:Ljava/lang/reflect/Method;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mContext:Landroid/content/Context;

    .line 27
    iput-object v1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 28
    iput-object v1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mMethodOfGetVolumeState:Ljava/lang/reflect/Method;

    .line 29
    iput-object v1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mMethodOfGetVolumelist:Ljava/lang/reflect/Method;

    .line 32
    iput-object p1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mContext:Landroid/content/Context;

    .line 33
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mContext:Landroid/content/Context;

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumeState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mMethodOfGetVolumeState:Ljava/lang/reflect/Method;

    .line 36
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumeList"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mMethodOfGetVolumelist:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getExternalStorageDirectory()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 85
    :try_start_0
    iget-object v5, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mMethodOfGetVolumelist:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/storage/StorageVolume;

    .line 86
    .local v3, volumes:[Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_1

    .line 105
    .end local v3           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_0
    return-object v4

    .line 89
    .restart local v3       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    array-length v0, v3

    .line 90
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getExternalStorageDirectory find volumes i is"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 92
    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getExternalStorageDirectory removable i is"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",path is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 94
    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public getExternalStorageState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mMethodOfGetVolumeState:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 119
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 119
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const-string v1, "unmounted"

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 115
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public getVirtualStorageDirectory()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 44
    :try_start_0
    iget-object v5, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mMethodOfGetVolumelist:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/storage/StorageVolume;

    .line 45
    .local v3, volumes:[Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_1

    .line 66
    .end local v3           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_0
    return-object v4

    .line 48
    .restart local v3       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    array-length v0, v3

    .line 49
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getVirtualStorageDirectory find volumes i is"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 51
    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getVirtualStorageDirectory unremovable i is"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",path is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 55
    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    goto :goto_0

    .line 58
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 63
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVirtualStorageState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mMethodOfGetVolumeState:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/zte/retrieve/service/format/FormatStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getVirtualStorageDirectory()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 80
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const-string v1, "unmounted"

    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method
