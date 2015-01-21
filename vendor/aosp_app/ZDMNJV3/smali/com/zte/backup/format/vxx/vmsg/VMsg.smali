.class public Lcom/zte/backup/format/vxx/vmsg/VMsg;
.super Lcom/zte/backup/format/vxx/Vxx;
.source "VMsg.java"


# static fields
.field private static mmsInboxSize:I

.field private static smsInboxSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput v0, Lcom/zte/backup/format/vxx/vmsg/VMsg;->smsInboxSize:I

    .line 26
    sput v0, Lcom/zte/backup/format/vxx/vmsg/VMsg;->mmsInboxSize:I

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/Vxx;-><init>()V

    return-void
.end method

.method public static export1MmsVmsgStr(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;I)Ljava/lang/String;
    .locals 7
    .parameter "mms"
    .parameter "curNum"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    const-string v6, "content://mms/inbox"

    invoke-virtual {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsIDArray(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/zte/backup/format/vxx/vmsg/VMsg;->mmsInboxSize:I

    .line 155
    :cond_0
    sget v6, Lcom/zte/backup/format/vxx/vmsg/VMsg;->mmsInboxSize:I

    if-ne p1, v6, :cond_1

    .line 156
    const-string v6, "content://mms/sent"

    invoke-virtual {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsIDArray(Ljava/lang/String;)I

    .line 159
    :cond_1
    sget v6, Lcom/zte/backup/format/vxx/vmsg/VMsg;->mmsInboxSize:I

    if-ge p1, v6, :cond_3

    const/4 v4, 0x1

    .line 160
    .local v4, isInbox:Z
    :goto_0
    move v3, p1

    .line 161
    .local v3, index:I
    const-string v1, "content://mms/inbox"

    .line 162
    .local v1, boxType:Ljava/lang/String;
    const-string v0, "X-BOX:INBOX"

    .line 164
    .local v0, boxFlag:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 165
    const-string v1, "content://mms/sent"

    .line 166
    const-string v0, "X-BOX:SENDBOX"

    .line 167
    sget v6, Lcom/zte/backup/format/vxx/vmsg/VMsg;->mmsInboxSize:I

    sub-int v3, p1, v6

    .line 170
    :cond_2
    invoke-virtual {p0, v3}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->GetMmsIDArrayByIndex(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 171
    .local v2, id:I
    invoke-virtual {p0, v1, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getMmsItemByID(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 172
    const/4 v6, 0x0

    .line 184
    :goto_1
    return-object v6

    .line 159
    .end local v0           #boxFlag:Ljava/lang/String;
    .end local v1           #boxType:Ljava/lang/String;
    .end local v2           #id:I
    .end local v3           #index:I
    .end local v4           #isInbox:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 175
    .restart local v0       #boxFlag:Ljava/lang/String;
    .restart local v1       #boxType:Ljava/lang/String;
    .restart local v2       #id:I
    .restart local v3       #index:I
    .restart local v4       #isInbox:Z
    :cond_4
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 176
    .local v5, oneMms:Ljava/lang/StringBuffer;
    const-string v6, "BEGIN:VMSG\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v6, "VERSION:1.1\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-static {p0, v4, v5}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->makeMmsTelString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;ZLjava/lang/StringBuffer;)V

    .line 180
    invoke-static {p0, v4, v0, v5}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->makeMmsBodyString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;ZLjava/lang/String;Ljava/lang/StringBuffer;)V

    .line 181
    invoke-static {p0, v5}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->makeMmsPartString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;Ljava/lang/StringBuffer;)V

    .line 183
    const-string v6, "END:VMSG\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static export1SmsVmsgStr(Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;I)Ljava/lang/String;
    .locals 8
    .parameter "sms"
    .parameter "curNum"

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    const-string v6, "content://sms/inbox"

    invoke-virtual {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getMessageIDArray(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/zte/backup/format/vxx/vmsg/VMsg;->smsInboxSize:I

    .line 33
    :cond_0
    sget v6, Lcom/zte/backup/format/vxx/vmsg/VMsg;->smsInboxSize:I

    if-ne p1, v6, :cond_1

    .line 34
    const-string v6, "content://sms/sent"

    invoke-virtual {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getMessageIDArray(Ljava/lang/String;)I

    .line 37
    :cond_1
    sget v6, Lcom/zte/backup/format/vxx/vmsg/VMsg;->smsInboxSize:I

    if-ge p1, v6, :cond_3

    const/4 v4, 0x1

    .line 38
    .local v4, isInbox:Z
    :goto_0
    move v3, p1

    .line 39
    .local v3, index:I
    const-string v1, "content://sms/inbox"

    .line 40
    .local v1, boxType:Ljava/lang/String;
    const-string v0, "X-BOX:INBOX"

    .line 42
    .local v0, boxFlag:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 43
    const-string v1, "content://sms/sent"

    .line 44
    const-string v0, "X-BOX:SENDBOX"

    .line 45
    sget v6, Lcom/zte/backup/format/vxx/vmsg/VMsg;->smsInboxSize:I

    sub-int v3, p1, v6

    .line 48
    :cond_2
    invoke-virtual {p0, v3}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getMessageSmsIDArrayByIndex(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 49
    .local v2, id:I
    invoke-virtual {p0, v1, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getSmsAndSendBack(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 50
    const/4 v6, 0x0

    .line 66
    :goto_1
    return-object v6

    .line 37
    .end local v0           #boxFlag:Ljava/lang/String;
    .end local v1           #boxType:Ljava/lang/String;
    .end local v2           #id:I
    .end local v3           #index:I
    .end local v4           #isInbox:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 53
    .restart local v0       #boxFlag:Ljava/lang/String;
    .restart local v1       #boxType:Ljava/lang/String;
    .restart local v2       #id:I
    .restart local v3       #index:I
    .restart local v4       #isInbox:Z
    :cond_4
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0x200

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 54
    .local v5, oneSms:Ljava/lang/StringBuffer;
    const-string v6, "BEGIN:VMSG\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v6, "VERSION:1.1\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    invoke-static {v6}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->checkString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 58
    const-string v6, "BEGIN:VCARD\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TEL:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v6, "END:VCARD\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    :cond_5
    invoke-static {p0, v4, v0, v5}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->makeSmsBodyString(Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;ZLjava/lang/String;Ljava/lang/StringBuffer;)V

    .line 64
    const-string v6, "END:VMSG\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private static getDateAndBody(Ljava/util/List;Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;)V
    .locals 1
    .parameter
    .parameter "sms"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "Date:"

    invoke-static {p0, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageDate:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageDate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "DATE:"

    invoke-static {p0, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageDate:Ljava/lang/String;

    .line 118
    :cond_0
    const-string v0, "Subject"

    invoke-static {p0, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getUtf8QPStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageBody:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageBody:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 120
    const-string v0, "SUBJECT"

    invoke-static {p0, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getUtf8QPStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageBody:Ljava/lang/String;

    .line 122
    :cond_1
    return-void
.end method

.method private static getInboxData(Ljava/util/List;Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;)V
    .locals 2
    .parameter
    .parameter "sms"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 133
    const-string v1, "FROMTEL:"

    invoke-static {p0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    .line 135
    :cond_0
    const/4 v1, 0x0

    iput v1, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageRead:I

    .line 136
    const-string v1, "X-READ:"

    invoke-static {p0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, read:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 138
    const-string v1, "X-STATUS:"

    invoke-static {p0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "READ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    const/4 v1, 0x1

    iput v1, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageRead:I

    .line 143
    :cond_2
    return-void
.end method

.method public static getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 528
    .local p0, oneVcs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 529
    .local v2, oldTitle:Ljava/lang/String;
    const-string v4, "X-MMS-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "X-ZTE-MMS-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "X-MMS-"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 549
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 534
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 536
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 537
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, item:Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 541
    .end local v1           #item:Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 542
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    .restart local v1       #item:Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 533
    .end local v1           #item:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getMmsBodyString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;ZLjava/util/List;)V
    .locals 5
    .parameter "mms"
    .parameter "isInbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 457
    if-eqz p1, :cond_1

    .line 458
    iput v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsRead:I

    .line 459
    const-string v2, "X-READ:"

    invoke-static {p2, v2}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, read:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 461
    const-string v2, "X-STATUS:"

    invoke-static {p2, v2}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    iput v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsRead:I

    .line 468
    .end local v1           #read:Ljava/lang/String;
    :cond_1
    const-string v2, "X-SIMID:"

    invoke-static {p2, v2}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->messageSubID:Ljava/lang/String;

    .line 469
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->messageSubID:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 470
    const-string v2, "X-CARD:"

    invoke-static {p2, v2}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->messageSubID:Ljava/lang/String;

    .line 473
    :cond_2
    iput v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsLocked:I

    .line 474
    const-string v2, "X-LOCKED:"

    invoke-static {p2, v2}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, lock:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v2, "LOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 476
    iput v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsLocked:I

    .line 479
    :cond_3
    const-string v2, "Date:"

    invoke-static {p2, v2}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsDate:Ljava/lang/String;

    .line 480
    invoke-static {p0, p2}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getMmsXMmsString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;Ljava/util/List;)V

    .line 481
    const-string v2, "Subject"

    invoke-static {p2, v2}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getUtf8QPStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSubject:Ljava/lang/String;

    .line 482
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSubject:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 483
    const-string v2, "X-TITLE;ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-static {p2, v2}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSubject:Ljava/lang/String;

    .line 486
    :cond_4
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSubject:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 487
    const-string v2, "106"

    iput-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSubjectCharset:Ljava/lang/String;

    .line 489
    :cond_5
    return-void
.end method

.method private static getMmsPartEndData(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter "title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, onePart:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 337
    .local v1, found:Z
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, data:Ljava/lang/StringBuffer;
    const-string v5, "X-MMS-"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 340
    const-string v5, "X-MMS"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 344
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, str:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 364
    .end local v4           #str:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 344
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 345
    .restart local v4       #str:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 346
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 350
    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 351
    .local v2, index:I
    const/4 v6, -0x1

    if-eq v6, v2, :cond_1

    .line 352
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, item:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    const/4 v1, 0x1

    goto :goto_0

    .line 364
    .end local v2           #index:I
    .end local v3           #item:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getMmsPartString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;Ljava/util/List;)V
    .locals 8
    .parameter "mms"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 275
    .local v4, parts:Ljava/util/List;,"Ljava/util/List<Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 276
    .local v0, found1Part:Z
    const/4 v3, 0x0

    .line 278
    .local v3, part:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 294
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    .line 295
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_5

    .line 332
    :cond_1
    return-void

    .line 278
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 279
    .local v5, str:Ljava/lang/String;
    const-string v7, "BEGIN:VPART"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 280
    const/4 v0, 0x1

    .line 281
    new-instance v3, Ljava/util/LinkedList;

    .end local v3           #part:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 282
    .restart local v3       #part:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    goto :goto_0

    .line 283
    :cond_3
    const-string v7, "END:VPART"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 284
    const/4 v0, 0x0

    .line 285
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_4
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 290
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    .end local v5           #str:Ljava/lang/String;
    :cond_5
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partSeq:[Ljava/lang/String;

    .line 300
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentType:[Ljava/lang/String;

    .line 301
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partName:[Ljava/lang/String;

    .line 302
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCharset:[Ljava/lang/String;

    .line 303
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentDisposition:[Ljava/lang/String;

    .line 304
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partFileName:[Ljava/lang/String;

    .line 305
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentID:[Ljava/lang/String;

    .line 306
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentLocation:[Ljava/lang/String;

    .line 307
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTStart:[Ljava/lang/String;

    .line 308
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTType:[Ljava/lang/String;

    .line 309
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partData:[Ljava/lang/String;

    .line 310
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partText:[Ljava/lang/String;

    .line 312
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    if-ge v1, v6, :cond_1

    .line 313
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 314
    .local v2, onePart:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partSeq:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-SEQ:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 315
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentType:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-CONTENT-TYPE:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 316
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partName:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-NAME:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 317
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCharset:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-CHARSET:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 318
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentDisposition:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-CONTENT-DISPOSITION:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 319
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentDisposition:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-nez v6, :cond_6

    .line 320
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentDisposition:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-CONTENT_DISPOSITION:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 322
    :cond_6
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partFileName:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-FILENAME:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 323
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentID:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-CONTENT-ID:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 324
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentLocation:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-CONTENT-LOCATION:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 325
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTStart:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-CT-START:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 326
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTType:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-CT-TYPE:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 327
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partData:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-DATA:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getMmsPartEndData(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 329
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partText:[Ljava/lang/String;

    const-string v7, "X-MMS-PART-TEXT:"

    invoke-static {v2, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getMmsPartEndData(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method private static getMmsTelString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;ZLjava/util/List;)V
    .locals 7
    .parameter "mms"
    .parameter "isInbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p2, oneMms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 391
    const-string v5, "TEL:"

    invoke-static {p2, v5}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    .line 392
    iget-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 393
    const-string v5, "FROMTEL:"

    invoke-static {p2, v5}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    const-string v5, "TEL:"

    invoke-static {p2, v5}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, phone:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 398
    const-string v5, "TOTEL:"

    invoke-static {p2, v5}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    :cond_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 401
    .local v3, phoneList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 409
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 410
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, i:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 415
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumberCounts:I

    goto :goto_0

    .line 402
    .end local v0           #i:I
    :cond_4
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    const-string v5, "TEL:"

    invoke-static {p2, v5}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    if-nez v2, :cond_3

    .line 405
    const-string v5, "TOTEL:"

    invoke-static {p2, v5}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 412
    .restart local v0       #i:I
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 413
    .local v4, toPhone:Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-object v4, v6, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_2
.end method

.method private static getMmsXMmsString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;Ljava/util/List;)V
    .locals 1
    .parameter "mms"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p1, oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "X-MMS-CONTENT-TYPE:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsContentType:Ljava/lang/String;

    .line 513
    const-string v0, "X-MMS-CONTENT-LOCATION:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsContentLocation:Ljava/lang/String;

    .line 514
    const-string v0, "X-MMS-EXPIRY:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsExpiry:Ljava/lang/String;

    .line 515
    const-string v0, "X-MMS-MSG-CLASS:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsMsgCls:Ljava/lang/String;

    .line 516
    const-string v0, "X-MMS-MESSAGE-TYPE:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsMsgType:Ljava/lang/String;

    .line 517
    const-string v0, "X-MMS-VERSION:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsVersion:Ljava/lang/String;

    .line 518
    const-string v0, "X-MMS-MESSAGE-SIZE:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSize:Ljava/lang/String;

    .line 519
    const-string v0, "X-MMS-PRIORITY:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsPriority:Ljava/lang/String;

    .line 520
    const-string v0, "X-MMS-TRAN-ID:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsTransID:Ljava/lang/String;

    .line 521
    const-string v0, "X-MMS-CC:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->cc:Ljava/lang/String;

    .line 522
    const-string v0, "X-MMS-BCC:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->bcc:Ljava/lang/String;

    .line 523
    const-string v0, "X-MMS-READ-REPORT:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsReadReport:Ljava/lang/String;

    .line 524
    const-string v0, "X-MMS-DEL-REPORT:"

    invoke-static {p1, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsDelReport:Ljava/lang/String;

    .line 525
    return-void
.end method

.method private static getSendBoxData(Ljava/util/List;Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;)V
    .locals 1
    .parameter
    .parameter "sms"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    iput v0, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageType:I

    .line 126
    iget-object v0, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "TOTEL:"

    invoke-static {p0, v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    .line 129
    :cond_0
    return-void
.end method

.method public static import1Mms(Ljava/util/List;Landroid/content/Context;)I
    .locals 5
    .parameter
    .parameter "cx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "X-TYPE:"

    invoke-static {p0, v4}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, type:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 190
    const-string v4, "MMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    const/16 v4, 0x2002

    .line 212
    :goto_0
    return v4

    .line 195
    :cond_0
    new-instance v2, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;

    invoke-direct {v2, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;-><init>(Landroid/content/Context;)V

    .line 196
    .local v2, mms:Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;
    const/4 v1, 0x1

    .line 198
    .local v1, isInbox:Z
    const-string v4, "X-BOX:"

    invoke-static {p0, v4}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, boxType:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 200
    const-string v4, "X-IRMC-BOX:"

    invoke-static {p0, v4}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_1
    const/4 v4, 0x1

    iput v4, v2, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsBoxType:I

    .line 204
    if-eqz v0, :cond_3

    const-string v4, "SENTBOX"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "SENDBOX"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    :cond_2
    const/4 v1, 0x0

    .line 206
    const/4 v4, 0x2

    iput v4, v2, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsBoxType:I

    .line 209
    :cond_3
    invoke-static {v2, v1, p0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getMmsTelString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;ZLjava/util/List;)V

    .line 210
    invoke-static {v2, v1, p0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getMmsBodyString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;ZLjava/util/List;)V

    .line 211
    invoke-static {v2, p0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getMmsPartString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;Ljava/util/List;)V

    .line 212
    invoke-virtual {v2}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->AddMmsItem()I

    move-result v4

    goto :goto_0
.end method

.method public static import1Sms(Ljava/util/List;Landroid/content/Context;)I
    .locals 6
    .parameter
    .parameter "cx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 74
    const-string v4, "X-TYPE:"

    invoke-static {p0, v4}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, type:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 76
    const-string v4, "SMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    const/16 v4, 0x2002

    .line 109
    :goto_0
    return v4

    .line 81
    :cond_0
    new-instance v2, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;

    invoke-direct {v2, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;-><init>(Landroid/content/Context;)V

    .line 82
    .local v2, sms:Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;
    const-string v4, "TEL:"

    invoke-static {p0, v4}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    .line 83
    iput v5, v2, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageType:I

    .line 85
    const-string v4, "X-BOX:"

    invoke-static {p0, v4}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, boxType:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 87
    const-string v4, "X-IRMC-BOX:"

    invoke-static {p0, v4}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_1
    if-eqz v0, :cond_5

    const-string v4, "SENTBOX"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "SENDBOX"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    :cond_2
    invoke-static {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getSendBoxData(Ljava/util/List;Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;)V

    .line 96
    :goto_1
    const-string v4, "X-SIMID:"

    invoke-static {p0, v4}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubID:Ljava/lang/String;

    .line 97
    iget-object v4, v2, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubID:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 98
    const-string v4, "X-CARD:"

    invoke-static {p0, v4}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubID:Ljava/lang/String;

    .line 102
    :cond_3
    const-string v4, "X-LOCKED:"

    invoke-static {p0, v4}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, lock:Ljava/lang/String;
    const/4 v4, 0x0

    iput v4, v2, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageLock:I

    .line 104
    if-eqz v1, :cond_4

    const-string v4, "LOCKED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 105
    iput v5, v2, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageLock:I

    .line 108
    :cond_4
    invoke-static {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getDateAndBody(Ljava/util/List;Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;)V

    .line 109
    invoke-virtual {v2}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->createSmsItem()I

    move-result v4

    goto :goto_0

    .line 93
    .end local v1           #lock:Ljava/lang/String;
    :cond_5
    invoke-static {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->getInboxData(Ljava/util/List;Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;)V

    goto :goto_1
.end method

.method private static makeMmsBodyString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;ZLjava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "mms"
    .parameter "isInbox"
    .parameter "boxFlag"
    .parameter "oneMms"

    .prologue
    .line 421
    const-string v0, "BEGIN:VBODY\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    const-string v0, "\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    if-eqz p1, :cond_0

    .line 427
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsRead:I

    if-eqz v0, :cond_1

    .line 428
    const-string v0, "X-READ:READ\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->messageSubID:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    const-string v0, "X-SIMID:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->messageSubID:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    const-string v0, "\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    :goto_1
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsLocked:I

    if-nez v0, :cond_3

    .line 443
    const-string v0, "X-LOCKED:UNLOCKED\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    :goto_2
    const-string v0, "X-TYPE:MMS\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    const-string v0, "Date:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsDate:Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 451
    invoke-static {p0, p3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->makeMmsXMmsString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;Ljava/lang/StringBuffer;)V

    .line 452
    const-string v0, "Subject"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSubject:Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItemWithQP(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 453
    const-string v0, "END:VBODY\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    return-void

    .line 430
    :cond_1
    const-string v0, "X-READ:UNREAD\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 439
    :cond_2
    const-string v0, "X-SIMID:0\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 445
    :cond_3
    const-string v0, "X-LOCKED:LOCKED\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static makeMmsPartString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;Ljava/lang/StringBuffer;)V
    .locals 4
    .parameter "mms"
    .parameter "oneMms"

    .prologue
    .line 249
    iget v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partsNumber:I

    .line 250
    .local v1, partsNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 267
    return-void

    .line 251
    :cond_0
    const-string v2, "BEGIN:VPART\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    const-string v2, "X-MMS-PART-SEQ:"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partSeq:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v2, v3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    const-string v2, "X-MMS-PART-CONTENT-TYPE:"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentType:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v2, v3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    const-string v2, "X-MMS-PART-NAME:"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partName:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v2, v3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    const-string v2, "X-MMS-PART-CHARSET:"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCharset:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v2, v3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 256
    const-string v2, "X-MMS-PART-CONTENT-DISPOSITION:"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentDisposition:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v2, v3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 257
    const-string v2, "X-MMS-PART-FILENAME:"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partFileName:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v2, v3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 258
    const-string v2, "X-MMS-PART-CONTENT-ID:"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentID:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v2, v3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    const-string v2, "X-MMS-PART-CONTENT-LOCATION:"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partContentLocation:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v2, v3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 260
    const-string v2, "X-MMS-PART-CT-START:"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTStart:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v2, v3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    const-string v2, "X-MMS-PART-CT-TYPE:"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partCTType:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v2, v3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    const-string v2, "X-MMS-PART-DATA:"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partData:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v2, v3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 263
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partData:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 264
    const-string v2, "X-MMS-PART-TEXT:"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->partText:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v2, v3}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 265
    const-string v2, "END:VPART\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static makeMmsTelString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;ZLjava/lang/StringBuffer;)V
    .locals 2
    .parameter "mms"
    .parameter "isInbox"
    .parameter "oneMms"

    .prologue
    .line 368
    if-eqz p1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->checkString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const-string v1, "BEGIN:VCARD\r\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string v1, "TEL:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->fromPhoneNumber:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    const-string v1, "\r\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string v1, "END:VCARD\r\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    :cond_0
    return-void

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 377
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->checkString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    const-string v1, "BEGIN:VCARD\r\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    const-string v1, "TEL:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->toPhoneNumber:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    const-string v1, "\r\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const-string v1, "END:VCARD\r\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static makeMmsXMmsString(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "mms"
    .parameter "oneMms"

    .prologue
    .line 492
    const-string v0, "X-MMS-CONTENT-TYPE:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsContentType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 493
    const-string v0, "X-MMS-CONTENT-LOCATION:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsContentLocation:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 494
    const-string v0, "X-MMS-EXPIRY:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsExpiry:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 495
    const-string v0, "X-MMS-MSG-CLASS:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsMsgCls:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 496
    const-string v0, "X-MMS-MESSAGE-TYPE:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsMsgType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 497
    const-string v0, "X-MMS-VERSION:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsVersion:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 498
    const-string v0, "X-MMS-MESSAGE-SIZE:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsSize:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 499
    const-string v0, "X-MMS-PRIORITY:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsPriority:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 500
    const-string v0, "X-MMS-TRAN-ID:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsTransID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 501
    const-string v0, "X-MMS-CC:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->cc:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 502
    const-string v0, "X-MMS-BCC:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->bcc:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 503
    const-string v0, "X-MMS-READ-REPORT:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsReadReport:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 504
    const-string v0, "X-MMS-DEL-REPORT:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->mmsDelReport:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 505
    return-void
.end method

.method private static makeSmsBodyString(Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;ZLjava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sms"
    .parameter "isInbox"
    .parameter "boxFlag"
    .parameter "oneSms"

    .prologue
    .line 216
    const-string v0, "BEGIN:VBODY\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageRead:I

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "X-READ:READ\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubID:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X-SIMID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :goto_1
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageLock:I

    if-nez v0, :cond_3

    .line 235
    const-string v0, "X-LOCKED:UNLOCKED\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    :goto_2
    const-string v0, "X-TYPE:SMS\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const-string v0, "Date:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageDate:Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    const-string v0, "Subject"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageBody:Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->appendItemWithQP(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    const-string v0, "END:VBODY\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    return-void

    .line 224
    :cond_1
    const-string v0, "X-READ:UNREAD\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 231
    :cond_2
    const-string v0, "X-SIMID:0\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 237
    :cond_3
    const-string v0, "X-LOCKED:LOCKED\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
