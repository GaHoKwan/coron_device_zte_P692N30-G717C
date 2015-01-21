.class public Lcom/android/emailcommon/service/OofParams;
.super Ljava/lang/Object;
.source "OofParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/OofParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEndTimeInMillis:J

.field public mIsExternal:I

.field public mOofState:I

.field public mReplyMessage:Ljava/lang/String;

.field public mStartTimeInMillis:J

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/android/emailcommon/service/OofParams$1;

    invoke-direct {v0}, Lcom/android/emailcommon/service/OofParams$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/service/OofParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJJILjava/lang/String;)V
    .locals 1
    .parameter "status"
    .parameter "oofState"
    .parameter "startTimeInMillis"
    .parameter "endTimeInMillis"
    .parameter "isExternal"
    .parameter "replyMessage"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/service/OofParams;->mIsExternal:I

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/OofParams;->mReplyMessage:Ljava/lang/String;

    .line 18
    iput p1, p0, Lcom/android/emailcommon/service/OofParams;->mStatus:I

    .line 19
    iput p2, p0, Lcom/android/emailcommon/service/OofParams;->mOofState:I

    .line 20
    iput-wide p3, p0, Lcom/android/emailcommon/service/OofParams;->mStartTimeInMillis:J

    .line 21
    iput-wide p5, p0, Lcom/android/emailcommon/service/OofParams;->mEndTimeInMillis:J

    .line 22
    iput p7, p0, Lcom/android/emailcommon/service/OofParams;->mIsExternal:I

    .line 23
    iput-object p8, p0, Lcom/android/emailcommon/service/OofParams;->mReplyMessage:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/service/OofParams;->mIsExternal:I

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/OofParams;->mReplyMessage:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/OofParams;->mStatus:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/OofParams;->mOofState:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/service/OofParams;->mStartTimeInMillis:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/service/OofParams;->mEndTimeInMillis:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/OofParams;->mReplyMessage:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/OofParams;->mIsExternal:I

    .line 115
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getEndTimeInMillis()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/android/emailcommon/service/OofParams;->mEndTimeInMillis:J

    return-wide v0
.end method

.method public getIsExternal()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/emailcommon/service/OofParams;->mIsExternal:I

    return v0
.end method

.method public getOofState()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/emailcommon/service/OofParams;->mOofState:I

    return v0
.end method

.method public getReplyMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/emailcommon/service/OofParams;->mReplyMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeInMillis()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/emailcommon/service/OofParams;->mStartTimeInMillis:J

    return-wide v0
.end method

.method public getmStatus()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/emailcommon/service/OofParams;->mStatus:I

    return v0
.end method

.method public setEndTimeInMillis(J)V
    .locals 0
    .parameter "mEndTimeInMillis"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/emailcommon/service/OofParams;->mEndTimeInMillis:J

    .line 56
    return-void
.end method

.method public setIsExternal(I)V
    .locals 0
    .parameter "mIsExternal"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/emailcommon/service/OofParams;->mIsExternal:I

    .line 64
    return-void
.end method

.method public setOofState(I)V
    .locals 0
    .parameter "mOofState"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/emailcommon/service/OofParams;->mOofState:I

    .line 40
    return-void
.end method

.method public setReplyMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "mReplyMessage"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/emailcommon/service/OofParams;->mReplyMessage:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setStartTimeInMillis(J)V
    .locals 0
    .parameter "mStartTimeInMillis"

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/android/emailcommon/service/OofParams;->mStartTimeInMillis:J

    .line 48
    return-void
.end method

.method public setmStatus(I)V
    .locals 0
    .parameter "mStatus"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/emailcommon/service/OofParams;->mStatus:I

    .line 32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/emailcommon/service/OofParams;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/android/emailcommon/service/OofParams;->mOofState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-wide v0, p0, Lcom/android/emailcommon/service/OofParams;->mStartTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget-wide v0, p0, Lcom/android/emailcommon/service/OofParams;->mEndTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-object v0, p0, Lcom/android/emailcommon/service/OofParams;->mReplyMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/android/emailcommon/service/OofParams;->mIsExternal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
