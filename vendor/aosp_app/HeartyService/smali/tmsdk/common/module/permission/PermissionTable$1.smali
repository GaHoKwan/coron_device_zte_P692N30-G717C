.class final Ltmsdk/common/module/permission/PermissionTable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/permission/PermissionTable;
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
        "Ltmsdk/common/module/permission/PermissionTable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bK(I)[Ltmsdk/common/module/permission/PermissionTable;
    .locals 1
    .parameter "size"

    .prologue
    .line 235
    new-array v0, p1, [Ltmsdk/common/module/permission/PermissionTable;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Ltmsdk/common/module/permission/PermissionTable$1;->t(Landroid/os/Parcel;)Ltmsdk/common/module/permission/PermissionTable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Ltmsdk/common/module/permission/PermissionTable$1;->bK(I)[Ltmsdk/common/module/permission/PermissionTable;

    move-result-object v0

    return-object v0
.end method

.method public t(Landroid/os/Parcel;)Ltmsdk/common/module/permission/PermissionTable;
    .locals 5
    .parameter "src"

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 223
    .local v3, size:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/permission/PermissionTableItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 226
    invoke-static {p1}, Ltmsdk/common/module/permission/PermissionTableItem;->createFromParcel(Landroid/os/Parcel;)Ltmsdk/common/module/permission/PermissionTableItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, dummydatabasename:Ljava/lang/String;
    new-instance v4, Ltmsdk/common/module/permission/PermissionTable;

    invoke-direct {v4, v2, v0}, Ltmsdk/common/module/permission/PermissionTable;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v4
.end method
