.class public Ltmsdk/common/module/permission/PermissionTableItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/permission/PermissionTableItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mRids:[I

.field public mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ltmsdk/common/module/permission/PermissionTableItem$1;

    invoke-direct {v0}, Ltmsdk/common/module/permission/PermissionTableItem$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/permission/PermissionTableItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[ILjava/lang/String;)V
    .locals 2
    .parameter "uid"
    .parameter "rids"
    .parameter "packagename"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ltmsdk/common/module/permission/PermissionRequestIDs;->getCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Ltmsdk/common/module/permission/PermissionTableItem;->mRids:[I

    .line 34
    iput p1, p0, Ltmsdk/common/module/permission/PermissionTableItem;->mUid:I

    .line 35
    if-eqz p2, :cond_0

    array-length v0, p2

    invoke-static {}, Ltmsdk/common/module/permission/PermissionRequestIDs;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 36
    iput-object p2, p0, Ltmsdk/common/module/permission/PermissionTableItem;->mRids:[I

    .line 38
    :cond_0
    iput-object p3, p0, Ltmsdk/common/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Ltmsdk/common/module/permission/PermissionTableItem;
    .locals 4
    .parameter "data"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .local v3, uid:I
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 78
    .local v2, rids:[I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, pkgname:Ljava/lang/String;
    new-instance v0, Ltmsdk/common/module/permission/PermissionTableItem;

    invoke-direct {v0, v3, v2, v1}, Ltmsdk/common/module/permission/PermissionTableItem;-><init>(I[ILjava/lang/String;)V

    .line 81
    .local v0, item:Ltmsdk/common/module/permission/PermissionTableItem;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 43
    if-eqz p1, :cond_0

    instance-of v2, p1, Ltmsdk/common/module/permission/PermissionTableItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 44
    check-cast v0, Ltmsdk/common/module/permission/PermissionTableItem;

    .line 45
    .local v0, other:Ltmsdk/common/module/permission/PermissionTableItem;
    if-eqz v0, :cond_0

    iget v2, p0, Ltmsdk/common/module/permission/PermissionTableItem;->mUid:I

    iget v3, v0, Ltmsdk/common/module/permission/PermissionTableItem;->mUid:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ltmsdk/common/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Ltmsdk/common/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 47
    .end local v0           #other:Ltmsdk/common/module/permission/PermissionTableItem;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Ltmsdk/common/module/permission/PermissionTableItem;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    iget-object v1, p0, Ltmsdk/common/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 66
    iget v0, p0, Ltmsdk/common/module/permission/PermissionTableItem;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Ltmsdk/common/module/permission/PermissionTableItem;->mRids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 68
    iget-object v0, p0, Ltmsdk/common/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
