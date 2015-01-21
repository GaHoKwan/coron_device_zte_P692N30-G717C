.class final Ltmsdk/common/module/network/TrafficEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/network/TrafficEntity;
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
        "Ltmsdk/common/module/network/TrafficEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bG(I)[Ltmsdk/common/module/network/TrafficEntity;
    .locals 1
    .parameter "size"

    .prologue
    .line 139
    new-array v0, p1, [Ltmsdk/common/module/network/TrafficEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Ltmsdk/common/module/network/TrafficEntity$1;->s(Landroid/os/Parcel;)Ltmsdk/common/module/network/TrafficEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Ltmsdk/common/module/network/TrafficEntity$1;->bG(I)[Ltmsdk/common/module/network/TrafficEntity;

    move-result-object v0

    return-object v0
.end method

.method public s(Landroid/os/Parcel;)Ltmsdk/common/module/network/TrafficEntity;
    .locals 3
    .parameter "source"

    .prologue
    .line 126
    new-instance v0, Ltmsdk/common/module/network/TrafficEntity;

    invoke-direct {v0}, Ltmsdk/common/module/network/TrafficEntity;-><init>()V

    .line 127
    .local v0, entity:Ltmsdk/common/module/network/TrafficEntity;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/network/TrafficEntity;->mPkg:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/network/TrafficEntity;->mLastUpValue:J

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/network/TrafficEntity;->mLastDownValue:J

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    .line 134
    return-object v0
.end method
