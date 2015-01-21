.class public Lcom/zte/heartyservice/common/datatype/UninstallableAppInfoCreator;
.super Ljava/lang/Object;
.source "UninstallableAppInfoCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 9
    new-instance v0, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    invoke-direct {v0, p1}, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfoCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 13
    new-array v0, p1, [Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfoCreator;->newArray(I)[Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    move-result-object v0

    return-object v0
.end method
