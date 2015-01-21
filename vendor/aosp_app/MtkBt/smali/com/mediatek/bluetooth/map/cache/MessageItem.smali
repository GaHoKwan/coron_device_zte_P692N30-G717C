.class public Lcom/mediatek/bluetooth/map/cache/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# instance fields
.field private AttachSize:I

.field private DateTime:Ljava/lang/String;

.field private MsgHandle:J

.field private MsgType:I

.field private OrignalMsgSize:I

.field private RecipientAddr:Ljava/lang/String;

.field private RecipientName:Ljava/lang/String;

.field private RecipientStatus:I

.field private ReplyToAddr:Ljava/lang/String;

.field private SenderAddr:Ljava/lang/String;

.field private SenderName:Ljava/lang/String;

.field private Subject:Ljava/lang/String;

.field private bPriority:Z

.field private bProtected:Z

.field private bSent:Z

.field private bText:Z

.field private mMaxSubjectLength:I

.field private read:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->bSent:Z

    .line 66
    const/16 v0, 0xfe

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->mMaxSubjectLength:I

    .line 70
    return-void
.end method

.method private encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "rawData"

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    const/4 v3, 0x0

    .line 201
    :goto_0
    return-object v3

    .line 176
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v2, result:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/text/StringCharacterIterator;

    invoke-direct {v1, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, iterator:Ljava/text/StringCharacterIterator;
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    .line 179
    .local v0, character:C
    :goto_1
    const v3, 0xffff

    if-eq v0, v3, :cond_6

    .line 180
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_1

    .line 181
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :goto_2
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    goto :goto_1

    .line 183
    :cond_1
    const/16 v3, 0x3e

    if-ne v0, v3, :cond_2

    .line 184
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 186
    :cond_2
    const/16 v3, 0x22

    if-ne v0, v3, :cond_3

    .line 187
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 189
    :cond_3
    const/16 v3, 0x27

    if-ne v0, v3, :cond_4

    .line 190
    const-string v3, "&apos;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 192
    :cond_4
    const/16 v3, 0x26

    if-ne v0, v3, :cond_5

    .line 193
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 197
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 201
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public resetSubjectLength()V
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0xfe

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->mMaxSubjectLength:I

    .line 77
    return-void
.end method

.method public declared-synchronized set(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V
    .locals 2
    .parameter "subject"
    .parameter "time"
    .parameter "senderAddr"
    .parameter "sendName"
    .parameter "reply"
    .parameter "recepientName"
    .parameter "recepientAddr"
    .parameter "msgType"
    .parameter "origSize"
    .parameter "bText"
    .parameter "recepientStatus"
    .parameter "AttachSize"
    .parameter "read"
    .parameter "protect"

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setSubject(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->setDatetime(J)V

    .line 88
    iput-object p4, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->SenderAddr:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->SenderName:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->ReplyToAddr:Ljava/lang/String;

    .line 91
    iput-object p7, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->RecipientName:Ljava/lang/String;

    .line 92
    iput-object p8, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->RecipientAddr:Ljava/lang/String;

    .line 93
    iput p12, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->RecipientStatus:I

    .line 94
    iput p9, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->MsgType:I

    .line 95
    iput p10, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->OrignalMsgSize:I

    .line 96
    iput-boolean p11, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->bText:Z

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->bPriority:Z

    .line 99
    move/from16 v0, p14

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->read:I

    .line 100
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->bProtected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAttachSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 153
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->AttachSize:I

    .line 154
    return-void
.end method

.method public setDatetime(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 123
    invoke-static {p1, p2}, Lcom/mediatek/bluetooth/map/util/UtcUtil;->convertMillisToUtc(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->DateTime:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setHandle(J)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->MsgHandle:J

    .line 121
    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 144
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->MsgType:I

    .line 145
    return-void
.end method

.method public setPriority(Z)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->bPriority:Z

    .line 157
    return-void
.end method

.method public setProtected(Z)V
    .locals 0
    .parameter "isProtected"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->bProtected:Z

    .line 163
    return-void
.end method

.method public setReadStatus(I)V
    .locals 0
    .parameter "read"

    .prologue
    .line 159
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->read:I

    .line 160
    return-void
.end method

.method public setRecipientAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->RecipientAddr:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setRecipientName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->RecipientName:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setRecipientStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 141
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->RecipientStatus:I

    .line 142
    return-void
.end method

.method public setReplyAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->ReplyToAddr:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setSenderAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->SenderAddr:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->SenderName:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 147
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->OrignalMsgSize:I

    .line 148
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 6
    .parameter "sub"

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/cache/MessageItem;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 109
    .local v0, databytes:[B
    array-length v1, v0

    .line 110
    .local v1, length:I
    const/16 v2, 0xfe

    if-le v1, v2, :cond_1

    .line 112
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0xfd

    const-string v5, "utf-8"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->Subject:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    goto :goto_0

    .line 116
    :cond_1
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->Subject:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSubjectLength(I)V
    .locals 0
    .parameter "len"

    .prologue
    .line 72
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->mMaxSubjectLength:I

    .line 73
    return-void
.end method

.method public setText(Z)V
    .locals 0
    .parameter "text"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageItem;->bText:Z

    .line 151
    return-void
.end method
