.class public final Ltmsdk/common/module/adcheck/NotificationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/adcheck/NotificationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mFlags:J

.field public mNotificationID:J

.field public mPkg:Ljava/lang/String;

.field public mTickerText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ltmsdk/common/module/adcheck/NotificationInfo$1;

    invoke-direct {v0}, Ltmsdk/common/module/adcheck/NotificationInfo$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/adcheck/NotificationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-nez p1, :cond_1

    move v1, v2

    .line 43
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    if-eq p0, p1, :cond_0

    move-object v0, p1

    .line 42
    check-cast v0, Ltmsdk/common/module/adcheck/NotificationInfo;

    .line 43
    .local v0, other:Ltmsdk/common/module/adcheck/NotificationInfo;
    iget-wide v3, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mNotificationID:J

    iget-wide v5, v0, Ltmsdk/common/module/adcheck/NotificationInfo;->mNotificationID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mPkg:Ljava/lang/String;

    iget-object v4, v0, Ltmsdk/common/module/adcheck/NotificationInfo;->mPkg:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mTickerText:Ljava/lang/String;

    iget-object v4, v0, Ltmsdk/common/module/adcheck/NotificationInfo;->mTickerText:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mFlags:J

    iget-wide v5, v0, Ltmsdk/common/module/adcheck/NotificationInfo;->mFlags:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const-wide v6, 0xffffffffL

    const/16 v5, 0x20

    const/4 v2, 0x0

    .line 51
    const/4 v0, 0x1

    .line 52
    .local v0, hash:I
    iget-wide v3, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mNotificationID:J

    shr-long/2addr v3, v5

    long-to-int v1, v3

    add-int/lit8 v0, v1, 0x25

    .line 53
    mul-int/lit8 v1, v0, 0x29

    iget-wide v3, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mNotificationID:J

    and-long/2addr v3, v6

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 54
    mul-int/lit8 v3, v0, 0xd

    iget-object v1, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mPkg:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 55
    mul-int/lit8 v1, v0, 0xd

    iget-object v3, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mTickerText:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 56
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mFlags:J

    shr-long/2addr v2, v5

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 57
    mul-int/lit8 v1, v0, 0x29

    iget-wide v2, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mFlags:J

    and-long/2addr v2, v6

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 58
    return v0

    .line 54
    :cond_0
    iget-object v1, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 55
    :cond_1
    iget-object v2, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mTickerText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 68
    iget-wide v0, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mNotificationID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-object v0, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mTickerText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-wide v0, p0, Ltmsdk/common/module/adcheck/NotificationInfo;->mFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    return-void
.end method
