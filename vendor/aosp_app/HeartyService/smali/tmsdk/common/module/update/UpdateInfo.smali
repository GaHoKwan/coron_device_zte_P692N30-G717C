.class public Ltmsdk/common/module/update/UpdateInfo;
.super Ltmsdk/common/BaseEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/update/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public data1:Ljava/lang/Object;

.field public data2:Ljava/lang/Object;

.field public fileName:Ljava/lang/String;

.field public flag:J

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ltmsdk/common/module/update/UpdateInfo$1;

    invoke-direct {v0}, Ltmsdk/common/module/update/UpdateInfo$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/update/UpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 54
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 55
    invoke-direct {p0, p1}, Ltmsdk/common/module/update/UpdateInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 56
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/update/UpdateInfo;->id:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/update/UpdateInfo;->type:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/update/UpdateInfo;->url:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 83
    iget v0, p0, Ltmsdk/common/module/update/UpdateInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-wide v0, p0, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget v0, p0, Ltmsdk/common/module/update/UpdateInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return-void
.end method
