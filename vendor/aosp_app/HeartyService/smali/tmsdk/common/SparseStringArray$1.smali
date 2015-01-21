.class final Ltmsdk/common/SparseStringArray$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/SparseStringArray;
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
        "Ltmsdk/common/SparseStringArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bm(I)[Ltmsdk/common/SparseStringArray;
    .locals 1
    .parameter "size"

    .prologue
    .line 49
    new-array v0, p1, [Ltmsdk/common/SparseStringArray;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Ltmsdk/common/SparseStringArray$1;->e(Landroid/os/Parcel;)Ltmsdk/common/SparseStringArray;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/os/Parcel;)Ltmsdk/common/SparseStringArray;
    .locals 4
    .parameter "source"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, size:I
    if-gez v0, :cond_0

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "negative size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    new-instance v1, Ltmsdk/common/SparseStringArray;

    invoke-direct {v1, p1, v0}, Ltmsdk/common/SparseStringArray;-><init>(Landroid/os/Parcel;I)V

    return-object v1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Ltmsdk/common/SparseStringArray$1;->bm(I)[Ltmsdk/common/SparseStringArray;

    move-result-object v0

    return-object v0
.end method
