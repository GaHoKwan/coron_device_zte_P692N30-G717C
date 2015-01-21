.class public Lcom/android/calendar/event/EditEventFragment;
.super Landroid/app/Fragment;
.source "EditEventFragment.java"

# interfaces
.implements Lcom/android/calendar/CalendarController$EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EditEventFragment$EventBundle;,
        Lcom/android/calendar/event/EditEventFragment$Done;,
        Lcom/android/calendar/event/EditEventFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_EDIT_ON_LAUNCH:Ljava/lang/String; = "key_edit_on_launch"

.field private static final BUNDLE_KEY_EDIT_STATE:Ljava/lang/String; = "key_edit_state"

.field private static final BUNDLE_KEY_EVENT:Ljava/lang/String; = "key_event"

.field private static final BUNDLE_KEY_MODEL:Ljava/lang/String; = "key_model"

.field private static final BUNDLE_KEY_READ_ONLY:Ljava/lang/String; = "key_read_only"

.field private static final DEBUG:Z = false

.field private static final MSG_REQUEST_FOCUS:I = 0x40000000

.field private static final TAG:Ljava/lang/String; = "EditEventActivity"

.field private static final TOKEN_ALL:I = 0xf

.field private static final TOKEN_ATTENDEES:I = 0x2

.field private static final TOKEN_CALENDARS:I = 0x8

.field private static final TOKEN_EVENT:I = 0x1

.field private static final TOKEN_REMINDERS:I = 0x4

.field private static final TOKEN_UNITIALIZED:I = -0x80000000


# instance fields
.field private final mActionBarListener:Landroid/view/View$OnClickListener;

.field private mBegin:J

.field private mContext:Landroid/app/Activity;

.field private mEnd:J

.field private final mEvent:Lcom/android/calendar/CalendarController$EventInfo;

.field private mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

.field mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

.field mHelper:Lcom/android/calendar/event/EditEventHelper;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final mIntent:Landroid/content/Intent;

.field private mIsReadOnly:Z

.field private mIsSaveInstanceState:Z

.field mModel:Lcom/android/calendar/CalendarEventModel;

.field mModification:I

.field private mModifyDialog:Landroid/app/AlertDialog;

.field private final mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

.field mOriginalModel:Lcom/android/calendar/CalendarEventModel;

.field private mOutstandingQueries:I

.field mRestoreModel:Lcom/android/calendar/CalendarEventModel;

.field private mSaveOnDetach:Z

.field public mShowModifyDialogOnLaunch:Z

.field private mUri:Landroid/net/Uri;

.field private mUseCustomActionBar:Z

.field mView:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 362
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/calendar/event/EditEventFragment;-><init>(Lcom/android/calendar/CalendarController$EventInfo;ZLandroid/content/Intent;)V

    .line 363
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/CalendarController$EventInfo;ZLandroid/content/Intent;)V
    .locals 3
    .parameter "event"
    .parameter "readOnly"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 365
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 96
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    .line 106
    iput v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 115
    new-instance v0, Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EditEventFragment$Done;-><init>(Lcom/android/calendar/event/EditEventFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    .line 117
    iput-boolean v2, p0, Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    .line 127
    new-instance v0, Lcom/android/calendar/event/EditEventFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EditEventFragment$1;-><init>(Lcom/android/calendar/event/EditEventFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    .line 897
    iput-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIsSaveInstanceState:Z

    .line 366
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    .line 367
    iput-boolean p2, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    .line 368
    iput-object p3, p0, Lcom/android/calendar/event/EditEventFragment;->mIntent:Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 370
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/EditEventFragment;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventFragment;->onActionBarItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/EditEventFragment;)Lcom/android/calendar/event/EditEventFragment$Done;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/event/EditEventFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/event/EditEventFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/EditEventFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/calendar/event/EditEventFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/EditEventFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/event/EditEventFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/event/EditEventFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private extOnResume()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->doOnResume()V

    .line 887
    return-void
.end method

.method private formatOriginalRrule()V
    .locals 4

    .prologue
    .line 911
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget-object v2, v2, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 916
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 917
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v2}, Lcom/android/calendar/event/EditEventView;->getRecurrenceIndexes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 918
    .local v1, selection:I
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/calendar/event/EditEventHelper;->updateRecurrenceRule(ILcom/android/calendar/CalendarEventModel;I)V

    .line 921
    .end local v1           #selection:I
    :cond_0
    return-void
