.class final Ltmsdk/common/module/qscanner/QScanResultEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/qscanner/QScanResultEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ltmsdk/common/module/qscanner/QScanResultEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bQ(I)[Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 1
    .parameter "size"

    .prologue
    .line 226
    new-array v0, p1, [Ltmsdk/common/module/qscanner/QScanResultEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Ltmsdk/common/module/qscanner/QScanResultEntity$1;->w(Landroid/os/Parcel;)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Ltmsdk/common/module/qscanner/QScanResultEntity$1;->bQ(I)[Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public w(Landroid/os/Parcel;)Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 186
    new-instance v0, Ltmsdk/common/module/qscanner/QScanResultEntity;

    invoke-direct {v0}, Ltmsdk/common/module/qscanner/QScanResultEntity;-><init>()V

    .line 187
    .local v0, item:Ltmsdk/common/module/qscanner/QScanResultEntity;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->versionCode:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->apkType:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->size:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->dexSha1:Ljava/lang/String;

    .line 196
    sget-object v2, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->plugins:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->malwareid:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->label:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->shortDesc:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .local v1, size:I
    if-lez v1, :cond_0

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->dirtyDataPathes:Ljava/util/List;

    .line 212
    iget-object v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->dirtyDataPathes:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 214
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->special:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->systemFlaw:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInPayList:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInStealAccountList:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->needRootToHandle:Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_4

    :goto_3
    iput-boolean v3, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->needOpenAppMonitorToHandle:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->product:I

    .line 222
    return-object v0

    :cond_1
    move v2, v4

    .line 216
    goto :goto_0

    :cond_2
    move v2, v4

    .line 217
    goto :goto_1

    :cond_3
    move v2, v4

    .line 218
    goto :goto_2

    :cond_4
    move v3, v4

    .line 219
    goto :goto_3
.end method
