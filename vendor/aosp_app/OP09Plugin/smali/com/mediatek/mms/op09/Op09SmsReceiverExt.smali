.class public Lcom/mediatek/mms/op09/Op09SmsReceiverExt;
.super Lcom/mediatek/mms/ext/SmsReceiverImpl;
.source "Op09SmsReceiverExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/Op09SmsReceiverExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/SmsReceiverImpl;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private checkConcateRef(Lcom/android/internal/telephony/SmsHeader;I)Z
    .locals 4
    .parameter "udh"
    .parameter "actualPartsNum"

    .prologue
    const/4 v1, 0x0

    .line 92
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v2, :cond_2

    .line 93
    :cond_0
    const-string v2, "Mms/Op09SmsReceiverExt"

    const-string v3, "[fake not concate message"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    :goto_0
    return v1

    .line 96
    :cond_2
    iget-object v2, p1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v0, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 97
    .local v0, totalPartsNum:I
    if-le v0, p2, :cond_1

    .line 98
    const-string v1, "Mms/Op09SmsReceiverExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[fake missed segment(s) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, v0, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    const-string v0, ""

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public extractSmsBody([Landroid/telephony/SmsMessage;Landroid/telephony/SmsMessage;Landroid/content/ContentValues;)V
    .locals 11
    .parameter "msgs"
    .parameter "sms"
    .parameter "values"

    .prologue
    .line 56
    const-string v8, "Mms/Op09SmsReceiverExt"

    const-string v9, "Op09SmsReceiverExt.extractSmsBody"

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    array-length v5, p1

    .line 59
    .local v5, pduCount:I
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    invoke-direct {p0, v8, v5}, Lcom/mediatek/mms/op09/Op09SmsReceiverExt;->checkConcateRef(Lcom/android/internal/telephony/SmsHeader;I)Z

    move-result v1

    .line 61
    .local v1, hasMissedSegments:Z
    const-string v8, "Mms/Op09SmsReceiverExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pduCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v7, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 65
    .local v7, totalParts:I
    const-string v8, "Mms/Op09SmsReceiverExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[fake process missed segment(s) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/mediatek/mms/op09/MessageUtils;->handleMissedParts([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, messageBody:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 68
    const-string v8, "body"

    invoke-virtual {p3, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v6, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 71
    .local v6, referenceId:I
    const-string v8, "ref_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v8, "total_len"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v8, "rec_len"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    .end local v3           #messageBody:Ljava/lang/String;
    .end local v6           #referenceId:I
    .end local v7           #totalParts:I
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v8, 0x1

    if-ne v5, v8, :cond_2

    .line 77
    const-string v8, "body"

    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/mms/op09/Op09SmsReceiverExt;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, body:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 83
    aget-object v4, p1, v2

    .line 84
    .local v4, msg:Landroid/telephony/SmsMessage;
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    .end local v4           #msg:Landroid/telephony/SmsMessage;
    :cond_3
    const-string v8, "body"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/mms/op09/Op09SmsReceiverExt;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
