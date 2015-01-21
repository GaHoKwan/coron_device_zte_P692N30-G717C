.class final Ltmsdk/common/module/aresengine/IntelliSmsCheckResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;
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
        "Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bv(I)[Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 78
    new-array v0, p1, [Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult$1;->g(Landroid/os/Parcel;)Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/os/Parcel;)Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;
    .locals 1
    .parameter "source"

    .prologue
    .line 73
    new-instance v0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;

    invoke-direct {v0, p1}, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult$1;->bv(I)[Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;

    move-result-object v0

    return-object v0
.end method
