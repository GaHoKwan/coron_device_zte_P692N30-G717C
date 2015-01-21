.class final Ltmsdk/common/module/urlcheck/UrlCheckResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/urlcheck/UrlCheckResult;
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
        "Ltmsdk/common/module/urlcheck/UrlCheckResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bU(I)[Ltmsdk/common/module/urlcheck/UrlCheckResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 88
    new-array v0, p1, [Ltmsdk/common/module/urlcheck/UrlCheckResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Ltmsdk/common/module/urlcheck/UrlCheckResult$1;->z(Landroid/os/Parcel;)Ltmsdk/common/module/urlcheck/UrlCheckResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Ltmsdk/common/module/urlcheck/UrlCheckResult$1;->bU(I)[Ltmsdk/common/module/urlcheck/UrlCheckResult;

    move-result-object v0

    return-object v0
.end method

.method public z(Landroid/os/Parcel;)Ltmsdk/common/module/urlcheck/UrlCheckResult;
    .locals 2
    .parameter "source"

    .prologue
    .line 79
    new-instance v0, Ltmsdk/common/module/urlcheck/UrlCheckResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltmsdk/common/module/urlcheck/UrlCheckResult;-><init>(Ltmsdk/common/module/urlcheck/UrlCheckResult$1;)V

    .line 80
    .local v0, checkResult:Ltmsdk/common/module/urlcheck/UrlCheckResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mainHarmId:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->result:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mErrCode:I

    .line 83
    return-object v0
.end method
