.class Lcom/android/mms/ui/ChatPreferenceActivity$3;
.super Ljava/lang/Thread;
.source "ChatPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ChatPreferenceActivity;->saveToDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

.field final synthetic val$mMute:Ljava/lang/String;

.field final synthetic val$mMuteStart:J

.field final synthetic val$mNotificationEnable:Z

.field final synthetic val$mRingtone:Ljava/lang/String;

.field final synthetic val$mVibrate:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ChatPreferenceActivity;ZLjava/lang/String;JLjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mNotificationEnable:Z

    iput-object p3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mMute:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mMuteStart:J

    iput-object p6, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mRingtone:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mVibrate:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 434
    const-string v0, "content://mms-sms/thread_settings/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #getter for: Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$300(Lcom/android/mms/ui/ChatPreferenceActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 435
    .local v7, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 436
    .local v8, values:Landroid/content/ContentValues;
    const-string v2, "notification_enable"

    iget-boolean v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mNotificationEnable:Z

    if-eqz v0, :cond_2

    move v0, v9

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v0, "mute"

    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mMute:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    const-string v0, "mute_start"

    iget-wide v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mMuteStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    const-string v0, "ringtone"

    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mRingtone:Ljava/lang/String;

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "vibrate"

    iget-boolean v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mVibrate:Z

    if-eqz v2, :cond_0

    move v1, v9

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 443
    invoke-static {}, Lcom/android/mms/MmsConfig;->getFolderModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #getter for: Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J
    invoke-static {v0}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$300(Lcom/android/mms/ui/ChatPreferenceActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mMute:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mMuteStart:J

    iget-boolean v6, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->val$mNotificationEnable:Z

    invoke-static/range {v0 .. v6}, Lcom/android/mms/util/MuteCache;->setMuteCache(JJJZ)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$3;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 447
    return-void

    :cond_2
    move v0, v1

    .line 436
    goto :goto_0
.end method