.end method

.method private isEmpty()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 775
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 776
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 777
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 796
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 782
    :cond_1
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 783
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, location:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 789
    .end local v1           #location:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 790
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, description:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 796
    .end local v0           #description:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private onActionBarItemSelected(I)Z
    .locals 5
    .parameter "itemId"

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x1

    .line 536
    const v0, 0x7f100089

    if-ne p1, v0, :cond_6

    .line 537
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canRespond(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    iget v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-nez v0, :cond_1

    .line 540
    iput v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 543
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    .line 561
    :cond_2
    :goto_0
    return v4

    .line 545
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0, v4}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 546
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_0

    .line 548
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canAddReminders(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 550
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->saveReminders()V

    .line 551
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0, v4}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 552
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_0

    .line 554
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0, v4}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 555
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_0

    .line 557
    :cond_6
    const v0, 0x7f100088

    if-ne p1, v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0, v4}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 559
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_0
.end method

.method private saveReminders()V
    .locals 13

    .prologue
    .line 565
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 566
    .local v0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v1, v2, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v6, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/event/EditEventHelper;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v10

    .line 569
    .local v10, changed:Z
    if-nez v10, :cond_0

    .line 586
    :goto_0
    return-void

    .line 573
    :cond_0
    new-instance v1, Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 574
    .local v1, service:Lcom/android/calendar/AsyncQueryService;
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 576
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v6, v3, Lcom/android/calendar/CalendarEventModel;->mId:J

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 577
    .local v4, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 578
    .local v12, len:I
    if-lez v12, :cond_2

    const/4 v11, 0x1

    .line 579
    .local v11, hasAlarm:Z
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v2, v2, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eq v11, v2, :cond_1

    .line 580
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 581
    .local v5, values:Landroid/content/ContentValues;
    const-string v3, "hasAlarm"

    if-eqz v11, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 585
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v3, 0x7f0c0066

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 578
    .end local v11           #hasAlarm:Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 581
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v11       #hasAlarm:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private setModelIfDone(I)V
    .locals 4
    .parameter "queryType"

    .prologue
    .line 333
    iget v1, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    .line 334
    iget v1, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    if-nez v1, :cond_3

    .line 335
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mRestoreModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mRestoreModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 338
    :cond_0
    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-nez v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 340
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventFragment;->displayEditWhichDialog()V

    .line 345
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 347
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v1, :cond_2

    .line 348
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->formatOriginalRrule()V

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget v2, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/EditEventView;->setModification(I)V

    .line 355
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 356
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    return-void

    .line 342
    :cond_4
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    goto :goto_0
.end method

