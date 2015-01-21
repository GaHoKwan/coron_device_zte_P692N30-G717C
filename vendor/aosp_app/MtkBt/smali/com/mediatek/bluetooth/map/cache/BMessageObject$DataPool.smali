.class public Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;
.super Ljava/lang/Object;
.source "BMessageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/cache/BMessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataPool"
.end annotation


# static fields
.field public static final FRAGMENT_THRESHOLD:I = 0x7fff


# instance fields
.field private final FRAGMENT_FILE_SUFFIX:Ljava/lang/String;

.field private isPoolEmpty:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentOffset:J

.field private mFileName:Ljava/lang/String;

.field private mFileNameBackup:Ljava/lang/String;

.field private mWholePoolSize:J

.field final synthetic this$0:Lcom/mediatek/bluetooth/map/cache/BMessageObject;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/cache/BMessageObject;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->this$0:Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "_backup"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->FRAGMENT_FILE_SUFFIX:Ljava/lang/String;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->isPoolEmpty:Z

    .line 102
    iput-object p2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mContext:Landroid/content/Context;

    .line 103
    iput-object p3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mFileName:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mFileNameBackup:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public isPoolEmpty()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->isPoolEmpty:Z

    return v0
.end method

.method public removeOneFragment()Z
    .locals 9

    .prologue
    const/16 v4, 0x7fff

    const/4 v3, 0x0

    .line 126
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->this$0:Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " removeOneFragment isPoolEmpty is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->isPoolEmpty:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->access$000(Lcom/mediatek/bluetooth/map/cache/BMessageObject;Ljava/lang/String;)V

    .line 127
    new-array v2, v4, [B

    .line 129
    .local v2, data:[B
    const/4 v7, 0x0

    .line 131
    .local v7, result:Z
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->isPoolEmpty:Z

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return v3

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->this$0:Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mFileNameBackup:Ljava/lang/String;

    iget-wide v5, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mCurrentOffset:J

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getContentAfterSkip(Ljava/lang/String;[BIIJ)I

    move-result v8

    .line 136
    .local v8, size:I
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->this$0:Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->access$000(Lcom/mediatek/bluetooth/map/cache/BMessageObject;Ljava/lang/String;)V

    .line 138
    if-lez v8, :cond_3

    .line 139
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->this$0:Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setContentToFile(Ljava/lang/String;[BII)Z

    move-result v7

    .line 140
    if-eqz v7, :cond_1

    .line 141
    iget-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mCurrentOffset:J

    int-to-long v3, v8

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mCurrentOffset:J

    .line 143
    :cond_1
    iget-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mCurrentOffset:J

    iget-wide v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mWholePoolSize:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->resetPool()V

    .line 150
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->this$0:Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentOffset is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mCurrentOffset:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->access$000(Lcom/mediatek/bluetooth/map/cache/BMessageObject;Ljava/lang/String;)V

    move v3, v7

    .line 151
    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->resetPool()V

    goto :goto_1
.end method

.method public resetPool()V
    .locals 3

    .prologue
    .line 159
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->isPoolEmpty:Z

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->isPoolEmpty:Z

    .line 163
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mCurrentOffset:J

    .line 164
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mFileNameBackup:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 165
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public saveDataToPool()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->this$0:Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " saveDataToPool isPoolEmpty is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->isPoolEmpty:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->access$000(Lcom/mediatek/bluetooth/map/cache/BMessageObject;Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 110
    .local v1, srcfile:Ljava/io/File;
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mFileNameBackup:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 111
    .local v0, destfile:Ljava/io/File;
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->this$0:Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getContentSize()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mWholePoolSize:J

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 115
    :cond_0
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->mCurrentOffset:J

    .line 116
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->isPoolEmpty:Z

    .line 118
    const/4 v2, 0x1

    .line 121
    :goto_0
    return v2

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->this$0:Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    const-string v4, "fail to renameTo "

    #calls: Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->access$000(Lcom/mediatek/bluetooth/map/cache/BMessageObject;Ljava/lang/String;)V

    goto :goto_0
.end method
