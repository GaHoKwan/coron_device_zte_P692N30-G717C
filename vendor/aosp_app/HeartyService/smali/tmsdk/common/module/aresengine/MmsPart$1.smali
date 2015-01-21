.class final Ltmsdk/common/module/aresengine/MmsPart$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/aresengine/MmsPart;
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
        "Ltmsdk/common/module/aresengine/MmsPart;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bA(I)[Ltmsdk/common/module/aresengine/MmsPart;
    .locals 1
    .parameter "size"

    .prologue
    .line 108
    new-array v0, p1, [Ltmsdk/common/module/aresengine/MmsPart;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Ltmsdk/common/module/aresengine/MmsPart$1;->m(Landroid/os/Parcel;)Ltmsdk/common/module/aresengine/MmsPart;

    move-result-object v0

    return-object v0
.end method

.method public m(Landroid/os/Parcel;)Ltmsdk/common/module/aresengine/MmsPart;
    .locals 1
    .parameter "src"

    .prologue
    .line 113
    new-instance v0, Ltmsdk/common/module/aresengine/MmsPart;

    invoke-direct {v0, p1}, Ltmsdk/common/module/aresengine/MmsPart;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Ltmsdk/common/module/aresengine/MmsPart$1;->bA(I)[Ltmsdk/common/module/aresengine/MmsPart;

    move-result-object v0

    return-object v0
.end method
