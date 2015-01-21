.class Lcom/android/mms/transaction/MmsSystemEventReceiver$3;
.super Ljava/lang/Thread;
.source "MmsSystemEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MmsSystemEventReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MmsSystemEventReceiver;

.field final synthetic val$contxt:Landroid/content/Context;

.field final synthetic val$mMute:Ljava/lang/String;

.field final synthetic val$mMuteStart:J

.field final synthetic val$mNotificationEnable:Z

.field final synthetic val$mRingtone:Ljava/lang/String;

.field final synthetic val$mVibrate:Z

.field final synthetic val$unSavedthreadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MmsSystemEventReceiver;Landroid/content/Context;JZLjava/lang/String;JLjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->this$0:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    iput-object p2, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$contxt:Landroid/content/Context;

    iput-wide p3, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$unSavedthreadId:J

    iput-boolean p5, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mNotificationEnable:Z

    iput-object p6, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mMute:Ljava/lang/String;

    iput-wide p7, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mMuteStart:J

    iput-object p9, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mRingtone:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mVibrate:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$contxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 198
    .local v8, spChatThreadId:Landroid/content/SharedPreferences;
    const-string v0, "content://mms-sms/thread_settings/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$unSavedthreadId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 199
    .local v9, uri:Landroid/net/Uri;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v10, values:Landroid/content/ContentValues;
    const-string v3, "notification_enable"

    iget-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mNotificationEnable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v0, "mute"

    iget-object v3, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mMute:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v0, "mute_start"

    iget-wide v3, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mMuteStart:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    const-string v0, "ringtone"

    iget-object v3, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mRingtone:Ljava/lang/String;

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "vibrate"

    iget-boolean v3, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mVibrate:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$contxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v9, v10, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 208
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "for_chat_settings_pref"

    const-wide/16 v1, -0x1

    invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    invoke-static {}, Lcom/android/mms/MmsConfig;->getFolderModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-wide v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$unSavedthreadId:J

    iget-object v2, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mMute:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mMuteStart:J

    iget-boolean v6, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;->val$mNotificationEnable:Z

    invoke-static/range {v0 .. v6}, Lcom/android/mms/util/MuteCache;->setMuteCache(JJJZ)V

    .line 213
    :cond_0
    return-void

    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    move v0, v2

    .line 200
    goto :goto_0

    :cond_2
    move v1, v2

    .line 205
    goto :goto_1
.end method
