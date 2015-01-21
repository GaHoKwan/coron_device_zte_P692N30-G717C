.class public Ltmsdk/common/module/aresengine/MmsHeader;
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
            "Ltmsdk/common/module/aresengine/MmsHeader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public messageType:I

.field public messageclass:[B

.field public mmsVersion:I

.field public phonenumCharset:I

.field public subject:Ljava/lang/String;

.field public subjectCharset:I

.field public transactionId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ltmsdk/common/module/aresengine/MmsHeader$1;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/MmsHeader$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/aresengine/MmsHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 49
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->phonenumCharset:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->subject:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->subjectCharset:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->messageclass:[B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->messageType:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->transactionId:[B

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->mmsVersion:I

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->phonenumCharset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->subjectCharset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->messageclass:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 71
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->messageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->transactionId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 73
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsHeader;->mmsVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
