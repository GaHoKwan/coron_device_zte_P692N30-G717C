.class Lcom/android/mms/ui/ComposeMessageActivity$21;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2357
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    .line 2362
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6, v10, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 2363
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNeedExitComposerAfterForward()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2364
    const-string v6, "exit_on_sent"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2366
    :cond_0
    const-string v6, "forwarded_message"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2367
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTempThreadId:J
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6900(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    .line 2368
    const-string v6, "thread_id"

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTempThreadId:J
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6900(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2371
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v7, "sms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2373
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 2374
    .local v3, smsBody:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/mms/ext/IMmsCompose;->isAppendSender()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2375
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2376
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "pref_key_forward_with_sender"

    invoke-interface {v2, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2377
    .local v4, smsForwardWithSender:Z
    const-string v6, "Mms/compose"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "forwardMessage(): SMS Forward With Sender ?= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    if-eqz v4, :cond_2

    .line 2379
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget v6, v6, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v6, v9, :cond_2

    .line 2380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v8, 0x7f0b00b1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2381
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 2382
    .local v0, contact:Lcom/android/mms/data/Contact;
    const-string v6, "Mms/compose"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "forwardMessage(): Contact\'s name and number="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-static {v8, v9, v10}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v7, v8, v9}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2388
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #smsForwardWithSender:Z
    :cond_2
    const-string v6, "sms_body"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2405
    .end local v3           #smsBody:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v7, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2407
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2408
    return-void

    .line 2391
    :cond_3
    const-string v6, "msg_uri"

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTempMmsUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2392
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v7, 0x7f0b0272

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2393
    .local v5, subject:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 2394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2396
    :cond_4
    const-string v6, "subject"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
