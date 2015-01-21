.class Lcom/android/wifidirect/test/SessionThread$ClientThread;
.super Ljava/lang/Thread;
.source "SessionThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/SessionThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# static fields
.field private static final nTimeOut:I = 0x4e20


# instance fields
.field private IS_USE_AUTOCONFIRMED:Z

.field private mAccepted:I

.field private mFilename:Ljava/lang/String;

.field private mLocalShareInfoId:I

.field private mSenderName:Ljava/lang/String;

.field private mStrUris:Ljava/lang/String;

.field mTimeoutMsgSent:Z

.field private mTimestamp:J

.field private mTimestampEnd:J

.field private mTimestampIncludingConfirm:J

.field private mTimestampNoConfirm:J

.field private mimeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/wifidirect/test/SessionThread;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/SessionThread;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 238
    iput-object p1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mFilename:Ljava/lang/String;

    .line 231
    iput-boolean v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->IS_USE_AUTOCONFIRMED:Z

    .line 235
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mAccepted:I

    .line 236
    iput-boolean v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimeoutMsgSent:Z

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimestamp:J

    .line 240
    return-void
.end method

.method private download()I
    .locals 36

    .prologue
    .line 618
    const-wide/16 v26, 0x0

    .local v26, totalBytes:J
    const-wide/16 v28, 0x0

    .local v28, totalBytesRead:J
    const-wide/16 v17, 0x0

    .line 619
    .local v17, offset:J
    sget v32, Lcom/android/wifidirect/test/Constants;->OutputDataSize:I

    move/from16 v0, v32

    int-to-long v8, v0

    .line 620
    .local v8, current:J
    const/4 v15, 0x0

    .local v15, line:Ljava/lang/String;
    const/4 v12, 0x0

    .line 621
    .local v12, fullpath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 622
    .local v5, append:Z
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v30, updateValues:Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 624
    .local v7, byteCounter:I
    const/4 v14, 0x1

    .line 625
    .local v14, isConnected:Z
    const/16 v24, 0xc8

    .line 626
    .local v24, statusDownload:I
    const-string v13, "download: "

    .line 627
    .local v13, functionName:Ljava/lang/String;
    const/16 v21, 0x0

    .line 628
    .local v21, outFile:Ljava/io/FileOutputStream;
    const/16 v19, 0x0

    .line 630
    .local v19, outBuffer:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v34, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v34, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static/range {v34 .. v34}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    #setter for: Lcom/android/wifidirect/test/SessionThread;->mContentUri:Landroid/net/Uri;
    invoke-static/range {v32 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$1302(Lcom/android/wifidirect/test/SessionThread;Landroid/net/Uri;)Landroid/net/Uri;

    .line 631
    const-string v32, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v33, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static/range {v33 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v32, "status"

    const/16 v33, 0xc0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$000(Lcom/android/wifidirect/test/SessionThread;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v33, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContentUri:Landroid/net/Uri;
    invoke-static/range {v33 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$1300(Lcom/android/wifidirect/test/SessionThread;)Landroid/net/Uri;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 635
    if-eqz v14, :cond_14

    .line 637
    :try_start_0
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "begin download file. mFileInfo=:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v34, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static/range {v34 .. v34}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v32

    if-eqz v32, :cond_2

    .line 642
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "<==>tsj: mFileName=:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v34, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static/range {v34 .. v34}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v32, v0

    if-nez v32, :cond_5

    .line 645
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "<==>tsj: mFileName==null. File Error! cancel transfer!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mStatus:I

    move/from16 v24, v0

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v33, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static/range {v33 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mStatus:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7

    .line 749
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "11 finally begin"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_1
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "finally bp1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-eqz v19, :cond_0

    .line 753
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    .line 755
    :cond_0
    if-eqz v21, :cond_1

    .line 756
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move/from16 v25, v24

    .end local v24           #statusDownload:I
    .local v25, statusDownload:I
    :goto_0
    move/from16 v32, v24

    move/from16 v24, v25

    .line 765
    .end local v25           #statusDownload:I
    .restart local v24       #statusDownload:I
    :goto_1
    return v32

    .line 759
    :catch_0
    move-exception v10

    .line 760
    .local v10, e:Ljava/io/IOException;
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "Error when closing stream after send"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/16 v25, 0x1f0

    .end local v24           #statusDownload:I
    .restart local v25       #statusDownload:I
    goto :goto_0

    .line 651
    .end local v10           #e:Ljava/io/IOException;
    .end local v25           #statusDownload:I
    .restart local v24       #statusDownload:I
    :cond_2
    :try_start_2
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "<==>tsj: mFileInfo==null. unexpected!. cancel transfer!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7

    .line 653
    const/16 v24, 0x1ec

    .line 749
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "11 finally begin"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_3
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "finally bp1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-eqz v19, :cond_3

    .line 753
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    .line 755
    :cond_3
    if-eqz v21, :cond_4

    .line 756
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    move/from16 v25, v24

    .end local v24           #statusDownload:I
    .restart local v25       #statusDownload:I
    :goto_2
    move/from16 v32, v24

    move/from16 v24, v25

    .line 762
    .end local v25           #statusDownload:I
    .restart local v24       #statusDownload:I
    goto :goto_1

    .line 759
    :catch_1
    move-exception v10

    .line 760
    .restart local v10       #e:Ljava/io/IOException;
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "Error when closing stream after send"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/16 v25, 0x1f0

    .end local v24           #statusDownload:I
    .restart local v25       #statusDownload:I
    goto :goto_2

    .line 657
    .end local v10           #e:Ljava/io/IOException;
    .end local v25           #statusDownload:I
    .restart local v24       #statusDownload:I
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/PrintWriter;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInStream:Ljava/io/InputStream;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$1400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/InputStream;

    move-result-object v32

    if-nez v32, :cond_6

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v33, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mTransport:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static/range {v33 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$300(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/ObexTransport;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lcom/android/wifidirect/test/ObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object v33

    #setter for: Lcom/android/wifidirect/test/SessionThread;->mInStream:Ljava/io/InputStream;
    invoke-static/range {v32 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$1402(Lcom/android/wifidirect/test/SessionThread;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 663
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v21, v0

    .line 664
    new-instance v20, Ljava/io/BufferedOutputStream;

    invoke-direct/range {v20 .. v21}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7

    .line 665
    .end local v19           #outBuffer:Ljava/io/BufferedOutputStream;
    .local v20, outBuffer:Ljava/io/BufferedOutputStream;
    :try_start_5
    sget v32, Lcom/android/wifidirect/test/Constants;->InputDataSize:I

    move/from16 v0, v32

    new-array v6, v0, [B

    .line 666
    .local v6, byteArray:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mLength:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x14

    mul-long v34, v34, v8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v11, v0

    .line 667
    .local v11, filePercent:I
    const/16 v22, 0x0

    .line 669
    .local v22, perCentCounter:I
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "filename= "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mFilename:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ";filePercent ="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_a

    move-object/from16 v31, v30

    .line 671
    .end local v30           #updateValues:Landroid/content/ContentValues;
    .local v31, updateValues:Landroid/content/ContentValues;
    :cond_7
    :goto_3
    cmp-long v32, v28, v26

    if-gez v32, :cond_10

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mStop:Z
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$500(Lcom/android/wifidirect/test/SessionThread;)Z

    move-result v32

    if-nez v32, :cond_10

    .line 672
    sub-long v32, v26, v28

    cmp-long v32, v8, v32

    if-lez v32, :cond_8

    .line 673
    sub-long v8, v26, v28

    .line 675
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v32

    if-eqz v32, :cond_9

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v33, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static/range {v33 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v33

    const/16 v34, 0x4

    invoke-virtual/range {v33 .. v34}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v33

    const-wide/32 v34, 0xc350

    invoke-virtual/range {v32 .. v35}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 679
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v33, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInStream:Ljava/io/InputStream;
    invoke-static/range {v33 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$1400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/InputStream;

    move-result-object v33

    const/16 v34, 0x0

    long-to-int v0, v8

    move/from16 v35, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v33

    #setter for: Lcom/android/wifidirect/test/SessionThread;->mBytesRead:I
    invoke-static/range {v32 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$1502(Lcom/android/wifidirect/test/SessionThread;I)I

    .line 680
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "bytesRead="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v34, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mBytesRead:I
    invoke-static/range {v34 .. v34}, Lcom/android/wifidirect/test/SessionThread;->access$1500(Lcom/android/wifidirect/test/SessionThread;)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ";current="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ";totalBytesRead: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ";totalBytes: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mBytesRead:I
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$1500(Lcom/android/wifidirect/test/SessionThread;)I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v28, v28, v32

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mBytesRead:I
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$1500(Lcom/android/wifidirect/test/SessionThread;)I

    move-result v32

    add-int/lit8 v7, v32, 0x0

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mBytesRead:I
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$1500(Lcom/android/wifidirect/test/SessionThread;)I

    move-result v32

    if-lez v32, :cond_c

    .line 686
    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v33, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mBytesRead:I
    invoke-static/range {v33 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$1500(Lcom/android/wifidirect/test/SessionThread;)I

    move-result v33

    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v32

    if-eqz v32, :cond_a

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x4

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    .line 690
    :cond_a
    const/4 v7, 0x0

    .line 691
    add-int/lit8 v22, v22, 0x1

    .line 693
    move/from16 v0, v22

    if-ge v0, v11, :cond_b

    cmp-long v32, v28, v26

    if-nez v32, :cond_7

    .line 696
    :cond_b
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 697
    .end local v31           #updateValues:Landroid/content/ContentValues;
    .restart local v30       #updateValues:Landroid/content/ContentValues;
    :try_start_7
    const-string v32, "current_bytes"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$000(Lcom/android/wifidirect/test/SessionThread;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v33, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContentUri:Landroid/net/Uri;
    invoke-static/range {v33 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$1300(Lcom/android/wifidirect/test/SessionThread;)Landroid/net/Uri;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a

    .line 699
    const/16 v22, 0x0

    move-object/from16 v31, v30

    .end local v30           #updateValues:Landroid/content/ContentValues;
    .restart local v31       #updateValues:Landroid/content/ContentValues;
    goto/16 :goto_3

    .line 702
    :cond_c
    :try_start_8
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "cancel transfer"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v32

    if-eqz v32, :cond_d

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x4

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_b

    .line 706
    :cond_d
    const/16 v24, 0x1ea

    .line 749
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "11 finally begin"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_9
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "finally bp1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-eqz v20, :cond_e

    .line 753
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 755
    :cond_e
    if-eqz v21, :cond_f

    .line 756
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_f
    move/from16 v25, v24

    .end local v24           #statusDownload:I
    .restart local v25       #statusDownload:I
    :goto_4
    move-object/from16 v19, v20

    .end local v20           #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v19       #outBuffer:Ljava/io/BufferedOutputStream;
    move-object/from16 v30, v31

    .end local v31           #updateValues:Landroid/content/ContentValues;
    .restart local v30       #updateValues:Landroid/content/ContentValues;
    move/from16 v32, v24

    move/from16 v24, v25

    .line 762
    .end local v25           #statusDownload:I
    .restart local v24       #statusDownload:I
    goto/16 :goto_1

    .line 759
    .end local v19           #outBuffer:Ljava/io/BufferedOutputStream;
    .end local v30           #updateValues:Landroid/content/ContentValues;
    .restart local v20       #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v31       #updateValues:Landroid/content/ContentValues;
    :catch_2
    move-exception v10

    .line 760
    .restart local v10       #e:Ljava/io/IOException;
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "Error when closing stream after send"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/16 v25, 0x1f0

    .end local v24           #statusDownload:I
    .restart local v25       #statusDownload:I
    goto :goto_4

    .line 711
    .end local v10           #e:Ljava/io/IOException;
    .end local v25           #statusDownload:I
    .restart local v24       #statusDownload:I
    :cond_10
    :try_start_a
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "after While,End of transfer: totalBytesRead: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ";totalBytes: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ";mStop="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v34, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mStop:Z
    invoke-static/range {v34 .. v34}, Lcom/android/wifidirect/test/SessionThread;->access$500(Lcom/android/wifidirect/test/SessionThread;)Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->flush()V

    .line 714
    cmp-long v32, v28, v26

    if-nez v32, :cond_15

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$1208(Lcom/android/wifidirect/test/SessionThread;)I

    .line 716
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "File download completed: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mFilename:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "; mFileRecNum :"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v34, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileRecNum:I
    invoke-static/range {v34 .. v34}, Lcom/android/wifidirect/test/SessionThread;->access$1200(Lcom/android/wifidirect/test/SessionThread;)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_b

    .line 719
    .end local v31           #updateValues:Landroid/content/ContentValues;
    .restart local v30       #updateValues:Landroid/content/ContentValues;
    :try_start_b
    const-string v32, "status"

    const/16 v33, 0xc8

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$000(Lcom/android/wifidirect/test/SessionThread;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v33, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContentUri:Landroid/net/Uri;
    invoke-static/range {v33 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$1300(Lcom/android/wifidirect/test/SessionThread;)Landroid/net/Uri;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$000(Lcom/android/wifidirect/test/SessionThread;)Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v33, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static/range {v33 .. v33}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v33, v0

    const/16 v34, 0xc8

    invoke-static/range {v32 .. v34}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 722
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "Transfer complete;mCallback="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v34, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v32

    if-eqz v32, :cond_11

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v16

    .line 725
    .local v16, msg:Landroid/os/Message;
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v32, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static/range {v32 .. v32}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 727
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 728
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "after send MSG_SHARE_COMPLETE message"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_a

    .line 749
    .end local v16           #msg:Landroid/os/Message;
    :cond_11
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "11 finally begin"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_c
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "finally bp1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-eqz v20, :cond_12

    .line 753
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 755
    :cond_12
    if-eqz v21, :cond_13

    .line 756
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :cond_13
    move-object/from16 v19, v20

    .end local v6           #byteArray:[B
    .end local v11           #filePercent:I
    .end local v20           #outBuffer:Ljava/io/BufferedOutputStream;
    .end local v22           #perCentCounter:I
    .restart local v19       #outBuffer:Ljava/io/BufferedOutputStream;
    :cond_14
    :goto_5
    move/from16 v32, v24

    .line 765
    goto/16 :goto_1

    .line 732
    .end local v19           #outBuffer:Ljava/io/BufferedOutputStream;
    .end local v30           #updateValues:Landroid/content/ContentValues;
    .restart local v6       #byteArray:[B
    .restart local v11       #filePercent:I
    .restart local v20       #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v22       #perCentCounter:I
    .restart local v31       #updateValues:Landroid/content/ContentValues;
    :cond_15
    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v32, v0

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    const/high16 v33, 0x42c8

    mul-float v23, v32, v33

    .line 733
    .local v23, percentComplete:F
    :try_start_d
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "File download aborted after: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "%"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_b

    .line 735
    const/16 v24, 0x1ea

    .line 749
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "11 finally begin"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_e
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "finally bp1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-eqz v20, :cond_16

    .line 753
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 755
    :cond_16
    if-eqz v21, :cond_17

    .line 756
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    :cond_17
    move/from16 v25, v24

    .end local v24           #statusDownload:I
    .restart local v25       #statusDownload:I
    :goto_6
    move-object/from16 v19, v20

    .end local v20           #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v19       #outBuffer:Ljava/io/BufferedOutputStream;
    move-object/from16 v30, v31

    .end local v31           #updateValues:Landroid/content/ContentValues;
    .restart local v30       #updateValues:Landroid/content/ContentValues;
    move/from16 v32, v24

    move/from16 v24, v25

    .line 762
    .end local v25           #statusDownload:I
    .restart local v24       #statusDownload:I
    goto/16 :goto_1

    .line 759
    .end local v19           #outBuffer:Ljava/io/BufferedOutputStream;
    .end local v30           #updateValues:Landroid/content/ContentValues;
    .restart local v20       #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v31       #updateValues:Landroid/content/ContentValues;
    :catch_3
    move-exception v10

    .line 760
    .restart local v10       #e:Ljava/io/IOException;
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "Error when closing stream after send"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/16 v25, 0x1f0

    .end local v24           #statusDownload:I
    .restart local v25       #statusDownload:I
    goto :goto_6

    .line 759
    .end local v10           #e:Ljava/io/IOException;
    .end local v23           #percentComplete:F
    .end local v25           #statusDownload:I
    .end local v31           #updateValues:Landroid/content/ContentValues;
    .restart local v24       #statusDownload:I
    .restart local v30       #updateValues:Landroid/content/ContentValues;
    :catch_4
    move-exception v10

    .line 760
    .restart local v10       #e:Ljava/io/IOException;
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "Error when closing stream after send"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/16 v24, 0x1f0

    move-object/from16 v19, v20

    .line 763
    .end local v20           #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v19       #outBuffer:Ljava/io/BufferedOutputStream;
    goto/16 :goto_5

    .line 738
    .end local v6           #byteArray:[B
    .end local v10           #e:Ljava/io/IOException;
    .end local v11           #filePercent:I
    .end local v22           #perCentCounter:I
    :catch_5
    move-exception v10

    .line 739
    .restart local v10       #e:Ljava/io/IOException;
    :goto_7
    :try_start_f
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "IOException occured to download the file: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mFilename:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 742
    const/16 v24, 0x1f0

    .line 749
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "11 finally begin"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_10
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "finally bp1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-eqz v19, :cond_18

    .line 753
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    .line 755
    :cond_18
    if-eqz v21, :cond_14

    .line 756
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_5

    .line 759
    :catch_6
    move-exception v10

    .line 760
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "Error when closing stream after send"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/16 v24, 0x1f0

    .line 763
    goto/16 :goto_5

    .line 743
    .end local v10           #e:Ljava/io/IOException;
    :catch_7
    move-exception v10

    .line 744
    .local v10, e:Ljava/lang/NullPointerException;
    :goto_8
    :try_start_11
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "NullPointerException occured to download the file: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mFilename:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 747
    const/16 v24, 0x1eb

    .line 749
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "11 finally begin"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_12
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "finally bp1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-eqz v19, :cond_19

    .line 753
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    .line 755
    :cond_19
    if-eqz v21, :cond_14

    .line 756
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_5

    .line 759
    :catch_8
    move-exception v10

    .line 760
    .local v10, e:Ljava/io/IOException;
    const-string v32, "<==>tsjWFD SessionThread"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "Error when closing stream after send"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/16 v24, 0x1f0

    .line 763
    goto/16 :goto_5

    .line 749
    .end local v10           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v32

    :goto_9
    const-string v33, "<==>tsjWFD SessionThread"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "11 finally begin"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_13
    const-string v33, "<==>tsjWFD SessionThread"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "finally bp1"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-eqz v19, :cond_1a

    .line 753
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    .line 755
    :cond_1a
    if-eqz v21, :cond_1b

    .line 756
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 762
    :cond_1b
    :goto_a
    throw v32

    .line 759
    :catch_9
    move-exception v10

    .line 760
    .restart local v10       #e:Ljava/io/IOException;
    const-string v33, "<==>tsjWFD SessionThread"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "Error when closing stream after send"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/16 v24, 0x1f0

    goto :goto_a

    .line 749
    .end local v10           #e:Ljava/io/IOException;
    .end local v19           #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v20       #outBuffer:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v32

    move-object/from16 v19, v20

    .end local v20           #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v19       #outBuffer:Ljava/io/BufferedOutputStream;
    goto :goto_9

    .end local v19           #outBuffer:Ljava/io/BufferedOutputStream;
    .end local v30           #updateValues:Landroid/content/ContentValues;
    .restart local v6       #byteArray:[B
    .restart local v11       #filePercent:I
    .restart local v20       #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v22       #perCentCounter:I
    .restart local v31       #updateValues:Landroid/content/ContentValues;
    :catchall_2
    move-exception v32

    move-object/from16 v19, v20

    .end local v20           #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v19       #outBuffer:Ljava/io/BufferedOutputStream;
    move-object/from16 v30, v31

    .end local v31           #updateValues:Landroid/content/ContentValues;
    .restart local v30       #updateValues:Landroid/content/ContentValues;
    goto :goto_9

    .line 743
    .end local v6           #byteArray:[B
    .end local v11           #filePercent:I
    .end local v19           #outBuffer:Ljava/io/BufferedOutputStream;
    .end local v22           #perCentCounter:I
    .restart local v20       #outBuffer:Ljava/io/BufferedOutputStream;
    :catch_a
    move-exception v10

    move-object/from16 v19, v20

    .end local v20           #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v19       #outBuffer:Ljava/io/BufferedOutputStream;
    goto/16 :goto_8

    .end local v19           #outBuffer:Ljava/io/BufferedOutputStream;
    .end local v30           #updateValues:Landroid/content/ContentValues;
    .restart local v6       #byteArray:[B
    .restart local v11       #filePercent:I
    .restart local v20       #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v22       #perCentCounter:I
    .restart local v31       #updateValues:Landroid/content/ContentValues;
    :catch_b
    move-exception v10

    move-object/from16 v19, v20

    .end local v20           #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v19       #outBuffer:Ljava/io/BufferedOutputStream;
    move-object/from16 v30, v31

    .end local v31           #updateValues:Landroid/content/ContentValues;
    .restart local v30       #updateValues:Landroid/content/ContentValues;
    goto/16 :goto_8

    .line 738
    .end local v6           #byteArray:[B
    .end local v11           #filePercent:I
    .end local v19           #outBuffer:Ljava/io/BufferedOutputStream;
    .end local v22           #perCentCounter:I
    .restart local v20       #outBuffer:Ljava/io/BufferedOutputStream;
    :catch_c
    move-exception v10

    move-object/from16 v19, v20

    .end local v20           #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v19       #outBuffer:Ljava/io/BufferedOutputStream;
    goto/16 :goto_7

    .end local v19           #outBuffer:Ljava/io/BufferedOutputStream;
    .end local v30           #updateValues:Landroid/content/ContentValues;
    .restart local v6       #byteArray:[B
    .restart local v11       #filePercent:I
    .restart local v20       #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v22       #perCentCounter:I
    .restart local v31       #updateValues:Landroid/content/ContentValues;
    :catch_d
    move-exception v10

    move-object/from16 v19, v20

    .end local v20           #outBuffer:Ljava/io/BufferedOutputStream;
    .restart local v19       #outBuffer:Ljava/io/BufferedOutputStream;
    move-object/from16 v30, v31

    .end local v31           #updateValues:Landroid/content/ContentValues;
    .restart local v30       #updateValues:Landroid/content/ContentValues;
    goto/16 :goto_7
.end method

.method private generateMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filename"
    .parameter "mimeT"

    .prologue
    .line 472
    const/4 v3, 0x0

    .line 473
    .local v3, tempMimeT:Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 474
    .local v0, dotIndex:I
    if-gez v0, :cond_1

    .line 475
    const-string v5, "<==>tsjWFD SessionThread"

    const-string v6, "generateMimeType: There is no file extension, reject the transfer"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    :goto_0
    return-object v3

    .line 477
    :cond_1
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 479
    .local v2, map:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, type:Ljava/lang/String;
    const-string v5, "<==>tsjWFD SessionThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateMimeType: Mimetype guessed from extension "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-eqz v4, :cond_2

    .line 482
    move-object v3, v4

    .line 487
    :goto_1
    if-eqz v3, :cond_0

    .line 488
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 484
    :cond_2
    const-string v5, "<==>tsjWFD SessionThread"

    const-string v6, "generateMimeType: Can\'t get mimetype, reject the transfer"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    move-object v3, p2

    goto :goto_1
.end method

.method private handleDownloadException(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 806
    const-string v1, "<==>tsjWFD SessionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDownloadException: mCallback ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v3}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v1}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/wifidirect/test/SessionThread;->access$000(Lcom/android/wifidirect/test/SessionThread;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v2}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-static {v1, v2, p1}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 811
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 812
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 814
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v1}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v1

    iput p1, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 815
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v1}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 816
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 818
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private handleRunException(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 769
    const-string v1, "<==>tsjWFD SessionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRunException: mCallback ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v3}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v1}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/wifidirect/test/SessionThread;->access$000(Lcom/android/wifidirect/test/SessionThread;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v2}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-static {v1, v2, p1}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 793
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 795
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v1}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v1

    iput p1, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 796
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v1}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 797
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 803
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private isMimeTypeAcceptable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "filename"
    .parameter "mimeT"

    .prologue
    .line 452
    const-string v1, "<==>tsjWFD SessionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aaron: Before Generate, mimeT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0, p1, p2}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->generateMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, tmpMT:Ljava/lang/String;
    const-string v1, "<==>tsjWFD SessionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aaron: After Generate, tmpMT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/wifidirect/test/Constants;->ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/wifidirect/test/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 458
    :cond_0
    const-string v1, "<==>tsjWFD SessionThread"

    const-string v2, "isMimeTypeAcceptable: mimeType is null or in unacceptable list, reject the transfer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/16 v1, 0x196

    .line 463
    :goto_0
    return v1

    .line 461
    :cond_1
    iput-object v0, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mimeType:Ljava/lang/String;

    .line 463
    const/16 v1, 0xc8

    goto :goto_0
.end method

.method private receiveFileInfo()I
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 532
    const-wide/16 v8, 0x0

    .line 533
    .local v8, totalBytes:J
    const/4 v5, 0x0

    .local v5, line:Ljava/lang/String;
    const/4 v1, 0x0

    .line 534
    .local v1, fullpath:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 535
    .local v10, updateValues:Landroid/content/ContentValues;
    const/4 v4, 0x1

    .line 536
    .local v4, isConnected:Z
    const/16 v7, 0xc8

    .line 537
    .local v7, statusRecFI:I
    const-string v2, "receiveFileInfo: "

    .line 539
    .local v2, functionName:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 541
    :try_start_0
    const-string v11, "<==>tsjWFD SessionThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "mStrUris : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mStrUris:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; mFileRecNum="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileRecNum:I
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$1200(Lcom/android/wifidirect/test/SessionThread;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mStrUris:Ljava/lang/String;

    .line 544
    iget-object v11, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;
    invoke-static {v11}, Lcom/android/wifidirect/test/SessionThread;->access$400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/PrintWriter;

    move-result-object v11

    sget-object v12, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_DOWNLOAD:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    iget-object v11, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;
    invoke-static {v11}, Lcom/android/wifidirect/test/SessionThread;->access$200(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/BufferedReader;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 546
    const-string v11, "<==>tsjWFD SessionThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "line= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    sget-object v11, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_READY:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    .line 548
    const-string v11, "<==>tsjWFD SessionThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "fullpath filename :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v11, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;
    invoke-static {v11}, Lcom/android/wifidirect/test/SessionThread;->access$400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/PrintWriter;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mFilename:Ljava/lang/String;

    .line 553
    const-string v11, "<==>tsjWFD SessionThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "only filename :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mFilename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v11, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;
    invoke-static {v11}, Lcom/android/wifidirect/test/SessionThread;->access$200(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/BufferedReader;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 555
    const-string v11, "<==>tsjWFD SessionThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "totalBytes: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v11, "hint"

    iget-object v12, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mFilename:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v11, "total_bytes"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 559
    const-string v11, "mimetype"

    iget-object v12, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mimeType:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v11, "direction"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    const-string v11, "timestamp"

    iget-wide v12, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimestamp:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 562
    const-string v11, "devicename"

    iget-object v12, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mSenderName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v11, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mTransport:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v11}, Lcom/android/wifidirect/test/SessionThread;->access$300(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/ObexTransport;

    move-result-object v11

    instance-of v11, v11, Lcom/android/wifidirect/test/WifiOppTcpTransport;

    if-eqz v11, :cond_4

    .line 565
    const-string v11, "destination"

    const-string v12, "wifi"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :goto_0
    const/4 v6, 0x1

    .line 572
    .local v6, needConfirm:Z
    const-string v11, "<==>tsjWFD SessionThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "If set WifiShare.USER_CONFIRMATION!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v11, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mServerBlocking:Z
    invoke-static {v11}, Lcom/android/wifidirect/test/SessionThread;->access$900(Lcom/android/wifidirect/test/SessionThread;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 574
    const-string v11, "<==>tsjWFD SessionThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "mServerBlocking == false; Not first file. just set it auto accept it!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v11, "confirm"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    const/4 v6, 0x0

    .line 579
    :cond_0
    if-eqz v6, :cond_1

    .line 580
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.wififtp.intent.action.INCOMING_FILE_NOTIFICATION"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v3, in:Landroid/content/Intent;
    const-string v11, "com.android.wifidirect.test"

    const-class v12, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    iget-object v11, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/wifidirect/test/SessionThread;->access$000(Lcom/android/wifidirect/test/SessionThread;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 585
    .end local v3           #in:Landroid/content/Intent;
    :cond_1
    iget-object v11, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    iget-object v12, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/wifidirect/test/SessionThread;->access$000(Lcom/android/wifidirect/test/SessionThread;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    #setter for: Lcom/android/wifidirect/test/SessionThread;->mContentUri:Landroid/net/Uri;
    invoke-static {v11, v12}, Lcom/android/wifidirect/test/SessionThread;->access$1302(Lcom/android/wifidirect/test/SessionThread;Landroid/net/Uri;)Landroid/net/Uri;

    .line 586
    iget-object v11, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContentUri:Landroid/net/Uri;
    invoke-static {v11}, Lcom/android/wifidirect/test/SessionThread;->access$1300(Lcom/android/wifidirect/test/SessionThread;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mLocalShareInfoId:I

    .line 587
    const-string v11, "<==>tsjWFD SessionThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "insert contentUri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContentUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$1300(Lcom/android/wifidirect/test/SessionThread;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";mLocalShareInfoId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mLocalShareInfoId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-boolean v11, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->IS_USE_AUTOCONFIRMED:Z

    if-ne v14, v11, :cond_2

    .line 600
    :cond_2
    const-string v11, "<==>tsjWFD SessionThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "contentUri = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContentUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$1300(Lcom/android/wifidirect/test/SessionThread;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local v6           #needConfirm:Z
    :cond_3
    :goto_1
    return v7

    .line 567
    :cond_4
    const-string v11, "destination"

    const-string v12, "FF:FF:FF:00:00:00"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, e:Ljava/io/IOException;
    const-string v11, "<==>tsjWFD SessionThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "IOException occured to download the file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mFilename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 607
    const/16 v7, 0x1f0

    .line 612
    goto :goto_1

    .line 608
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 609
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v11, "<==>tsjWFD SessionThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "NullPointerException occured to download the file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mFilename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 611
    const/16 v7, 0x1eb

    goto :goto_1
.end method

.method private waitingForConfirm()V
    .locals 6

    .prologue
    .line 495
    const-string v1, "waitingForConfirm: "

    .line 496
    .local v1, functionName:Ljava/lang/String;
    const-string v2, "<==>tsjWFD SessionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mServerBlocking ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mServerBlocking:Z
    invoke-static {v4}, Lcom/android/wifidirect/test/SessionThread;->access$900(Lcom/android/wifidirect/test/SessionThread;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    monitor-enter p0

    .line 498
    :try_start_0
    iget-object v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/wifidirect/test/SessionThread;->access$1000(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    iget-object v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/wifidirect/test/SessionThread;->access$1100(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 500
    iget-object v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/wifidirect/test/SessionThread;->access$1000(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 503
    :cond_0
    const-string v2, "<==>tsjWFD SessionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bp2 mServerBlocking ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mServerBlocking:Z
    invoke-static {v4}, Lcom/android/wifidirect/test/SessionThread;->access$900(Lcom/android/wifidirect/test/SessionThread;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/wifidirect/test/SessionThread;->mServerBlocking:Z
    invoke-static {v2, v3}, Lcom/android/wifidirect/test/SessionThread;->access$902(Lcom/android/wifidirect/test/SessionThread;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mServerBlocking:Z
    invoke-static {v2}, Lcom/android/wifidirect/test/SessionThread;->access$900(Lcom/android/wifidirect/test/SessionThread;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 509
    iget-object v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimeoutMsgSent:Z

    if-nez v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0xc350

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 513
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimeoutMsgSent:Z

    .line 514
    const-string v2, "<==>tsjWFD SessionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MSG_CONNECT_TIMEOUT sent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "<==>tsjWFD SessionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Interrupted in onPut blocking"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    const-string v2, "<==>tsjWFD SessionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Server unblocked mCallback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    monitor-enter p0

    .line 524
    :try_start_3
    iget-object v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimeoutMsgSent:Z

    if-eqz v2, :cond_3

    .line 525
    const-string v2, "<==>tsjWFD SessionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "remove MSG_CONNECT_TIMEOUT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v2, p0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 529
    return-void

    .line 520
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 528
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 243
    const-string v4, "run: "

    .line 244
    .local v4, functionName:Ljava/lang/String;
    invoke-static {}, Lcom/android/wifidirect/test/WifiTransferMgr;->getHostIp()Ljava/lang/String;

    move-result-object v10

    .line 245
    .local v10, selectedServer:Ljava/lang/String;
    const/16 v9, 0x1f2e

    .line 246
    .local v9, selectedPort:I
    const-string v5, ""

    .line 247
    .local v5, line:Ljava/lang/String;
    const/16 v11, 0xc8

    .line 248
    .local v11, statusRun:I
    const/4 v1, 0x0

    .line 250
    .local v1, bTimeoutMsgSent:Z
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "SessionThread started mContext="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/wifidirect/test/SessionThread;->access$000(Lcom/android/wifidirect/test/SessionThread;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; mInfo="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v15}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    new-instance v14, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v16, v0

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mTransport:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static/range {v16 .. v16}, Lcom/android/wifidirect/test/SessionThread;->access$300(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/ObexTransport;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/wifidirect/test/ObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    sget v16, Lcom/android/wifidirect/test/Constants;->bufferReader:I

    invoke-direct/range {v14 .. v16}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #setter for: Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;
    invoke-static {v13, v14}, Lcom/android/wifidirect/test/SessionThread;->access$202(Lcom/android/wifidirect/test/SessionThread;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    new-instance v14, Ljava/io/PrintWriter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mTransport:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v15}, Lcom/android/wifidirect/test/SessionThread;->access$300(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/ObexTransport;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/wifidirect/test/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    const/16 v16, 0x1

    invoke-direct/range {v14 .. v16}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #setter for: Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;
    invoke-static {v13, v14}, Lcom/android/wifidirect/test/SessionThread;->access$402(Lcom/android/wifidirect/test/SessionThread;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    const/4 v14, 0x0

    #setter for: Lcom/android/wifidirect/test/SessionThread;->mStop:Z
    invoke-static {v13, v14}, Lcom/android/wifidirect/test/SessionThread;->access$502(Lcom/android/wifidirect/test/SessionThread;Z)Z

    .line 258
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mStop:Z
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$500(Lcom/android/wifidirect/test/SessionThread;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 259
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "45 sBegin Read"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimestampIncludingConfirm:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    const/16 v11, 0xc8

    .line 264
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 265
    if-nez v1, :cond_1

    .line 266
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "send MSG_CONNECT_TIMEOUT"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/32 v15, 0xc350

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    const/4 v1, 0x1

    .line 272
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$200(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/BufferedReader;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 273
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "input Line:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-nez v5, :cond_4

    .line 275
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "input Line == null; stop this transfer!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/16 v13, 0x1f0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->handleRunException(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 426
    :catch_0
    move-exception v2

    .line 427
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "While() IOException ...e="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/16 v11, 0x1f1

    .line 435
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :goto_1
    const/16 v13, 0xc8

    if-eq v11, v13, :cond_0

    .line 436
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->handleRunException(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 439
    :catch_1
    move-exception v2

    .line 440
    .restart local v2       #e:Ljava/io/IOException;
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Run IOException e="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 442
    const/16 v13, 0xc8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->handleRunException(I)V

    .line 445
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :goto_2
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "<==>tsj the End of Run!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_3
    return-void

    .line 279
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 280
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "remove MSG_CONNECT_TIMEOUT"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    const/4 v1, 0x0

    .line 285
    :cond_5
    sget-object v13, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_DISCONNECT:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_6

    .line 287
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "disconnected!  mCallback="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v13

    invoke-static {v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v6

    .line 290
    .local v6, msg:Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v6, Landroid/os/Message;->what:I

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v13

    iput-object v13, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 292
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 429
    .end local v6           #msg:Landroid/os/Message;
    :catch_2
    move-exception v2

    .line 430
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_4
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "While() NullPointerException ...e="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 432
    const/16 v11, 0x1f1

    goto/16 :goto_1

    .line 296
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_6
    :try_start_5
    sget-object v13, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_CONNECTED:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_13

    .line 297
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Connected to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/PrintWriter;

    move-result-object v13

    sget-object v14, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_LIST:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$200(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/BufferedReader;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mStrUris:Ljava/lang/String;

    .line 300
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "got  filename:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mStrUris:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;
    invoke-static {v14}, Lcom/android/wifidirect/test/SessionThread;->access$200(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/BufferedReader;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    #setter for: Lcom/android/wifidirect/test/SessionThread;->fileNum:I
    invoke-static {v13, v14}, Lcom/android/wifidirect/test/SessionThread;->access$702(Lcom/android/wifidirect/test/SessionThread;I)I

    .line 303
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "got  fileNum:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->fileNum:I
    invoke-static {v15}, Lcom/android/wifidirect/test/SessionThread;->access$700(Lcom/android/wifidirect/test/SessionThread;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$200(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/BufferedReader;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mimeType:Ljava/lang/String;

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$200(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/BufferedReader;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mSenderName:Ljava/lang/String;

    .line 306
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "got  mimeType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mimeType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";mSenderName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mSenderName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/16 v13, 0xc8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mStrUris:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->isMimeTypeAcceptable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-eq v13, v14, :cond_7

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/PrintWriter;

    move-result-object v13

    sget-object v14, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_MIMETYPE_ERROR:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    const/16 v13, 0x196

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->handleRunException(I)V

    goto/16 :goto_0

    .line 314
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->receiveFileInfo()I

    move-result v11

    .line 316
    const/16 v13, 0xc8

    if-eq v13, v11, :cond_8

    .line 318
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "break! bp1 statusRun="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->handleRunException(I)V

    goto/16 :goto_0

    .line 326
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->waitingForConfirm()V

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimestampNoConfirm:J

    .line 334
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "mInfo="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v15}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mLocalShareInfoId:I

    if-eq v13, v14, :cond_9

    .line 336
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Unexpected error!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/wifidirect/test/WifiOppShareInfo;->mConfirm:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mAccepted:I

    .line 339
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "after confirm: userAccepted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mAccepted:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mAccepted:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mAccepted:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_10

    .line 343
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->download()I

    move-result v11

    .line 344
    const/16 v13, 0xc8

    if-eq v13, v11, :cond_f

    .line 345
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "break! bp2 statusRun="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/16 v13, 0x1ec

    if-lt v11, v13, :cond_b

    const/16 v13, 0x1ee

    if-le v11, v13, :cond_c

    :cond_b
    const/16 v13, 0x1f4

    if-ne v11, v13, :cond_d

    .line 350
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/PrintWriter;

    move-result-object v13

    sget-object v14, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_FILEERROR:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/PrintWriter;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 352
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->handleDownloadException(I)V

    goto/16 :goto_0

    .line 354
    :cond_d
    const/16 v13, 0x1ea

    if-ne v13, v11, :cond_e

    .line 357
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "break! bp3 User cancel the transfer."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->handleDownloadException(I)V

    goto/16 :goto_3

    .line 364
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/PrintWriter;

    move-result-object v13

    sget-object v14, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_FILEERROR:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/PrintWriter;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 366
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->handleDownloadException(I)V

    goto/16 :goto_0

    .line 370
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/PrintWriter;

    move-result-object v13

    sget-object v14, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_FINISH:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "afer downlaod! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimestampEnd:J

    .line 374
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimestampEnd:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimestampIncludingConfirm:J

    sub-long v7, v13, v15

    .line 375
    .local v7, resumeTime:J
    new-instance v3, Ljava/lang/Float;

    const-wide/16 v13, 0x0

    invoke-direct {v3, v13, v14}, Ljava/lang/Float;-><init>(D)V

    .local v3, fSize:Ljava/lang/Float;
    new-instance v12, Ljava/lang/Float;

    const-wide/16 v13, 0x0

    invoke-direct {v12, v13, v14}, Ljava/lang/Float;-><init>(D)V

    .line 376
    .local v12, tSpeed:Ljava/lang/Float;
    new-instance v3, Ljava/lang/Float;

    .end local v3           #fSize:Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v13

    iget-wide v13, v13, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mLength:J

    long-to-float v13, v13

    const/high16 v14, 0x4980

    div-float/2addr v13, v14

    invoke-direct {v3, v13}, Ljava/lang/Float;-><init>(F)V

    .line 377
    .restart local v3       #fSize:Ljava/lang/Float;
    new-instance v12, Ljava/lang/Float;

    .end local v12           #tSpeed:Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const-wide/16 v14, 0x3e8

    div-long v14, v7, v14

    long-to-float v14, v14

    div-float/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/Float;-><init>(F)V

    .line 378
    .restart local v12       #tSpeed:Ljava/lang/Float;
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Receive report: fileName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static {v15}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v15

    iget-object v15, v15, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "M"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Receive time with confirmation: resumeTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms; speed="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "M/s"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimestampEnd:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mTimestampNoConfirm:J

    sub-long v7, v13, v15

    .line 383
    new-instance v12, Ljava/lang/Float;

    .end local v12           #tSpeed:Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const-wide/16 v14, 0x3e8

    div-long v14, v7, v14

    long-to-float v14, v14

    div-float/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/Float;-><init>(F)V

    .line 384
    .restart local v12       #tSpeed:Ljava/lang/Float;
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Receive time without confirmation: resumeTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms; speed="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "M/s"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 388
    .end local v3           #fSize:Ljava/lang/Float;
    .end local v7           #resumeTime:J
    .end local v12           #tSpeed:Ljava/lang/Float;
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mAccepted:I

    const/4 v14, 0x3

    if-eq v13, v14, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->mAccepted:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_2

    .line 398
    :cond_11
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Rejected incoming request"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/PrintWriter;

    move-result-object v13

    sget-object v14, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_REJECT:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v13, :cond_12

    .line 405
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2

    .line 409
    :goto_4
    :try_start_7
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    invoke-static {v14}, Lcom/android/wifidirect/test/SessionThread;->access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v14

    iget-object v14, v14, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 412
    :cond_12
    const/16 v11, 0x1ea

    .line 413
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$000(Lcom/android/wifidirect/test/SessionThread;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v14}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v14

    iget v14, v14, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-static {v13, v14, v11}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;

    move-result-object v13

    invoke-static {v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v6

    .line 416
    .restart local v6       #msg:Landroid/os/Message;
    const/4 v13, 0x3

    iput v13, v6, Landroid/os/Message;->what:I

    .line 417
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v13

    iput v11, v13, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 418
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;->this$0:Lcom/android/wifidirect/test/SessionThread;

    #getter for: Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v13}, Lcom/android/wifidirect/test/SessionThread;->access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v13

    iput-object v13, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 419
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 406
    .end local v6           #msg:Landroid/os/Message;
    :catch_3
    move-exception v2

    .line 407
    .local v2, e:Ljava/io/IOException;
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "error close file stream"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 423
    .end local v2           #e:Ljava/io/IOException;
    :cond_13
    const-string v13, "<==>tsjWFD SessionThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Cannot connect to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2

    .line 424
    const/16 v11, 0x1f0

    goto/16 :goto_1
.end method
