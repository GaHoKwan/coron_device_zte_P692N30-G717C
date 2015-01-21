.class public Ltmsdk/bg/tcc/TelNumberLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static wS:Ltmsdk/bg/tcc/TelNumberLocator;


# instance fields
.field private mContext:Landroid/content/Context;

.field private wL:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/bg/tcc/TelNumberLocator;->wS:Ltmsdk/bg/tcc/TelNumberLocator;

    .line 31
    const/4 v0, 0x3

    const-class v1, Ltmsdk/bg/tcc/TelNumberLocator;

    invoke-static {v0, v1}, Ltmsdk/common/TMSDKContext;->registerNatives(ILjava/lang/Class;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ltmsdk/bg/tcc/TelNumberLocator;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Ltmsdk/bg/tcc/TelNumberLocator;->newObject()I

    move-result v0

    iput v0, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    .line 50
    iget v0, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Ltmsdk/bg/tcc/TelNumberLocator;->reload()V

    .line 52
    return-void
.end method

.method private bj(I)V
    .locals 1
    .parameter "err"

    .prologue
    .line 239
    sparse-switch p1, :sswitch_data_0

    .line 248
    new-instance v0, Ltmsdk/bg/tcc/TelNumberLocatorException;

    invoke-direct {v0, p1}, Ltmsdk/bg/tcc/TelNumberLocatorException;-><init>(I)V

    throw v0

    .line 245
    :sswitch_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 250
    :sswitch_1
    return-void

    .line 239
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method private static native deleteObject(I)V
.end method

.method private static native getAreaCode(I)[I
.end method

.method private static native getAreaCodeLocation(IILjava/lang/StringBuffer;)I
.end method

.method private static native getCityNameList(ILjava/lang/String;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native getCountryCode(I)[I
.end method

.method private static native getCountryCodeLocation(IILjava/lang/StringBuffer;)I
.end method

.method public static declared-synchronized getDefault(Landroid/content/Context;)Ltmsdk/bg/tcc/TelNumberLocator;
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    const-class v1, Ltmsdk/bg/tcc/TelNumberLocator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdk/bg/tcc/TelNumberLocator;->wS:Ltmsdk/bg/tcc/TelNumberLocator;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ltmsdk/bg/tcc/TelNumberLocator;

    invoke-direct {v0, p0}, Ltmsdk/bg/tcc/TelNumberLocator;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdk/bg/tcc/TelNumberLocator;->wS:Ltmsdk/bg/tcc/TelNumberLocator;

    .line 41
    :cond_0
    sget-object v0, Ltmsdk/bg/tcc/TelNumberLocator;->wS:Ltmsdk/bg/tcc/TelNumberLocator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getDetailYellowPages(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native getLocation(ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;Z)I
.end method

.method private static native getMobileNumLocation(IILjava/lang/StringBuffer;)I
.end method

.method private static native getProvinceNameList(ILjava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native getYellowPages(ILjava/util/ArrayList;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native init(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native newObject()I
.end method

.method private static native patch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    if-eqz v0, :cond_0

    .line 234
    iget v0, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    invoke-static {v0}, Ltmsdk/bg/tcc/TelNumberLocator;->deleteObject(I)V

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    .line 236
    return-void
.end method

.method public getAreaCode()[I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    invoke-static {v0}, Ltmsdk/bg/tcc/TelNumberLocator;->getAreaCode(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAreaCodeLocation(I)Ljava/lang/String;
    .locals 3
    .parameter "areaCode"

    .prologue
    .line 124
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v1, sb:Ljava/lang/StringBuffer;
    iget v2, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    invoke-static {v2, p1, v1}, Ltmsdk/bg/tcc/TelNumberLocator;->getAreaCodeLocation(IILjava/lang/StringBuffer;)I

    move-result v0

    .line 126
    .local v0, err:I
    if-gez v0, :cond_1

    .line 128
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v2, ""

    .line 132
    :goto_0
    return-object v2

    .line 129
    :cond_0
    invoke-direct {p0, v0}, Ltmsdk/bg/tcc/TelNumberLocator;->bj(I)V

    .line 132
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCityNameList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "provinceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v1, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    invoke-static {v1, p1, v0}, Ltmsdk/bg/tcc/TelNumberLocator;->getCityNameList(ILjava/lang/String;Ljava/util/ArrayList;)I

    move-result v1

    invoke-direct {p0, v1}, Ltmsdk/bg/tcc/TelNumberLocator;->bj(I)V

    .line 228
    return-object v0
.end method

.method public getCountryCode()[I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    invoke-static {v0}, Ltmsdk/bg/tcc/TelNumberLocator;->getCountryCode(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCountryCodeLocation(I)Ljava/lang/String;
    .locals 3
    .parameter "countryCode"

    .prologue
    .line 140
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v1, sb:Ljava/lang/StringBuffer;
    iget v2, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    invoke-static {v2, p1, v1}, Ltmsdk/bg/tcc/TelNumberLocator;->getCountryCodeLocation(IILjava/lang/StringBuffer;)I

    move-result v0

    .line 142
    .local v0, err:I
    if-gez v0, :cond_1

    .line 144
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v2, ""

    .line 148
    :goto_0
    return-object v2

    .line 145
    :cond_0
    invoke-direct {p0, v0}, Ltmsdk/bg/tcc/TelNumberLocator;->bj(I)V

    .line 148
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getDetailYellowPages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, grpIndexOutput:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, nameOutput:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, telOutput:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, grpOutput:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 193
    :cond_0
    const/4 v1, 0x0

    .line 196
    :goto_0
    return v1

    .line 194
    :cond_1
    iget v1, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    invoke-static {v1, p1, p2, p3, p4}, Ltmsdk/bg/tcc/TelNumberLocator;->getDetailYellowPages(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    .line 195
    .local v0, err:I
    invoke-direct {p0, v0}, Ltmsdk/bg/tcc/TelNumberLocator;->bj(I)V

    .line 196
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 8
    .parameter "country"
    .parameter "location"
    .parameter "operator"
    .parameter "telNumString"
    .parameter "useCache"

    .prologue
    const/4 v7, 0x0

    .line 93
    iget v0, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Ltmsdk/bg/tcc/TelNumberLocator;->getLocation(ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;Z)I

    move-result v6

    .line 94
    .local v6, err:I
    if-gez v6, :cond_0

    .line 95
    const/4 v0, -0x1

    if-ne v6, v0, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const-string v1, ""

    invoke-virtual {p1, v7, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const-string v1, ""

    invoke-virtual {p2, v7, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const-string v1, ""

    invoke-virtual {p3, v7, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-direct {p0, v6}, Ltmsdk/bg/tcc/TelNumberLocator;->bj(I)V

    goto :goto_0
.end method

.method public getMobileNumLocation(I)Ljava/lang/String;
    .locals 3
    .parameter "telNum"

    .prologue
    .line 108
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    .local v1, sb:Ljava/lang/StringBuffer;
    iget v2, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    invoke-static {v2, p1, v1}, Ltmsdk/bg/tcc/TelNumberLocator;->getMobileNumLocation(IILjava/lang/StringBuffer;)I

    move-result v0

    .line 110
    .local v0, err:I
    if-gez v0, :cond_1

    .line 112
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v2, ""

    .line 116
    :goto_0
    return-object v2

    .line 113
    :cond_0
    invoke-direct {p0, v0}, Ltmsdk/bg/tcc/TelNumberLocator;->bj(I)V

    .line 116
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getProvinceNameList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, provinceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v1, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    invoke-static {v1, v0}, Ltmsdk/bg/tcc/TelNumberLocator;->getProvinceNameList(ILjava/util/ArrayList;)I

    move-result v1

    invoke-direct {p0, v1}, Ltmsdk/bg/tcc/TelNumberLocator;->bj(I)V

    .line 211
    return-object v0
.end method

.method public getYellowPages(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, nameOutput:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, telOutput:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 174
    :cond_0
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    .line 175
    :cond_1
    iget v1, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    invoke-static {v1, p1, p2}, Ltmsdk/bg/tcc/TelNumberLocator;->getYellowPages(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    .line 176
    .local v0, err:I
    invoke-direct {p0, v0}, Ltmsdk/bg/tcc/TelNumberLocator;->bj(I)V

    .line 178
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public patchLocation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "patchPath"
    .parameter "patchMD5"

    .prologue
    .line 77
    iget-object v1, p0, Ltmsdk/bg/tcc/TelNumberLocator;->mContext:Landroid/content/Context;

    const-string v2, "nldb.sdb"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, locatPath:Ljava/lang/String;
    iget v1, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    invoke-static {v1, v0, p1, p2}, Ltmsdk/bg/tcc/TelNumberLocator;->patch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public reload()V
    .locals 6

    .prologue
    .line 59
    :try_start_0
    iget-object v3, p0, Ltmsdk/bg/tcc/TelNumberLocator;->mContext:Landroid/content/Context;

    const-string v4, "nldb.sdb"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, ldPath:Ljava/lang/String;
    iget-object v3, p0, Ltmsdk/bg/tcc/TelNumberLocator;->mContext:Landroid/content/Context;

    const-string v4, "yd.sdb"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, ydPath:Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 62
    :cond_0
    iget v3, p0, Ltmsdk/bg/tcc/TelNumberLocator;->wL:I

    invoke-static {v3, v1, v2}, Ltmsdk/bg/tcc/TelNumberLocator;->init(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Ltmsdk/bg/tcc/TelNumberLocator;->bj(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1           #ldPath:Ljava/lang/String;
    .end local v2           #ydPath:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
