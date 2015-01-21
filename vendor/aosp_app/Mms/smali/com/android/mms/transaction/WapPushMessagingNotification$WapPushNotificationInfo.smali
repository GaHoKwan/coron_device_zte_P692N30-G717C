.class final Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
.super Ljava/lang/Object;
.source "WapPushMessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/WapPushMessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WapPushNotificationInfo"
.end annotation


# instance fields
.field public final mClickIntent:Landroid/content/Intent;

.field public final mMessage:Ljava/lang/String;

.field public final mSender:Lcom/android/mms/data/Contact;

.field public final mThreadId:J

.field public final mTicker:Ljava/lang/CharSequence;

.field public final mTimeMillis:J

.field public final mTitle:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Lcom/android/mms/data/Contact;JLandroid/net/Uri;)V
    .locals 0
    .parameter "clickIntent"
    .parameter "message"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "sender"
    .parameter "threadId"
    .parameter "uri"

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mClickIntent:Landroid/content/Intent;

    .line 277
    iput-object p2, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mMessage:Ljava/lang/String;

    .line 278
    iput-object p3, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    .line 279
    iput-wide p4, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mTimeMillis:J

    .line 280
    iput-object p6, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mTitle:Ljava/lang/String;

    .line 281
    iput-object p7, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    .line 282
    iput-wide p8, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mThreadId:J

    .line 283
    iput-object p10, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mUri:Landroid/net/Uri;

    .line 284
    return-void
.end method


# virtual methods
.method public formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"

    .prologue
    .line 293
    iget-object v2, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mMessage:Ljava/lang/String;

    const-string v3, "\\n\\s+"

    const-string v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, message:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 297
    .local v1, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mMessage:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 299
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 303
    :cond_1
    const-string v2, "Mms/WapPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formatBigMessage spannableStringBuilder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-object v1

    .line 293
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public formatInboxMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 309
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v7, 0x7f0d0007

    invoke-direct {v1, p1, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 312
    .local v1, notificationSenderSpan:Landroid/text/style/TextAppearanceSpan;
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v7, 0x7f0d0009

    invoke-direct {v2, p1, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 316
    .local v2, notificationSubjectSpan:Landroid/text/style/TextAppearanceSpan;
    iget-object v7, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mMessage:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mMessage:Ljava/lang/String;

    const-string v8, "\\n\\s+"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, message:Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 320
    .local v5, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v7, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, sender:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 322
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 323
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v1, v10, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 325
    :cond_0
    const v7, 0x7f0b034c

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, separator:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 327
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 328
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 330
    :cond_1
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 331
    .local v6, start:I
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 335
    .end local v6           #start:I
    :cond_2
    const-string v7, "Mms/WapPush"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "formatInboxMessage spannableStringBuilder = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-object v5

    .line 316
    .end local v0           #message:Ljava/lang/String;
    .end local v3           #sender:Ljava/lang/String;
    .end local v4           #separator:Ljava/lang/String;
    .end local v5           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mTimeMillis:J

    return-wide v0
.end method
