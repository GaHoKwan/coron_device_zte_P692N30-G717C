.class Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;
.super Landroid/content/AsyncTaskLoader;
.source "MoveMessageToDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MoveMessageToDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/email/activity/MoveMessageToDialog$IdContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mMessageIds:[J

.field private final mSourceMailboxId:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;[JJ)V
    .locals 0
    .parameter "activity"
    .parameter "messageIds"
    .parameter "sourceMailboxId"

    .prologue
    .line 299
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 300
    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    .line 301
    iput-object p2, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mMessageIds:[J

    .line 303
    iput-wide p3, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mSourceMailboxId:J

    .line 305
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/email/activity/MoveMessageToDialog$IdContainer;
    .locals 19

    .prologue
    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 311
    .local v9, c:Landroid/content/Context;
    const-wide/16 v3, -0x1

    .line 312
    .local v3, accountId:J
    const-wide/16 v5, -0x1

    .line 314
    .local v5, mailboxId:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mMessageIds:[J

    .local v8, arr$:[J
    array-length v11, v8

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_2

    aget-wide v13, v8, v10

    .line 316
    .local v13, messageId:J
    invoke-static {v9, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    .line 317
    .local v12, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v12, :cond_1

    .line 314
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 322
    :cond_1
    const-wide/16 v15, -0x1

    cmp-long v2, v3, v15

    if-nez v2, :cond_4

    .line 324
    iget-wide v3, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 325
    invoke-static {v9, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/emailcommon/provider/Account;->supportsMoveMessages(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    const v7, 0x7f08009f

    invoke-static {v2, v7}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 328
    const-wide/16 v3, -0x1

    .line 364
    .end local v12           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v13           #messageId:J
    :cond_2
    :goto_1
    new-instance v2, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;-><init>(JJLcom/android/email/activity/MoveMessageToDialog$1;)V

    return-object v2

    .line 331
    .restart local v12       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v13       #messageId:J
    :cond_3
    iget-wide v5, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 333
    invoke-static {v9, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Mailbox;->canHaveMessagesMoved()Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0800a1

    invoke-static {v2, v7}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 335
    const-wide/16 v3, -0x1

    .line 336
    const-wide/16 v5, -0x1

    .line 337
    goto :goto_1

    .line 341
    :cond_4
    iget-wide v15, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    cmp-long v2, v15, v3

    if-eqz v2, :cond_5

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0800a0

    invoke-static {v2, v7}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 343
    const-wide/16 v3, -0x1

    .line 344
    const-wide/16 v5, -0x1

    .line 345
    goto :goto_1

    .line 347
    :cond_5
    iget-wide v15, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v2, v15, v5

    if-eqz v2, :cond_6

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    const v7, 0x7f080068

    invoke-static {v2, v7}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 349
    const-wide/16 v3, -0x1

    .line 350
    const-wide/16 v5, -0x1

    .line 351
    goto :goto_1

    .line 354
    :cond_6
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mSourceMailboxId:J

    const-wide/16 v17, -0x1

    cmp-long v2, v15, v17

    if-eqz v2, :cond_0

    iget-wide v15, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mSourceMailboxId:J

    move-wide/from16 v17, v0

    cmp-long v2, v15, v17

    if-eqz v2, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    const v7, 0x7f080068

    invoke-static {v2, v7}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 357
    const-wide/16 v3, -0x1

    .line 358
    const-wide/16 v5, -0x1

    .line 359
    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->loadInBackground()Lcom/android/email/activity/MoveMessageToDialog$IdContainer;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 380
    invoke-virtual {p0}, Landroid/content/Loader;->stopLoading()V

    .line 381
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 370
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 371
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 375
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 376
    return-void
.end method
