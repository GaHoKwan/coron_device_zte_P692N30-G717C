.class public Lcom/mediatek/bluetooth/bip/BipInitEntry;
.super Ljava/lang/Object;
.source "BipInitEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BipInitEntry"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mInsertTask:Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/bluetooth/bip/BipInitEntry;->mInsertTask:Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;

    .line 149
    const-string v4, "BipInitEntry"

    const-string v5, "BipInitEntry......"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipInitEntry;->mContext:Landroid/content/Context;

    .line 152
    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipInitEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/bluetooth/bip/BipInitEntry;->mContentResolver:Landroid/content/ContentResolver;

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 158
    .local v1, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "BipInitEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received BT device selected intent, bt device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 162
    :cond_0
    const-string v4, "BipInitEntry"

    const-string v5, "action is null or remoteDevce is null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 166
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_3

    .line 167
    const-string v4, "BipInitEntry"

    const-string v5, "uri is null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/mediatek/bluetooth/bip/BipInitEntry;->bipiInsert(Landroid/net/Uri;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 173
    .end local v2           #uri:Landroid/net/Uri;
    :cond_4
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 175
    .local v3, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez v3, :cond_5

    .line 176
    const-string v4, "BipInitEntry"

    const-string v5, "uris is null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_5
    new-instance v4, Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;

    invoke-direct {v4, p0, v3, v1}, Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;-><init>(Lcom/mediatek/bluetooth/bip/BipInitEntry;Ljava/util/ArrayList;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v4, p0, Lcom/mediatek/bluetooth/bip/BipInitEntry;->mInsertTask:Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;

    .line 180
    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipInitEntry;->mInsertTask:Lcom/mediatek/bluetooth/bip/BipInitEntry$InsertTaskThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/bip/BipInitEntry;Landroid/net/Uri;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/bip/BipInitEntry;->bipiInsert(Landroid/net/Uri;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private declared-synchronized bipiInsert(Landroid/net/Uri;Landroid/bluetooth/BluetoothDevice;)V
    .locals 17
    .parameter "uri"
    .parameter "remoteDevice"

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    const-string v2, "BipInitEntry"

    const-string v4, "bipiInsert"

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipInitEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 84
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_data"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "mime_type"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "_size"

    aput-object v4, v3, v2

    .line 88
    .local v3, proj:[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 93
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .local v14, pathColumnId:I
    const/4 v11, 0x0

    .local v11, mimeColumnId:I
    const/4 v15, 0x0

    .line 94
    .local v15, sizeColumnId:I
    const/4 v10, 0x0

    .local v10, filePath:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, objectSize:Ljava/lang/String;
    const/4 v12, 0x0

    .line 95
    .local v12, objectMime:Ljava/lang/String;
    const/16 v16, 0x0

    .line 97
    .local v16, values:Landroid/content/ContentValues;
    if-nez v7, :cond_0

    .line 98
    const-string v2, "BipInitEntry"

    const-string v4, "cursor is null"

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    :try_start_1
    const-string v2, "_data"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 103
    const-string v2, "mime_type"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 104
    const-string v2, "_size"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 105
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 107
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 108
    const-string v2, "BipInitEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File Path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 112
    const-string v2, "BipInitEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File Mime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :try_start_2
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v9, f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 123
    const-string v2, "BipInitEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v16, Landroid/content/ContentValues;

    .end local v16           #values:Landroid/content/ContentValues;
    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .restart local v16       #values:Landroid/content/ContentValues;
    const-string v2, "type"

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v2, "state"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v2, "result"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v2, "name"

    const/16 v4, 0x2f

    invoke-virtual {v10, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "uri"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v2, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "mime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "peer_name"

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v2, "peer_addr"

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "total"

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    const-string v2, "done"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipInitEntry;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 80
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #proj:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #f:Ljava/io/File;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v11           #mimeColumnId:I
    .end local v12           #objectMime:Ljava/lang/String;
    .end local v13           #objectSize:Ljava/lang/String;
    .end local v14           #pathColumnId:I
    .end local v15           #sizeColumnId:I
    .end local v16           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 115
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v3       #proj:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v10       #filePath:Ljava/lang/String;
    .restart local v11       #mimeColumnId:I
    .restart local v12       #objectMime:Ljava/lang/String;
    .restart local v13       #objectSize:Ljava/lang/String;
    .restart local v14       #pathColumnId:I
    .restart local v15       #sizeColumnId:I
    .restart local v16       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 116
    .local v8, e:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    const-string v2, "BipInitEntry"

    const-string v4, "CursorIndexOutOfBoundsException catched"

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipInitEntry;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/bip/BipInitEntry;->mContext:Landroid/content/Context;

    const v5, 0x7f070019

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
