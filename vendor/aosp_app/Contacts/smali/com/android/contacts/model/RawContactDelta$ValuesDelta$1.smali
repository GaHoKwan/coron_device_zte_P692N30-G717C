.class final Lcom/android/contacts/model/RawContactDelta$ValuesDelta$1;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
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
        "Lcom/android/contacts/model/RawContactDelta$ValuesDelta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .locals 1
    .parameter "in"

    .prologue
    .line 986
    new-instance v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;-><init>()V

    .line 987
    .local v0, values:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->readFromParcel(Landroid/os/Parcel;)V

    .line 988
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 984
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .locals 1
    .parameter "size"

    .prologue
    .line 992
    new-array v0, p1, [Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 984
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta$1;->newArray(I)[Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v0

    return-object v0
.end method
