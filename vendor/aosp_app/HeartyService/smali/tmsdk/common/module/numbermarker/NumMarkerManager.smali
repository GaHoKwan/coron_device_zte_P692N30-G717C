.class public Ltmsdk/common/module/numbermarker/NumMarkerManager;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigValue(I)I
    .locals 1
    .parameter "key"

    .prologue
    .line 141
    invoke-static {}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, -0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->getConfigValue(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDataMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-static {}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->dn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :cond_1
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->getDataMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInfoOfNum(Ljava/lang/String;)Ltmsdk/bg/tcc/NumMarker$NumMark;
    .locals 2
    .parameter "num"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-static {}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->dn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->getInfoOfNum(Ljava/lang/String;)Ltmsdk/bg/tcc/NumMarker$NumMark;

    move-result-object v0

    goto :goto_0
.end method

.method public getMarkFileInfo()Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->getMarkFileInfo()Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagName(I)Ljava/lang/String;
    .locals 1
    .parameter "tagValue"

    .prologue
    .line 126
    invoke-static {}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->getTagName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagNameMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->getTagNameMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagPhonenum(Ltmsdkobf/aw;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .parameter "queryReq"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/aw;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/bg;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, resultRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bg;>;"
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->getTagPhonenum(Ltmsdkobf/aw;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 176
    new-instance v0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-direct {v0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    .line 177
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->onCreate(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->a(Ltmsdk/common/BaseManager;)V

    .line 179
    return-void
.end method

.method public reInit()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->reInit()V

    goto :goto_0
.end method

.method public refreshMarkFile()Z
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->refreshMarkFile()Z

    move-result v0

    goto :goto_0
.end method

.method public refreshTagMap()V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->refreshTagMap()V

    goto :goto_0
.end method

.method public reportPhoneNumber(Ljava/util/List;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/numbermarker/NumberMarkEntity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, entityList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/numbermarker/NumberMarkEntity;>;"
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->reportPhoneNumber(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public updateMarkFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "filePath"
    .parameter "desiredDataMd5"

    .prologue
    .line 66
    invoke-static {}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, -0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManager;->zA:Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->updateMarkFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
