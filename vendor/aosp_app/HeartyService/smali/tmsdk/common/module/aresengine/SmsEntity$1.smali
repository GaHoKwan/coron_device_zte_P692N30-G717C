.class final Ltmsdk/common/module/aresengine/SmsEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/aresengine/SmsEntity;
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
        "Ltmsdk/common/module/aresengine/SmsEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bC(I)[Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1
    .parameter "size"

    .prologue
    .line 213
    new-array v0, p1, [Ltmsdk/common/module/aresengine/SmsEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Ltmsdk/common/module/aresengine/SmsEntity$1;->o(Landroid/os/Parcel;)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Ltmsdk/common/module/aresengine/SmsEntity$1;->bC(I)[Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public o(Landroid/os/Parcel;)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1
    .parameter "source"

    .prologue
    .line 208
    new-instance v0, Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-direct {v0, p1}, Ltmsdk/common/module/aresengine/SmsEntity;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
