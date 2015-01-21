.class final Ltmsdk/common/DataEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/DataEntity;
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
        "Ltmsdk/common/DataEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bk(I)[Ltmsdk/common/DataEntity;
    .locals 1
    .parameter "size"

    .prologue
    .line 61
    new-array v0, p1, [Ltmsdk/common/DataEntity;

    return-object v0
.end method

.method public c(Landroid/os/Parcel;)Ltmsdk/common/DataEntity;
    .locals 2
    .parameter "source"

    .prologue
    .line 56
    new-instance v0, Ltmsdk/common/DataEntity;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ltmsdk/common/DataEntity;-><init>(Landroid/os/Parcel;Ltmsdk/common/DataEntity$1;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Ltmsdk/common/DataEntity$1;->c(Landroid/os/Parcel;)Ltmsdk/common/DataEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Ltmsdk/common/DataEntity$1;->bk(I)[Ltmsdk/common/DataEntity;

    move-result-object v0

    return-object v0
.end method
