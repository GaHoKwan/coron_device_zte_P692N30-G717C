.class Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;
.super Ljava/lang/Object;
.source "VipMemberCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/VipMemberCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/VipMemberCache;


# direct methods
.method private constructor <init>(Lcom/mediatek/email/emailvip/VipMemberCache;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;->this$0:Lcom/mediatek/email/emailvip/VipMemberCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/email/emailvip/VipMemberCache;Lcom/mediatek/email/emailvip/VipMemberCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;-><init>(Lcom/mediatek/email/emailvip/VipMemberCache;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;->this$0:Lcom/mediatek/email/emailvip/VipMemberCache;

    #getter for: Lcom/mediatek/email/emailvip/VipMemberCache;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/email/emailvip/VipMemberCache;->access$100(Lcom/mediatek/email/emailvip/VipMemberCache;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v6, 0x0

    .line 184
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;->this$0:Lcom/mediatek/email/emailvip/VipMemberCache;

    #getter for: Lcom/mediatek/email/emailvip/VipMemberCache;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/email/emailvip/VipMemberCache;->access$100(Lcom/mediatek/email/emailvip/VipMemberCache;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/VipMember;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 186
    sget-object v1, Lcom/mediatek/email/emailvip/VipMemberCache;->sVipAddresses:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    sget-object v0, Lcom/mediatek/email/emailvip/VipMemberCache;->sVipAddresses:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 188
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, emailAddress:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    sget-object v0, Lcom/mediatek/email/emailvip/VipMemberCache;->sVipAddresses:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    .end local v7           #emailAddress:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    :catch_0
    move-exception v8

    .line 197
    .local v8, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "VIP_Settings"

    const-string v1, "Can not update VipMemberCache"

    invoke-static {v0, v1, v8}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    if-eqz v6, :cond_0

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 195
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    if-eqz v6, :cond_0

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 199
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_4

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
