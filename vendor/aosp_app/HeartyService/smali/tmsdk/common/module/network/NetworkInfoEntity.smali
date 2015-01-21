.class public Ltmsdk/common/module/network/NetworkInfoEntity;
.super Ltmsdk/common/BaseEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltmsdk/common/BaseEntity;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Ltmsdk/common/module/network/NetworkInfoEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/network/NetworkInfoEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mRetialForMonth:J

.field public mStartDate:Ljava/util/Date;

.field public mTotalForMonth:J

.field public mUsedForDay:J

.field public mUsedForMonth:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ltmsdk/common/module/network/NetworkInfoEntity$1;

    invoke-direct {v0}, Ltmsdk/common/module/network/NetworkInfoEntity$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/network/NetworkInfoEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 44
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 45
    iput-wide v0, p0, Ltmsdk/common/module/network/NetworkInfoEntity;->mTotalForMonth:J

    .line 46
    iput-wide v0, p0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForMonth:J

    .line 47
    iput-wide v0, p0, Ltmsdk/common/module/network/NetworkInfoEntity;->mRetialForMonth:J

    .line 48
    iput-wide v0, p0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForDay:J

    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    .line 50
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Ltmsdk/common/module/network/NetworkInfoEntity;

    .end local p1
    invoke-virtual {p0, p1}, Ltmsdk/common/module/network/NetworkInfoEntity;->compareTo(Ltmsdk/common/module/network/NetworkInfoEntity;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltmsdk/common/module/network/NetworkInfoEntity;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 54
    iget-object v0, p0, Ltmsdk/common/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    iget-object v1, p1, Ltmsdk/common/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 64
    iget-wide v0, p0, Ltmsdk/common/module/network/NetworkInfoEntity;->mTotalForMonth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-wide v0, p0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForMonth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Ltmsdk/common/module/network/NetworkInfoEntity;->mRetialForMonth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-wide v0, p0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget-object v0, p0, Ltmsdk/common/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 69
    return-void
.end method
