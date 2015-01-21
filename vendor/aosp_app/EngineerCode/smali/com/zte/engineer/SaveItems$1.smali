.class final Lcom/zte/engineer/SaveItems$1;
.super Ljava/lang/Object;
.source "EngineerCode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/SaveItems;
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
        "Lcom/zte/engineer/SaveItems;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/engineer/SaveItems;
    .locals 2
    .parameter "in"

    .prologue
    .line 614
    new-instance v0, Lcom/zte/engineer/SaveItems;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/zte/engineer/SaveItems;-><init>(Landroid/os/Parcel;Lcom/zte/engineer/SaveItems$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lcom/zte/engineer/SaveItems$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/engineer/SaveItems;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/engineer/SaveItems;
    .locals 1
    .parameter "size"

    .prologue
    .line 619
    new-array v0, p1, [Lcom/zte/engineer/SaveItems;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lcom/zte/engineer/SaveItems$1;->newArray(I)[Lcom/zte/engineer/SaveItems;

    move-result-object v0

    return-object v0
.end method
