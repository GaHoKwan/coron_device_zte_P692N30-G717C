.class public Lcom/android/exchange/adapter/SettingsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "SettingsParser.java"


# instance fields
.field private mEndTimeInMillis:J

.field private mIsExternal:I

.field private mOofState:I

.field private mOofStatus:I

.field private mReplyMessage:Ljava/lang/String;

.field private final mService:Lcom/android/exchange/EasSyncService;

.field private mStartTimeInMillis:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 3
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 41
    iput v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mOofStatus:I

    .line 42
    iput v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mOofState:I

    .line 43
    iput-wide v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mStartTimeInMillis:J

    .line 44
    iput-wide v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mEndTimeInMillis:J

    .line 45
    iput v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mIsExternal:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mReplyMessage:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/exchange/adapter/SettingsParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 52
    return-void
.end method


# virtual methods
.method public getEndTimeInMillis()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mEndTimeInMillis:J

    return-wide v0
.end method

.method public getIsExternal()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mIsExternal:I

    return v0
.end method

.method public getOofState()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mOofState:I

    return v0
.end method

.method public getOofStatus()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mOofStatus:I

    return v0
.end method

.method public getReplyMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mReplyMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeInMillis()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mStartTimeInMillis:J

    return-wide v0
.end method

.method public parse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, res:Z
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x485

    if-eq v1, v2, :cond_0

    .line 84
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 87
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x486

    if-ne v1, v2, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mOofStatus:I

    .line 89
    iget-object v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v2, "Settings status = "

    iget v3, p0, Lcom/android/exchange/adapter/SettingsParser;->mOofStatus:I

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 90
    iget v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mOofStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_2
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x496

    if-ne v1, v2, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseDeviceInformation()V

    goto :goto_0

    .line 99
    :cond_3
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x489

    if-ne v1, v2, :cond_4

    .line 100
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseOof()V

    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 106
    :cond_5
    return v0
.end method

.method public parseDeviceInformation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    :goto_0
    const/16 v0, 0x496

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 111
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x488

    if-ne v0, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseSet()V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method public parseGet()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    :goto_0
    const/16 v1, 0x487

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 145
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x48a

    if-ne v1, v2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mOofState:I

    .line 147
    iget-object v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v2, "Oof state = "

    iget v3, p0, Lcom/android/exchange/adapter/SettingsParser;->mOofState:I

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 148
    :cond_0
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x48b

    if-ne v1, v2, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, time:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mStartTimeInMillis:J

    goto :goto_0

    .line 151
    .end local v0           #time:Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x48c

    if-ne v1, v2, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 153
    .restart local v0       #time:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mEndTimeInMillis:J

    goto :goto_0

    .line 154
    .end local v0           #time:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x48d

    if-ne v1, v2, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseOofMessage()V

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 160
    :cond_4
    return-void
.end method

.method public parseOof()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    :goto_0
    const/16 v0, 0x489

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 132
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mOofStatus:I

    .line 134
    iget-object v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v1, "Oof status = "

    iget v2, p0, Lcom/android/exchange/adapter/SettingsParser;->mOofStatus:I

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 135
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x487

    if-ne v0, v1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseGet()V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 141
    :cond_2
    return-void
.end method

.method public parseOofMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, enableExternal:Z
    const/4 v1, 0x0

    .line 165
    .local v1, internalLabel:Z
    :goto_0
    const/16 v2, 0x48d

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    .line 166
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x48f

    if-ne v2, v3, :cond_0

    .line 167
    const/4 v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x48e

    if-ne v2, v3, :cond_1

    .line 169
    const/4 v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x491

    if-ne v2, v3, :cond_3

    .line 171
    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v2

    iput v2, p0, Lcom/android/exchange/adapter/SettingsParser;->mIsExternal:I

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    goto :goto_0

    .line 176
    :cond_3
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x492

    if-ne v2, v3, :cond_5

    .line 177
    if-eqz v1, :cond_4

    .line 178
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/SettingsParser;->mReplyMessage:Ljava/lang/String;

    .line 179
    const/4 v1, 0x0

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 188
    :cond_6
    return-void
.end method

.method public parseSet()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    :goto_0
    const/16 v0, 0x488

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 121
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v1, "Set status = "

    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method
