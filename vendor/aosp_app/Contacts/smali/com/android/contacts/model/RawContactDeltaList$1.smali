.class final Lcom/android/contacts/model/RawContactDeltaList$1;
.super Ljava/lang/Object;
.source "RawContactDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/RawContactDeltaList;
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
        "Lcom/android/contacts/model/RawContactDeltaList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDeltaList;
    .locals 2
    .parameter "in"

    .prologue
    .line 439
    new-instance v0, Lcom/android/contacts/model/RawContactDeltaList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/contacts/model/RawContactDeltaList;-><init>(Lcom/android/contacts/model/RawContactDeltaList$1;)V

    .line 440
    .local v0, state:Lcom/android/contacts/model/RawContactDeltaList;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/RawContactDeltaList;->readFromParcel(Landroid/os/Parcel;)V

    .line 441
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDeltaList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/model/RawContactDeltaList;
    .locals 1
    .parameter "size"

    .prologue
    .line 446
    new-array v0, p1, [Lcom/android/contacts/model/RawContactDeltaList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDeltaList$1;->newArray(I)[Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v0

    return-object v0
.end method