.class public Lcom/zte/update/data/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Lcom/zte/update/data/IStorageInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/data/DownloadInfo$1;,
        Lcom/zte/update/data/DownloadInfo$Data;
    }
.end annotation


# static fields
.field public static final INSTALL_TYPE_BSPATCH:I = 0x66

.field public static final INSTALL_TYPE_SILENT:I = 0x64

.field public static final INSTALL_TYPE_SYSTEM:I = 0x65

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_INSTALLING:I = 0xe

.field public static final STATUS_INSTALL_FAIL:I = 0x10

.field public static final STATUS_INSTALL_FINISH:I = 0x5

.field public static final STATUS_INTERRUPT:I = 0xc

.field public static final STATUS_PAUSE:I = 0x11

.field public static final STATUS_PROGRESS_UPDATE:I = 0xd

.field public static final STATUS_READY:I = 0xb


# instance fields
.field private data:Lcom/zte/update/data/DownloadInfo$Data;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/zte/update/data/DownloadInfo$Data;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/update/data/DownloadInfo$Data;-><init>(Lcom/zte/update/data/DownloadInfo;Lcom/zte/update/data/DownloadInfo$1;)V

    iput-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;IJ)V
    .locals 2
    .parameter "mainKey"
    .parameter "status"
    .parameter "offset"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/zte/update/data/DownloadInfo$Data;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/update/data/DownloadInfo$Data;-><init>(Lcom/zte/update/data/DownloadInfo;Lcom/zte/update/data/DownloadInfo$1;)V

    iput-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    .line 58
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    iput-object p1, v0, Lcom/zte/update/data/DownloadInfo$Data;->mainKeyValue:Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #setter for: Lcom/zte/update/data/DownloadInfo$Data;->status:I
    invoke-static {v0, p2}, Lcom/zte/update/data/DownloadInfo$Data;->access$202(Lcom/zte/update/data/DownloadInfo$Data;I)I

    .line 60
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #setter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadOffset:J
    invoke-static {v0, p3, p4}, Lcom/zte/update/data/DownloadInfo$Data;->access$302(Lcom/zte/update/data/DownloadInfo$Data;J)J

    .line 61
    return-void
.end method


