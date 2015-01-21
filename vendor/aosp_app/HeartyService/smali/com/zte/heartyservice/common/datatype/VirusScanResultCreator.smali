.class public Lcom/zte/heartyservice/common/datatype/VirusScanResultCreator;
.super Ljava/lang/Object;
.source "VirusScanResultCreator.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    .locals 1
    .parameter "source"

    .prologue
    .line 10
    new-instance v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-direct {v0, p1}, Lcom/zte/heartyservice/common/datatype/VirusScanResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/VirusScanResultCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 15
    new-array v0, p1, [Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/VirusScanResultCreator;->newArray(I)[Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v0

    return-object v0
.end method
