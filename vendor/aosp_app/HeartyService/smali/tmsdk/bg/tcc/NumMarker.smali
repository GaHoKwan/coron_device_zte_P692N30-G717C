.class public Ltmsdk/bg/tcc/NumMarker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/tcc/NumMarkerConsts;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;,
        Ltmsdk/bg/tcc/NumMarker$NumMark;
    }
.end annotation


# static fields
.field public static final KEY_TAG_CALL_TIME_LENGTH:I = 0x1

.field public static final Tag:Ljava/lang/String; = "NumMarkerTag"

.field private static wC:Ltmsdk/bg/tcc/NumMarker;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mPath:Ljava/lang/String;

.field private wD:I

.field private wE:Z

.field private wF:Z

.field private wG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/bg/tcc/NumMarker;->wC:Ltmsdk/bg/tcc/NumMarker;

    .line 238
    const/4 v0, 0x4

    const-class v1, Ltmsdk/bg/tcc/NumMarker;

    invoke-static {v0, v1}, Ltmsdk/common/TMSDKContext;->registerNatives(ILjava/lang/Class;)V

    .line 239
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    .line 61
    iput-boolean v1, p0, Ltmsdk/bg/tcc/NumMarker;->wE:Z

    .line 62
    iput-boolean v1, p0, Ltmsdk/bg/tcc/NumMarker;->wF:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wG:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wH:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wI:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wJ:Ljava/util/List;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->mPath:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->mLock:Ljava/lang/Object;

    .line 81
    const-string v0, "NumMarkerTag"

    const-string v1, "NumMarker()"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iput-object p1, p0, Ltmsdk/bg/tcc/NumMarker;->mContext:Landroid/content/Context;

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0}, Ltmsdk/bg/tcc/NumMarker;->nNewInstance(I)I

    move-result v0

    iput v0, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    .line 84
    iget v0, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->mContext:Landroid/content/Context;

    const-string v1, "mark_v1.sdb"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->mPath:Ljava/lang/String;

    .line 86
    const-string v0, "NumMarkerTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumMarker() mPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/tcc/NumMarker;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Ltmsdk/bg/tcc/NumMarker;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    const-string v0, "NumMarkerTag"

    const-string v1, "NumMarker() mPath is empty"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    :cond_1
    iget v0, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    iget-object v1, p0, Ltmsdk/bg/tcc/NumMarker;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ltmsdk/bg/tcc/NumMarker;->nSetPath(ILjava/lang/String;)Z

    .line 92
    :cond_2
    return-void
.end method

.method public static declared-synchronized getDefault(Landroid/content/Context;)Ltmsdk/bg/tcc/NumMarker;
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    const-class v1, Ltmsdk/bg/tcc/NumMarker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdk/bg/tcc/NumMarker;->wC:Ltmsdk/bg/tcc/NumMarker;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ltmsdk/bg/tcc/NumMarker;

    invoke-direct {v0, p0}, Ltmsdk/bg/tcc/NumMarker;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdk/bg/tcc/NumMarker;->wC:Ltmsdk/bg/tcc/NumMarker;

    .line 77
    :cond_0
    sget-object v0, Ltmsdk/bg/tcc/NumMarker;->wC:Ltmsdk/bg/tcc/NumMarker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native nDestroyInstance(I)V
.end method

