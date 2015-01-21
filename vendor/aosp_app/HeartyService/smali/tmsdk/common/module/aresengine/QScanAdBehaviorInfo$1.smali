.class final Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;
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
        "Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bB(I)[Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 43
    new-array v0, p1, [Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo$1;->n(Landroid/os/Parcel;)Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;

    move-result-object v0

    return-object v0
.end method

.method public n(Landroid/os/Parcel;)Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;
    .locals 3
    .parameter "source"

    .prologue
    .line 32
    new-instance v0, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;-><init>()V

    .line 33
    .local v0, entity:Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->behavior:J

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->description:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->damage:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->level:Ljava/lang/String;

    .line 38
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo$1;->bB(I)[Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;

    move-result-object v0

    return-object v0
.end method
