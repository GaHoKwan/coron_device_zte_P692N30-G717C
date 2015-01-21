.class final Ltmsdk/common/module/network/NetworkInfoEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/network/NetworkInfoEntity;
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
        "Ltmsdk/common/module/network/NetworkInfoEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bF(I)[Ltmsdk/common/module/network/NetworkInfoEntity;
    .locals 1
    .parameter "size"

    .prologue
    .line 86
    new-array v0, p1, [Ltmsdk/common/module/network/NetworkInfoEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Ltmsdk/common/module/network/NetworkInfoEntity$1;->r(Landroid/os/Parcel;)Ltmsdk/common/module/network/NetworkInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Ltmsdk/common/module/network/NetworkInfoEntity$1;->bF(I)[Ltmsdk/common/module/network/NetworkInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method public r(Landroid/os/Parcel;)Ltmsdk/common/module/network/NetworkInfoEntity;
    .locals 3
    .parameter "source"

    .prologue
    .line 75
    new-instance v0, Ltmsdk/common/module/network/NetworkInfoEntity;

    invoke-direct {v0}, Ltmsdk/common/module/network/NetworkInfoEntity;-><init>()V

    .line 76
    .local v0, entity:Ltmsdk/common/module/network/NetworkInfoEntity;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mTotalForMonth:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForMonth:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mRetialForMonth:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForDay:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    .line 81
    return-object v0
.end method