.method private native nGetDataMd5(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native nGetHeaderInfo(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native nGetMarkInfoByPhoneNumber(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)Z
.end method

.method private native nGetTagList(ILjava/util/List;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native nGetTypeNameMapping(ILjava/util/List;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native nNewInstance(I)I
.end method

.method private native nRepack(I)Z
.end method

.method private native nSetPath(ILjava/lang/String;)Z
.end method

.method private native nUpdate(ILjava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget v0, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    invoke-direct {p0, v0}, Ltmsdk/bg/tcc/NumMarker;->nDestroyInstance(I)V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    .line 102
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/bg/tcc/NumMarker;->wC:Ltmsdk/bg/tcc/NumMarker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfigList(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, valList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 156
    iget-boolean v0, p0, Ltmsdk/bg/tcc/NumMarker;->wF:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    iput-boolean v3, p0, Ltmsdk/bg/tcc/NumMarker;->wF:Z

    .line 161
    iget v0, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    iget-object v1, p0, Ltmsdk/bg/tcc/NumMarker;->wI:Ljava/util/List;

    iget-object v2, p0, Ltmsdk/bg/tcc/NumMarker;->wJ:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Ltmsdk/bg/tcc/NumMarker;->nGetTagList(ILjava/util/List;Ljava/util/List;)Z

    .line 163
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 164
    const-string v0, "NumMarkerTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigList() value[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/tcc/NumMarker;->wJ:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 169
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 170
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wI:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wJ:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    return-void
.end method

.method public getDataMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 232
    iget v0, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    invoke-direct {p0, v0, p1}, Ltmsdk/bg/tcc/NumMarker;->nGetDataMd5(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfoOfNum(Ljava/lang/String;)Ltmsdk/bg/tcc/NumMarker$NumMark;
    .locals 4
    .parameter "num"

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 113
    .local v2, typeRef:Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 114
    .local v1, timesRef:Ljava/util/concurrent/atomic/AtomicInteger;
    iget v3, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    invoke-direct {p0, v3, p1, v2, v1}, Ltmsdk/bg/tcc/NumMarker;->nGetMarkInfoByPhoneNumber(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    new-instance v0, Ltmsdk/bg/tcc/NumMarker$NumMark;

    invoke-direct {v0}, Ltmsdk/bg/tcc/NumMarker$NumMark;-><init>()V

    .line 116
    .local v0, mark:Ltmsdk/bg/tcc/NumMarker$NumMark;
    iput-object p1, v0, Ltmsdk/bg/tcc/NumMarker$NumMark;->num:Ljava/lang/String;

    .line 117
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iput v3, v0, Ltmsdk/bg/tcc/NumMarker$NumMark;->tagValue:I

    .line 118
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iput v3, v0, Ltmsdk/bg/tcc/NumMarker$NumMark;->count:I

    .line 122
    .end local v0           #mark:Ltmsdk/bg/tcc/NumMarker$NumMark;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMarkFileInfo()Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 181
    new-instance v6, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;

    invoke-direct {v6}, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;-><init>()V

    .line 183
    .local v6, finfo:Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 184
    .local v2, versionRef:Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 185
    .local v3, timeStampRef:Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 186
    .local v4, timeStampDiffRef:Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, ""

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 188
    .local v5, md5Ref:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    iget v1, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ltmsdk/bg/tcc/NumMarker;->nGetHeaderInfo(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v6, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->version:I

    .line 190
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v6, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->timeStampSecondWhole:I

    .line 191
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v6, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->timeStampSecondLastDiff:I

    .line 192
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, v6, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->md5:Ljava/lang/String;

    .line 195
    :cond_0
    return-object v6

    .line 192
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getMarkList(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, valList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Ltmsdk/bg/tcc/NumMarker;->wE:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/bg/tcc/NumMarker;->wE:Z

    .line 139
    iget v0, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    iget-object v1, p0, Ltmsdk/bg/tcc/NumMarker;->wG:Ljava/util/List;

    iget-object v2, p0, Ltmsdk/bg/tcc/NumMarker;->wH:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Ltmsdk/bg/tcc/NumMarker;->nGetTypeNameMapping(ILjava/util/List;Ljava/util/List;)Z

    .line 142
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 143
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 144
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wG:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v0, p0, Ltmsdk/bg/tcc/NumMarker;->wH:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    return-void
.end method

.method public refreshMarkFile()Z
    .locals 2

    .prologue
    .line 199
    iget v1, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    invoke-direct {p0, v1}, Ltmsdk/bg/tcc/NumMarker;->nRepack(I)Z

    move-result v0

    .line 200
    .local v0, ret:Z
    return v0
.end method

.method public updateMarkFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "filePath"
    .parameter "desiredDataMd5"

    .prologue
    const/4 v3, 0x1

    .line 211
    const/4 v0, -0x3

    .line 212
    .local v0, ret:I
    iget-object v2, p0, Ltmsdk/bg/tcc/NumMarker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    :try_start_0
    iget v1, p0, Ltmsdk/bg/tcc/NumMarker;->wD:I

    invoke-direct {p0, v1, p1, p2}, Ltmsdk/bg/tcc/NumMarker;->nUpdate(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 214
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    if-nez v0, :cond_0

    .line 217
    iput-boolean v3, p0, Ltmsdk/bg/tcc/NumMarker;->wE:Z

    .line 218
    iput-boolean v3, p0, Ltmsdk/bg/tcc/NumMarker;->wF:Z

    .line 221
    :cond_0
    return v0

    .line 214
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
