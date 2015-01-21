.class public final Ltmsdk/common/module/permission/PermissionTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/permission/PermissionTable;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_MODE_ABORT:I = 0x1

.field public static final PERMISSION_MODE_ACCEPT:I = 0x0

.field public static final PERMISSION_MODE_ASK:B = 0x2t

.field public static final PERMISSION_MODE_NULL:I = -0x1


# instance fields
.field private Ak:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltmsdk/common/module/permission/PermissionTableItem;",
            ">;"
        }
    .end annotation
.end field

.field private Al:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Ltmsdk/common/module/permission/PermissionTable$1;

    invoke-direct {v0}, Ltmsdk/common/module/permission/PermissionTable$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/permission/PermissionTable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "dummyDatabaseName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/permission/PermissionTableItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/permission/PermissionTableItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/permission/PermissionTableItem;

    .line 50
    .local v1, item:Ltmsdk/common/module/permission/PermissionTableItem;
    iget-object v2, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    iget v3, v1, Ltmsdk/common/module/permission/PermissionTableItem;->mUid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 52
    .end local v1           #item:Ltmsdk/common/module/permission/PermissionTableItem;
    :cond_0
    iput-object p2, p0, Ltmsdk/common/module/permission/PermissionTable;->Al:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public addItem(Ltmsdk/common/module/permission/PermissionTableItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 135
    iget-object v0, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 136
    iget-object v0, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    iget v1, p1, Ltmsdk/common/module/permission/PermissionTableItem;->mUid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 198
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getDummyDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ltmsdk/common/module/permission/PermissionTable;->Al:Ljava/lang/String;

    return-object v0
.end method

.method public getItemByUid(I)Ltmsdk/common/module/permission/PermissionTableItem;
    .locals 1
    .parameter "uid"

    .prologue
    .line 178
    iget-object v0, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/permission/PermissionTableItem;

    return-object v0
.end method

.method public declared-synchronized getItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/permission/PermissionTableItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 165
    .local v2, size:I
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v1, r:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/permission/PermissionTableItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 167
    iget-object v3, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    monitor-exit p0

    return-object v1

    .line 164
    .end local v0           #i:I
    .end local v1           #r:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/permission/PermissionTableItem;>;"
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getValue(II)I
    .locals 3
    .parameter "uid"
    .parameter "rid"

    .prologue
    .line 188
    const/4 v1, -0x1

    .line 189
    .local v1, result:I
    iget-object v2, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/permission/PermissionTableItem;

    .line 190
    .local v0, item:Ltmsdk/common/module/permission/PermissionTableItem;
    if-eqz v0, :cond_0

    invoke-static {}, Ltmsdk/common/module/permission/PermissionRequestIDs;->getCount()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 191
    iget-object v2, v0, Ltmsdk/common/module/permission/PermissionTableItem;->mRids:[I

    aget v1, v2, p2

    .line 193
    :cond_0
    return v1
.end method

.method public removeItem(Ltmsdk/common/module/permission/PermissionTableItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 151
    iget-object v0, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 152
    iget-object v0, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    iget v1, p1, Ltmsdk/common/module/permission/PermissionTableItem;->mUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 153
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDummyDatabaseName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 65
    iput-object p1, p0, Ltmsdk/common/module/permission/PermissionTable;->Al:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionTable table count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " db="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltmsdk/common/module/permission/PermissionTable;->Al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)Z
    .locals 2
    .parameter "uid"
    .parameter "rid"
    .parameter "value"

    .prologue
    .line 119
    iget-object v1, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/permission/PermissionTableItem;

    .line 121
    .local v0, item:Ltmsdk/common/module/permission/PermissionTableItem;
    if-eqz v0, :cond_0

    invoke-static {}, Ltmsdk/common/module/permission/PermissionRequestIDs;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 122
    iget-object v1, v0, Ltmsdk/common/module/permission/PermissionTableItem;->mRids:[I

    aput p3, v1, p2

    .line 126
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Ltmsdk/common/module/permission/PermissionTableItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 102
    iget-object v1, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    iget v2, p1, Ltmsdk/common/module/permission/PermissionTableItem;->mUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/permission/PermissionTableItem;

    .line 103
    .local v0, value:Ltmsdk/common/module/permission/PermissionTableItem;
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    iget v2, p1, Ltmsdk/common/module/permission/PermissionTableItem;->mUid:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 203
    .local v1, size:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 205
    iget-object v2, p0, Ltmsdk/common/module/permission/PermissionTable;->Ak:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/permission/PermissionTableItem;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ltmsdk/common/module/permission/PermissionTableItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object v2, p0, Ltmsdk/common/module/permission/PermissionTable;->Al:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 202
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
