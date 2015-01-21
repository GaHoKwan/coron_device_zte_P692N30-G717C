.class public final Ltmsdk/common/module/permission/PermissionRequestInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/permission/PermissionRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mInfo1:[Ljava/lang/String;

.field public mInfo2:[I

.field public mInfo3:[B

.field public mPid:I

.field public mRid:I

.field public mUid:I

.field public mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Ltmsdk/common/module/permission/PermissionRequestInfo$1;

    invoke-direct {v0}, Ltmsdk/common/module/permission/PermissionRequestInfo$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mPid:I

    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mUid:I

    .line 55
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mPid:I

    .line 62
    iput p2, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mUid:I

    .line 63
    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Ltmsdk/common/module/permission/PermissionRequestInfo;
    .locals 4
    .parameter "data"

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .local v1, pid:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .local v2, uid:I
    new-instance v0, Ltmsdk/common/module/permission/PermissionRequestInfo;

    invoke-direct {v0, v1, v2}, Ltmsdk/common/module/permission/PermissionRequestInfo;-><init>(II)V

    .line 106
    .local v0, info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mValue:I

    .line 107
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mRid:I

    .line 109
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo2:[I

    .line 111
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    iput-object v3, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo3:[B

    .line 113
    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Ltmsdk/common/module/permission/PermissionRequestInfo;->clone()Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ltmsdk/common/module/permission/PermissionRequestInfo;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ltmsdk/common/module/permission/PermissionRequestInfo;

    iget v1, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mPid:I

    iget v2, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mUid:I

    invoke-direct {v0, v1, v2}, Ltmsdk/common/module/permission/PermissionRequestInfo;-><init>(II)V

    .line 68
    .local v0, newCopy:Ltmsdk/common/module/permission/PermissionRequestInfo;
    iget v1, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mValue:I

    iput v1, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mValue:I

    .line 69
    iget v1, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mRid:I

    iput v1, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mRid:I

    .line 70
    iget-object v1, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    .line 73
    :cond_0
    iget-object v1, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo2:[I

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo2:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo2:[I

    .line 76
    :cond_1
    iget-object v1, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo3:[B

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo3:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo3:[B

    .line 79
    :cond_2
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 87
    iget v0, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mRid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo2:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 94
    iget-object v0, p0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo3:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 95
    return-void
.end method
