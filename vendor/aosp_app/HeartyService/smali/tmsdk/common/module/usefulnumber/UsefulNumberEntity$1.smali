.class final Ltmsdk/common/module/usefulnumber/UsefulNumberEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;
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
        "Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Landroid/os/Parcel;)Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;
    .locals 2
    .parameter "source"

    .prologue
    .line 81
    new-instance v0, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;

    invoke-direct {v0}, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;-><init>()V

    .line 82
    .local v0, entity:Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;->name:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;->number:Ljava/lang/String;

    .line 84
    return-object v0
.end method

.method public bV(I)[Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;
    .locals 1
    .parameter "size"

    .prologue
    .line 89
    new-array v0, p1, [Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity$1;->A(Landroid/os/Parcel;)Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity$1;->bV(I)[Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;

    move-result-object v0

    return-object v0
.end method
