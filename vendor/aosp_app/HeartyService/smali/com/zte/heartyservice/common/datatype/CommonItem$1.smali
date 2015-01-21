.class final Lcom/zte/heartyservice/common/datatype/CommonItem$1;
.super Ljava/lang/Object;
.source "CommonItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/datatype/CommonItem;
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
        "Lcom/zte/heartyservice/common/datatype/CommonItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/heartyservice/common/datatype/CommonItem;
    .locals 1
    .parameter "source"

    .prologue
    .line 58
    new-instance v0, Lcom/zte/heartyservice/common/datatype/CommonItem;

    invoke-direct {v0, p1}, Lcom/zte/heartyservice/common/datatype/CommonItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/heartyservice/common/datatype/CommonItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/heartyservice/common/datatype/CommonItem;
    .locals 1
    .parameter "size"

    .prologue
    .line 61
    new-array v0, p1, [Lcom/zte/heartyservice/common/datatype/CommonItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonItem$1;->newArray(I)[Lcom/zte/heartyservice/common/datatype/CommonItem;

    move-result-object v0

    return-object v0
.end method
