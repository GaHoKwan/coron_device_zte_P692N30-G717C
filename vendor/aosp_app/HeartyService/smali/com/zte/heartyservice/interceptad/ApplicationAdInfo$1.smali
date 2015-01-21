.class final Lcom/zte/heartyservice/interceptad/ApplicationAdInfo$1;
.super Ljava/lang/Object;
.source "ApplicationAdInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
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
        "Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 252
    new-instance v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    invoke-direct {v0, p1}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 256
    new-array v0, p1, [Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo$1;->newArray(I)[Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v0

    return-object v0
.end method
