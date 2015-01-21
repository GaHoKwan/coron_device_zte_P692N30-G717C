.class public Lcom/android/email/activity/MessageViewFragment;
.super Lcom/android/email/activity/MessageViewFragmentBase;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragment$EmptyCallback;,
        Lcom/android/email/activity/MessageViewFragment$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageViewFragment"


# instance fields
.field private mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

.field mDefaultReplyAll:Z

.field mEnableReplyForwardButtons:Z

.field private mFavoriteIcon:Landroid/widget/ImageView;

.field private mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

.field private mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

.field private mFavoriteMenu:Landroid/view/MenuItem;

.field private mFavoriteView:Landroid/widget/ImageView;

.field private mForwardMenu:Landroid/view/MenuItem;

.field private mImmutableMessageId:Ljava/lang/Long;

.field private mMeetingMaybe:Landroid/view/View;

.field private mMeetingNo:Landroid/view/View;

.field private mMeetingYes:Landroid/view/View;

.field private mMessageFlagFavorite:Z

.field private mPreviousMeetingResponse:I

.field private mReplyAllMenu:Landroid/view/MenuItem;

.field private mReplyMenu:Landroid/view/MenuItem;

.field private mSupportsMove:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;-><init>()V

    .line 84
    iput v1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    .line 148
    sget-object v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    .line 149
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageFlagFavorite:Z

    return-void
.end method

