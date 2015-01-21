.class final Ltmsdk/common/module/qscanner/QScanAdPluginEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/qscanner/QScanAdPluginEntity;
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
        "Ltmsdk/common/module/qscanner/QScanAdPluginEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bP(I)[Ltmsdk/common/module/qscanner/QScanAdPluginEntity;
    .locals 1
    .parameter "size"

    .prologue
    .line 61
    new-array v0, p1, [Ltmsdk/common/module/qscanner/QScanAdPluginEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ltmsdk/common/module/qscanner/QScanAdPluginEntity$1;->v(Landroid/os/Parcel;)Ltmsdk/common/module/qscanner/QScanAdPluginEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ltmsdk/common/module/qscanner/QScanAdPluginEntity$1;->bP(I)[Ltmsdk/common/module/qscanner/QScanAdPluginEntity;

    move-result-object v0

    return-object v0
.end method

.method public v(Landroid/os/Parcel;)Ltmsdk/common/module/qscanner/QScanAdPluginEntity;
    .locals 3
    .parameter "source"

    .prologue
    .line 48
    new-instance v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;

    invoke-direct {v0}, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;-><init>()V

    .line 49
    .local v0, entity:Ltmsdk/common/module/qscanner/QScanAdPluginEntity;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->id:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->type:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->behaviors:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->banUrls:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->banIps:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->name:Ljava/lang/String;

    .line 56
    return-object v0
.end method
