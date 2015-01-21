.class final Ltmsdk/common/module/adcheck/NotificationInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/adcheck/NotificationInfo;
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
        "Ltmsdk/common/module/adcheck/NotificationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bs(I)[Ltmsdk/common/module/adcheck/NotificationInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 88
    new-array v0, p1, [Ltmsdk/common/module/adcheck/NotificationInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Ltmsdk/common/module/adcheck/NotificationInfo$1;->f(Landroid/os/Parcel;)Ltmsdk/common/module/adcheck/NotificationInfo;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/os/Parcel;)Ltmsdk/common/module/adcheck/NotificationInfo;
    .locals 3
    .parameter "source"

    .prologue
    .line 78
    new-instance v0, Ltmsdk/common/module/adcheck/NotificationInfo;

    invoke-direct {v0}, Ltmsdk/common/module/adcheck/NotificationInfo;-><init>()V

    .line 79
    .local v0, info:Ltmsdk/common/module/adcheck/NotificationInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/adcheck/NotificationInfo;->mNotificationID:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/adcheck/NotificationInfo;->mPkg:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/adcheck/NotificationInfo;->mTickerText:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/adcheck/NotificationInfo;->mFlags:J

    .line 83
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Ltmsdk/common/module/adcheck/NotificationInfo$1;->bs(I)[Ltmsdk/common/module/adcheck/NotificationInfo;

    move-result-object v0

    return-object v0
.end method
