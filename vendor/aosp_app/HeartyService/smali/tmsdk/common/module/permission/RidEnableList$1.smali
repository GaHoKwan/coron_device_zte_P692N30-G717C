.class final Ltmsdk/common/module/permission/RidEnableList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/permission/RidEnableList;
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
        "Ltmsdk/common/module/permission/RidEnableList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bM(I)[Ltmsdk/common/module/permission/RidEnableList;
    .locals 1
    .parameter "size"

    .prologue
    .line 103
    new-array v0, p1, [Ltmsdk/common/module/permission/RidEnableList;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Ltmsdk/common/module/permission/RidEnableList$1;->u(Landroid/os/Parcel;)Ltmsdk/common/module/permission/RidEnableList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Ltmsdk/common/module/permission/RidEnableList$1;->bM(I)[Ltmsdk/common/module/permission/RidEnableList;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/os/Parcel;)Ltmsdk/common/module/permission/RidEnableList;
    .locals 2
    .parameter "in"

    .prologue
    .line 99
    new-instance v0, Ltmsdk/common/module/permission/RidEnableList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ltmsdk/common/module/permission/RidEnableList;-><init>(Landroid/os/Parcel;Ltmsdk/common/module/permission/RidEnableList$1;)V

    return-object v0
.end method
