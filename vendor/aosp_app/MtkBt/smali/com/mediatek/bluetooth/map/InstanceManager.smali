.class Lcom/mediatek/bluetooth/map/InstanceManager;
.super Ljava/lang/Object;
.source "InstanceManager.java"


# static fields
.field private static mManager:Lcom/mediatek/bluetooth/map/InstanceManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInstances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/bluetooth/map/Instance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "MAP InstanceManager"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    return-void
.end method

.method private createInstance(I)Lcom/mediatek/bluetooth/map/Instance;
    .locals 3
    .parameter "slotId"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, type:I
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getDefaultSlot()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 88
    or-int/lit8 v0, v0, 0x4

    .line 91
    :cond_0
    or-int/lit8 v0, v0, 0x8

    .line 92
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-static {p1}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getGeminiSmsType(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 97
    :goto_0
    new-instance v1, Lcom/mediatek/bluetooth/map/Instance;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p1}, Lcom/mediatek/bluetooth/map/Instance;-><init>(Landroid/content/Context;II)V

    return-object v1

    .line 95
    :cond_1
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getSmsType()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getDefaultManager(Landroid/content/Context;)Lcom/mediatek/bluetooth/map/InstanceManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    const-class v1, Lcom/mediatek/bluetooth/map/InstanceManager;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/mediatek/bluetooth/map/InstanceManager;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/mediatek/bluetooth/map/InstanceManager;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/map/InstanceManager;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/map/InstanceManager;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/mediatek/bluetooth/map/InstanceManager;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/InstanceManager;->init(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x0

    monitor-exit v1

    .line 67
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/mediatek/bluetooth/map/InstanceManager;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    monitor-exit v1

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mContext:Landroid/content/Context;

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    const-string v0, "MAP InstanceManager"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public generateInstances(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/bluetooth/map/Instance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getTotalSlotCount()I

    move-result v1

    .line 79
    .local v1, slotCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 80
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/InstanceManager;->createInstance(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getAllInstances()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/bluetooth/map/Instance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 5

    .prologue
    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 239
    .local v0, devices:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 240
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/map/Instance;

    .line 241
    .local v2, instance:Lcom/mediatek/bluetooth/map/Instance;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instance device is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Instance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Instance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/InstanceManager;->log(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Instance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_1
    const-string v3, "null"

    goto :goto_1

    .line 246
    .end local v2           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/bluetooth/BluetoothDevice;

    return-object v3
.end method

.method public getEmailAccount()J
    .locals 4

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/Instance;

    .line 141
    .local v1, instance:Lcom/mediatek/bluetooth/map/Instance;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/Instance;->isMsgTypeSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/Instance;->getAccountId()J

    move-result-wide v2

    .line 145
    .end local v1           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :goto_1
    return-wide v2

    .line 139
    .restart local v1       #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public getInstanceByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/ArrayList;
    .locals 4
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/bluetooth/map/Instance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v2, instanceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Instance;>;"
    if-nez p1, :cond_1

    .line 212
    :cond_0
    return-object v2

    .line 204
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/Instance;

    .line 208
    .local v1, instance:Lcom/mediatek/bluetooth/map/Instance;
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/Instance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;
    .locals 3
    .parameter "id"

    .prologue
    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/Instance;

    .line 192
    .local v1, instance:Lcom/mediatek/bluetooth/map/Instance;
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/Instance;->getInstanceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 196
    .end local v1           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :goto_1
    return-object v1

    .line 190
    .restart local v1       #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v1           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSims()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 149
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mContext:Landroid/content/Context;

    const-string v4, "BLUETOOTH_MAP_SETTING"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 150
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getTotalSlotCount()I

    move-result v3

    new-array v1, v3, [I

    .line 151
    .local v1, sims:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM_ID_SETTING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    aput v0, v1, v0

    .line 151
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const/4 v3, -0x1

    aput v3, v1, v0

    goto :goto_1

    .line 158
    :cond_1
    return-object v1
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/map/InstanceManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 222
    if-nez p1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v2

    .line 226
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/Instance;

    .line 229
    .local v1, instance:Lcom/mediatek/bluetooth/map/Instance;
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/Instance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    const/4 v2, 0x1

    goto :goto_0

    .line 226
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public registerSim(I)Z
    .locals 5
    .parameter "simid"

    .prologue
    const/4 v4, 0x1

    .line 101
    const-string v2, "registerSim"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->log(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/Instance;

    .line 104
    .local v1, instance:Lcom/mediatek/bluetooth/map/Instance;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instance.getSimId()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/Instance;->getSimId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->log(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/Instance;->getSimId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 106
    invoke-virtual {v1, v4}, Lcom/mediatek/bluetooth/map/Instance;->enableSim(Z)Z

    .line 110
    .end local v1           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_0
    return v4

    .line 102
    .restart local v1       #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized removeAllInstances()V
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    const-string v0, "removeAllInstances()"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/InstanceManager;->log(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeInstance(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeInstance():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->log(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/Instance;

    .line 180
    .local v1, instance:Lcom/mediatek/bluetooth/map/Instance;
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/Instance;->getInstanceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 181
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v1           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_0
    monitor-exit p0

    return-void

    .line 178
    .restart local v1       #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0           #i:I
    .end local v1           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public replaceAccount(J)Z
    .locals 4
    .parameter "account"

    .prologue
    const/4 v3, 0x4

    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/Instance;

    .line 130
    .local v1, instance:Lcom/mediatek/bluetooth/map/Instance;
    invoke-virtual {v1, v3}, Lcom/mediatek/bluetooth/map/Instance;->isMsgTypeSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v1, v3, p1, p2}, Lcom/mediatek/bluetooth/map/Instance;->updateMessageController(IJ)Z

    .line 135
    .end local v1           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 127
    .restart local v1       #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterSim(I)Z
    .locals 3
    .parameter "simid"

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/InstanceManager;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/Instance;

    .line 118
    .local v1, instance:Lcom/mediatek/bluetooth/map/Instance;
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/Instance;->getSimId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 119
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/Instance;->disableSim()V

    .line 123
    .end local v1           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 115
    .restart local v1       #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
