.class public Lcom/android/wifidirect/test/WifiOppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiOppReceiver.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiOppReceiver"

.field private static final V:Z = true

.field static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final WAKE_LOCK_TIMEOUT:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/wifidirect/test/WifiOppReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/wifidirect/test/WifiOppReceiver;->WAKE_LOCK_TIMEOUT:J

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 36
    .local v8, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/wifidirect/test/WifiOppService;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v2, "android.wifiopp.intent.action.CONFIRM"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    const-string v2, "WifiOppReceiver"

    const-string v3, "Receiver ACTION_INCOMING_FILE_CONFIRM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 91
    .local v20, uri:Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    const-class v2, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v10, in:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 94
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    const-string v2, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 98
    .local v12, notMgr:Landroid/app/NotificationManager;
    if-eqz v12, :cond_0

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 100
    const-string v2, "WifiOppReceiver"

    const-string v3, "notMgr.cancel called"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v10           #in:Landroid/content/Intent;
    .end local v12           #notMgr:Landroid/app/NotificationManager;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_2
    const-string v2, "android.wififtp.intent.action.INCOMING_FILE_NOTIFICATION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    const-string v2, "WifiOppReceiver"

    const-string v3, "Receiver INCOMING_FILE_NOTIFICATION"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v2, Lcom/android/wifidirect/test/WifiOppReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_3

    .line 109
    const-string v2, "WifiOppReceiver"

    const-string v3, "screen on ***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 111
    .local v13, pm:Landroid/os/PowerManager;
    const v2, 0x1000001a

    const-string v3, "InComingRequest"

    invoke-virtual {v13, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/android/wifidirect/test/WifiOppReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 112
    sget-object v2, Lcom/android/wifidirect/test/WifiOppReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 114
    .end local v13           #pm:Landroid/os/PowerManager;
    :cond_3
    sget-object v2, Lcom/android/wifidirect/test/WifiOppReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 116
    const v2, 0x7f080020

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 120
    :cond_4
    const-string v2, "android.wifiopp.intent.action.OPEN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.wifiopp.intent.action.LIST"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 122
    :cond_5
    const-string v2, "android.wifiopp.intent.action.OPEN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    const-string v2, "WifiOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver open for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_1
    new-instance v18, Lcom/android/wifidirect/test/WifiOppTransferInfo;

    invoke-direct/range {v18 .. v18}, Lcom/android/wifidirect/test/WifiOppTransferInfo;-><init>()V

    .line 130
    .local v18, transInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 131
    .restart local v20       #uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/wifidirect/test/WifiOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/wifidirect/test/WifiOppTransferInfo;

    move-result-object v18

    .line 132
    if-nez v18, :cond_7

    .line 133
    const-string v2, "WifiOppReceiver"

    const-string v3, "Error: Can not get data from db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 125
    .end local v18           #transInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_6
    const-string v2, "WifiOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver list for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 137
    .restart local v18       #transInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;
    .restart local v20       #uri:Landroid/net/Uri;
    :cond_7
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/wifidirect/test/WifiShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 141
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileType:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/wifidirect/test/WifiOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 153
    :goto_2
    const-string v2, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 155
    .restart local v12       #notMgr:Landroid/app/NotificationManager;
    if-eqz v12, :cond_0

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 157
    const-string v2, "WifiOppReceiver"

    const-string v3, "notMgr.cancel called"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 146
    .end local v12           #notMgr:Landroid/app/NotificationManager;
    :cond_8
    new-instance v10, Landroid/content/Intent;

    const-class v2, Lcom/android/wifidirect/test/WifiOppTransferActivity;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .restart local v10       #in:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 149
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    const-string v2, "WifiOppReceiver"

    const-string v3, "zhuyuan test transfer "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 161
    .end local v10           #in:Landroid/content/Intent;
    .end local v18           #transInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_9
    const-string v2, "android.wifiopp.intent.action.OPEN_OUTBOUND"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 162
    const-string v2, "WifiOppReceiver"

    const-string v3, "Received ACTION_OPEN_OUTBOUND_TRANSFER."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v10, Landroid/content/Intent;

    const-class v2, Lcom/android/wifidirect/test/WifiOppTransferHistory;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .restart local v10       #in:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    const-string v2, "direction"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 171
    .end local v10           #in:Landroid/content/Intent;
    :cond_a
    const-string v2, "android.wifiopp.intent.action.OPEN_INBOUND"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 172
    const-string v2, "WifiOppReceiver"

    const-string v3, "Received ACTION_OPEN_INBOUND_TRANSFER.WIFIP2P_ACTION_OPEN_RECEIVED_FILES"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v10, Landroid/content/Intent;

    const-class v2, Lcom/android/wifidirect/test/WifiOppTransferHistory;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .restart local v10       #in:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    const-string v2, "direction"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 179
    .end local v10           #in:Landroid/content/Intent;
    :cond_b
    const-string v2, "android.wifip2p.intent.action.OPEN_RECEIVED_FILES"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 180
    const-string v2, "WifiOppReceiver"

    const-string v3, "Received ACTION_OPEN_RECEIVED_FILES."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v10, Landroid/content/Intent;

    const-class v2, Lcom/android/wifidirect/test/WifiOppTransferHistory;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .restart local v10       #in:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    const-string v2, "direction"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const-string v2, "android.wifishareopp.intent.extra.SHOW_ALL"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 188
    .end local v10           #in:Landroid/content/Intent;
    :cond_c
    const-string v2, "android.wifiopp.intent.action.HIDE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 189
    const-string v2, "WifiOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver hide for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 192
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 193
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 194
    const-string v2, "status"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 195
    .local v16, statusColumn:I
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 196
    .local v15, status:I
    const-string v2, "visibility"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 197
    .local v25, visibilityColumn:I
    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 198
    .local v24, visibility:I
    const-string v2, "confirm"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 200
    .local v22, userConfirmationColumn:I
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 201
    .local v21, userConfirmation:I
    const/4 v2, 0x5

    move/from16 v0, v21

    if-ne v0, v2, :cond_d

    if-nez v24, :cond_d

    .line 203
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v23, values:Landroid/content/ContentValues;
    const-string v2, "visibility"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 206
    const-string v2, "WifiOppReceiver"

    const-string v3, "Action_hide received and db updated"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v15           #status:I
    .end local v16           #statusColumn:I
    .end local v21           #userConfirmation:I
    .end local v22           #userConfirmationColumn:I
    .end local v23           #values:Landroid/content/ContentValues;
    .end local v24           #visibility:I
    .end local v25           #visibilityColumn:I
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 211
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_e
    const-string v2, "android.wifiopp.intent.action.HIDE_COMPLETE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 212
    const-string v2, "WifiOppReceiver"

    const-string v3, "Receiver ACTION_COMPLETE_HIDE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 214
    .local v19, updateValues:Landroid/content/ContentValues;
    const-string v2, "visibility"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\')"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 217
    .end local v19           #updateValues:Landroid/content/ContentValues;
    :cond_f
    const-string v2, "android.wififtp.intent.action.TRANSFER_COMPLETE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 218
    const-string v2, "WifiOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver Transfer Complete Intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v17, 0x0

    .line 221
    .local v17, toastMsg:Ljava/lang/String;
    new-instance v18, Lcom/android/wifidirect/test/WifiOppTransferInfo;

    invoke-direct/range {v18 .. v18}, Lcom/android/wifidirect/test/WifiOppTransferInfo;-><init>()V

    .line 222
    .restart local v18       #transInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/wifidirect/test/WifiOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/wifidirect/test/WifiOppTransferInfo;

    move-result-object v18

    .line 223
    if-nez v18, :cond_10

    .line 224
    const-string v2, "WifiOppReceiver"

    const-string v3, "Error: Can not get data from db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 228
    :cond_10
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/wifidirect/test/WifiShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 229
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mDirection:I

    if-nez v2, :cond_12

    .line 230
    const v2, 0x7f08006a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 244
    :cond_11
    :goto_3
    const-string v2, "WifiOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Toast msg == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz v17, :cond_0

    .line 246
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 231
    :cond_12
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 232
    const v2, 0x7f08006b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 236
    :cond_13
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/wifidirect/test/WifiShare;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 237
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mDirection:I

    if-nez v2, :cond_14

    .line 238
    const v2, 0x7f080069

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 240
    :cond_14
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 241
    const v2, 0x7f080047

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 250
    .end local v17           #toastMsg:Ljava/lang/String;
    .end local v18           #transInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;
    :cond_15
    const-string v2, "com.android.wifidirect.opp.action.FILE_PROCESS_STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    const-string v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 252
    .local v14, state:I
    const-string v2, "msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 253
    .local v11, msg:Ljava/lang/String;
    const-string v2, "WifiOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive ACTION_FILE_PROCESS_STATE_CHANGED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-eqz v11, :cond_0

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-lez v14, :cond_16

    const/4 v2, 0x1

    :goto_4
    invoke-static {v3, v11, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_16
    const/4 v2, 0x0

    goto :goto_4
.end method
