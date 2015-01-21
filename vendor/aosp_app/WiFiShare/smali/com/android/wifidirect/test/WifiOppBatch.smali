.class public Lcom/android/wifidirect/test/WifiOppBatch;
.super Ljava/lang/Object;
.source "WifiOppBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiOppBatch"

.field private static final V:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field public final mDestination:Landroid/bluetooth/BluetoothDevice;

.field public final mDirection:I

.field public mId:I

.field private mListener:Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;

.field private final mShares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/wifidirect/test/WifiOppShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mStatus:I

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mShares:Ljava/util/ArrayList;

    .line 78
    iget-wide v0, p2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTimestamp:J

    iput-wide v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mTimestamp:J

    .line 79
    iget v0, p2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    iput v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mDirection:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mStatus:I

    .line 84
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v0, "WifiOppBatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Batch created for info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method


# virtual methods
.method public addShare(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mListener:Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mListener:Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;

    iget v1, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-interface {v0, v1}, Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;->onShareAdded(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public cancelBatch()V
    .locals 5

    .prologue
    .line 130
    const-string v2, "WifiOppBatch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "batch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is canceled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mListener:Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mListener:Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;

    invoke-interface {v2}, Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;->onBatchCanceled()V

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 137
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 139
    .local v1, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    iget v2, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_2

    .line 140
    iget v2, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 141
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 143
    :cond_1
    const-string v2, "WifiOppBatch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel batch for info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    const/16 v4, 0x1ea

    invoke-static {v2, v3, v4}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 136
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 148
    .end local v1           #info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 149
    return-void
.end method

.method public deleteShare(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 110
    iget v0, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    .line 111
    const/16 v0, 0x1ea

    iput v0, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 112
    iget v0, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mListener:Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mListener:Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;

    iget v1, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-interface {v0, v1}, Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;->onShareDeleted(I)V

    .line 120
    :cond_1
    return-void
.end method

.method public getPendingShare()Lcom/android/wifidirect/test/WifiOppShareInfo;
    .locals 4

    .prologue
    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 179
    .local v1, share:Lcom/android/wifidirect/test/WifiOppShareInfo;
    iget v2, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    const/16 v3, 0xbe

    if-ne v2, v3, :cond_0

    .line 183
    .end local v1           #share:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :goto_1
    return-object v1

    .line 177
    .restart local v1       #share:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v1           #share:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasShare(Lcom/android/wifidirect/test/WifiOppShareInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListern(Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppBatch;->mListener:Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;

    .line 169
    return-void
.end method
