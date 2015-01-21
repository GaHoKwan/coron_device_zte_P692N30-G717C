.class public final Ltmsdk/common/module/network/TrafficEntity;
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
            "Ltmsdk/common/module/network/TrafficEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mLastDownValue:J

.field public mLastUpValue:J

.field public mMobileDownValue:J

.field public mMobileUpValue:J

.field public mPkg:Ljava/lang/String;

.field public mWIFIDownValue:J

.field public mWIFIUpValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Ltmsdk/common/module/network/TrafficEntity$1;

    invoke-direct {v0}, Ltmsdk/common/module/network/TrafficEntity$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/network/TrafficEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mLastUpValue:J

    .line 13
    iput-wide v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mLastDownValue:J

    .line 14
    iput-wide v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    .line 15
    iput-wide v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    .line 16
    iput-wide v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    .line 17
    iput-wide v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;
    .locals 6
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, entity:Ltmsdk/common/module/network/TrafficEntity;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37
    new-instance v1, Ltmsdk/common/module/network/TrafficEntity;

    .end local v1           #entity:Ltmsdk/common/module/network/TrafficEntity;
    invoke-direct {v1}, Ltmsdk/common/module/network/TrafficEntity;-><init>()V

    .line 39
    .restart local v1       #entity:Ltmsdk/common/module/network/TrafficEntity;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 40
    const-string v4, "[,:]"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, segs:[Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v2, v4

    iput-object v4, v1, Ltmsdk/common/module/network/TrafficEntity;->mPkg:Ljava/lang/String;

    .line 87
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Ltmsdk/common/module/network/TrafficEntity;->mLastUpValue:J

    .line 88
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Ltmsdk/common/module/network/TrafficEntity;->mLastDownValue:J

    .line 89
    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    .line 90
    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    .line 91
    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    .line 92
    const/4 v4, 0x6

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v2           #segs:[Ljava/lang/String;
    :cond_0
    move-object v3, v1

    .line 103
    :goto_0
    return-object v3

    .line 93
    .restart local v2       #segs:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0

    .line 98
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static toString(Ltmsdk/common/module/network/TrafficEntity;)Ljava/lang/String;
    .locals 5
    .parameter "entity"

    .prologue
    .line 25
    const-string v0, "%s,%s,%s,%s,%s,%s,%s"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ltmsdk/common/module/network/TrafficEntity;->mPkg:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Ltmsdk/common/module/network/TrafficEntity;->mLastUpValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Ltmsdk/common/module/network/TrafficEntity;->mLastDownValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v3, p0, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Ltmsdk/common/module/network/TrafficEntity;->toString(Ltmsdk/common/module/network/TrafficEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 113
    iget-object v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-wide v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mLastUpValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget-wide v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mLastDownValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-wide v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-wide v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-wide v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget-wide v0, p0, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    return-void
.end method
