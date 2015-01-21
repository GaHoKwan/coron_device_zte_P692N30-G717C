.class public Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity$1;

    invoke-direct {v0}, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    iput-object p1, p0, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;->name:Ljava/lang/String;

    .line 38
    :cond_0
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    iput-object p1, p0, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;->number:Ljava/lang/String;

    .line 56
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 73
    iget-object v0, p0, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return-void
.end method
