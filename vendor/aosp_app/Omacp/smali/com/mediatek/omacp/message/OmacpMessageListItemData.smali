.class public Lcom/mediatek/omacp/message/OmacpMessageListItemData;
.super Ljava/lang/Object;
.source "OmacpMessageListItemData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Omacp/OmacpMessageListItemData"


# instance fields
.field private mDate:Ljava/lang/String;

.field private mHasInstalled:Z

.field private mIsRead:Z

.field private mMessageId:J

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p2, :cond_0

    .line 65
    const-string v0, "Omacp/OmacpMessageListItemData"

    const-string v1, "OmacpMessageListItemData cursor is null."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->mMessageId:J

    .line 70
    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->mTitle:Ljava/lang/String;

    .line 71
    const/16 v0, 0xc

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->mSummary:Ljava/lang/String;

    .line 72
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {p1, v3, v4, v2}, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->mDate:Ljava/lang/String;

    .line 73
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->mIsRead:Z

    .line 74
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->mHasInstalled:Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 73
    goto :goto_1

    :cond_2
    move v1, v2

    .line 74
    goto :goto_2
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 78
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 79
    .local v2, then:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 80
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 81
    .local v1, now:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 84
    const v0, 0x80b00

    .line 88
    .local v0, formatFlags:I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_1

    .line 89
    or-int/lit8 v0, v0, 0x14

    .line 102
    :goto_0
    if-eqz p3, :cond_0

    .line 103
    or-int/lit8 v0, v0, 0x11

    .line 106
    :cond_0
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 90
    :cond_1
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_2

    .line 92
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 95
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->mMessageId:J

    return-wide v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->mHasInstalled:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;->mIsRead:Z

    return v0
.end method
