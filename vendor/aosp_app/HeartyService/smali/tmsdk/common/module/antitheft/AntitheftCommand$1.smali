.class final Ltmsdk/common/module/antitheft/AntitheftCommand$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/antitheft/AntitheftCommand;
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
        "Ltmsdk/common/module/antitheft/AntitheftCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bt(I)[Ltmsdk/common/module/antitheft/AntitheftCommand;
    .locals 1
    .parameter "size"

    .prologue
    .line 102
    new-array v0, p1, [Ltmsdk/common/module/antitheft/AntitheftCommand;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Ltmsdk/common/module/antitheft/AntitheftCommand$1;->createFromParcel(Landroid/os/Parcel;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltmsdk/common/module/antitheft/AntitheftCommand;
    .locals 1
    .parameter "source"

    .prologue
    .line 97
    invoke-static {p1}, Ltmsdk/common/module/antitheft/AntitheftCommand;->createFromParcel(Landroid/os/Parcel;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Ltmsdk/common/module/antitheft/AntitheftCommand$1;->bt(I)[Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v0

    return-object v0
.end method