# virtual methods
.method public change(IJ)V
    .locals 1
    .parameter "status"
    .parameter "offset"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/update/data/DownloadInfo$Data;->onChange(IJ)V

    .line 150
    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #getter for: Lcom/zte/update/data/DownloadInfo$Data;->appName:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/data/DownloadInfo$Data;->access$700(Lcom/zte/update/data/DownloadInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #getter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadDir:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/data/DownloadInfo$Data;->access$900(Lcom/zte/update/data/DownloadInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadOffset()J
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #getter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadOffset:J
    invoke-static {v0}, Lcom/zte/update/data/DownloadInfo$Data;->access$300(Lcom/zte/update/data/DownloadInfo$Data;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #getter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/data/DownloadInfo$Data;->access$800(Lcom/zte/update/data/DownloadInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadTotalSize()J
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #getter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadTotalSize:J
    invoke-static {v0}, Lcom/zte/update/data/DownloadInfo$Data;->access$500(Lcom/zte/update/data/DownloadInfo$Data;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadUrlstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #getter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadUrlstr:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/data/DownloadInfo$Data;->access$400(Lcom/zte/update/data/DownloadInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #getter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadfileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/data/DownloadInfo$Data;->access$600(Lcom/zte/update/data/DownloadInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallType()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #getter for: Lcom/zte/update/data/DownloadInfo$Data;->install_type:I
    invoke-static {v0}, Lcom/zte/update/data/DownloadInfo$Data;->access$000(Lcom/zte/update/data/DownloadInfo$Data;)I

    move-result v0

    return v0
.end method

.method public getMainKeyValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    iget-object v0, v0, Lcom/zte/update/data/DownloadInfo$Data;->mainKeyValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #getter for: Lcom/zte/update/data/DownloadInfo$Data;->status:I
    invoke-static {v0}, Lcom/zte/update/data/DownloadInfo$Data;->access$200(Lcom/zte/update/data/DownloadInfo$Data;)I

    move-result v0

    return v0
.end method

.method public reload(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 156
    instance-of v1, p1, Lcom/zte/update/data/DownloadInfo;

    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 160
    check-cast v0, Lcom/zte/update/data/DownloadInfo;

    .line 161
    .local v0, info:Lcom/zte/update/data/DownloadInfo;
    iget-object v1, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #getter for: Lcom/zte/update/data/DownloadInfo$Data;->status:I
    invoke-static {v1}, Lcom/zte/update/data/DownloadInfo$Data;->access$200(Lcom/zte/update/data/DownloadInfo$Data;)I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainkey ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    iget-object v2, v2, Lcom/zte/update/data/DownloadInfo$Data;->mainKeyValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",thisdata.status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #getter for: Lcom/zte/update/data/DownloadInfo$Data;->status:I
    invoke-static {v2}, Lcom/zte/update/data/DownloadInfo$Data;->access$200(Lcom/zte/update/data/DownloadInfo$Data;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",infodata.status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #getter for: Lcom/zte/update/data/DownloadInfo$Data;->status:I
    invoke-static {v2}, Lcom/zte/update/data/DownloadInfo$Data;->access$200(Lcom/zte/update/data/DownloadInfo$Data;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v1, v0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    iput-object v1, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    goto :goto_0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #setter for: Lcom/zte/update/data/DownloadInfo$Data;->appName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/update/data/DownloadInfo$Data;->access$702(Lcom/zte/update/data/DownloadInfo$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setDownloadDir(Ljava/lang/String;)V
    .locals 1
    .parameter "downloadDir"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #setter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadDir:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/update/data/DownloadInfo$Data;->access$902(Lcom/zte/update/data/DownloadInfo$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setDownloadOffset(J)V
    .locals 1
    .parameter "downloadOffset"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #setter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadOffset:J
    invoke-static {v0, p1, p2}, Lcom/zte/update/data/DownloadInfo$Data;->access$302(Lcom/zte/update/data/DownloadInfo$Data;J)J

    .line 91
    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 1
    .parameter "downloadPath"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #setter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadPath:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/update/data/DownloadInfo$Data;->access$802(Lcom/zte/update/data/DownloadInfo$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setDownloadTotalSize(J)V
    .locals 1
    .parameter "downloadTotalSize"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #setter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadTotalSize:J
    invoke-static {v0, p1, p2}, Lcom/zte/update/data/DownloadInfo$Data;->access$502(Lcom/zte/update/data/DownloadInfo$Data;J)J

    .line 106
    return-void
.end method

.method public setDownloadUrlstr(Ljava/lang/String;)V
    .locals 1
    .parameter "downloadUrlstr"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #setter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadUrlstr:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/update/data/DownloadInfo$Data;->access$402(Lcom/zte/update/data/DownloadInfo$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setDownloadfileName(Ljava/lang/String;)V
    .locals 1
    .parameter "downloadfileName"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #setter for: Lcom/zte/update/data/DownloadInfo$Data;->downloadfileName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/update/data/DownloadInfo$Data;->access$602(Lcom/zte/update/data/DownloadInfo$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setInstallType(I)V
    .locals 1
    .parameter "install_type"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #setter for: Lcom/zte/update/data/DownloadInfo$Data;->install_type:I
    invoke-static {v0, p1}, Lcom/zte/update/data/DownloadInfo$Data;->access$002(Lcom/zte/update/data/DownloadInfo$Data;I)I

    .line 47
    return-void
.end method

.method public setMainKey(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    iput-object p1, v0, Lcom/zte/update/data/DownloadInfo$Data;->mainKeyValue:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo;->data:Lcom/zte/update/data/DownloadInfo$Data;

    #setter for: Lcom/zte/update/data/DownloadInfo$Data;->status:I
    invoke-static {v0, p1}, Lcom/zte/update/data/DownloadInfo$Data;->access$202(Lcom/zte/update/data/DownloadInfo$Data;I)I

    .line 145
    return-void
.end method
