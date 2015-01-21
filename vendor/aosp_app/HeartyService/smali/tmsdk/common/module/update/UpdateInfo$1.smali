.class final Ltmsdk/common/module/update/UpdateInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/update/UpdateInfo;
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
        "Ltmsdk/common/module/update/UpdateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bT(I)[Ltmsdk/common/module/update/UpdateInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 68
    new-array v0, p1, [Ltmsdk/common/module/update/UpdateInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Ltmsdk/common/module/update/UpdateInfo$1;->y(Landroid/os/Parcel;)Ltmsdk/common/module/update/UpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Ltmsdk/common/module/update/UpdateInfo$1;->bT(I)[Ltmsdk/common/module/update/UpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public y(Landroid/os/Parcel;)Ltmsdk/common/module/update/UpdateInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 74
    new-instance v0, Ltmsdk/common/module/update/UpdateInfo;

    invoke-direct {v0, p1}, Ltmsdk/common/module/update/UpdateInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
