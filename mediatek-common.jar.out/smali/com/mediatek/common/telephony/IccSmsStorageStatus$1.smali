.class final Lcom/mediatek/common/telephony/IccSmsStorageStatus$1;
.super Ljava/lang/Object;
.source "IccSmsStorageStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/telephony/IccSmsStorageStatus;
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
        "Lcom/mediatek/common/telephony/IccSmsStorageStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    .locals 3
    .parameter "source"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .local v1, used:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, total:I
    new-instance v2, Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    invoke-direct {v2, v1, v0}, Lcom/mediatek/common/telephony/IccSmsStorageStatus;-><init>(II)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/mediatek/common/telephony/IccSmsStorageStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    .locals 1
    .parameter "size"

    .prologue
    .line 108
    new-array v0, p1, [Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/mediatek/common/telephony/IccSmsStorageStatus$1;->newArray(I)[Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v0

    return-object v0
.end method