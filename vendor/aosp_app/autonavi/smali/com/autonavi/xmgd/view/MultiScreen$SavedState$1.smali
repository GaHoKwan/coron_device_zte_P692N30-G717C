.class final Lcom/autonavi/xmgd/view/MultiScreen$SavedState$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/autonavi/xmgd/view/MultiScreen$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/autonavi/xmgd/view/MultiScreen$SavedState;
    .locals 2

    new-instance v0, Lcom/autonavi/xmgd/view/MultiScreen$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/autonavi/xmgd/view/MultiScreen$SavedState;-><init>(Landroid/os/Parcel;Lcom/autonavi/xmgd/view/MultiScreen$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/view/MultiScreen$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/autonavi/xmgd/view/MultiScreen$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/autonavi/xmgd/view/MultiScreen$SavedState;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/xmgd/view/MultiScreen$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/view/MultiScreen$SavedState$1;->newArray(I)[Lcom/autonavi/xmgd/view/MultiScreen$SavedState;

    move-result-object v0

    return-object v0
.end method