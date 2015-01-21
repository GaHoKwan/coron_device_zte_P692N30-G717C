.class final Ltmsdk/common/module/aresengine/MmsHeader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/aresengine/MmsHeader;
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
        "Ltmsdk/common/module/aresengine/MmsHeader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public by(I)[Ltmsdk/common/module/aresengine/MmsHeader;
    .locals 1
    .parameter "len"

    .prologue
    .line 80
    new-array v0, p1, [Ltmsdk/common/module/aresengine/MmsHeader;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Ltmsdk/common/module/aresengine/MmsHeader$1;->k(Landroid/os/Parcel;)Ltmsdk/common/module/aresengine/MmsHeader;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/os/Parcel;)Ltmsdk/common/module/aresengine/MmsHeader;
    .locals 1
    .parameter "src"

    .prologue
    .line 85
    new-instance v0, Ltmsdk/common/module/aresengine/MmsHeader;

    invoke-direct {v0, p1}, Ltmsdk/common/module/aresengine/MmsHeader;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Ltmsdk/common/module/aresengine/MmsHeader$1;->by(I)[Ltmsdk/common/module/aresengine/MmsHeader;

    move-result-object v0

    return-object v0
.end method
