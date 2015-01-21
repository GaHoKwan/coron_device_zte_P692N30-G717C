.class public final Ltmsdk/common/DataEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/DataEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private wU:Landroid/os/Bundle;

.field private wV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ltmsdk/common/DataEntity$1;

    invoke-direct {v0}, Ltmsdk/common/DataEntity$1;-><init>()V

    sput-object v0, Ltmsdk/common/DataEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Ltmsdk/common/DataEntity;->wV:I

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ltmsdk/common/DataEntity;->wU:Landroid/os/Bundle;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/DataEntity;->wV:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/DataEntity;->wU:Landroid/os/Bundle;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ltmsdk/common/DataEntity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ltmsdk/common/DataEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public bundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ltmsdk/common/DataEntity;->wU:Landroid/os/Bundle;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public what()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Ltmsdk/common/DataEntity;->wV:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 43
    iget v0, p0, Ltmsdk/common/DataEntity;->wV:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Ltmsdk/common/DataEntity;->wU:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method
