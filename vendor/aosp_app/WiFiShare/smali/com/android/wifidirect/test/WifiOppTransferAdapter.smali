.class public Lcom/android/wifidirect/test/WifiOppTransferAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "WifiOppTransferAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mShowAllIncoming:Z

.field private mTransferCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 57
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 0
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "showAllIncoming"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 49
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-boolean p4, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mShowAllIncoming:Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/wifidirect/test/WifiOppTransferAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mTransferCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/wifidirect/test/WifiOppTransferAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/wifidirect/test/WifiOppTransferAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->openCompleteTransfer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wifidirect/test/WifiOppTransferAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mShowAllIncoming:Z

    return v0
.end method

.method private openCompleteTransfer()V
    .locals 13

    .prologue
    .line 186
    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mTransferCursor:Landroid/database/Cursor;

    const-string v10, "_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 187
    .local v4, mIdColumnId:I
    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 189
    .local v7, sessionId:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 190
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v8, Lcom/android/wifidirect/test/WifiOppTransferInfo;

    invoke-direct {v8}, Lcom/android/wifidirect/test/WifiOppTransferInfo;-><init>()V

    .line 192
    .local v8, transInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;
    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/android/wifidirect/test/WifiOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/wifidirect/test/WifiOppTransferInfo;

    move-result-object v8

    .line 193
    if-nez v8, :cond_0

    .line 248
    :goto_0
    return-void

    .line 197
    :cond_0
    iget v9, v8, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mDirection:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    iget v9, v8, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    invoke-static {v9}, Lcom/android/wifidirect/test/WifiShare;->isStatusSuccess(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 203
    iget-object v9, v8, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/wifidirect/test/WifiOppUtility;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/wifidirect/test/WifiOppUtility;->getObjectTypeFromFileExt(Ljava/lang/String;)I

    move-result v5

    .line 208
    .local v5, objType:I
    const/4 v9, 0x2

    iget v10, v8, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileStatus:I

    if-ne v9, v10, :cond_2

    .line 211
    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    move-result-object v6

    .line 212
    .local v6, processor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;
    iget v9, v8, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mID:I

    invoke-virtual {v6, v9}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->queryShareInfo(I)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v3

    .line 213
    .local v3, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->getFileHandler(Lcom/android/wifidirect/test/WifiOppShareInfo;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;

    move-result-object v1

    .line 214
    .local v1, handler:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;
    if-eqz v1, :cond_1

    .line 215
    invoke-interface {v1}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;->notifyProcessing()V

    .line 217
    :cond_1
    const/4 v1, 0x0

    .line 218
    const/4 v3, 0x0

    .line 219
    const/4 v6, 0x0

    .line 221
    goto :goto_0

    .line 229
    .end local v1           #handler:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;
    .end local v3           #info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    .end local v6           #processor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;
    :cond_2
    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    iget-object v10, v8, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFilePath:Ljava/lang/String;

    iget-object v11, v8, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v12, v8, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    invoke-static {v9, v10, v11, v12, v0}, Lcom/android/wifidirect/test/WifiOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    goto :goto_0

    .line 243
    .end local v5           #objType:I
    :cond_3
    new-instance v2, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/wifidirect/test/WifiOppTransferActivity;

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v2, in:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 245
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 246
    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 24
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 64
    .local v11, r:Landroid/content/res/Resources;
    const v20, 0x7f0b0021

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 65
    .local v9, iv:Landroid/widget/ImageView;
    const-string v20, "status"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 66
    .local v12, status:I
    const-string v20, "direction"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 67
    .local v7, dir:I
    invoke-static {v12}, Lcom/android/wifidirect/test/WifiShare;->isStatusError(I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 68
    const v20, 0x1080078

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    :goto_0
    const v20, 0x7f0b0025

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 79
    .local v19, tv:Landroid/widget/TextView;
    const-string v20, "hint"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 81
    .local v16, title:Ljava/lang/String;
    if-nez v16, :cond_0

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f080018

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 84
    :cond_0
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v20, 0x7f0b0026

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #tv:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 90
    .restart local v19       #tv:Landroid/widget/TextView;
    const/4 v6, 0x0

    .line 91
    .local v6, deviceName:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_4

    .line 92
    const-string v20, "devicename"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 105
    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const-string v20, "total_bytes"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 109
    .local v17, totalBytes:J
    invoke-static {v12}, Lcom/android/wifidirect/test/WifiShare;->isStatusCompleted(I)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 110
    const v20, 0x7f0b0028

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #tv:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 111
    .restart local v19       #tv:Landroid/widget/TextView;
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-static {v12}, Lcom/android/wifidirect/test/WifiShare;->isStatusError(I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v12, v6, v7}, Lcom/android/wifidirect/test/WifiOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_2
    const-string v20, "timestamp"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 127
    .local v5, dateColumnId:I
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 128
    .local v14, time:J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 129
    .local v4, d:Ljava/util/Date;
    invoke-static {v14, v15}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 131
    .local v13, str:Ljava/lang/CharSequence;
    :goto_3
    const v20, 0x7f0b0027

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #tv:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 132
    .restart local v19       #tv:Landroid/widget/TextView;
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .end local v4           #d:Ljava/util/Date;
    .end local v5           #dateColumnId:I
    .end local v13           #str:Ljava/lang/CharSequence;
    .end local v14           #time:J
    :cond_1
    const v20, 0x7f0b0023

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 137
    .local v8, imageView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mTransferCursor:Landroid/database/Cursor;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mTransferCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 139
    .local v10, position:I
    new-instance v20, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v8}, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;-><init>(Lcom/android/wifidirect/test/WifiOppTransferAdapter;ILandroid/widget/ImageView;)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void

    .line 70
    .end local v6           #deviceName:Ljava/lang/String;
    .end local v8           #imageView:Landroid/widget/ImageView;
    .end local v10           #position:I
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #totalBytes:J
    .end local v19           #tv:Landroid/widget/TextView;
    :cond_2
    if-nez v7, :cond_3

    .line 71
    const v20, 0x1080089

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 73
    :cond_3
    const v20, 0x1080082

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 97
    .restart local v6       #deviceName:Ljava/lang/String;
    .restart local v16       #title:Ljava/lang/String;
    .restart local v19       #tv:Landroid/widget/TextView;
    :cond_4
    const-string v20, "rdevicename"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 116
    .restart local v17       #totalBytes:J
    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_6

    .line 117
    const v20, 0x7f080062

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, completeText:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 120
    .end local v3           #completeText:Ljava/lang/String;
    :cond_6
    const v20, 0x7f080061

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #completeText:Ljava/lang/String;
    goto :goto_4

    .line 129
    .end local v3           #completeText:Ljava/lang/String;
    .restart local v4       #d:Ljava/util/Date;
    .restart local v5       #dateColumnId:I
    .restart local v14       #time:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3
.end method
