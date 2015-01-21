.class Lcom/android/email/NotificationController$AccountContentObserver;
.super Landroid/database/ContentObserver;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountContentObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 1127
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1128
    iput-object p2, p0, Lcom/android/email/NotificationController$AccountContentObserver;->mContext:Landroid/content/Context;

    .line 1129
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 14
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 1133
    iget-object v1, p0, Lcom/android/email/NotificationController$AccountContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1136
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1140
    .local v8, c:Landroid/database/Cursor;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1141
    .local v11, newAccountList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1142
    .local v13, removedAccountList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-nez v8, :cond_1

    .line 1144
    const-string v1, "Email"

    const-string v2, "#onChange(); NULL response for account id query"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    return-void

    .line 1148
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1149
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1150
    .local v6, accountId:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1153
    .end local v6           #accountId:J
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    .line 1154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 1153
    :cond_3
    if-eqz v8, :cond_4

    .line 1154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1159
    :cond_4
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    #getter for: Lcom/android/email/NotificationController;->mSecurityHoldAccountIdsSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$1500(Lcom/android/email/NotificationController;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 1160
    :try_start_1
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    #getter for: Lcom/android/email/NotificationController;->mSecurityHoldAccountIdsSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$1500(Lcom/android/email/NotificationController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1161
    .restart local v6       #accountId:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1162
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/android/email/NotificationController;->cancelSecurityNeededNotification(J)V

    goto :goto_1

    .line 1167
    .end local v6           #accountId:J
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1173
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    #getter for: Lcom/android/email/NotificationController;->mSecurityHoldAccountIdsSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$1500(Lcom/android/email/NotificationController;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 1174
    :try_start_3
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    #getter for: Lcom/android/email/NotificationController;->mSecurityHoldAccountIdsSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$1500(Lcom/android/email/NotificationController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1175
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1176
    .restart local v6       #accountId:J
    iget-object v1, p0, Lcom/android/email/NotificationController$AccountContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v7}, Lcom/android/emailcommon/provider/Account;->isSecurityHold(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1177
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    #getter for: Lcom/android/email/NotificationController;->mSecurityHoldAccountIdsSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$1500(Lcom/android/email/NotificationController;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1180
    .end local v6           #accountId:J
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :cond_8
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1185
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    #getter for: Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$800(Lcom/android/email/NotificationController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1186
    .restart local v6       #accountId:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1188
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1192
    .end local v6           #accountId:J
    :cond_a
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1193
    .restart local v6       #accountId:J
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    #calls: Lcom/android/email/NotificationController;->registerMessageNotification(J)V
    invoke-static {v1, v6, v7}, Lcom/android/email/NotificationController;->access$600(Lcom/android/email/NotificationController;J)V

    goto :goto_4

    .line 1196
    .end local v6           #accountId:J
    :cond_b
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1197
    .restart local v6       #accountId:J
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    #calls: Lcom/android/email/NotificationController;->unregisterMessageNotification(J)V
    invoke-static {v1, v6, v7}, Lcom/android/email/NotificationController;->access$200(Lcom/android/email/NotificationController;J)V

    .line 1198
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    #calls: Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I
    invoke-static {v1, v6, v7}, Lcom/android/email/NotificationController;->access$900(Lcom/android/email/NotificationController;J)I

    move-result v12

    .line 1199
    .local v12, notificationId:I
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    #getter for: Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$1000(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1201
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/email/NotificationController;->postVipMailNotification(ZJ)V

    .line 1203
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    #calls: Lcom/android/email/NotificationController;->getLoginFailedNotificationId(J)I
    invoke-static {v1, v6, v7}, Lcom/android/email/NotificationController;->access$1600(Lcom/android/email/NotificationController;J)I

    move-result v10

    .line 1204
    .local v10, loginFailnotificationId:I
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v1

    #getter for: Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$1000(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_5
.end method
