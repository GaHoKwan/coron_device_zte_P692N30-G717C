.class Lcom/android/wifidirect/test/WifiOppNotification;
.super Ljava/lang/Object;
.source "WifiOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;,
        Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final NOTIFICATION_ID_INBOUND:I = -0xf4246

.field private static final NOTIFICATION_ID_OUTBOUND:I = -0xf4245

.field private static final NOTIFY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiOppNotification"

.field private static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.android.wifidirect.test"

.field private static final V:Z = true

.field static final WHERE_COMPLETED:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\')"

.field private static final WHERE_COMPLETED_INBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (direction == 1)"

.field private static final WHERE_COMPLETED_OUTBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (direction == 0)"

.field static final WHERE_CONFIRM_PENDING:Ljava/lang/String; = "confirm == \'5\' AND (visibility IS NULL OR visibility == \'0\')"

.field static final WHERE_RUNNING:Ljava/lang/String; = "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\')"

.field static final confirm:Ljava/lang/String; = "(confirm == \'1\' OR confirm == \'2\')"

.field static final status:Ljava/lang/String; = "(status == \'192\')"

.field static final visible:Ljava/lang/String; = "(visibility IS NULL OR visibility == \'0\')"


# instance fields
.field private mActiveNotificationId:I

.field private mContext:Landroid/content/Context;

.field private mFinised:Z

.field private mHandler:Landroid/os/Handler;

.field public mNotificationMgr:Landroid/app/NotificationManager;

.field private mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingUpdate:I

.field private mUpdateCompleteNotification:Z

.field private mUpdateNotificationThread:Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v1, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mPendingUpdate:I

    .line 63
    iput-boolean v1, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mFinised:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mUpdateCompleteNotification:Z

    .line 71
    iput v1, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mActiveNotificationId:I

    .line 136
    new-instance v0, Lcom/android/wifidirect/test/WifiOppNotification$1;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiOppNotification$1;-><init>(Lcom/android/wifidirect/test/WifiOppNotification;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    .line 100
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotifications:Ljava/util/HashMap;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/wifidirect/test/WifiOppNotification;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mPendingUpdate:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/wifidirect/test/WifiOppNotification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mPendingUpdate:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/wifidirect/test/WifiOppNotification;)Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mUpdateNotificationThread:Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/wifidirect/test/WifiOppNotification;Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;)Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mUpdateNotificationThread:Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/wifidirect/test/WifiOppNotification;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/wifidirect/test/WifiOppNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppNotification;->updateActiveNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/wifidirect/test/WifiOppNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppNotification;->updateCompletedNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/wifidirect/test/WifiOppNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppNotification;->updateIncomingFileConfirmNotification()V

    return-void
.end method

