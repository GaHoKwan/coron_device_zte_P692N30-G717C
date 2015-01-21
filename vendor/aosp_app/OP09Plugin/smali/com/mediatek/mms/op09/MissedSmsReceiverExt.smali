.class public Lcom/mediatek/mms/op09/MissedSmsReceiverExt;
.super Lcom/mediatek/mms/ext/MissedSmsReceiverImpl;
.source "MissedSmsReceiverExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MissedSmsReceiverExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsWholeSms:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MissedSmsReceiverImpl;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/mediatek/mms/op09/MissedSmsReceiverExt;->mContext:Landroid/content/Context;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mms/op09/MissedSmsReceiverExt;->mIsWholeSms:Z

    .line 58
    return-void
.end method

.method private findMissedSms(II)Landroid/net/Uri;
    .locals 12
    .parameter "refId"
    .parameter "newPduCount"

    .prologue
    .line 110
    const/4 v10, 0x0

    .line 111
    .local v10, totalCount:I
    const/4 v9, 0x0

    .line 113
    .local v9, receivedCount:I
    const-string v4, "ref_id = ?"

    .line 114
    .local v4, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/mms/op09/MissedSmsReceiverExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/mms/op09/MissedSmsReceiverExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "total_len"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 118
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 119
    :cond_0
    const-string v1, "Mms/MissedSmsReceiverExt"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v7, :cond_1

    const-string v0, "NULL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    .line 145
    :goto_1
    return-object v0

    .line 119
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 126
    const-string v0, "Mms/MissedSmsReceiverExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newPduCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-le p2, v10, :cond_3

    .line 129
    const-string v0, "Mms/MissedSmsReceiverExt"

    const-string v1, "Wrong Pdu Count!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    const/4 v0, 0x0

    .line 142
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 133
    :cond_3
    if-ge p2, v10, :cond_4

    .line 134
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/mediatek/mms/op09/MissedSmsReceiverExt;->mIsWholeSms:Z

    .line 135
    const-string v0, "Mms/MissedSmsReceiverExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not whole SMS! totalCount should be: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 139
    .local v8, id:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 142
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v8           #id:I
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 145
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 142
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private handleUpdate([Landroid/telephony/SmsMessage;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .parameter "msgs"
    .parameter "pduCount"
    .parameter "missedSmsUri"

    .prologue
    const/4 v4, 0x0

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v6, body:Ljava/lang/StringBuilder;
    iget-boolean v0, p0, Lcom/mediatek/mms/op09/MissedSmsReceiverExt;->mIsWholeSms:Z

    if-nez v0, :cond_1

    .line 86
    invoke-static {p1}, Lcom/mediatek/mms/op09/MessageUtils;->handleMissedParts([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 96
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "body"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "rec_len"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/mms/op09/MissedSmsReceiverExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/mms/op09/MissedSmsReceiverExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 100
    .local v9, ret:I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_2

    .line 104
    .end local p3
    :goto_0
    return-object p3

    .line 88
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v9           #ret:I
    .restart local p3
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, p2, :cond_0

    .line 90
    aget-object v8, p1, v7

    .line 91
    .local v8, msg:Landroid/telephony/SmsMessage;
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 103
    .end local v7           #i:I
    .end local v8           #msg:Landroid/telephony/SmsMessage;
    .restart local v3       #values:Landroid/content/ContentValues;
    .restart local v9       #ret:I
    :cond_2
    const-string v0, "Mms/MissedSmsReceiverExt"

    const-string v1, "Update Sms error!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p3, v4

    .line 104
    goto :goto_0
.end method


# virtual methods
.method public isEnableMissedSmsReceiver()Z
    .locals 2

    .prologue
    .line 61
    const-string v0, "Mms/MissedSmsReceiverExt"

    const-string v1, "isEnableMissedSmsReceiver(): true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public updateMissedSms(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 7
    .parameter "context"
    .parameter "msgs"
    .parameter "error"

    .prologue
    .line 66
    const-string v4, "Mms/MissedSmsReceiverExt"

    const-string v5, "MissedSmsReceiverExt.updateMissedSms"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v4, 0x0

    aget-object v3, p2, v4

    .line 69
    .local v3, smsTmp:Landroid/telephony/SmsMessage;
    array-length v1, p2

    .line 70
    .local v1, pduCount:I
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v2, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 71
    .local v2, refId:I
    const-string v4, "Mms/MissedSmsReceiverExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pduCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " refId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, v2, v1}, Lcom/mediatek/mms/op09/MissedSmsReceiverExt;->findMissedSms(II)Landroid/net/Uri;

    move-result-object v0

    .line 74
    .local v0, missedSmsUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 75
    const-string v4, "Mms/MissedSmsReceiverExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Find missed Sms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p2, v1, v0}, Lcom/mediatek/mms/op09/MissedSmsReceiverExt;->handleUpdate([Landroid/telephony/SmsMessage;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 78
    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/MissedSmsReceiverExt;->getHost()Lcom/mediatek/mms/ext/IMissedSmsReceiverHost;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lcom/mediatek/mms/ext/IMissedSmsReceiverHost;->callStoreMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method