.method private startQuery()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    iput-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    .line 374
    iput-wide v6, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    .line 375
    iput-wide v6, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    .line 376
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    if-eqz v0, :cond_6

    .line 377
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v4, v4, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iput-wide v4, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 379
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v4, v4, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    .line 399
    :cond_1
    :goto_1
    iget-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHelper:Lcom/android/calendar/event/EditEventHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/calendar/event/EditEventHelper;->constructDefaultStartTime(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    .line 403
    :cond_2
    iget-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    iget-wide v6, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHelper:Lcom/android/calendar/event/EditEventHelper;

    iget-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    invoke-virtual {v0, v4, v5}, Lcom/android/calendar/event/EditEventHelper;->constructDefaultEndTime(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_8

    move v8, v1

    .line 410
    .local v8, newEvent:Z
    :goto_2
    if-nez v8, :cond_9

    .line 411
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v3, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    .line 412
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    .line 416
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/event/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_3
    return-void

    .line 382
    .end local v8           #newEvent:Z
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v5, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v9, 0x10

    cmp-long v0, v5, v9

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, v4, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_4

    .line 390
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v4, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7

    .line 392
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v4, v4, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    iput-wide v4, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 393
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v4, v4, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    .line 395
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v4, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->start:J

    iput-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    .line 396
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v4, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->end:J

    iput-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    goto :goto_1

    :cond_8
    move v8, v3

    .line 409
    goto :goto_2

    .line 419
    .restart local v8       #newEvent:Z
    :cond_9
    iput v11, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    .line 423
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    iput-wide v3, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 424
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    iput-wide v3, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 425
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v1, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 428
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/event/EditEventHelper;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "calendar_access_level>=500 AND visible=1"

    move v1, v11

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 434
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModification(I)V

    goto :goto_3
.end method


# virtual methods
.method protected displayEditWhichDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 589
    iget v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-nez v5, :cond_1

    .line 590
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v5, v5, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 591
    .local v4, notSynced:Z
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v0, v5, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 592
    .local v0, isFirstEventInSeries:Z
    const/4 v1, 0x0

    .line 595
    .local v1, itemIndex:I
    if-eqz v4, :cond_3

    .line 598
    if-eqz v0, :cond_2

    .line 601
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 613
    .local v3, items:[Ljava/lang/CharSequence;
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #itemIndex:I
    .local v2, itemIndex:I
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v6, 0x7f0c00a8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v1

    .line 616
    if-nez v0, :cond_5

    .line 617
    add-int/lit8 v1, v2, 0x1

    .end local v2           #itemIndex:I
    .restart local v1       #itemIndex:I
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v6, 0x7f0c00a9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v2

    .line 621
    :goto_1
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 622
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 623
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    .line 625
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0095

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/calendar/event/EditEventFragment$2;

    invoke-direct {v6, p0, v4}, Lcom/android/calendar/event/EditEventFragment$2;-><init>(Lcom/android/calendar/event/EditEventFragment;Z)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    .line 648
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/calendar/event/EditEventFragment$3;

    invoke-direct {v6, p0}, Lcom/android/calendar/event/EditEventFragment$3;-><init>(Lcom/android/calendar/event/EditEventFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 658
    .end local v0           #isFirstEventInSeries:Z
    .end local v1           #itemIndex:I
    .end local v3           #items:[Ljava/lang/CharSequence;
    .end local v4           #notSynced:Z
    :cond_1
    return-void

    .line 603
    .restart local v0       #isFirstEventInSeries:Z
    .restart local v1       #itemIndex:I
    .restart local v4       #notSynced:Z
    :cond_2
    new-array v3, v6, [Ljava/lang/CharSequence;

    .restart local v3       #items:[Ljava/lang/CharSequence;
    goto :goto_0

    .line 606
    .end local v3           #items:[Ljava/lang/CharSequence;
    :cond_3
    if-eqz v0, :cond_4

    .line 607
    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 611
    .restart local v3       #items:[Ljava/lang/CharSequence;
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .end local v1           #itemIndex:I
    .restart local v2       #itemIndex:I
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v6, 0x7f0c00a7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v1

    move v1, v2

    .end local v2           #itemIndex:I
    .restart local v1       #itemIndex:I
    goto :goto_0

    .line 609
    .end local v3           #items:[Ljava/lang/CharSequence;
    :cond_4
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/CharSequence;

    .restart local v3       #items:[Ljava/lang/CharSequence;
    goto :goto_2

    .end local v1           #itemIndex:I
    .restart local v2       #itemIndex:I
    :cond_5
    move v1, v2

    .end local v2           #itemIndex:I
    .restart local v1       #itemIndex:I
    goto :goto_1
.end method

.method public eventsChanged()V
    .locals 0

    .prologue
    .line 823
    return-void
.end method

.method getEditEventView()Lcom/android/calendar/event/EditEventView;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    return-object v0
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 849
    const-wide/16 v0, 0x200

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 857
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 861
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    .line 864
    :cond_0
    return-void
.end method

.method isEmptyNewEvent()Z
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_0

    .line 768
    const/4 v0, 0x0

    .line 771
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 441
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    .line 443
    new-instance v0, Lcom/android/calendar/event/EditEventHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/event/EditEventHelper;-><init>(Landroid/content/Context;Lcom/android/calendar/CalendarEventModel;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHelper:Lcom/android/calendar/event/EditEventHelper;

    .line 444
    new-instance v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;-><init>(Lcom/android/calendar/event/EditEventFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    .line 445
    new-instance v0, Lcom/android/calendar/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/CalendarEventModel;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 446
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 449
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v1, 0x7f090007

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUseCustomActionBar:Z

    .line 450
    return-void

    .line 449
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 490
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 491
    if-eqz p1, :cond_4

    .line 492
    const-string v0, "key_model"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const-string v0, "key_model"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mRestoreModel:Lcom/android/calendar/CalendarEventModel;

    .line 496
    :cond_0
    const-string v0, "key_edit_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    const-string v0, "key_edit_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 499
    :cond_1
    const-string v0, "key_edit_on_launch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    const-string v0, "key_edit_on_launch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    .line 503
    :cond_2
    const-string v0, "key_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    const-string v0, "key_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    .line 506
    :cond_3
    const-string v0, "key_read_only"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 507
    const-string v0, "key_read_only"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    .line 510
    :cond_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 515
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 517
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUseCustomActionBar:Z

    if-nez v0, :cond_0

    .line 518
    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 520
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 457
    iget-boolean v4, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    if-eqz v4, :cond_1

    .line 458
    const v4, 0x7f040023

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 462
    .local v3, view:Landroid/view/View;
    :goto_0
    new-instance v4, Lcom/android/calendar/event/EditEventView;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-direct {v4, v5, v3, v6}, Lcom/android/calendar/event/EditEventView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;)V

    iput-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    .line 463
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->startQuery()V

    .line 465
    iget-boolean v4, p0, Lcom/android/calendar/event/EditEventFragment;->mUseCustomActionBar:Z

    if-eqz v4, :cond_0

    .line 466
    const v4, 0x7f040022

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 468
    .local v0, actionBarButtons:Landroid/view/View;
    const v4, 0x7f100088

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 469
    .local v1, cancelActionView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    const v4, 0x7f100089

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 471
    .local v2, doneActionView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 476
    .end local v0           #actionBarButtons:Landroid/view/View;
    .end local v1           #cancelActionView:Landroid/view/View;
    .end local v2           #doneActionView:Landroid/view/View;
    :cond_0
    return-object v3

    .line 460
    .end local v3           #view:Landroid/view/View;
    :cond_1
    const v4, 0x7f04001f

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 802
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 804
    .local v0, act:Landroid/app/Activity;
    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 807
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    if-eqz v1, :cond_1

    .line 811
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v1, v3}, Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 814
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 815
    iput-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    .line 817
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 818
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 481
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 483
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUseCustomActionBar:Z

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 486
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 524
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventFragment;->onActionBarItemSelected(I)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 879
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 880
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->extOnResume()V

    .line 881
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    const/4 v3, 0x1

    .line 827
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    .line 828
    const-string v0, "key_model"

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 829
    const-string v0, "key_edit_state"

    iget v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 830
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    if-eqz v0, :cond_1

    .line 831
    new-instance v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/event/EditEventFragment$EventBundle;-><init>(Lcom/android/calendar/event/EditEventFragment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    .line 832
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v1, v1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iput-wide v1, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    .line 833
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v1, v1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->start:J

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v1, v1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->end:J

    .line 840
    :cond_1
    const-string v0, "key_edit_on_launch"

    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 841
    const-string v0, "key_event"

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 842
    const-string v0, "key_read_only"

    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 844
    iput-boolean v3, p0, Lcom/android/calendar/event/EditEventFragment;->mIsSaveInstanceState:Z

    .line 845
    return-void
.end method

.method public toastText(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 893
    return-void
.end method
