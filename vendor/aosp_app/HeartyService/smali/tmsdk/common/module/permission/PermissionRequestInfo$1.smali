.class final Ltmsdk/common/module/permission/PermissionRequestInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/permission/PermissionRequestInfo;
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
        "Ltmsdk/common/module/permission/PermissionRequestInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bJ(I)[Ltmsdk/common/module/permission/PermissionRequestInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 125
    new-array v0, p1, [Ltmsdk/common/module/permission/PermissionRequestInfo;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Ltmsdk/common/module/permission/PermissionRequestInfo$1;->createFromParcel(Landroid/os/Parcel;)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltmsdk/common/module/permission/PermissionRequestInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 120
    invoke-static {p1}, Ltmsdk/common/module/permission/PermissionRequestInfo;->createFromParcel(Landroid/os/Parcel;)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Ltmsdk/common/module/permission/PermissionRequestInfo$1;->bJ(I)[Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v0

    return-object v0
.end method
