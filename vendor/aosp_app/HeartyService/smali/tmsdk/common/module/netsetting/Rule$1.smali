.class final Ltmsdk/common/module/netsetting/Rule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/netsetting/Rule;
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
        "Ltmsdk/common/module/netsetting/Rule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bE(I)[Ltmsdk/common/module/netsetting/Rule;
    .locals 1
    .parameter "size"

    .prologue
    .line 116
    new-array v0, p1, [Ltmsdk/common/module/netsetting/Rule;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Ltmsdk/common/module/netsetting/Rule$1;->q(Landroid/os/Parcel;)Ltmsdk/common/module/netsetting/Rule;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Ltmsdk/common/module/netsetting/Rule$1;->bE(I)[Ltmsdk/common/module/netsetting/Rule;

    move-result-object v0

    return-object v0
.end method

.method public q(Landroid/os/Parcel;)Ltmsdk/common/module/netsetting/Rule;
    .locals 1
    .parameter "source"

    .prologue
    .line 121
    new-instance v0, Ltmsdk/common/module/netsetting/Rule;

    invoke-direct {v0, p1}, Ltmsdk/common/module/netsetting/Rule;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
