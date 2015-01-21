.class Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;
.super Ljava/lang/Thread;
.source "BipInitEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bip/BipInitEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertTaskThread"
.end annotation


# instance fields
.field public remoteDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/mediatek/bluetooth/bip/BipInitEntry;

.field public uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/bip/BipInitEntry;Ljava/util/ArrayList;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter
    .parameter
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/bluetooth/BluetoothDevice;",
            ")V"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, tmpUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;->this$0:Lcom/mediatek/bluetooth/bip/BipInitEntry;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;->uris:Ljava/util/ArrayList;

    .line 192
    iput-object p3, p0, Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 193
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, num:I
    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 199
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "BipInitEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;->this$0:Lcom/mediatek/bluetooth/bip/BipInitEntry;

    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    #calls: Lcom/mediatek/bluetooth/bip/BipInitEntry;->bipiInsert(Landroid/net/Uri;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v4, v3, v5}, Lcom/mediatek/bluetooth/bip/BipInitEntry;->access$000(Lcom/mediatek/bluetooth/bip/BipInitEntry;Landroid/net/Uri;Landroid/bluetooth/BluetoothDevice;)V

    .line 201
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_0
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    const/4 v2, 0x0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "BipInitEntry"

    const-string v5, "Sleep error"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method