.method private enableReplyForwardButtons(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragment;->mEnableReplyForwardButtons:Z

    .line 301
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/MessageViewFragment;->setMenuVisibleSafe(Landroid/view/MenuItem;Z)V

    .line 302
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/MessageViewFragment;->setMenuVisibleSafe(Landroid/view/MenuItem;Z)V

    .line 303
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mForwardMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/MessageViewFragment;->setMenuVisibleSafe(Landroid/view/MenuItem;Z)V

    .line 305
    return-void
.end method

.method private initializeArgCache()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "messageId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    goto :goto_0
.end method

.method public static newInstance(J)Lcom/android/email/activity/MessageViewFragment;
    .locals 6
    .parameter "messageId"

    .prologue
    .line 159
    const-wide/16 v4, -0x1

    cmp-long v4, p0, v4

    if-nez v4, :cond_0

    .line 160
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 162
    :cond_0
    new-instance v1, Lcom/android/email/activity/MessageViewFragment;

    invoke-direct {v1}, Lcom/android/email/activity/MessageViewFragment;-><init>()V

    .line 163
    .local v1, instance:Lcom/android/email/activity/MessageViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "messageId"

    invoke-virtual {v0, v4, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 165
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 169
    move-wide v2, p0

    .line 170
    .local v2, msgId:J
    new-instance v4, Lcom/android/email/activity/MessageViewFragment$1;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragment$1;-><init>(Lcom/android/email/activity/MessageViewFragment;J)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 180
    return-object v1
.end method

.method private onClickFavorite()V
    .locals 5

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 371
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageFlagFavorite:Z

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 373
    .local v1, newFavorite:Z
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragment;->updateFavoriteMenu(Ljava/lang/Boolean;)V

    .line 375
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->setStarContentDescription(Z)V

    .line 378
    iput-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 379
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageFlagFavorite:Z

    .line 380
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getController()Lcom/android/email/Controller;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/email/Controller;->setMessageFavorite(JZ)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_0

    .line 371
    .end local v1           #newFavorite:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onDelete()V
    .locals 4

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->stopLoading()V

    .line 563
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->showWaitingDialogIfNeeded()V

    .line 564
    const-string v0, "MessageViewFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onDelete message, messageID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/ActivityHelper;->deleteMessage(Landroid/content/Context;J)V

    .line 566
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onBeforeMessageGone()V

    .line 567
    return-void
.end method

.method private onInviteLinkClicked()V
    .locals 6

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 451
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    .line 444
    .local v2, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    new-instance v4, Lcom/android/emailcommon/mail/PackedString;

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    const-string v5, "DTSTART"

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, startTime:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 446
    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 447
    .local v0, epochTimeMillis:J
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onCalendarLinkClicked(J)V

    goto :goto_0

    .line 449
    .end local v0           #epochTimeMillis:J
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "meetingInfo without DTSTART "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onMarkAsUnread()V
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    .line 571
    return-void
.end method

.method private onMove()V
    .locals 5

    .prologue
    .line 549
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessageId()J

    move-result-wide v3

    aput-wide v3, v1, v2

    const-wide/16 v2, -0x1

    invoke-static {v1, p0, v2, v3}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance([JLandroid/app/Fragment;J)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    .line 551
    .local v0, dialog:Lcom/android/email/activity/MoveMessageToDialog;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MoveMessageToDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method private onRespondToInvite(II)V
    .locals 4
    .parameter "response"
    .parameter "toastResId"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 431
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget v1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    if-eq v1, p1, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getController()Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/email/Controller;->sendMeetingResponse(JI)V

    .line 433
    iput p1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    .line 435
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 436
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1, p1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onRespondedToInvite(I)V

    goto :goto_0
.end method

.method private setMenuVisibleSafe(Landroid/view/MenuItem;Z)V
    .locals 0
    .parameter "menu"
    .parameter "visibility"

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 295
    :cond_0
    return-void
.end method

.method private setStarContentDescription(Z)V
    .locals 3
    .parameter "isFavorite"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteMenu:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 353
    :cond_0
    if-eqz p1, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteMenu:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteMenu:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showConfirmIfNeeded()V
    .locals 4

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->isAskBeforeDelete()Z

    move-result v0

    .line 617
    .local v0, askBeforeDeleting:Z
    if-eqz v0, :cond_0

    .line 618
    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/DeleteMessageConfirmationDialog;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DeleteMessageConfirmationDialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDelete()V

    goto :goto_0
.end method

.method private updateFavoriteMenu(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "newFavorite"

    .prologue
    .line 388
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteMenu:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 390
    .local v0, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteMenu:Landroid/view/MenuItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 391
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteMenu:Landroid/view/MenuItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f08008b

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 396
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    .line 397
    .local v1, visibility:I
    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message favorite state changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    :cond_1
    return-void

    .line 390
    .end local v1           #visibility:I
    .restart local v0       #res:Landroid/content/res/Resources;
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 391
    :cond_3
    const v2, 0x7f08008a

    goto :goto_1

    .line 396
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_4
    const/16 v1, 0x8

    goto :goto_2
.end method


# virtual methods
.method public getMessageId()J
    .locals 2

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->initializeArgCache()V

    .line 208
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 476
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onInviteLinkClicked()V

    goto :goto_0

    .line 464
    :pswitch_2
    const/4 v0, 0x1

    const v1, 0x7f080101

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_0

    .line 468
    :pswitch_3
    const/4 v0, 0x2

    const v1, 0x7f080102

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_0

    .line 472
    :pswitch_4
    const/4 v0, 0x3

    const v1, 0x7f080103

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x7f0f00e5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 215
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 217
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 218
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 219
    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 220
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 233
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0f00e7

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingYes:Landroid/view/View;

    .line 236
    const v1, 0x7f0f00e8

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingMaybe:Landroid/view/View;

    .line 237
    const v1, 0x7f0f00e9

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingNo:Landroid/view/View;

    .line 238
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingYes:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingMaybe:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingNo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v1, 0x7f0f00e5

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    .line 245
    const v1, 0x7f0f00cd

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteView:Landroid/widget/ImageView;

    .line 247
    return-object v0
.end method

.method public onDeleteMessageConfirmationDialogOkPressed()V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDelete()V

    .line 611
    return-void
.end method

.method public onMarkMessageAsRead(Z)V
    .locals 4
    .parameter "isRead"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 413
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v1, p1, :cond_0

    .line 414
    iput-boolean p1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 415
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getController()Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/email/Controller;->setMessageRead(JZ)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 416
    if-nez p1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onMessageSetUnread()V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 481
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 494
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 484
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReply()V

    goto :goto_0

    .line 487
    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReplyAll()V

    goto :goto_0

    .line 490
    :sswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onForward()V

    goto :goto_0

    .line 482
    :sswitch_data_0
    .sparse-switch
        0x7f0f0014 -> :sswitch_0
        0x7f0f00dc -> :sswitch_1
        0x7f0f00de -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMessageShown(JLcom/android/emailcommon/provider/Mailbox;)V
    .locals 6
    .parameter "messageId"
    .parameter "mailbox"

    .prologue
    const/4 v2, 0x1

    .line 328
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onMessageShown(JLcom/android/emailcommon/provider/Mailbox;)V

    .line 329
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    .line 330
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getAccountId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 331
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/Account;->supportsMoveMessages(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Lcom/android/emailcommon/provider/Mailbox;->canHaveMessagesMoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    .local v2, supportsMove:Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/email/activity/MessageViewFragment;->mSupportsMove:Z

    if-eq v3, v2, :cond_0

    .line 334
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragment;->mSupportsMove:Z

    .line 335
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 336
    .local v1, host:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 342
    .end local v1           #host:Landroid/app/Activity;
    :cond_0
    iget v3, p3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v3}, Lcom/android/emailcommon/provider/Mailbox;->isMailboxTypeReplyAndForwardable(I)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    .line 343
    return-void

    .line 331
    .end local v2           #supportsMove:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMoveToMailboxSelected(J[J)V
    .locals 1
    .parameter "newMailboxId"
    .parameter "messageIds"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onBeforeMessageGone()V

    .line 558
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/content/Context;J[J)V

    .line 559
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 503
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    :goto_0
    return v0

    .line 506
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 545
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 510
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragment;->mDefaultReplyAll:Z

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReplyAll()V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReply()V

    goto :goto_0

    .line 518
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragment;->mDefaultReplyAll:Z

    if-eqz v1, :cond_2

    .line 519
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReply()V

    goto :goto_0

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReplyAll()V

    goto :goto_0

    .line 525
    :sswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onForward()V

    goto :goto_0

    .line 528
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onClickFavorite()V

    goto :goto_0

    .line 532
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onMove()V

    goto :goto_0

    .line 536
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->showConfirmIfNeeded()V

    goto :goto_0

    .line 540
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onMarkAsUnread()V

    goto :goto_0

    .line 506
    :sswitch_data_0
    .sparse-switch
        0x7f0f0014 -> :sswitch_0
        0x7f0f00db -> :sswitch_3
        0x7f0f00dc -> :sswitch_1
        0x7f0f00de -> :sswitch_2
        0x7f0f0130 -> :sswitch_5
        0x7f0f0131 -> :sswitch_4
        0x7f0f0137 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onPostLoadBody()V
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    .line 590
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageFlagFavorite:Z

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->setStarContentDescription(Z)V

    .line 591
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const v3, 0x7f0f0131

    const/4 v4, 0x0

    .line 253
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessageViewFragment$Callback;->onCheckIsEasRemoteMessage()Z

    move-result v0

    .line 254
    .local v0, isEasRemoteMode:Z
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 255
    .local v1, move:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 256
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/email/activity/MessageViewFragment;->mSupportsMove:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 262
    :cond_0
    const v2, 0x7f0f0014

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyMenu:Landroid/view/MenuItem;

    .line 263
    const v2, 0x7f0f00de

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mForwardMenu:Landroid/view/MenuItem;

    .line 264
    const v2, 0x7f0f00db

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteMenu:Landroid/view/MenuItem;

    .line 265
    if-eqz v0, :cond_2

    .line 266
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v2, v4}, Lcom/android/email/activity/MessageViewFragment;->setMenuVisibleSafe(Landroid/view/MenuItem;Z)V

    .line 267
    const v2, 0x7f0f0130

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/email/activity/MessageViewFragment;->setMenuVisibleSafe(Landroid/view/MenuItem;Z)V

    .line 268
    const v2, 0x7f0f0137

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/email/activity/MessageViewFragment;->setMenuVisibleSafe(Landroid/view/MenuItem;Z)V

    .line 269
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mForwardMenu:Landroid/view/MenuItem;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 273
    :goto_0
    const v2, 0x7f0f00dc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllMenu:Landroid/view/MenuItem;

    .line 275
    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragment;->mEnableReplyForwardButtons:Z

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    .line 276
    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragment;->mEnableReplyForwardButtons:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragment;->mDefaultReplyAll:Z

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyMenu:Landroid/view/MenuItem;

    const v3, 0x7f020053

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 279
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyMenu:Landroid/view/MenuItem;

    const v3, 0x7f08007d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 280
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllMenu:Landroid/view/MenuItem;

    const v3, 0x7f020052

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 281
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllMenu:Landroid/view/MenuItem;

    const v3, 0x7f08007c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 284
    :cond_1
    return-void

    .line 271
    :cond_2
    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageFlagFavorite:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragment;->updateFavoriteMenu(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onResume()V

    .line 226
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reply_all"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->mDefaultReplyAll:Z

    .line 228
    return-void
.end method

.method protected openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 2
    .parameter "activity"

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessageId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected resetView()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    .line 316
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 308
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    .line 309
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-super {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V

    .line 310
    return-void
.end method

.method public setMessageId(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 192
    const-string v0, "messageId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    .line 193
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    .line 194
    return-void
.end method

.method public showWaitingDialogIfNeeded()V
    .locals 2

    .prologue
    .line 574
    invoke-static {}, Lcom/android/emailcommon/utility/EmailAsyncTask;->isAsyncTaskBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/EmailActivity;

    .line 576
    .local v0, activity:Lcom/android/email/activity/EmailActivity;
    invoke-virtual {v0}, Lcom/android/email/activity/EmailActivity;->showWaitingDialog()V

    .line 578
    .end local v0           #activity:Lcom/android/email/activity/EmailActivity;
    :cond_0
    return-void
.end method

.method protected updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 595
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 596
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageIsReload:Z

    if-nez v0, :cond_0

    .line 597
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageFlagFavorite:Z

    .line 599
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageFlagFavorite:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->updateFavoriteMenu(Ljava/lang/Boolean;)V

    .line 603
    :cond_0
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 604
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    .line 606
    :cond_1
    return-void
.end method
