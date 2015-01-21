.class public Ltmsdk/common/module/permission/RidEnableList;
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
            "Ltmsdk/common/module/permission/RidEnableList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEnables:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Ltmsdk/common/module/permission/RidEnableList$1;

    invoke-direct {v0}, Ltmsdk/common/module/permission/RidEnableList$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/permission/RidEnableList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18
    .local v0, count:I
    invoke-static {}, Ltmsdk/common/module/permission/PermissionRequestIDs;->getCount()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    .line 19
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 20
    iget-object v3, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, v3, v1

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 22
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ltmsdk/common/module/permission/RidEnableList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Ltmsdk/common/module/permission/RidEnableList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([Z)V
    .locals 0
    .parameter "enables"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    .line 14
    return-void
.end method


# virtual methods
.method public deepClone()Ltmsdk/common/module/permission/RidEnableList;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v1, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    array-length v1, v1

    new-array v0, v1, [Z

    .line 93
    .local v0, newone:[Z
    iget-object v1, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    iget-object v2, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    new-instance v1, Ltmsdk/common/module/permission/RidEnableList;

    invoke-direct {v1, v0}, Ltmsdk/common/module/permission/RidEnableList;-><init>([Z)V

    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 39
    const/4 v2, 0x1

    .line 41
    .local v2, result:Z
    if-eqz p1, :cond_0

    instance-of v3, p1, Ltmsdk/common/module/permission/RidEnableList;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 42
    check-cast v1, Ltmsdk/common/module/permission/RidEnableList;

    .line 44
    .local v1, other:Ltmsdk/common/module/permission/RidEnableList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 45
    iget-object v3, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    aget-boolean v3, v3, v0

    iget-object v4, v1, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    aget-boolean v4, v4, v0

    if-eq v3, v4, :cond_1

    .line 46
    const/4 v2, 0x0

    .line 52
    .end local v0           #i:I
    .end local v1           #other:Ltmsdk/common/module/permission/RidEnableList;
    :cond_0
    return v2

    .line 44
    .restart local v0       #i:I
    .restart local v1       #other:Ltmsdk/common/module/permission/RidEnableList;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public get(I)Z
    .locals 1
    .parameter "rid"

    .prologue
    .line 73
    if-ltz p1, :cond_0

    iget-object v0, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, i:I
    const/4 v0, 0x0

    .line 60
    .local v0, hashCode:I
    :goto_0
    iget-object v2, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 61
    shl-int/lit8 v3, v0, 0x1

    iget-object v2, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    or-int v0, v3, v2

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 65
    :cond_1
    return v0
.end method

.method public isAnyRidEnable()Z
    .locals 5

    .prologue
    .line 83
    iget-object v0, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    .local v0, arr$:[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, v0, v2

    .line 84
    .local v1, b:Z
    if-eqz v1, :cond_0

    .line 85
    const/4 v4, 0x1

    .line 88
    .end local v1           #b:Z
    :goto_1
    return v4

    .line 83
    .restart local v1       #b:Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v1           #b:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public set(IZ)V
    .locals 1
    .parameter "rid"
    .parameter "enable"

    .prologue
    .line 69
    iget-object v0, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    aput-boolean p2, v0, p1

    .line 70
    return-void
.end method

.method public values()[Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v1, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    array-length v1, v1

    new-array v0, v1, [Z

    .line 78
    .local v0, newone:[Z
    iget-object v1, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    iget-object v2, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 31
    iget-object v1, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 33
    iget-object v1, p0, Ltmsdk/common/module/permission/RidEnableList;->mEnables:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 35
    :cond_1
    return-void
.end method