.method public static formatProgressText(JJ)Ljava/lang/String;
    .locals 5
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 512
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gtz v3, :cond_0

    .line 513
    const-string v3, "0%"

    .line 519
    :goto_0
    return-object v3

    .line 515
    :cond_0
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p2

    div-long v0, v3, p0

    .line 516
    .local v0, progress:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 518
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private updateActiveNotification()V
    .locals 33

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\')"

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 193
    .local v14, cursor:Landroid/database/Cursor;
    const-string v3, "WifiOppNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v3, "WifiOppNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-nez v14, :cond_1

    .line 330
    :cond_0
    return-void

    .line 202
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 203
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mUpdateCompleteNotification:Z

    .line 207
    :goto_0
    const-string v3, "WifiOppNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUpdateCompleteNotification = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mUpdateCompleteNotification:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v3, "timestamp"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 212
    .local v29, timestampIndex:I
    const-string v3, "direction"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 213
    .local v17, directionIndex:I
    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 214
    .local v22, idIndex:I
    const-string v3, "total_bytes"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 215
    .local v32, totalBytesIndex:I
    const-string v3, "current_bytes"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 216
    .local v13, currentBytesIndex:I
    const-string v3, "_data"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 217
    .local v15, dataIndex:I
    const-string v3, "hint"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 220
    .local v19, filenameHintIndex:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 221
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_8

    .line 224
    move/from16 v0, v29

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 226
    .local v27, timeStamp:J
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 227
    .local v16, dir:I
    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 228
    .local v21, id:I
    move/from16 v0, v32

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 229
    .local v30, total:J
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 231
    .local v11, current:J
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 232
    .local v18, fileName:Ljava/lang/String;
    if-nez v18, :cond_2

    .line 233
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 235
    :cond_2
    if-nez v18, :cond_3

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f080018

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 239
    :cond_3
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 243
    .local v10, batchID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 221
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 205
    .end local v10           #batchID:Ljava/lang/String;
    .end local v11           #current:J
    .end local v13           #currentBytesIndex:I
    .end local v15           #dataIndex:I
    .end local v16           #dir:I
    .end local v17           #directionIndex:I
    .end local v18           #fileName:Ljava/lang/String;
    .end local v19           #filenameHintIndex:I
    .end local v21           #id:I
    .end local v22           #idIndex:I
    .end local v27           #timeStamp:J
    .end local v29           #timestampIndex:I
    .end local v30           #total:J
    .end local v32           #totalBytesIndex:I
    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mUpdateCompleteNotification:Z

    goto/16 :goto_0

    .line 247
    .restart local v10       #batchID:Ljava/lang/String;
    .restart local v11       #current:J
    .restart local v13       #currentBytesIndex:I
    .restart local v15       #dataIndex:I
    .restart local v16       #dir:I
    .restart local v17       #directionIndex:I
    .restart local v18       #fileName:Ljava/lang/String;
    .restart local v19       #filenameHintIndex:I
    .restart local v21       #id:I
    .restart local v22       #idIndex:I
    .restart local v27       #timeStamp:J
    .restart local v29       #timestampIndex:I
    .restart local v30       #total:J
    .restart local v32       #totalBytesIndex:I
    :cond_5
    new-instance v24, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;

    invoke-direct/range {v24 .. v24}, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;-><init>()V

    .line 248
    .local v24, item:Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;
    move-wide/from16 v0, v27

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->timeStamp:J

    .line 249
    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->id:I

    .line 250
    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->direction:I

    .line 251
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->direction:I

    if-nez v3, :cond_6

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f080019

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->description:Ljava/lang/String;

    .line 259
    :goto_3
    move-object/from16 v0, v24

    iput-wide v11, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalCurrent:J

    .line 260
    move-wide/from16 v0, v30

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalTotal:J

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotifications:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v3, "WifiOppNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; batchID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; totoalCurrent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget-wide v5, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalCurrent:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; totalTotal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget-wide v5, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalTotal:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 253
    :cond_6
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->direction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f08001a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->description:Ljava/lang/String;

    goto :goto_3

    .line 257
    :cond_7
    const-string v3, "WifiOppNotification"

    const-string v4, "mDirection ERROR!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 269
    .end local v10           #batchID:Ljava/lang/String;
    .end local v11           #current:J
    .end local v16           #dir:I
    .end local v18           #fileName:Ljava/lang/String;
    .end local v21           #id:I
    .end local v24           #item:Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;
    .end local v27           #timeStamp:J
    .end local v30           #total:J
    :cond_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;

    .line 301
    .restart local v24       #item:Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;
    new-instance v9, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    invoke-direct {v9, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 302
    .local v9, b:Landroid/app/Notification$Builder;
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->description:Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 303
    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalTotal:J

    move-object/from16 v0, v24

    iget-wide v5, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalCurrent:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/wifidirect/test/WifiOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 305
    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalTotal:J

    const-wide/32 v5, 0x7a120

    cmp-long v3, v3, v5

    if-lez v3, :cond_9

    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalTotal:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v0, v3

    move/from16 v25, v0

    .line 306
    .local v25, max:I
    :goto_5
    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalCurrent:J

    const-wide/32 v5, 0x7a120

    cmp-long v3, v3, v5

    if-lez v3, :cond_a

    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalCurrent:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v0, v3

    move/from16 v26, v0

    .line 307
    .local v26, progress:I
    :goto_6
    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalTotal:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    const/4 v3, 0x1

    :goto_7
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v9, v0, v1, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 308
    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->timeStamp:J

    invoke-virtual {v9, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 309
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->direction:I

    if-nez v3, :cond_c

    .line 310
    const v3, 0x1080088

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 316
    :goto_8
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 317
    new-instance v23, Landroid/content/Intent;

    const-string v3, "android.wifiopp.intent.action.LIST"

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v23, intent:Landroid/content/Intent;
    const-string v3, "com.android.wifidirect.test"

    const-class v4, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v3, :cond_e

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->id:I

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 327
    :goto_9
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->id:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mActiveNotificationId:I

    goto/16 :goto_4

    .line 305
    .end local v23           #intent:Landroid/content/Intent;
    .end local v25           #max:I
    .end local v26           #progress:I
    :cond_9
    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalTotal:J

    long-to-int v0, v3

    move/from16 v25, v0

    goto/16 :goto_5

    .line 306
    .restart local v25       #max:I
    :cond_a
    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->totalCurrent:J

    long-to-int v0, v3

    move/from16 v26, v0

    goto/16 :goto_6

    .line 307
    .restart local v26       #progress:I
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 311
    :cond_c
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->direction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 312
    const v3, 0x1080081

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_8

    .line 314
    :cond_d
    const-string v3, "WifiOppNotification"

    const-string v4, "mDirection ERROR!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 325
    .restart local v23       #intent:Landroid/content/Intent;
    :cond_e
    const-string v3, "WifiOppNotification"

    const-string v4, "mNotificationMgr is NULL!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private updateCompletedNotification()V
    .locals 25

    .prologue
    .line 335
    const-wide/16 v21, 0x0

    .line 336
    .local v21, timeStamp:J
    const/16 v18, 0x0

    .line 337
    .local v18, outboundSuccNumber:I
    const/16 v16, 0x0

    .line 340
    .local v16, outboundFailNumber:I
    const/4 v13, 0x0

    .line 341
    .local v13, inboundSuccNumber:I
    const/4 v11, 0x0

    .line 346
    .local v11, inboundFailNumber:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mUpdateCompleteNotification:Z

    if-nez v2, :cond_1

    .line 347
    const-string v2, "WifiOppNotification"

    const-string v3, "No need to update complete notification"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mActiveNotificationId:I

    if-eqz v2, :cond_2

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mActiveNotificationId:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 357
    const-string v2, "WifiOppNotification"

    const-string v3, "ongoing transfer notification was removed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (direction == 0)"

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 363
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 367
    const-string v2, "timestamp"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 368
    .local v23, timestampIndex:I
    const-string v2, "status"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 370
    .local v20, statusIndex:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 371
    invoke-interface {v9}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 375
    :cond_3
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 377
    .local v19, status:I
    invoke-static/range {v19 .. v19}, Lcom/android/wifidirect/test/WifiShare;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 378
    add-int/lit8 v16, v16, 0x1

    .line 370
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 380
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 383
    .end local v19           #status:I
    :cond_5
    const-string v2, "WifiOppNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outbound: succ-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  fail-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 386
    add-int v17, v18, v16

    .line 388
    .local v17, outboundNum:I
    if-lez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v2, :cond_8

    .line 389
    new-instance v15, Landroid/app/Notification;

    invoke-direct {v15}, Landroid/app/Notification;-><init>()V

    .line 390
    .local v15, outNoti:Landroid/app/Notification;
    const v2, 0x1080089

    iput v2, v15, Landroid/app/Notification;->icon:I

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 392
    .local v24, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f08001d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 395
    .local v8, caption:Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.wifiopp.intent.action.OPEN_OUTBOUND"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v14, intent:Landroid/content/Intent;
    const-string v2, "com.android.wifidirect.test"

    const-class v3, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v14, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v15, v2, v0, v8, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 400
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    const-string v2, "android.wifiopp.intent.action.HIDE_COMPLETE"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v2, "com.android.wifidirect.test"

    const-class v3, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v14, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v15, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 403
    move-wide/from16 v0, v21

    iput-wide v0, v15, Landroid/app/Notification;->when:J

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v3, -0xf4245

    invoke-virtual {v2, v3, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 413
    .end local v8           #caption:Ljava/lang/String;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #outNoti:Landroid/app/Notification;
    .end local v24           #title:Ljava/lang/String;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (direction == 1)"

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 415
    if-eqz v9, :cond_0

    .line 419
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_a

    .line 420
    invoke-interface {v9}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 422
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 424
    :cond_7
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 426
    .restart local v19       #status:I
    invoke-static/range {v19 .. v19}, Lcom/android/wifidirect/test/WifiShare;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 427
    add-int/lit8 v11, v11, 0x1

    .line 419
    :goto_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 406
    .end local v19           #status:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v2, :cond_6

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v3, -0xf4245

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 408
    const-string v2, "WifiOppNotification"

    const-string v3, "outbound notification was removed."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 429
    .restart local v19       #status:I
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 432
    .end local v19           #status:I
    :cond_a
    const-string v2, "WifiOppNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inbound: succ-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  fail-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 435
    add-int v12, v13, v11

    .line 437
    .local v12, inboundNum:I
    if-lez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v2, :cond_b

    .line 438
    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    .line 439
    .local v10, inNoti:Landroid/app/Notification;
    const v2, 0x1080082

    iput v2, v10, Landroid/app/Notification;->icon:I

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 441
    .restart local v24       #title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f08001d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 443
    .restart local v8       #caption:Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.wifiopp.intent.action.OPEN_INBOUND"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v2, "com.android.wifidirect.test"

    const-class v3, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v14, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v10, v2, v0, v8, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 447
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    const-string v2, "android.wifiopp.intent.action.HIDE_COMPLETE"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v2, "com.android.wifidirect.test"

    const-class v3, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v14, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v10, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 450
    move-wide/from16 v0, v21

    iput-wide v0, v10, Landroid/app/Notification;->when:J

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v3, -0xf4246

    invoke-virtual {v2, v3, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 453
    .end local v8           #caption:Ljava/lang/String;
    .end local v10           #inNoti:Landroid/app/Notification;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v24           #title:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v3, -0xf4246

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 455
    const-string v2, "WifiOppNotification"

    const-string v3, "inbound notification was removed."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateIncomingFileConfirmNotification()V
    .locals 15

    .prologue
    .line 461
    const-string v0, "WifiOppNotification"

    const-string v1, "updateIncomingFileConfirmNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "confirm == \'5\' AND (visibility IS NULL OR visibility == \'0\')"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 465
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 466
    const-string v0, "WifiOppNotification"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_0
    return-void

    .line 469
    :cond_0
    const-string v0, "WifiOppNotification"

    const-string v1, "updateIncomingFileConfirmNotification bp1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 471
    const-string v0, "WifiOppNotification"

    const-string v1, "updateIncomingFileConfirmNotification bp2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 473
    .local v14, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 475
    .local v6, caption:Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 476
    .local v9, id:I
    const-string v0, "timestamp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 477
    .local v12, timeStamp:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 478
    .local v7, contentUri:Landroid/net/Uri;
    new-instance v11, Landroid/app/Notification;

    invoke-direct {v11}, Landroid/app/Notification;-><init>()V

    .line 479
    .local v11, n:Landroid/app/Notification;
    const v0, 0x7f020008

    iput v0, v11, Landroid/app/Notification;->icon:I

    .line 480
    iget v0, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 481
    iget v0, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 482
    const/4 v0, 0x1

    iput v0, v11, Landroid/app/Notification;->defaults:I

    .line 483
    iput-object v14, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 484
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.wifiopp.intent.action.CONFIRM"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "com.android.wifidirect.test"

    const-class v1, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 488
    iput-wide v12, v11, Landroid/app/Notification;->when:J

    .line 489
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v10, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v11, v0, v14, v6, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 492
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intent:Landroid/content/Intent;
    const-string v0, "android.wifiopp.intent.action.HIDE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .restart local v10       #intent:Landroid/content/Intent;
    const-string v0, "com.android.wifidirect.test"

    const-class v1, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 495
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v11, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 497
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v9, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 470
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 500
    :cond_1
    const-string v0, "WifiOppNotification"

    const-string v1, "mNotificationMgr is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 504
    .end local v6           #caption:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #id:I
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #n:Landroid/app/Notification;
    .end local v12           #timeStamp:J
    .end local v14           #title:Ljava/lang/String;
    :cond_2
    const-string v0, "WifiOppNotification"

    const-string v1, "updateIncomingFileConfirmNotification bp3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public finishNotification()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mFinised:Z

    .line 108
    monitor-exit p0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateNotification()V
    .locals 3

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mPendingUpdate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mPendingUpdate:I

    .line 117
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mPendingUpdate:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 118
    const-string v0, "WifiOppNotification"

    const-string v1, "update too frequent, put in queue"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    monitor-exit p0

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    const-string v0, "WifiOppNotification"

    const-string v1, "send message"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
