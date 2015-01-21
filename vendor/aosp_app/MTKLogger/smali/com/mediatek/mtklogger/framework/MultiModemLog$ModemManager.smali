.class Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
.super Ljava/lang/Object;
.source "MultiModemLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/MultiModemLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModemManager"
.end annotation


# instance fields
.field private MODEM_KEY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private connectionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;",
            ">;"
        }
    .end annotation
.end field

.field private logFolderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;


# direct methods
.method public constructor <init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;Landroid/os/Handler;)V
    .locals 5
    .parameter
    .parameter "handler"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 978
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->connectionMap:Landroid/util/SparseArray;

    .line 974
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->logFolderMap:Landroid/util/SparseArray;

    .line 976
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->MODEM_KEY_SET:Ljava/util/Set;

    .line 980
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "Just treat Modem1 as enabled, check later"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->MODEM_KEY_SET:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 982
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->connectionMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;

    const-string v2, "com.mediatek.mdlogger.socket"

    invoke-direct {v1, p1, v3, v2, p2}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;-><init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 983
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->logFolderMap:Landroid/util/SparseArray;

    const-string v1, "mdlog"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 986
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "Just treat Modem2 as enabled, check later"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->MODEM_KEY_SET:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->connectionMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;

    const-string v2, "com.mediatek.dualmdlogger.socket"

    invoke-direct {v1, p1, v4, v2, p2}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;-><init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 989
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->logFolderMap:Landroid/util/SparseArray;

    const-string v1, "dualmdlog"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 991
    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->stop()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 971
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmdToOneInstance(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;ILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 971
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 971
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->recycleLogFolder(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->initLogConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 971
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initLogConnection()Z
    .locals 7

    .prologue
    .line 999
    const/4 v0, 0x0

    .line 1000
    .local v0, connected:Z
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->MODEM_KEY_SET:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1001
    .local v3, key:I
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->connectionMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 1002
    .local v1, connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    invoke-static {v1}, Lcom/mediatek/mtklogger/framework/LogInstance;->initLogConnection(Lcom/mediatek/mtklogger/framework/LogConnection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1003
    const/4 v0, 0x1

    goto :goto_0

    .line 1005
    :cond_0
    const-string v4, "MTKLogger/MultiModemLog/ModemManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to init connection for modem ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    .end local v1           #connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    .end local v3           #key:I
    :cond_1
    const-string v4, "MTKLogger/MultiModemLog/ModemManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->initLogConnection(), connected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    return v0
.end method

.method private recycleLogFolder(ILjava/lang/String;)V
    .locals 5
    .parameter "logSize"
    .parameter "storageRootPath"

    .prologue
    .line 1095
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->MODEM_KEY_SET:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1096
    .local v2, key:I
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->connectionMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 1098
    .local v0, connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/LogConnection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1099
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->logFolderMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1100
    .local v3, logFolderName:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->getInstance()Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v3}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkAndClearLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1104
    .end local v0           #connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    .end local v2           #key:I
    .end local v3           #logFolderName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private sendCmd(ILjava/lang/String;)Z
    .locals 5
    .parameter "instanceIndex"
    .parameter "cmd"

    .prologue
    .line 1033
    const/4 v1, 0x0

    .line 1034
    .local v1, result:Z
    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->connectionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 1035
    .local v0, connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/LogConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1036
    :cond_0
    const-string v2, "MTKLogger/MultiModemLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send command to instance ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail, instance have not be initialized or already lost connection."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const/4 v2, 0x0

    .line 1045
    :goto_0
    return v2

    .line 1040
    :cond_1
    invoke-virtual {v0, p2}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1041
    const/4 v1, 0x1

    .line 1043
    :cond_2
    const-string v2, "MTKLogger/MultiModemLog/ModemManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->sendCmd(), instanceIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 1045
    goto :goto_0
.end method

.method private sendCmd(Ljava/lang/String;)Z
    .locals 7
    .parameter "cmd"

    .prologue
    .line 1014
    const/4 v3, 0x0

    .line 1015
    .local v3, result:Z
    const-string v4, "resume"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1016
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    const/4 v5, 0x0

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I
    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$302(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I

    .line 1018
    :cond_0
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->MODEM_KEY_SET:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1019
    .local v2, key:I
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->connectionMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 1020
    .local v0, connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/LogConnection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p1}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1021
    const/4 v3, 0x1

    .line 1022
    const-string v4, "resume"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1023
    const-string v4, "MTKLogger/MultiModemLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send resume command to MD"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mark it as running"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    invoke-static {v4, v2}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$376(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I

    goto :goto_0

    .line 1028
    .end local v0           #connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    .end local v2           #key:I
    :cond_2
    const-string v4, "MTKLogger/MultiModemLog/ModemManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<--sendCmd(), cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    return v3
.end method

.method private sendCmdToOneInstance(Ljava/lang/String;)Z
    .locals 7
    .parameter "cmd"

    .prologue
    .line 1055
    const/4 v3, 0x0

    .line 1056
    .local v3, result:Z
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->MODEM_KEY_SET:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1057
    .local v2, key:I
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->connectionMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 1058
    .local v0, connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/LogConnection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1059
    const/4 v3, 0x1

    .line 1063
    .end local v0           #connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    .end local v2           #key:I
    :cond_1
    const-string v4, "MTKLogger/MultiModemLog/ModemManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->sendCmdToOneInstance(), cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    return v3
.end method

.method private stop()V
    .locals 5

    .prologue
    .line 1085
    const-string v3, "MTKLogger/MultiModemLog/ModemManager"

    const-string v4, "-->stop()"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->MODEM_KEY_SET:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1087
    .local v2, key:I
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->connectionMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 1088
    .local v0, connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/LogConnection;->stop()V

    goto :goto_0

    .line 1090
    .end local v0           #connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    .end local v2           #key:I
    :cond_0
    return-void
.end method

.method private termOtherInstance(I)V
    .locals 6
    .parameter "selfType"

    .prologue
    .line 1075
    const-string v3, "MTKLogger/MultiModemLog/ModemManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->termOtherInstance(), selfType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->MODEM_KEY_SET:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1077
    .local v2, key:I
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->connectionMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 1078
    .local v0, connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/LogConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v2, p1, :cond_0

    .line 1079
    const-string v3, "pause"

    invoke-virtual {v0, v3}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    goto :goto_0

    .line 1082
    .end local v0           #connection:Lcom/mediatek/mtklogger/framework/LogConnection;
    .end local v2           #key:I
    :cond_1
    return-void
.end method
