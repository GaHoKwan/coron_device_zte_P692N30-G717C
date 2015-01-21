.class Lcom/android/mms/util/MuteEntry;
.super Ljava/lang/Object;
.source "MuteCache.java"


# instance fields
.field threadMute:J

.field threadMuteStart:J

.field threadNotificationEnabled:Z


# direct methods
.method public constructor <init>(JJZ)V
    .locals 2
    .parameter "lthreadMute"
    .parameter "lthreadMuteStart"
    .parameter "lthreadNotificationEnabled"

    .prologue
    const-wide/16 v0, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-wide v0, p0, Lcom/android/mms/util/MuteEntry;->threadMute:J

    .line 135
    iput-wide v0, p0, Lcom/android/mms/util/MuteEntry;->threadMuteStart:J

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/MuteEntry;->threadNotificationEnabled:Z

    .line 139
    iput-wide p1, p0, Lcom/android/mms/util/MuteEntry;->threadMute:J

    .line 140
    iput-wide p3, p0, Lcom/android/mms/util/MuteEntry;->threadMuteStart:J

    .line 141
    iput-boolean p5, p0, Lcom/android/mms/util/MuteEntry;->threadNotificationEnabled:Z

    .line 142
    return-void
.end method
