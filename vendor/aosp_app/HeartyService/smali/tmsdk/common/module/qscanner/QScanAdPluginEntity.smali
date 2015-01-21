.class public Ltmsdk/common/module/qscanner/QScanAdPluginEntity;
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
            "Ltmsdk/common/module/qscanner/QScanAdPluginEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public banIps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public banUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public behaviors:J

.field public id:I

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity$1;

    invoke-direct {v0}, Ltmsdk/common/module/qscanner/QScanAdPluginEntity$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->id:I

    .line 26
    iput v0, p0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->type:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->behaviors:J

    .line 34
    iput-object v2, p0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->banUrls:Ljava/util/ArrayList;

    .line 38
    iput-object v2, p0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->banIps:Ljava/util/ArrayList;

    .line 42
    iput-object v2, p0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 73
    iget v0, p0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-wide v0, p0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->behaviors:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->banUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->banIps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 78
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return-void
.end method
