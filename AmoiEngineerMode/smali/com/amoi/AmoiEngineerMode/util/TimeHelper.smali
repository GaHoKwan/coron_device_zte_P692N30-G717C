.class public Lcom/amoi/AmoiEngineerMode/util/TimeHelper;
.super Ljava/lang/Object;
.source "TimeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareHours(Ljava/util/Date;Ljava/util/Date;)J
    .locals 6
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 15
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 16
    .local v0, time:J
    const-wide/32 v2, 0x36ee80

    div-long v2, v0, v2

    return-wide v2
.end method
