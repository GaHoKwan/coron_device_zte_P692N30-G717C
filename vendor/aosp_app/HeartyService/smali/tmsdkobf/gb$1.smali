.class final Ltmsdkobf/gb$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gb;
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
        "Ltmsdkobf/gb;",
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
.method public aN(I)[Ltmsdkobf/gb;
    .locals 1

    new-array v0, p1, [Ltmsdkobf/gb;

    return-object v0
.end method

.method public b(Landroid/os/Parcel;)Ltmsdkobf/gb;
    .locals 1

    new-instance v0, Ltmsdkobf/gb;

    invoke-direct {v0, p1}, Ltmsdkobf/gb;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ltmsdkobf/gb$1;->b(Landroid/os/Parcel;)Ltmsdkobf/gb;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ltmsdkobf/gb$1;->aN(I)[Ltmsdkobf/gb;

    move-result-object v0

    return-object v0
.end method
