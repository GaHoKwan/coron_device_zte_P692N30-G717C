.class public Ltmsdk/common/module/netsetting/Rule;
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
            "Ltmsdk/common/module/netsetting/Rule;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_HOST:I = 0x2

.field public static final TYPE_UID:I = 0x1

.field public static final VERDICT_ACCEPT:Ljava/lang/String; = "ACCEPT"

.field public static final VERDICT_DROP:Ljava/lang/String; = "DROP"

.field public static final VERDICT_QUEUE:Ljava/lang/String; = "NFQUEUE"


# instance fields
.field public host:Ljava/lang/String;

.field public hostVerdict:Ljava/lang/String;

.field public type:I

.field public uid:I

.field public uidMobileVerdict:Ljava/lang/String;

.field public uidWifiVerdict:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Ltmsdk/common/module/netsetting/Rule$1;

    invoke-direct {v0}, Ltmsdk/common/module/netsetting/Rule$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/netsetting/Rule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/netsetting/Rule;->type:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/netsetting/Rule;->uid:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/netsetting/Rule;->host:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/netsetting/Rule;->uidMobileVerdict:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/netsetting/Rule;->hostVerdict:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 104
    iget v0, p0, Ltmsdk/common/module/netsetting/Rule;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Ltmsdk/common/module/netsetting/Rule;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Ltmsdk/common/module/netsetting/Rule;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Ltmsdk/common/module/netsetting/Rule;->uidMobileVerdict:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Ltmsdk/common/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Ltmsdk/common/module/netsetting/Rule;->hostVerdict:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return-void
.end method
