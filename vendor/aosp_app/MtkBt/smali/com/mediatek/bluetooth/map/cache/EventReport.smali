.class public Lcom/mediatek/bluetooth/map/cache/EventReport;
.super Ljava/lang/Object;
.source "EventReport.java"


# instance fields
.field private mEventType:I

.field private mFolder:Ljava/lang/String;

.field private mHandle:J

.field private mMasId:I

.field private mMsgType:I

.field private mOldFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "masId"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mMasId:I

    .line 59
    return-void
.end method


# virtual methods
.method public match(I)Z
    .locals 1
    .parameter "masId"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mMasId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDeliverResult(JILjava/lang/String;I)Z
    .locals 3
    .parameter "id"
    .parameter "type"
    .parameter "folder"
    .parameter "result"

    .prologue
    const/4 v0, 0x1

    .line 92
    if-eqz p4, :cond_0

    invoke-static {p3}, Lcom/mediatek/bluetooth/map/MAP;->isMessageTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 95
    :cond_1
    if-ne p5, v0, :cond_2

    .line 96
    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mEventType:I

    .line 101
    :goto_1
    invoke-static {p3, p1, p2}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mHandle:J

    .line 102
    iput p3, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mMsgType:I

    .line 103
    iput-object p4, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mFolder:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mEventType:I

    goto :goto_1
.end method

.method public notifyMemoryStatus(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mEventType:I

    .line 134
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mEventType:I

    goto :goto_0
.end method

.method public notifyMessageDeleted(JILjava/lang/String;)Z
    .locals 2
    .parameter "id"
    .parameter "type"
    .parameter "folder"

    .prologue
    .line 107
    invoke-static {p3}, Lcom/mediatek/bluetooth/map/MAP;->isMessageTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    .line 110
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mEventType:I

    .line 111
    invoke-static {p3, p1, p2}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mHandle:J

    .line 112
    iput p3, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mMsgType:I

    .line 113
    iput-object p4, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mFolder:Ljava/lang/String;

    .line 114
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyMessageShifted(JILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "id"
    .parameter "type"
    .parameter "oldFolder"
    .parameter "newFolder"

    .prologue
    .line 118
    invoke-static {p3}, Lcom/mediatek/bluetooth/map/MAP;->isMessageTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 121
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mEventType:I

    .line 122
    iput p3, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mMsgType:I

    .line 123
    iput-object p5, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mFolder:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mOldFolder:Ljava/lang/String;

    .line 125
    invoke-static {p3, p1, p2}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mHandle:J

    .line 126
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyNewMessageEvent(JILjava/lang/String;)Z
    .locals 2
    .parameter "id"
    .parameter "type"
    .parameter "folder"

    .prologue
    const/4 v0, 0x0

    .line 66
    if-eqz p4, :cond_0

    invoke-static {p3}, Lcom/mediatek/bluetooth/map/MAP;->isMessageTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mEventType:I

    .line 70
    invoke-static {p3, p1, p2}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mHandle:J

    .line 71
    iput p3, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mMsgType:I

    .line 72
    iput-object p4, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mFolder:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifySendResult(JILjava/lang/String;I)Z
    .locals 3
    .parameter "id"
    .parameter "type"
    .parameter "folder"
    .parameter "result"

    .prologue
    const/4 v0, 0x1

    .line 77
    if-eqz p4, :cond_0

    invoke-static {p3}, Lcom/mediatek/bluetooth/map/MAP;->isMessageTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    .line 80
    :cond_1
    if-ne p5, v0, :cond_2

    .line 81
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mEventType:I

    .line 86
    :goto_1
    invoke-static {p3, p1, p2}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getHandle(IJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mHandle:J

    .line 87
    iput p3, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mMsgType:I

    .line 88
    iput-object p4, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mFolder:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/bluetooth/map/cache/EventReport;->mEventType:I

    goto :goto_1
.end method
