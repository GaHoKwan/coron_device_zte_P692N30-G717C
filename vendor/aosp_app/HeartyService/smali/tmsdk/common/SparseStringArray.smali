.class public Ltmsdk/common/SparseStringArray;
.super Landroid/util/SparseArray;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/SparseStringArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ltmsdk/common/SparseStringArray$1;

    invoke-direct {v0}, Ltmsdk/common/SparseStringArray$1;-><init>()V

    sput-object v0, Ltmsdk/common/SparseStringArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "initialCapacity"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/util/SparseArray;-><init>(I)V

    .line 19
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "sourceAfterSize"
    .parameter "size"

    .prologue
    .line 22
    add-int/lit8 v3, p2, 0x20

    and-int/lit8 v3, v3, -0x20

    invoke-direct {p0, v3}, Ltmsdk/common/SparseStringArray;-><init>(I)V

    .line 23
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 25
    .local v1, key:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Ltmsdk/common/SparseStringArray;->put(ILjava/lang/Object;)V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    .end local v1           #key:I
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ltmsdk/common/SparseStringArray;->size()I

    move-result v1

    .line 38
    .local v1, size:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 40
    invoke-virtual {p0, v0}, Ltmsdk/common/SparseStringArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p0, v0}, Ltmsdk/common/SparseStringArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    .line 37
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
