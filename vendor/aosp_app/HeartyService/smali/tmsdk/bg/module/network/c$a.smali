.class final Ltmsdk/bg/module/network/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/bg/module/network/NetDataEntityFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/module/network/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private vy:Ltmsdk/bg/module/network/f;

.field private vz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltmsdk/bg/module/network/f;)V
    .locals 1
    .parameter "netInterfaceManager"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ltmsdk/bg/module/network/g;->eE()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/bg/module/network/c$a;->vz:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Ltmsdk/bg/module/network/c$a;->vy:Ltmsdk/bg/module/network/f;

    .line 25
    return-void
.end method


# virtual methods
.method public getNetDataEntity()Ltmsdk/bg/module/network/NetDataEntity;
    .locals 12

    .prologue
    .line 30
    new-instance v0, Ltmsdk/bg/module/network/NetDataEntity;

    invoke-direct {v0}, Ltmsdk/bg/module/network/NetDataEntity;-><init>()V

    .line 31
    .local v0, entity:Ltmsdk/bg/module/network/NetDataEntity;
    const/4 v7, 0x4

    new-array v6, v7, [J

    fill-array-data v6, :array_0

    .line 33
    .local v6, value:[J
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Ltmsdk/bg/module/network/c$a;->vz:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ltmsdkobf/jv;->c(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, lines:[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 38
    :try_start_0
    array-length v3, v4

    .line 39
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 40
    aget-object v7, v4, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[:\\s]+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, segs:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, filed:Ljava/lang/String;
    iget-object v7, p0, Ltmsdk/bg/module/network/c$a;->vy:Ltmsdk/bg/module/network/f;

    invoke-virtual {v7, v1}, Ltmsdk/bg/module/network/f;->bU(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 44
    const/4 v7, 0x0

    aget-wide v8, v6, v7

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v6, v7

    .line 45
    const/4 v7, 0x1

    aget-wide v8, v6, v7

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v6, v7

    .line 46
    const/4 v7, 0x2

    aget-wide v8, v6, v7

    const/16 v10, 0x9

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v6, v7

    .line 47
    const/4 v7, 0x3

    aget-wide v8, v6, v7

    const/16 v10, 0xa

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v1           #filed:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v5           #segs:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 57
    :cond_1
    const/4 v7, 0x0

    aget-wide v7, v6, v7

    iput-wide v7, v0, Ltmsdk/bg/module/network/NetDataEntity;->mReceiver:J

    .line 58
    const/4 v7, 0x1

    aget-wide v7, v6, v7

    iput-wide v7, v0, Ltmsdk/bg/module/network/NetDataEntity;->mReceiverPks:J

    .line 59
    const/4 v7, 0x2

    aget-wide v7, v6, v7

    iput-wide v7, v0, Ltmsdk/bg/module/network/NetDataEntity;->mTranslate:J

    .line 60
    const/4 v7, 0x3

    aget-wide v7, v6, v7

    iput-wide v7, v0, Ltmsdk/bg/module/network/NetDataEntity;->mTranslatePks:J

    .line 62
    return-object v0

    .line 31
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
