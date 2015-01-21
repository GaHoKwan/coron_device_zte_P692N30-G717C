.class public Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private wk:Ltmsdkobf/lk;

.field private zB:Ltmsdk/bg/tcc/NumMarker;

.field private zC:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zD:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method

.method private fA()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zB:Ltmsdk/bg/tcc/NumMarker;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltmsdk/bg/tcc/NumMarker;->getDefault(Landroid/content/Context;)Ltmsdk/bg/tcc/NumMarker;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zB:Ltmsdk/bg/tcc/NumMarker;

    .line 133
    :cond_0
    return-void
.end method

.method private fB()V
    .locals 7

    .prologue
    .line 148
    const-string v4, "NumMarkerTag"

    const-string v5, "initTagMap()"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v3, valListRef:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, nameListRef:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zB:Ltmsdk/bg/tcc/NumMarker;

    invoke-virtual {v4, v3, v1}, Ltmsdk/bg/tcc/NumMarker;->getMarkList(Ljava/util/List;Ljava/util/List;)V

    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 153
    :cond_0
    const-string v4, "NumMarkerTag"

    const-string v5, "initTagMap() tagValues.size() <= 0 || tagNames.size() <= 0"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 158
    const-string v4, "NumMarkerTag"

    const-string v5, "initTagMap() tagValues.size() != tagNames.size()"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_2
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zC:Ljava/util/LinkedHashMap;

    .line 163
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 164
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 165
    iget-object v4, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zC:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_3
    const-string v4, "NumMarkerTag"

    const-string v5, "initTagMap() end"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private fC()V
    .locals 7

    .prologue
    .line 171
    const-string v4, "NumMarkerTag"

    const-string v5, "initConfigMap()"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v3, valListRef:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v2, tagValuesRef:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zB:Ltmsdk/bg/tcc/NumMarker;

    invoke-virtual {v4, v3, v2}, Ltmsdk/bg/tcc/NumMarker;->getConfigList(Ljava/util/List;Ljava/util/List;)V

    .line 175
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 176
    :cond_0
    const-string v4, "NumMarkerTag"

    const-string v5, "initConfigMap() tagValues.size() <= 0 || tagValues.size() <= 0"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 181
    const-string v4, "NumMarkerTag"

    const-string v5, "initConfigMap() tagValues.size() != tagValues.size()"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    :cond_2
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zD:Landroid/util/SparseIntArray;

    .line 186
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 187
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 188
    iget-object v5, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zD:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_3
    const-string v4, "NumMarkerTag"

    const-string v5, "initConfigMap() end"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private o(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/numbermarker/NumberMarkEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, entityList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/numbermarker/NumberMarkEntity;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v3, telReportList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/bz;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 235
    :cond_0
    return-object v3

    .line 222
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;

    .line 223
    .local v0, entity:Ltmsdk/common/module/numbermarker/NumberMarkEntity;
    new-instance v2, Ltmsdkobf/bz;

    invoke-direct {v2}, Ltmsdkobf/bz;-><init>()V

    .line 224
    .local v2, report:Ltmsdkobf/bz;
    iget v4, v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->calltime:I

    iput v4, v2, Ltmsdkobf/bz;->calltime:I

    .line 225
    iget v4, v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->clientlogic:I

    iput v4, v2, Ltmsdkobf/bz;->clientlogic:I

    .line 226
    iget-object v4, v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->phonenum:Ljava/lang/String;

    iput-object v4, v2, Ltmsdkobf/bz;->phonenum:Ljava/lang/String;

    .line 227
    iget v4, v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->tagtype:I

    iput v4, v2, Ltmsdkobf/bz;->tagtype:I

    .line 228
    iget v4, v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->talktime:I

    iput v4, v2, Ltmsdkobf/bz;->talktime:I

    .line 229
    iget v4, v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->teltype:I

    iput v4, v2, Ltmsdkobf/bz;->teltype:I

    .line 230
    iget v4, v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->useraction:I

    iput v4, v2, Ltmsdkobf/bz;->useraction:I

    .line 232
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 195
    const-class v1, Ltmsdk/common/module/update/UpdateManager;

    invoke-static {v1}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/update/UpdateManager;

    .line 196
    .local v0, updatemanager:Ltmsdk/common/module/update/UpdateManager;
    const-wide/32 v1, 0x20000000

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/update/UpdateManager;->removeObserver(J)V

    .line 197
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 198
    return-void
.end method

.method public getConfigValue(I)I
    .locals 1
    .parameter "key"

    .prologue
    .line 116
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zD:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, -0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zD:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDataMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filePath"

    .prologue
    .line 98
    iget-object v1, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zB:Ltmsdk/bg/tcc/NumMarker;

    invoke-virtual {v1, p1}, Ltmsdk/bg/tcc/NumMarker;->getDataMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, dataMd5:Ljava/lang/String;
    const-string v1, "NumMarkerTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataMd5() filePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataMd5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-object v0
.end method

.method public getInfoOfNum(Ljava/lang/String;)Ltmsdk/bg/tcc/NumMarker$NumMark;
    .locals 5
    .parameter "num"

    .prologue
    .line 84
    const-string v1, "NumMarkerTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfoOfNum() num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zB:Ltmsdk/bg/tcc/NumMarker;

    invoke-virtual {v1, p1}, Ltmsdk/bg/tcc/NumMarker;->getInfoOfNum(Ljava/lang/String;)Ltmsdk/bg/tcc/NumMarker$NumMark;

    move-result-object v0

    .line 86
    .local v0, numInfo:Ltmsdk/bg/tcc/NumMarker$NumMark;
    if-eqz v0, :cond_0

    .line 87
    iget v1, v0, Ltmsdk/bg/tcc/NumMarker$NumMark;->tagValue:I

    invoke-virtual {p0, v1}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->getTagName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/bg/tcc/NumMarker$NumMark;->tagName:Ljava/lang/String;

    .line 88
    const-string v1, "NumMarkerTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfoOfNum() num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tagValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Ltmsdk/bg/tcc/NumMarker$NumMark;->tagValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tagName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Ltmsdk/bg/tcc/NumMarker$NumMark;->tagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Ltmsdk/bg/tcc/NumMarker$NumMark;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    :goto_0
    const-string v1, "NumMarkerTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfoOfNum() end time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    return-object v0

    .line 91
    :cond_0
    const-string v1, "NumMarkerTag"

    const-string v2, "getInfoOfNum() null == numInfo"

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getMarkFileInfo()Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;
    .locals 4

    .prologue
    .line 66
    const-string v1, "NumMarkerTag"

    const-string v2, "getMarkFileInfo()"

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    iget-object v1, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zB:Ltmsdk/bg/tcc/NumMarker;

    invoke-virtual {v1}, Ltmsdk/bg/tcc/NumMarker;->getMarkFileInfo()Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;

    move-result-object v0

    .line 68
    .local v0, flinfo:Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;
    if-eqz v0, :cond_0

    .line 69
    const-string v1, "NumMarkerTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMarkFileInfo() version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timestampWhole:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->timeStampSecondWhole:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timestampDiff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->timeStampSecondLastDiff:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " md5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-object v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public getTagName(I)Ljava/lang/String;
    .locals 2
    .parameter "tagValue"

    .prologue
    .line 108
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zC:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zC:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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
    .line 104
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zC:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getTagPhonenum(Ltmsdkobf/aw;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 2
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
    .line 202
    .local p2, resultRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bg;>;"
    iget-object v1, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->wk:Ltmsdkobf/lk;

    invoke-virtual {v1, p1, p2}, Ltmsdkobf/lk;->getTagPhonenum(Ltmsdkobf/aw;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    .line 203
    .local v0, retCode:I
    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    iput-object p1, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->fA()V

    .line 60
    invoke-direct {p0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->fB()V

    .line 61
    invoke-direct {p0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->fC()V

    .line 62
    const-class v0, Ltmsdkobf/lk;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdkobf/lk;

    iput-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->wk:Ltmsdkobf/lk;

    .line 63
    return-void
.end method

.method public reInit()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zB:Ltmsdk/bg/tcc/NumMarker;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zB:Ltmsdk/bg/tcc/NumMarker;

    invoke-virtual {v0}, Ltmsdk/bg/tcc/NumMarker;->destroy()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zB:Ltmsdk/bg/tcc/NumMarker;

    .line 140
    :cond_0
    invoke-direct {p0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->fA()V

    .line 141
    return-void
.end method

.method protected refreshMarkFile()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zB:Ltmsdk/bg/tcc/NumMarker;

    invoke-virtual {v0}, Ltmsdk/bg/tcc/NumMarker;->refreshMarkFile()Z

    move-result v0

    return v0
.end method

.method protected refreshTagMap()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->fA()V

    .line 125
    invoke-direct {p0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->fB()V

    .line 126
    invoke-direct {p0}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->fC()V

    .line 127
    return-void
.end method

.method public reportPhoneNumber(Ljava/util/List;)I
    .locals 2
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
    .line 207
    .local p1, entityList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/numbermarker/NumberMarkEntity;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 208
    :cond_0
    const/4 v0, -0x6

    .line 211
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->wk:Ltmsdkobf/lk;

    invoke-direct {p0, p1}, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->o(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/lk;->q(Ljava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public updateMarkFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "filePath"
    .parameter "desiredDataMd5"

    .prologue
    .line 76
    const-string v1, "NumMarkerTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMarkFile() time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desiredDataMd5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iget-object v1, p0, Ltmsdk/common/module/numbermarker/NumMarkerManagerImpl;->zB:Ltmsdk/bg/tcc/NumMarker;

    invoke-virtual {v1, p1, p2}, Ltmsdk/bg/tcc/NumMarker;->updateMarkFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, errCode:I
    const-string v1, "NumMarkerTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMarkFile() end time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return v0
.end method
