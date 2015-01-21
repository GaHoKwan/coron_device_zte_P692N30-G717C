.class public Lcom/mediatek/mms/ext/NormalUserReceivedImpl;
.super Landroid/content/ContextWrapper;
.source "NormalUserReceivedImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/INormalUserReceived;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/NormalUserReceivedImpl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mUserId:I

    .line 266
    iput-object p1, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    .line 267
    return-void
.end method

.method private dispatchCBPdus(Ljava/lang/String;[BI)V
    .locals 5
    .parameter "action"
    .parameter "cbPdu"
    .parameter "simId"

    .prologue
    .line 104
    const-string v3, "Mms/NormalUserReceivedImpl"

    const-string v4, "begin to dispatchCBPdus"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v3, 0x1

    new-array v1, v3, [[B

    .line 107
    .local v1, pdus:[[B
    const/4 v3, 0x0

    aput-object p2, v1, v3

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const-string v2, "android.permission.RECEIVE_SMS"

    .line 118
    .local v2, permission:Ljava/lang/String;
    const-string v3, "pdus"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 119
    const-string v3, "simId"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object v3, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 122
    const-string v3, "Mms/NormalUserReceivedImpl"

    const-string v4, "end to dispatchCBPdus"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v2           #permission:Ljava/lang/String;
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v3, "Mms/NormalUserReceivedImpl"

    const-string v4, "illegal action"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchMmsPdus(III[B[BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "simId"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "header"
    .parameter "data"
    .parameter "address"
    .parameter "service_center"

    .prologue
    .line 87
    const-string v1, "Mms/NormalUserReceivedImpl"

    const-string v2, "begin to dispatchMmsPdus"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "application/vnd.wap.mms-message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "transactionId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v1, "pduType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v1, "header"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 94
    const-string v1, "data"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 95
    const-string v1, "address"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "service_center"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "simId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 100
    const-string v1, "Mms/NormalUserReceivedImpl"

    const-string v2, "end to dispatchMmsPdus"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private dispatchSmsPdus([BLjava/lang/String;I)V
    .locals 4
    .parameter "smsPdu"
    .parameter "format"
    .parameter "simId"

    .prologue
    .line 72
    const-string v2, "Mms/NormalUserReceivedImpl"

    const-string v3, "begin to dispatchSmsPdus"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v2, 0x1

    new-array v1, v2, [[B

    .line 74
    .local v1, pdus:[[B
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    const-string v2, "format"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v2, "simId"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 82
    const-string v2, "Mms/NormalUserReceivedImpl"

    const-string v3, "end to dispatchSmsPdus"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private processReceivedCBInUser()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    .line 223
    const/4 v12, 0x0

    .line 224
    .local v12, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 229
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v11, idList:Ljava/util/ArrayList;
    iget-object v0, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    const-string v2, "content://usercb"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 234
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 235
    :cond_0
    const-string v0, "Mms/NormalUserReceivedImpl"

    const-string v2, "processReceivedCBInUser cursor is null"

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_1
    return-void

    .line 239
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 240
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 241
    iget v0, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mUserId:I

    if-nez v0, :cond_3

    .line 242
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 243
    .local v10, id:I
    const-string v0, "pdus"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 244
    .local v14, smsPdu:[B
    const-string v0, "action"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, action:Ljava/lang/String;
    const-string v0, "simId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 247
    .local v13, simId:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-direct {p0, v7, v14, v13}, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->dispatchCBPdus(Ljava/lang/String;[BI)V

    .line 249
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 240
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 254
    .end local v7           #action:Ljava/lang/String;
    .end local v10           #id:I
    .end local v13           #simId:I
    .end local v14           #smsPdu:[B
    :cond_3
    const-string v0, "Mms/NormalUserReceivedImpl"

    const-string v2, "processReceivedCBInUser out of loop"

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 257
    const-string v0, "Mms/NormalUserReceivedImpl"

    const-string v2, "begin to delete the message in temp db"

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 259
    const-string v0, "Mms/NormalUserReceivedImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting the message in temp db, _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "content://usercb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 258
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private processReceivedMmsInUser()V
    .locals 19

    .prologue
    .line 171
    const/4 v15, 0x0

    .line 172
    .local v15, messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 181
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v14, idList:Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    const-string v3, "content://usermms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 186
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 187
    :cond_0
    const-string v1, "Mms/NormalUserReceivedImpl"

    const-string v3, "processReceivedMmsInUser cursor is null"

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_1
    return-void

    .line 192
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 194
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mUserId:I

    if-nez v1, :cond_3

    .line 195
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 196
    .local v13, id:I
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 197
    .local v4, simId:I
    const-string v1, "transactionId"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 198
    .local v5, transactionId:I
    const-string v1, "pduType"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 199
    .local v6, pduType:I
    const-string v1, "header"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 200
    .local v7, header:[B
    const-string v1, "data"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 201
    .local v8, data:[B
    const-string v1, "address"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, address:Ljava/lang/String;
    const-string v1, "service_center"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, service_center:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p0

    .line 205
    invoke-direct/range {v3 .. v10}, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->dispatchMmsPdus(III[B[BLjava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 207
    const-string v1, "Mms/NormalUserReceivedImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "move cursor, i = "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 212
    .end local v4           #simId:I
    .end local v5           #transactionId:I
    .end local v6           #pduType:I
    .end local v7           #header:[B
    .end local v8           #data:[B
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #service_center:Ljava/lang/String;
    .end local v13           #id:I
    :cond_3
    const-string v1, "Mms/NormalUserReceivedImpl"

    const-string v3, "processReceivedMmsInUser out of loop"

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 215
    const-string v1, "Mms/NormalUserReceivedImpl"

    const-string v3, "begin to delete the message in temp db"

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_1

    .line 217
    const-string v1, "Mms/NormalUserReceivedImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "processReceivedMmsInUser deleting the message in temp db, _id = "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "content://usermms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_id = ?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 216
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method private processReceivedSmsInUser()V
    .locals 15

    .prologue
    .line 126
    const/4 v12, 0x0

    .line 127
    .local v12, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 132
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v11, idList:Ljava/util/ArrayList;
    iget-object v0, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    const-string v2, "content://usersms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "pdus"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "format"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "simId"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 138
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 139
    :cond_0
    const-string v0, "Mms/NormalUserReceivedImpl"

    const-string v2, "processReceivedSmsInUser cursor is null"

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    return-void

    .line 144
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 145
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 146
    iget v0, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mUserId:I

    if-nez v0, :cond_3

    .line 147
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 148
    .local v10, id:I
    const-string v0, "pdus"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 149
    .local v14, smsPdu:[B
    const-string v0, "format"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, format:Ljava/lang/String;
    const-string v0, "simId"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 152
    .local v13, simId:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-direct {p0, v14, v8, v13}, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->dispatchSmsPdus([BLjava/lang/String;I)V

    .line 154
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 155
    const-string v0, "Mms/NormalUserReceivedImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "move cursor, i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 160
    .end local v8           #format:Ljava/lang/String;
    .end local v10           #id:I
    .end local v13           #simId:I
    .end local v14           #smsPdu:[B
    :cond_3
    const-string v0, "Mms/NormalUserReceivedImpl"

    const-string v2, "processReceivedSmsInUser out of loop"

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 163
    const-string v0, "Mms/NormalUserReceivedImpl"

    const-string v2, "begin to delete the message in temp db"

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 165
    const-string v0, "Mms/NormalUserReceivedImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting the message in temp db, _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "content://usersms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public handleSwitchToOwner()V
    .locals 2

    .prologue
    .line 341
    const-string v0, "Mms/NormalUserReceivedImpl"

    const-string v1, "get into handleSwitchToOwner"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->processReceivedSmsInUser()V

    .line 344
    invoke-direct {p0}, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->processReceivedMmsInUser()V

    .line 345
    invoke-direct {p0}, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->processReceivedCBInUser()V

    .line 346
    return-void
.end method

.method public handleUserCBReceived(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 320
    const-string v5, "Mms/NormalUserReceivedImpl"

    const-string v6, "get into handleUserCBReceived"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v5, "simId"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 323
    .local v3, simId:I
    const-string v5, "pdus"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    .line 324
    .local v0, objPdus:[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 327
    :cond_0
    const/4 v5, 0x0

    aget-object v5, v0, v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 329
    .local v1, pdus:[B
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v5, "pdus"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 332
    const-string v5, "simId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    iget-object v5, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 335
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    const-string v6, "content://usercb"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v2, v6, v4}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 337
    const-string v5, "Mms/NormalUserReceivedImpl"

    const-string v6, "end to handleUserCBReceived"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleUserMmsReceived(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, -0x1

    .line 294
    const-string v9, "Mms/NormalUserReceivedImpl"

    const-string v10, "get into handleUserMmsReceived"

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v9, "simId"

    invoke-virtual {p1, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 297
    .local v6, simId:I
    const-string v9, "transactionId"

    invoke-virtual {p1, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 298
    .local v7, transactionId:I
    const-string v9, "pduType"

    invoke-virtual {p1, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 299
    .local v3, pduType:I
    const-string v9, "header"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 300
    .local v2, header:[B
    const-string v9, "data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 301
    .local v1, data:[B
    const-string v9, "address"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, address:Ljava/lang/String;
    const-string v9, "service_center"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, service_center:Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "simId"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v9, "transactionId"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v9, "pduType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string v9, "header"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 309
    const-string v9, "data"

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 310
    const-string v9, "address"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v9, "service_center"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v9, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 314
    .local v4, resolver:Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    const-string v10, "content://usermms"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v9, v4, v10, v8}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 316
    const-string v9, "Mms/NormalUserReceivedImpl"

    const-string v10, "end of handleUserMmsReceived"

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public handleUserSmsReceived(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 275
    const-string v6, "Mms/NormalUserReceivedImpl"

    const-string v7, "get into handleUserSmsReceived"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v6, "pdus"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    .line 278
    .local v1, objPdus:[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v6, v1, v6

    check-cast v6, [B

    move-object v2, v6

    check-cast v2, [B

    .line 280
    .local v2, pdus:[B
    const-string v6, "format"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, format:Ljava/lang/String;
    const-string v6, "simId"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 282
    .local v4, simId:I
    const-string v6, "Mms/NormalUserReceivedImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent simId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "pdus"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 286
    const-string v6, "format"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v6, "simId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    iget-object v6, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 290
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mContext:Landroid/content/Context;

    const-string v7, "content://usersms"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v3, v7, v5}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 291
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 270
    const-string v0, "Mms/NormalUserReceivedImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get into setCurrentUser, userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput p1, p0, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;->mUserId:I

    .line 272
    return-void
.end method
