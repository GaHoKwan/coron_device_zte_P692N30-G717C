.class final Ltmsdk/common/module/update/CheckResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/update/CheckResult;
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
        "Ltmsdk/common/module/update/CheckResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bS(I)[Ltmsdk/common/module/update/CheckResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 43
    new-array v0, p1, [Ltmsdk/common/module/update/CheckResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Ltmsdk/common/module/update/CheckResult$1;->x(Landroid/os/Parcel;)Ltmsdk/common/module/update/CheckResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Ltmsdk/common/module/update/CheckResult$1;->bS(I)[Ltmsdk/common/module/update/CheckResult;

    move-result-object v0

    return-object v0
.end method

.method public x(Landroid/os/Parcel;)Ltmsdk/common/module/update/CheckResult;
    .locals 1
    .parameter "source"

    .prologue
    .line 49
    new-instance v0, Ltmsdk/common/module/update/CheckResult;

    invoke-direct {v0, p1}, Ltmsdk/common/module/update/CheckResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
