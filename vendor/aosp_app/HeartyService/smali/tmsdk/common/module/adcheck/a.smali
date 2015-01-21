.class final Ltmsdk/common/module/adcheck/a;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private yM:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method

.method private a([Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 3
    .parameter "lines"
    .parameter "start_pos"
    .parameter "start_tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 190
    .local p4, result:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 191
    .local v1, index:I
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 192
    move v0, p2

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 193
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    aget-object v2, p1, v0

    invoke-virtual {p4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 195
    move v1, v0

    .line 199
    :cond_0
    return v1

    .line 192
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ltmsdk/common/module/adcheck/NotificationInfo;Z)Z
    .locals 8
    .parameter "info"
    .parameter "hadrooted"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, result:Z
    if-eqz p2, :cond_0

    .line 183
    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Ltmsdk/common/module/adcheck/a;->yM:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Ltmsdk/common/module/adcheck/NotificationInfo;->mPkg:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-wide v6, p1, Ltmsdk/common/module/adcheck/NotificationInfo;->mNotificationID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 186
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 183
    goto :goto_0
.end method


# virtual methods
.method public clear(Ljava/util/List;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/adcheck/NotificationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/adcheck/NotificationInfo;>;"
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 163
    .local v0, hadrooted:Z
    :goto_0
    const/4 v3, 0x0

    .line 165
    .local v3, result:Z
    if-eqz v0, :cond_1

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/adcheck/NotificationInfo;

    .line 167
    .local v2, info:Ltmsdk/common/module/adcheck/NotificationInfo;
    invoke-direct {p0, v2, v0}, Ltmsdk/common/module/adcheck/a;->a(Ltmsdk/common/module/adcheck/NotificationInfo;Z)Z

    move-result v4

    and-int/2addr v3, v4

    goto :goto_1

    .line 162
    .end local v0           #hadrooted:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Ltmsdk/common/module/adcheck/NotificationInfo;
    .end local v3           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    .restart local v0       #hadrooted:Z
    .restart local v3       #result:Z
    :cond_1
    return v3
.end method

.method public clear(Ltmsdk/common/module/adcheck/NotificationInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 153
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Ltmsdk/common/module/adcheck/a;->a(Ltmsdk/common/module/adcheck/NotificationInfo;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findAllNotificationInfo()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/adcheck/NotificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 52
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot()I

    move-result v14

    if-nez v14, :cond_2

    move v2, v12

    .line 53
    .local v2, hasroot:Z
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v6, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/adcheck/NotificationInfo;>;"
    if-nez v2, :cond_0

    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isSystemUid()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 56
    :cond_0
    new-array v12, v12, [Ljava/lang/String;

    const-string v14, "dumpsys notification"

    aput-object v14, v12, v13

    invoke-static {v12}, Ltmsdk/common/utils/ScriptHelper;->runScriptSplitLines([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, lines:[Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 94
    const/4 v3, 0x2

    .local v3, i:I
    :goto_1
    array-length v12, v7

    if-ge v3, v12, :cond_1

    .line 95
    aget-object v12, v7, v3

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, recored:Ljava/lang/String;
    const-string v12, "mSoundNotification="

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 143
    .end local v3           #i:I
    .end local v7           #lines:[Ljava/lang/String;
    .end local v8           #recored:Ljava/lang/String;
    :cond_1
    return-object v6

    .end local v2           #hasroot:Z
    .end local v6           #infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/adcheck/NotificationInfo;>;"
    :cond_2
    move v2, v13

    .line 52
    goto :goto_0

    .line 100
    .restart local v2       #hasroot:Z
    .restart local v3       #i:I
    .restart local v6       #infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/adcheck/NotificationInfo;>;"
    .restart local v7       #lines:[Ljava/lang/String;
    .restart local v8       #recored:Ljava/lang/String;
    :cond_3
    const-string v12, "NotificationRecord"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 94
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104
    :cond_5
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 105
    .local v9, result:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    const-string v12, "icon="

    invoke-direct {p0, v7, v3, v12, v9}, Ltmsdk/common/module/adcheck/a;->a([Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v3

    .line 106
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, icon:Ljava/lang/String;
    const-string v12, "tickerText="

    invoke-direct {p0, v7, v3, v12, v9}, Ltmsdk/common/module/adcheck/a;->a([Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v3

    .line 109
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, tickerText:Ljava/lang/String;
    add-int/lit8 v12, v3, 0x1

    const-string v13, "flags="

    invoke-direct {p0, v7, v12, v13, v9}, Ltmsdk/common/module/adcheck/a;->a([Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v3

    .line 112
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, flagsText:Ljava/lang/String;
    const-string v12, "icon=0x0 "

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 118
    new-instance v5, Ltmsdk/common/module/adcheck/NotificationInfo;

    invoke-direct {v5}, Ltmsdk/common/module/adcheck/NotificationInfo;-><init>()V

    .line 122
    .local v5, info:Ltmsdk/common/module/adcheck/NotificationInfo;
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "[ =]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 123
    .local v10, segs:[Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v12, v10, v12

    iput-object v12, v5, Ltmsdk/common/module/adcheck/NotificationInfo;->mPkg:Ljava/lang/String;

    .line 124
    const/4 v12, 0x4

    aget-object v12, v10, v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    iput-wide v12, v5, Ltmsdk/common/module/adcheck/NotificationInfo;->mNotificationID:J

    .line 126
    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Ltmsdk/common/module/adcheck/NotificationInfo;->mTickerText:Ljava/lang/String;

    const-string v13, "null"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 127
    const/4 v12, 0x0

    iput-object v12, v5, Ltmsdk/common/module/adcheck/NotificationInfo;->mTickerText:Ljava/lang/String;

    .line 130
    :cond_6
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    iput-wide v12, v5, Ltmsdk/common/module/adcheck/NotificationInfo;->mFlags:J

    .line 133
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 134
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 136
    .end local v10           #segs:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "flagsText: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Notification: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 25
    iput-object p1, p0, Ltmsdk/common/module/adcheck/a;->mContext:Landroid/content/Context;

    .line 28
    :try_start_0
    const-string v4, "android.app.INotificationManager$Stub"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 29
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "TRANSACTION_cancelNotificationWithTag"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 30
    .local v3, field:Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 31
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 44
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #field:Ljava/lang/reflect/Field;
    .local v0, TRANSACTION_cancelNotificationWithTag:I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service call notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s16 %s i32 -1 i32 %d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltmsdk/common/module/adcheck/a;->yM:Ljava/lang/String;

    .line 45
    return-void

    .line 32
    .end local v0           #TRANSACTION_cancelNotificationWithTag:I
    :catch_0
    move-exception v2

    .line 33
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "AdcheckManagerImpl"

    const-string v5, "skipping get "

    invoke-static {v4, v5, v2}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 34
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v4

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 35
    const/4 v0, 0x5

    .restart local v0       #TRANSACTION_cancelNotificationWithTag:I
    goto :goto_0

    .line 36
    .end local v0           #TRANSACTION_cancelNotificationWithTag:I
    :cond_0
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v4

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    .line 37
    const/4 v0, 0x7

    .restart local v0       #TRANSACTION_cancelNotificationWithTag:I
    goto :goto_0

    .line 39
    .end local v0           #TRANSACTION_cancelNotificationWithTag:I
    :cond_1
    const/16 v0, 0x8

    .restart local v0       #TRANSACTION_cancelNotificationWithTag:I
    goto :goto_0
.end method
