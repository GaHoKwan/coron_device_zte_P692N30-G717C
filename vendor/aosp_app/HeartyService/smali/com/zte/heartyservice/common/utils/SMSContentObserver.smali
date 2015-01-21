.class public Lcom/zte/heartyservice/common/utils/SMSContentObserver;
.super Landroid/database/ContentObserver;
.source "SMSContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;,
        Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;
    }
.end annotation


# static fields
.field public static final TIME_DELAY:J = 0x2710L

.field private static sDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

.field private static sNotDealList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private sLastSMSId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sDeleteList:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sNotDealList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sLastSMSId:J

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->mCallBacks:Ljava/util/ArrayList;

    .line 136
    invoke-direct {p0}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->updateLastSMSId()V

    .line 137
    return-void
.end method

.method public static addCallBack(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 24
    if-eqz p0, :cond_1

    .line 25
    sget-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    .line 27
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v3, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 33
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    iget-object v0, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    sget-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    iget-object v0, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_1
    return-void
.end method

.method public static addToDeleteList(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 221
    sget-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sDeleteList:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->addToList(Ljava/util/ArrayList;Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)V

    .line 222
    return-void
.end method

.method private static addToList(Ljava/util/ArrayList;Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)V
    .locals 2
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;",
            ">;",
            "Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 230
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    monitor-enter p0

    .line 233
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    monitor-exit p0

    .line 238
    :cond_0
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addToNotDealList(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 225
    sget-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sNotDealList:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->addToList(Ljava/util/ArrayList;Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)V

    .line 226
    return-void
.end method

.method public static removeAllCallBack()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    iget-object v0, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    .line 46
    :cond_0
    return-void
.end method

.method public static removeCallBack(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 49
    if-eqz p0, :cond_0

    sget-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    iget-object v0, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    iget-object v0, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sInstance:Lcom/zte/heartyservice/common/utils/SMSContentObserver;

    .line 57
    :cond_0
    return-void
.end method

.method public static removeFromDeleteList(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 241
    sget-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sDeleteList:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->removeFromList(Ljava/util/ArrayList;Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)Z

    move-result v0

    return v0
.end method

.method private static removeFromList(Ljava/util/ArrayList;Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)Z
    .locals 8
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;",
            ">;",
            "Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;>;"
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ne v4, v5, :cond_3

    .line 250
    monitor-enter p0

    .line 251
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 254
    .local v0, curTime:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 255
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;

    .line 256
    .local v3, smsInfo:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    iget-wide v4, v3, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mCreateData:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 257
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 258
    add-int/lit8 v2, v2, -0x1

    .line 254
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    .end local v3           #smsInfo:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    const/4 v4, 0x1

    monitor-exit p0

    .line 269
    .end local v0           #curTime:J
    .end local v2           #i:I
    :goto_1
    return v4

    .line 267
    :cond_2
    monitor-exit p0

    .line 269
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 267
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static removeFromNotDealList(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 245
    sget-object v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sNotDealList:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->removeFromList(Ljava/util/ArrayList;Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)Z

    move-result v0

    return v0
.end method

.method private updateLastSMSId()V
    .locals 8

    .prologue
    .line 110
    const/4 v6, 0x0

    .line 112
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 117
    if-eqz v6, :cond_0

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sLastSMSId:J

    .line 123
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    if-eqz v6, :cond_1

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_1
    :goto_1
    return-void

    .line 121
    :cond_2
    const-wide/16 v0, -0x1

    :try_start_1
    iput-wide v0, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sLastSMSId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v7

    .line 126
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    if-eqz v6, :cond_1

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 128
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 30
    .parameter "selfChange"

    .prologue
    .line 146
    const/16 v17, 0x0

    .line 148
    .local v17, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 150
    .local v3, contentResolver:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "_id > "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sLastSMSId:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date asc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 152
    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 153
    const-string v26, "body"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 154
    .local v15, bodyIndex:I
    const-string v26, "_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 155
    .local v22, idIndex:I
    const-string v26, "address"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 156
    .local v14, addressIndex:I
    const-string v26, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 157
    .local v25, typeIndex:I
    const-string v26, "date"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 158
    .local v18, dateIndex:I
    const-string v26, "date_sent"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 159
    .local v19, date_sentIndex:I
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/zte/heartyservice/msim/SimManager;->getSmsSubIdColumn()Ljava/lang/String;

    move-result-object v23

    .line 161
    .local v23, subIdColumn:Ljava/lang/String;
    const/16 v24, -0x1

    .line 162
    .local v24, subIdIndex:I
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 163
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 167
    :cond_0
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 168
    .local v13, _id:I
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, address:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 170
    .local v10, body:Ljava/lang/String;
    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 171
    .local v6, data:J
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 172
    .local v8, date_sent:J
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 173
    .local v11, type:I
    const/4 v12, 0x0

    .line 174
    .local v12, subscription:I
    if-ltz v24, :cond_1

    .line 175
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 177
    :cond_1
    int-to-long v0, v13

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sLastSMSId:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-lez v26, :cond_2

    .line 178
    int-to-long v0, v13

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->sLastSMSId:J

    .line 181
    :cond_2
    new-instance v4, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;

    invoke-direct/range {v4 .. v12}, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;-><init>(Ljava/lang/String;JJLjava/lang/String;II)V

    .line 184
    .local v4, smsInfo:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->removeFromNotDealList(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 203
    :cond_3
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    if-nez v26, :cond_0

    .line 210
    .end local v4           #smsInfo:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #data:J
    .end local v8           #date_sent:J
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #type:I
    .end local v12           #subscription:I
    .end local v13           #_id:I
    .end local v14           #addressIndex:I
    .end local v15           #bodyIndex:I
    .end local v18           #dateIndex:I
    .end local v19           #date_sentIndex:I
    .end local v22           #idIndex:I
    .end local v23           #subIdColumn:Ljava/lang/String;
    .end local v24           #subIdIndex:I
    .end local v25           #typeIndex:I
    :goto_1
    if-eqz v17, :cond_4

    .line 211
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 214
    .end local v3           #contentResolver:Landroid/content/ContentResolver;
    :cond_4
    :goto_2
    invoke-super/range {p0 .. p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 215
    return-void

    .line 188
    .restart local v3       #contentResolver:Landroid/content/ContentResolver;
    .restart local v4       #smsInfo:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    .restart local v5       #address:Ljava/lang/String;
    .restart local v6       #data:J
    .restart local v8       #date_sent:J
    .restart local v10       #body:Ljava/lang/String;
    .restart local v11       #type:I
    .restart local v12       #subscription:I
    .restart local v13       #_id:I
    .restart local v14       #addressIndex:I
    .restart local v15       #bodyIndex:I
    .restart local v18       #dateIndex:I
    .restart local v19       #date_sentIndex:I
    .restart local v22       #idIndex:I
    .restart local v23       #subIdColumn:Ljava/lang/String;
    .restart local v24       #subIdIndex:I
    .restart local v25       #typeIndex:I
    :cond_5
    :try_start_1
    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->removeFromDeleteList(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 189
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "content://sms/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 207
    .end local v3           #contentResolver:Landroid/content/ContentResolver;
    .end local v4           #smsInfo:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #data:J
    .end local v8           #date_sent:J
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #type:I
    .end local v12           #subscription:I
    .end local v13           #_id:I
    .end local v14           #addressIndex:I
    .end local v15           #bodyIndex:I
    .end local v18           #dateIndex:I
    .end local v19           #date_sentIndex:I
    .end local v22           #idIndex:I
    .end local v23           #subIdColumn:Ljava/lang/String;
    .end local v24           #subIdIndex:I
    .end local v25           #typeIndex:I
    :catch_0
    move-exception v20

    .line 208
    .local v20, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    if-eqz v17, :cond_4

    .line 211
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 194
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v3       #contentResolver:Landroid/content/ContentResolver;
    .restart local v4       #smsInfo:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    .restart local v5       #address:Ljava/lang/String;
    .restart local v6       #data:J
    .restart local v8       #date_sent:J
    .restart local v10       #body:Ljava/lang/String;
    .restart local v11       #type:I
    .restart local v12       #subscription:I
    .restart local v13       #_id:I
    .restart local v14       #addressIndex:I
    .restart local v15       #bodyIndex:I
    .restart local v18       #dateIndex:I
    .restart local v19       #date_sentIndex:I
    .restart local v22       #idIndex:I
    .restart local v23       #subIdColumn:Ljava/lang/String;
    .restart local v24       #subIdIndex:I
    .restart local v25       #typeIndex:I
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->mCallBacks:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;

    .line 195
    .local v16, callBack:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;->dealSMS(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 196
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "content://sms/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 210
    .end local v3           #contentResolver:Landroid/content/ContentResolver;
    .end local v4           #smsInfo:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #data:J
    .end local v8           #date_sent:J
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #type:I
    .end local v12           #subscription:I
    .end local v13           #_id:I
    .end local v14           #addressIndex:I
    .end local v15           #bodyIndex:I
    .end local v16           #callBack:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;
    .end local v18           #dateIndex:I
    .end local v19           #date_sentIndex:I
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #idIndex:I
    .end local v23           #subIdColumn:Ljava/lang/String;
    .end local v24           #subIdIndex:I
    .end local v25           #typeIndex:I
    :catchall_0
    move-exception v26

    if-eqz v17, :cond_8

    .line 211
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v26

    .line 205
    .restart local v3       #contentResolver:Landroid/content/ContentResolver;
    :cond_9
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->updateLastSMSId()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
.end method
