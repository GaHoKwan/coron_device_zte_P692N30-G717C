.class final Ltmsdk/common/LinkedHashMapWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/LinkedHashMapWrapper;
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
        "Ltmsdk/common/LinkedHashMapWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bl(I)[Ltmsdk/common/LinkedHashMapWrapper;
    .locals 1
    .parameter "size"

    .prologue
    .line 70
    new-array v0, p1, [Ltmsdk/common/LinkedHashMapWrapper;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Ltmsdk/common/LinkedHashMapWrapper$1;->d(Landroid/os/Parcel;)Ltmsdk/common/LinkedHashMapWrapper;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/os/Parcel;)Ltmsdk/common/LinkedHashMapWrapper;
    .locals 4
    .parameter "source"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, size:I
    if-gez v0, :cond_0

    .line 77
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

    .line 80
    :cond_0
    new-instance v1, Ltmsdk/common/LinkedHashMapWrapper;

    invoke-direct {v1, p1, v0}, Ltmsdk/common/LinkedHashMapWrapper;-><init>(Landroid/os/Parcel;I)V

    return-object v1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Ltmsdk/common/LinkedHashMapWrapper$1;->bl(I)[Ltmsdk/common/LinkedHashMapWrapper;

    move-result-object v0

    return-object v0
.end method
