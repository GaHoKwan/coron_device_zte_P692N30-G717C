.class final Ltmsdkobf/fx$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/fx;
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
        "Ltmsdkobf/fx;",
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
.method public a(Landroid/os/Parcel;)Ltmsdkobf/fx;
    .locals 2

    new-instance v0, Ltmsdkobf/fx;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ltmsdkobf/fx;-><init>(Landroid/os/Parcel;Ltmsdkobf/fx$1;)V

    return-object v0
.end method

.method public aM(I)[Ltmsdkobf/fx;
    .locals 1

    new-array v0, p1, [Ltmsdkobf/fx;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ltmsdkobf/fx$1;->a(Landroid/os/Parcel;)Ltmsdkobf/fx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ltmsdkobf/fx$1;->aM(I)[Ltmsdkobf/fx;

    move-result-object v0

    return-object v0
.end method
