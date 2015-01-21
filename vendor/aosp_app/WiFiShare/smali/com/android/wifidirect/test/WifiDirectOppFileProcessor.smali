.class public Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;
.super Ljava/lang/Object;
.source "WifiDirectOppFileProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;
    }
.end annotation


# static fields
.field public static final ACTION_FILE_PROCESS_STATE_CHANGED:Ljava/lang/String; = "com.android.wifidirect.opp.action.FILE_PROCESS_STATE_CHANGED"

.field private static final D:Z = true

.field public static final PROCESS_STATE_FAILED:I = 0x1

.field public static final PROCESS_STATE_PROCESSED:I = 0x2

.field public static final PROCESS_STATE_PROCESSING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiDirectOppFileProcessor"

.field private static final V:Z = true

.field private static mInstance:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->mInstance:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->mContext:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    sget-object v0, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->mInstance:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->mInstance:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->mInstance:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    return-object v0
.end method


# virtual methods
.method public canHandIt(Lcom/android/wifidirect/test/WifiOppShareInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    .line 68
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    const-string v1, "text/x-vcard"

    iget-object v2, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mHint:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mHint:Ljava/lang/String;

    const-string v2, ".vcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFileHandler(Lcom/android/wifidirect/test/WifiOppShareInfo;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;
    .locals 4
    .parameter "info"

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, handler:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 54
    :cond_0
    const-string v1, "WifiDirectOppFileProcessor"

    const-string v2, "info or mimetype is null can not find FileHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x0

    .line 64
    :goto_0
    return-object v1

    .line 58
    :cond_1
    const-string v1, "WifiDirectOppFileProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find FileHandler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v1, "text/x-vcard"

    iget-object v2, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mHint:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mHint:Ljava/lang/String;

    const-string v2, ".vcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    :cond_2
    const-string v1, "WifiDirectOppFileProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VcardFileHandler found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/android/wifidirect/test/VcardFileHandler;

    .end local v0           #handler:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/wifidirect/test/VcardFileHandler;-><init>(Landroid/content/Context;Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    .restart local v0       #handler:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;
    :cond_3
    move-object v1, v0

    .line 64
    goto :goto_0
.end method

.method public onFileProcessStateChanged(II)V
    .locals 2
    .parameter "state"
    .parameter "msgResId"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->onFileProcessStateChanged(ILjava/lang/String;)V

    .line 173
    return-void
.end method

.method public onFileProcessStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "msg"

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.wifidirect.opp.action.FILE_PROCESS_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.wifidirect.test"

    const-class v2, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    const-string v1, "WifiDirectOppFileProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcast ACTION_FILE_PROCESS_STATE_CHANGED("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public onProcessFinish(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 189
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 190
    .local v0, fileExists:Ljava/lang/Boolean;
    const-string v1, "WifiDirectOppFileProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processFinish file isexists="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget v2, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->updateReceiveFileState(II)V

    .line 192
    return-void

    .line 191
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onProcessStart(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 184
    const-string v0, "WifiDirectOppFileProcessor"

    const-string v1, "processStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget v0, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->updateReceiveFileState(II)V

    .line 186
    return-void
.end method

.method public process(Lcom/android/wifidirect/test/WifiOppShareInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->canHandIt(Lcom/android/wifidirect/test/WifiOppShareInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    iget v3, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->queryShareInfo(I)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v1

    .line 81
    .local v1, newInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->getFileHandler(Lcom/android/wifidirect/test/WifiOppShareInfo;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;

    move-result-object v0

    .line 89
    .local v0, f:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->onProcessStart(Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    .line 91
    invoke-interface {v0}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;->process()Z

    .line 92
    const/4 v2, 0x1

    .line 97
    .end local v0           #f:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;
    .end local v1           #newInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :cond_0
    return v2
.end method

.method public queryShareInfo(I)Lcom/android/wifidirect/test/WifiOppShareInfo;
    .locals 23
    .parameter "id"

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 104
    .local v20, cursor:Landroid/database/Cursor;
    if-nez v20, :cond_0

    .line 105
    const-string v3, "WifiDirectOppFileProcessor"

    const-string v4, "reloadShareInfo error cursor is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v2, 0x0

    .line 157
    :goto_0
    return-object v2

    .line 108
    :cond_0
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reloadShareInfo cursor.count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 112
    new-instance v2, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .end local v2           #info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    const-string v3, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "uri"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hint"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_data"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mimetype"

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "direction"

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "destination"

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "visibility"

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "confirm"

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "status"

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "total_bytes"

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-string v15, "current_bytes"

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-string v17, "timestamp"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const-string v19, "scanned"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, 0x1

    :goto_1
    invoke-direct/range {v2 .. v19}, Lcom/android/wifidirect/test/WifiOppShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIJJJZ)V

    .line 129
    .restart local v2       #info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    iget-object v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 130
    iget-object v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    .line 131
    .local v21, dotIndex:I
    if-ltz v21, :cond_1

    .line 132
    iget-object v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    add-int/lit8 v4, v21, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    .line 133
    .local v22, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 138
    .end local v21           #dotIndex:I
    .end local v22           #extension:Ljava/lang/String;
    :cond_1
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID      : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI     : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HINT    : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FILENAME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIMETYPE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRECTION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DESTINAT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VISIBILI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mVisibility:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONFIRM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mConfirm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATUS  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TOTAL   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTotalBytes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CURRENT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mCurrentBytes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMESTAMP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v3, "WifiDirectOppFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCANNED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMediaScanned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 156
    const/16 v20, 0x0

    .line 157
    goto/16 :goto_0

    .line 112
    .end local v2           #info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_1
.end method

.method public updateReceiveFileState(II)V
    .locals 5
    .parameter "infoId"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v1, updateValues:Landroid/content/ContentValues;
    const-string v2, "filestatus"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 181
    return-void
.end method
