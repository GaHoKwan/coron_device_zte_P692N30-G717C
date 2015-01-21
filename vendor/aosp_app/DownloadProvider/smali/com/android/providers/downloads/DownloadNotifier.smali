.class public Lcom/android/providers/downloads/DownloadNotifier;
.super Ljava/lang/Object;
.source "DownloadNotifier.java"


# static fields
.field private static final TYPE_ACTIVE:I = 0x1

.field private static final TYPE_COMPLETE:I = 0x3

.field private static final TYPE_WAITING:I = 0x2

.field private static sDownloadProviderFeatureEx:Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

.field private static sPendingIntents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveNotifs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mActiveNotifs"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mNotifManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    .line 79
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    .line 80
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mNotifManager:Landroid/app/NotificationManager;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/DownloadNotifier;->sPendingIntents:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method private static buildNotificationTag(Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/String;
    .locals 3
    .parameter "info"

    .prologue
    .line 324
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v1, 0xc4

    if-ne v0, v1, :cond_0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_0
    return-object v0

    .line 326
    :cond_0
    invoke-static {p0}, Lcom/android/providers/downloads/DownloadNotifier;->isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_1
    invoke-static {p0}, Lcom/android/providers/downloads/DownloadNotifier;->isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDownloadIds(Ljava/util/Collection;)[J
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v3, v5, [J

    .line 312
    .local v3, ids:[J
    const/4 v0, 0x0

    .line 313
    .local v0, i:I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/downloads/DownloadInfo;

    .line 314
    .local v4, info:Lcom/android/providers/downloads/DownloadInfo;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    iget-wide v5, v4, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    aput-wide v5, v3, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 316
    .end local v4           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_0
    return-object v3
.end method

.method private static getDownloadTitle(Landroid/content/res/Resources;Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"
    .parameter "info"

    .prologue
    .line 303
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 306
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNotificationTagType(Ljava/lang/String;)I
    .locals 2
    .parameter "tag"

    .prologue
    .line 341
    const/4 v0, 0x0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 2
    .parameter "download"

    .prologue
    const/4 v0, 0x1

    .line 345
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isStatusInformational(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 3
    .parameter "download"

    .prologue
    const/4 v0, 0x1

    .line 351
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWithLocked(Ljava/util/Collection;)V
    .locals 41
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 105
    .local v28, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v9

    .line 106
    .local v9, clustered:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<Ljava/lang/String;Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/providers/downloads/DownloadInfo;

    .line 107
    .local v19, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/providers/downloads/DownloadNotifier;->buildNotificationTag(Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/String;

    move-result-object v31

    .line 108
    .local v31, tag:Ljava/lang/String;
    if-eqz v31, :cond_0

    .line 109
    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v19           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v31           #tag:Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v16           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 115
    .restart local v31       #tag:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/android/providers/downloads/DownloadNotifier;->getNotificationTagType(Ljava/lang/String;)I

    move-result v34

    .line 116
    .local v34, type:I
    move-object/from16 v0, v31

    invoke-interface {v9, v0}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v8

    .line 118
    .local v8, cluster:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    new-instance v6, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-direct {v6, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    .local v6, builder:Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Long;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 128
    .local v12, firstShown:J
    :goto_2
    invoke-virtual {v6, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 131
    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_7

    .line 132
    const v36, 0x1080081

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 140
    :cond_2
    :goto_3
    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-eq v0, v1, :cond_3

    const/16 v36, 0x2

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_9

    .line 141
    :cond_3
    new-instance v20, Landroid/content/Intent;

    const-string v36, "android.intent.action.DOWNLOAD_LIST"

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    const-class v39, Lcom/android/providers/downloads/DownloadReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v20, intent:Landroid/content/Intent;
    const-string v36, "extra_click_download_ids"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/downloads/DownloadNotifier;->getDownloadIds(Ljava/util/Collection;)[J

    move-result-object v37

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/high16 v38, 0x800

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v20

    move/from16 v3, v38

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 149
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 188
    .end local v20           #intent:Landroid/content/Intent;
    :cond_4
    :goto_4
    const/16 v27, 0x0

    .line 189
    .local v27, remainingText:Ljava/lang/String;
    const/16 v24, 0x0

    .line 190
    .local v24, percentText:Ljava/lang/String;
    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_f

    .line 191
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v14

    .line 193
    .local v14, handler:Lcom/android/providers/downloads/DownloadHandler;
    const-wide/16 v10, 0x0

    .line 194
    .local v10, current:J
    const-wide/16 v32, 0x0

    .line 195
    .local v32, total:J
    const-wide/16 v29, 0x0

    .line 196
    .local v29, speed:J
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/providers/downloads/DownloadInfo;

    .line 197
    .restart local v19       #info:Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    move-wide/from16 v36, v0

    const-wide/16 v38, -0x1

    cmp-long v36, v36, v38

    if-eqz v36, :cond_5

    .line 198
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    move-wide/from16 v36, v0

    add-long v10, v10, v36

    .line 199
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    move-wide/from16 v36, v0

    add-long v32, v32, v36

    .line 200
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    invoke-virtual {v14, v0, v1}, Lcom/android/providers/downloads/DownloadHandler;->getCurrentSpeed(J)J

    move-result-wide v36

    add-long v29, v29, v36

    goto :goto_5

    .line 125
    .end local v10           #current:J
    .end local v12           #firstShown:J
    .end local v14           #handler:Lcom/android/providers/downloads/DownloadHandler;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v24           #percentText:Ljava/lang/String;
    .end local v27           #remainingText:Ljava/lang/String;
    .end local v29           #speed:J
    .end local v32           #total:J
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 126
    .restart local v12       #firstShown:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    move-object/from16 v36, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 133
    :cond_7
    const/16 v36, 0x2

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_8

    .line 134
    const v36, 0x108008a

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 135
    :cond_8
    const/16 v36, 0x3

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_2

    .line 136
    const v36, 0x1080082

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 151
    :cond_9
    const/16 v36, 0x3

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_4

    .line 152
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/providers/downloads/DownloadInfo;

    .line 153
    .restart local v19       #info:Lcom/android/providers/downloads/DownloadInfo;
    sget-object v36, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v37, v0

    invoke-static/range {v36 .. v38}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v35

    .line 157
    .local v35, uri:Landroid/net/Uri;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 158
    const-string v5, "android.intent.action.DOWNLOAD_LIST"

    .line 167
    .local v5, action:Ljava/lang/String;
    :goto_6
    new-instance v20, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-class v37, Lcom/android/providers/downloads/DownloadReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v36, "extra_click_download_ids"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/downloads/DownloadNotifier;->getDownloadIds(Ljava/util/Collection;)[J

    move-result-object v37

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/high16 v38, 0x800

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v20

    move/from16 v3, v38

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 176
    sget-object v36, Lcom/android/providers/downloads/DownloadNotifier;->sPendingIntents:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_a

    .line 177
    sget-object v36, Lcom/android/providers/downloads/DownloadNotifier;->sPendingIntents:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v36, "DownloadManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "sPendingIntents.put(), id: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v38, v0

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_a
    new-instance v15, Landroid/content/Intent;

    const-string v36, "android.intent.action.DOWNLOAD_HIDE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    const-class v38, Lcom/android/providers/downloads/DownloadReceiver;

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v15, hideIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    .line 160
    .end local v5           #action:Ljava/lang/String;
    .end local v15           #hideIntent:Landroid/content/Intent;
    .end local v20           #intent:Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    move/from16 v36, v0

    const/16 v37, 0x5

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_c

    .line 161
    const-string v5, "android.intent.action.DOWNLOAD_OPEN"

    .restart local v5       #action:Ljava/lang/String;
    goto/16 :goto_6

    .line 163
    .end local v5           #action:Ljava/lang/String;
    :cond_c
    const-string v5, "android.intent.action.DOWNLOAD_LIST"

    .restart local v5       #action:Ljava/lang/String;
    goto/16 :goto_6

    .line 204
    .end local v5           #action:Ljava/lang/String;
    .end local v19           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v35           #uri:Landroid/net/Uri;
    .restart local v10       #current:J
    .restart local v14       #handler:Lcom/android/providers/downloads/DownloadHandler;
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v24       #percentText:Ljava/lang/String;
    .restart local v27       #remainingText:Ljava/lang/String;
    .restart local v29       #speed:J
    .restart local v32       #total:J
    :cond_d
    const-wide/16 v36, 0x0

    cmp-long v36, v32, v36

    if-lez v36, :cond_11

    .line 205
    const-wide/16 v36, 0x64

    mul-long v36, v36, v10

    div-long v36, v36, v32

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v23, v0

    .line 206
    .local v23, percent:I
    const v36, 0x7f030021

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    move-object/from16 v0, v28

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 208
    const-wide/16 v36, 0x0

    cmp-long v36, v29, v36

    if-lez v36, :cond_e

    .line 209
    sub-long v36, v32, v10

    const-wide/16 v38, 0x3e8

    mul-long v36, v36, v38

    div-long v25, v36, v29

    .line 210
    .local v25, remainingMillis:J
    const v36, 0x7f030022

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v25 .. v26}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v39

    aput-object v39, v37, v38

    move-object/from16 v0, v28

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 214
    .end local v25           #remainingMillis:J
    :cond_e
    const/16 v36, 0x64

    const/16 v37, 0x0

    move/from16 v0, v36

    move/from16 v1, v23

    move/from16 v2, v37

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 222
    .end local v10           #current:J
    .end local v14           #handler:Lcom/android/providers/downloads/DownloadHandler;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v23           #percent:I
    .end local v29           #speed:J
    .end local v32           #total:J
    :cond_f
    :goto_7
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_18

    .line 223
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/providers/downloads/DownloadInfo;

    .line 225
    .restart local v19       #info:Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/providers/downloads/DownloadNotifier;->getDownloadTitle(Landroid/content/res/Resources;Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/CharSequence;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 227
    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    .line 228
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_12

    .line 229
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 233
    :goto_8
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 260
    :cond_10
    :goto_9
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v22

    .line 288
    .end local v19           #info:Lcom/android/providers/downloads/DownloadInfo;
    .local v22, notif:Landroid/app/Notification;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mNotifManager:Landroid/app/NotificationManager;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    move/from16 v2, v37

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 216
    .end local v22           #notif:Landroid/app/Notification;
    .restart local v10       #current:J
    .restart local v14       #handler:Lcom/android/providers/downloads/DownloadHandler;
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v29       #speed:J
    .restart local v32       #total:J
    :cond_11
    const/16 v36, 0x64

    const/16 v37, 0x0

    const/16 v38, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_7

    .line 231
    .end local v10           #current:J
    .end local v14           #handler:Lcom/android/providers/downloads/DownloadHandler;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v29           #speed:J
    .end local v32           #total:J
    .restart local v19       #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_12
    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_8

    .line 235
    :cond_13
    const/16 v36, 0x2

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_14

    .line 236
    const v36, 0x7f030018

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_9

    .line 239
    :cond_14
    const/16 v36, 0x3

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    .line 240
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v36

    if-eqz v36, :cond_15

    .line 241
    const v36, 0x7f030017

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_9

    .line 242
    :cond_15
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 244
    const/4 v7, 0x0

    .line 245
    .local v7, caption:Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    move-object/from16 v36, v0

    if-eqz v36, :cond_16

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    move-object/from16 v36, v0

    if-eqz v36, :cond_16

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/mediatek/downloadmanager/ext/Extensions;->getDefault(Landroid/content/Context;)Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    move-result-object v36

    sput-object v36, Lcom/android/providers/downloads/DownloadNotifier;->sDownloadProviderFeatureEx:Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    .line 247
    sget-object v36, Lcom/android/providers/downloads/DownloadNotifier;->sDownloadProviderFeatureEx:Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-interface/range {v36 .. v39}, Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;->getNotificationText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 250
    :cond_16
    if-nez v7, :cond_17

    .line 251
    const v36, 0x7f030016

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_9

    .line 254
    :cond_17
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_9

    .line 263
    .end local v7           #caption:Ljava/lang/String;
    .end local v19           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_18
    new-instance v18, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 265
    .local v18, inboxStyle:Landroid/app/Notification$InboxStyle;
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_19

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/providers/downloads/DownloadInfo;

    .line 266
    .restart local v19       #info:Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/providers/downloads/DownloadNotifier;->getDownloadTitle(Landroid/content/res/Resources;Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/CharSequence;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_b

    .line 269
    .end local v19           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_19
    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_1b

    .line 270
    const/high16 v36, 0x7f04

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, v28

    move/from16 v1, v36

    move/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 272
    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 273
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 274
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 285
    :cond_1a
    :goto_c
    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v22

    .restart local v22       #notif:Landroid/app/Notification;
    goto/16 :goto_a

    .line 276
    .end local v22           #notif:Landroid/app/Notification;
    :cond_1b
    const/16 v36, 0x2

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    .line 277
    const v36, 0x7f040001

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, v28

    move/from16 v1, v36

    move/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 279
    const v36, 0x7f030018

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 281
    const v36, 0x7f030018

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_c

    .line 292
    .end local v6           #builder:Landroid/app/Notification$Builder;
    .end local v8           #cluster:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    .end local v12           #firstShown:J
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #inboxStyle:Landroid/app/Notification$InboxStyle;
    .end local v24           #percentText:Ljava/lang/String;
    .end local v27           #remainingText:Ljava/lang/String;
    .end local v31           #tag:Ljava/lang/String;
    .end local v34           #type:I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 293
    .local v21, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1d
    :goto_d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1e

    .line 294
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 295
    .restart local v31       #tag:Ljava/lang/String;
    move-object/from16 v0, v31

    invoke-interface {v9, v0}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1d

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mNotifManager:Landroid/app/NotificationManager;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 297
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 300
    .end local v31           #tag:Ljava/lang/String;
    :cond_1e
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 89
    return-void
.end method

.method getNotificationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getPendingIntentsMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/android/providers/downloads/DownloadNotifier;->sPendingIntents:Ljava/util/HashMap;

    return-object v0
.end method

.method public updateWith(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    monitor-enter v1

    .line 97
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotifier;->updateWithLocked(Ljava/util/Collection;)V

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
