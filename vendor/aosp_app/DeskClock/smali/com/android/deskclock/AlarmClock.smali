.class public Lcom/android/deskclock/AlarmClock;
.super Landroid/app/Activity;
.source "AlarmClock.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/deskclock/AlarmTimePickerDialogFragment$AlarmTimePickerDialogHandler;
.implements Lcom/android/deskclock/LabelDialogFragment$AlarmLabelDialogHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/deskclock/AlarmTimePickerDialogFragment$AlarmTimePickerDialogHandler;",
        "Lcom/android/deskclock/LabelDialogFragment$AlarmLabelDialogHandler;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/view/ActionMode$Callback;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation


# static fields
.field private static final KEY_DELETED_ALARM:Ljava/lang/String; = "deletedAlarm"

.field private static final KEY_DELETE_CONFIRMATION:Ljava/lang/String; = "deleteConfirmation"

.field private static final KEY_EXPANDED_IDS:Ljava/lang/String; = "expandedIds"

.field private static final KEY_PREVIOUS_DAY_MAP:Ljava/lang/String; = "previousDayMap"

.field private static final KEY_REPEAT_CHECKED_IDS:Ljava/lang/String; = "repeatCheckedIds"

.field private static final KEY_RINGTONE_TITLE_CACHE:Ljava/lang/String; = "ringtoneTitleCache"

.field private static final KEY_SELECTED_ALARM:Ljava/lang/String; = "selectedAlarm"

.field private static final KEY_SELECTED_ALARMS:Ljava/lang/String; = "selectedAlarms"

.field private static final KEY_UNDO_SHOWING:Ljava/lang/String; = "undoShowing"

.field private static final REQUEST_CODE_RINGTONE:I = 0x1


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

.field private mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

.field private mDeletedAlarm:Lcom/android/deskclock/Alarm;

.field private mFirstLoad:Z

.field private mInDeleteConfirmation:Z

.field private mRingtoneTitleCache:Landroid/os/Bundle;

.field private mScrollToAlarmId:I

.field private mSelectedAlarm:Lcom/android/deskclock/Alarm;

.field private mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

.field private mUndoShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/deskclock/AlarmClock;->mScrollToAlarmId:I

    .line 98
    iput-boolean v1, p0, Lcom/android/deskclock/AlarmClock;->mInDeleteConfirmation:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmClock;->mFirstLoad:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/deskclock/AlarmClock;->mUndoShowing:Z

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->updateActionMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClock;->asyncUpdateAlarm(Lcom/android/deskclock/Alarm;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock;->showLabelDialog(Lcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock;->asyncDeleteAlarm(Lcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock;->launchRingTonePicker(Lcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/deskclock/AlarmClock;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/deskclock/AlarmClock;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mRingtoneTitleCache:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/deskclock/AlarmClock;[Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock;->asyncDeleteAlarm([Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock;->popToast(Lcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/AlarmClock;ZLandroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClock;->hideUndoBar(ZLandroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/deskclock/AlarmClock;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock;->scrollToAlarm(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/Alarm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)Lcom/android/deskclock/Alarm;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClock;->asyncAddAlarm(Lcom/android/deskclock/Alarm;Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/deskclock/AlarmClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/deskclock/AlarmClock;->mUndoShowing:Z

    return p1
.end method

.method private asyncAddAlarm()V
    .locals 2

    .prologue
    .line 1223
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0}, Lcom/android/deskclock/Alarm;-><init>()V

    .line 1224
    .local v0, a:Lcom/android/deskclock/Alarm;
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 1225
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/AlarmClock;->asyncAddAlarm(Lcom/android/deskclock/Alarm;Z)V

    .line 1226
    return-void
.end method

.method private asyncAddAlarm(Lcom/android/deskclock/Alarm;Z)V
    .locals 2
    .parameter "alarm"
    .parameter "showTimePicker"

    .prologue
    .line 1275
    new-instance v0, Lcom/android/deskclock/AlarmClock$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/deskclock/AlarmClock$7;-><init>(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;Z)V

    .line 1300
    .local v0, updateTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1301
    return-void
.end method

.method private asyncDeleteAlarm(Lcom/android/deskclock/Alarm;)V
    .locals 8
    .parameter "alarm"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1242
    new-instance v7, Lcom/android/deskclock/AlarmClock$5;

    invoke-direct {v7, p0}, Lcom/android/deskclock/AlarmClock$5;-><init>(Lcom/android/deskclock/AlarmClock;)V

    .line 1252
    .local v7, deleteTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Lcom/android/deskclock/Alarm;Ljava/lang/Void;Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;

    .line 1253
    iput-boolean v4, p0, Lcom/android/deskclock/AlarmClock;->mUndoShowing:Z

    .line 1254
    new-array v0, v4, [Lcom/android/deskclock/Alarm;

    aput-object p1, v0, v2

    invoke-virtual {v7, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1255
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    new-instance v1, Lcom/android/deskclock/AlarmClock$6;

    invoke-direct {v1, p0, p1}, Lcom/android/deskclock/AlarmClock$6;-><init>(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d0096

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0095

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/deskclock/widget/ActionableToastBar;->show(Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;ILjava/lang/CharSequence;ZIZ)V

    .line 1272
    return-void
.end method

.method private asyncDeleteAlarm([Ljava/lang/Integer;)V
    .locals 1
    .parameter "alarmIds"

    .prologue
    .line 1229
    new-instance v0, Lcom/android/deskclock/AlarmClock$4;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmClock$4;-><init>(Lcom/android/deskclock/AlarmClock;)V

    .line 1238
    .local v0, deleteTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1239
    return-void
.end method

.method private asyncUpdateAlarm(Lcom/android/deskclock/Alarm;Z)V
    .locals 3
    .parameter "alarm"
    .parameter "popToast"

    .prologue
    .line 1304
    new-instance v0, Lcom/android/deskclock/AlarmClock$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/deskclock/AlarmClock$8;-><init>(Lcom/android/deskclock/AlarmClock;ZLcom/android/deskclock/Alarm;)V

    .line 1322
    .local v0, updateTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Lcom/android/deskclock/Alarm;Ljava/lang/Void;Ljava/lang/Long;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/deskclock/Alarm;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1323
    return-void
.end method

.method private gotoAlarmIfSpecified()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 337
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 338
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/deskclock/AlarmClock;->mFirstLoad:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 339
    const-string v2, "intent.extra.alarm"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 340
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    if-eqz v0, :cond_0

    .line 341
    iget v2, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-direct {p0, v2}, Lcom/android/deskclock/AlarmClock;->scrollToAlarm(I)V

    .line 347
    .end local v0           #alarm:Lcom/android/deskclock/Alarm;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/deskclock/AlarmClock;->mFirstLoad:Z

    .line 348
    return-void

    .line 343
    :cond_1
    iget v2, p0, Lcom/android/deskclock/AlarmClock;->mScrollToAlarmId:I

    if-eq v2, v3, :cond_0

    .line 344
    iget v2, p0, Lcom/android/deskclock/AlarmClock;->mScrollToAlarmId:I

    invoke-direct {p0, v2}, Lcom/android/deskclock/AlarmClock;->scrollToAlarm(I)V

    .line 345
    iput v3, p0, Lcom/android/deskclock/AlarmClock;->mScrollToAlarmId:I

    goto :goto_0
.end method

.method private hideUndoBar(ZLandroid/view/MotionEvent;)V
    .locals 1
    .parameter "animate"
    .parameter "event"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    if-eqz v0, :cond_1

    .line 199
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    invoke-virtual {v0, p2}, Lcom/android/deskclock/widget/ActionableToastBar;->isEventInToastBar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/widget/ActionableToastBar;->hide(Z)V

    .line 205
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmClock;->mUndoShowing:Z

    goto :goto_0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedState"

    .prologue
    .line 117
    const v2, 0x7f040005

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 118
    const/4 v5, 0x0

    .line 119
    .local v5, expandedIds:[I
    const/4 v6, 0x0

    .line 120
    .local v6, repeatCheckedIds:[I
    const/4 v7, 0x0

    .line 121
    .local v7, selectedAlarms:[I
    const/4 v8, 0x0

    .line 122
    .local v8, previousDayMap:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 123
    const-string v2, "expandedIds"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 124
    const-string v2, "repeatCheckedIds"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 125
    const-string v2, "ringtoneTitleCache"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/deskclock/AlarmClock;->mRingtoneTitleCache:Landroid/os/Bundle;

    .line 126
    const-string v2, "deletedAlarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/Alarm;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;

    .line 127
    const-string v2, "undoShowing"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/deskclock/AlarmClock;->mUndoShowing:Z

    .line 128
    const-string v2, "selectedAlarms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 129
    const-string v2, "previousDayMap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 130
    const-string v2, "selectedAlarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/Alarm;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/deskclock/AlarmClock;->mSelectedAlarm:Lcom/android/deskclock/Alarm;

    .line 131
    const-string v2, "deleteConfirmation"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/deskclock/AlarmClock;->mInDeleteConfirmation:Z

    .line 134
    :cond_0
    const v2, 0x7f0e0016

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    .line 135
    new-instance v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;-><init>(Lcom/android/deskclock/AlarmClock;Landroid/content/Context;[I[I[ILandroid/os/Bundle;Landroid/widget/ListView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->setLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/AlarmClock;->mRingtoneTitleCache:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 140
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/deskclock/AlarmClock;->mRingtoneTitleCache:Landroid/os/Bundle;

    .line 143
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->enableSwipe(Z)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    new-instance v3, Lcom/android/deskclock/AlarmClock$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/deskclock/AlarmClock$1;-><init>(Lcom/android/deskclock/AlarmClock;)V

    invoke-virtual {v2, v3}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->setOnItemSwipeListener(Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView$OnItemSwipeListener;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    new-instance v3, Lcom/android/deskclock/AlarmClock$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/deskclock/AlarmClock$2;-><init>(Lcom/android/deskclock/AlarmClock;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    const v2, 0x7f0e0017

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/ActionableToastBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/deskclock/AlarmClock;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    .line 167
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/deskclock/AlarmClock;->mUndoShowing:Z

    if-eqz v2, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/deskclock/AlarmClock;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    new-instance v10, Lcom/android/deskclock/AlarmClock$3;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/deskclock/AlarmClock$3;-><init>(Lcom/android/deskclock/AlarmClock;)V

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const v14, 0x7f0d0095

    const/4 v15, 0x1

    invoke-virtual/range {v9 .. v15}, Lcom/android/deskclock/widget/ActionableToastBar;->show(Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;ILjava/lang/CharSequence;ZIZ)V

    .line 180
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getSelectedItemsNum()I

    move-result v16

    .line 181
    .local v16, selectedNum:I
    if-lez v16, :cond_3

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/deskclock/AlarmClock;->mActionMode:Landroid/view/ActionMode;

    .line 183
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/deskclock/AlarmClock;->setActionModeTitle(I)V

    .line 186
    :cond_3
    return-void
.end method

.method protected static isRingtoneExisted(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 10
    .parameter "ctx"
    .parameter "ringtoneUri"

    .prologue
    .line 1197
    const/4 v9, 0x0

    .line 1198
    .local v9, result:Z
    const/4 v6, 0x0

    .line 1199
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1200
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_3

    .line 1202
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "internal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1203
    const/4 v1, 0x1

    .line 1214
    if-eqz v6, :cond_0

    .line 1215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1219
    :cond_0
    :goto_0
    return v1

    .line 1205
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1206
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1207
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1208
    .local v8, path:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 1209
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 1214
    .end local v8           #path:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 1215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v1, v9

    .line 1219
    goto :goto_0

    .line 1211
    :catch_0
    move-exception v7

    .line 1212
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1214
    if-eqz v6, :cond_3

    .line 1215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1214
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 1215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private launchRingTonePicker(Lcom/android/deskclock/Alarm;)V
    .locals 3
    .parameter "alarm"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock;->mSelectedAlarm:Lcom/android/deskclock/Alarm;

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v2, p1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 381
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 384
    return-void
.end method

.method private popToast(Lcom/android/deskclock/Alarm;)V
    .locals 3
    .parameter "alarm"

    .prologue
    .line 1326
    iget v0, p1, Lcom/android/deskclock/Alarm;->hour:I

    iget v1, p1, Lcom/android/deskclock/Alarm;->minutes:I

    iget-object v2, p1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/AlarmUtils;->popAlarmSetToast(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 1327
    return-void
.end method

.method private saveRingtoneUri(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 387
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 388
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mSelectedAlarm:Lcom/android/deskclock/Alarm;

    iput-object v0, v1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 390
    const/4 v1, 0x4

    invoke-static {p0, v1, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 391
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mSelectedAlarm:Lcom/android/deskclock/Alarm;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/AlarmClock;->asyncUpdateAlarm(Lcom/android/deskclock/Alarm;Z)V

    .line 392
    return-void
.end method

.method private scrollToAlarm(I)V
    .locals 8
    .parameter "alarmId"

    .prologue
    .line 356
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 357
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v6, v2}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v3

    .line 358
    .local v3, id:J
    int-to-long v6, p1

    cmp-long v6, v3, v6

    if-nez v6, :cond_1

    .line 359
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v6, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->setNewAlarm(I)V

    .line 360
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    .line 362
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 363
    .local v1, firstPositionId:I
    sub-int v0, v2, v1

    .line 365
    .local v0, childId:I
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 366
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v7, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;

    invoke-virtual {v6, v2, v5, v7}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 370
    .end local v0           #childId:I
    .end local v1           #firstPositionId:I
    .end local v3           #id:J
    .end local v5           #view:Landroid/view/View;
    :cond_0
    return-void

    .line 356
    .restart local v3       #id:J
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setActionModeTitle(I)V
    .locals 5
    .parameter "items"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mActionMode:Landroid/view/ActionMode;

    const v1, 0x7f0d009b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 445
    return-void
.end method

.method private showConfirmationDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1370
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1371
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1372
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f0f0006

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v4}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getSelectedItemsNum()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1374
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1377
    iput-boolean v5, p0, Lcom/android/deskclock/AlarmClock;->mInDeleteConfirmation:Z

    .line 1378
    return-void
.end method

.method private showLabelDialog(Lcom/android/deskclock/Alarm;)V
    .locals 5
    .parameter "alarm"

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 306
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "label_dialog"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 307
    .local v2, prev:Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 310
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 313
    iget-object v3, p1, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/deskclock/LabelDialogFragment;->newInstance(Lcom/android/deskclock/Alarm;Ljava/lang/String;)Lcom/android/deskclock/LabelDialogFragment;

    move-result-object v1

    .line 314
    .local v1, newFragment:Lcom/android/deskclock/LabelDialogFragment;
    const-string v3, "label_dialog"

    invoke-virtual {v1, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method private updateActionMode()V
    .locals 2

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getSelectedItemsNum()I

    move-result v0

    .line 423
    .local v0, selectedNum:I
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    if-lez v0, :cond_1

    .line 425
    invoke-virtual {p0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/AlarmClock;->mActionMode:Landroid/view/ActionMode;

    .line 426
    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmClock;->setActionModeTitle(I)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 428
    if-lez v0, :cond_2

    .line 430
    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmClock;->setActionModeTitle(I)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/deskclock/AlarmClock;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 225
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 229
    :cond_0
    iget-boolean v1, p0, Lcom/android/deskclock/AlarmClock;->mInDeleteConfirmation:Z

    if-eqz v1, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->showConfirmationDialog()V

    .line 233
    :cond_1
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1335
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1343
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1338
    :pswitch_0
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->showConfirmationDialog()V

    goto :goto_0

    .line 1335
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00a6
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 396
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 397
    packed-switch p1, :pswitch_data_0

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled request code in onActivityResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->w(Ljava/lang/String;)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 399
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/deskclock/AlarmClock;->saveRingtoneUri(Landroid/content/Intent;)V

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1381
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->deleteSelectedAlarms()V

    .line 1384
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1387
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmClock;->mInDeleteConfirmation:Z

    .line 1389
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock;->initialize(Landroid/os/Bundle;)V

    .line 112
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->updateLayout()V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 114
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1348
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f11

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1349
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->getAlarmsCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110001

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 275
    const v1, 0x7f0e00a9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 276
    .local v0, help:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 277
    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 279
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    invoke-static {}, Lcom/android/deskclock/ToastMaster;->cancelToast()V

    .line 239
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->clearSelectedAlarms()V

    .line 1357
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClock;->mActionMode:Landroid/view/ActionMode;

    .line 1358
    return-void
.end method

.method public onDialogLabelSet(Lcom/android/deskclock/Alarm;Ljava/lang/String;)V
    .locals 1
    .parameter "alarm"
    .parameter "label"

    .prologue
    .line 320
    iput-object p2, p1, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/AlarmClock;->asyncUpdateAlarm(Lcom/android/deskclock/Alarm;Z)V

    .line 322
    return-void
.end method

.method public onDialogTimeSet(Lcom/android/deskclock/Alarm;II)V
    .locals 2
    .parameter "alarm"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v1, 0x1

    .line 297
    iput p2, p1, Lcom/android/deskclock/Alarm;->hour:I

    .line 298
    iput p3, p1, Lcom/android/deskclock/Alarm;->minutes:I

    .line 299
    iput-boolean v1, p1, Lcom/android/deskclock/Alarm;->enabled:Z

    .line 300
    iget v0, p1, Lcom/android/deskclock/Alarm;->id:I

    iput v0, p0, Lcom/android/deskclock/AlarmClock;->mScrollToAlarmId:I

    .line 301
    invoke-direct {p0, p1, v1}, Lcom/android/deskclock/AlarmClock;->asyncUpdateAlarm(Lcom/android/deskclock/Alarm;Z)V

    .line 302
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 1393
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 1394
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1395
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1406
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return v1

    .line 1399
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 1400
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1401
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v3, v1, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 1406
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, cursorLoader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 332
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->gotoAlarmIfSpecified()V

    .line 333
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/AlarmClock;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, cursorLoader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 375
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->toggleSelectState(Landroid/view/View;)V

    .line 413
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 414
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->updateActionMode()V

    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 243
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/AlarmClock;->hideUndoBar(ZLandroid/view/MotionEvent;)V

    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 269
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 246
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/SettingsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 249
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/DeskClock;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 253
    :sswitch_2
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->asyncAddAlarm()V

    goto :goto_0

    .line 256
    :sswitch_3
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->deleteSelectedAlarms()V

    goto :goto_0

    .line 261
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .local v0, intent:Landroid/content/Intent;
    const v2, 0x4008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_4
        0x7f0e00a6 -> :sswitch_3
        0x7f0e00a7 -> :sswitch_2
        0x7f0e00a8 -> :sswitch_0
        0x7f0e00aa -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1362
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 289
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/AlarmClock;->hideUndoBar(ZLandroid/view/MotionEvent;)V

    .line 292
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 211
    const-string v0, "expandedIds"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getExpandedArray()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 212
    const-string v0, "repeatCheckedIds"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getRepeatArray()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 213
    const-string v0, "selectedAlarms"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getSelectedAlarmsArray()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 214
    const-string v0, "ringtoneTitleCache"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mRingtoneTitleCache:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 215
    const-string v0, "deletedAlarm"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 216
    const-string v0, "undoShowing"

    iget-boolean v1, p0, Lcom/android/deskclock/AlarmClock;->mUndoShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    const-string v0, "previousDayMap"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mAdapter:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getPreviousDaysOfWeekMap()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 218
    const-string v0, "selectedAlarm"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mSelectedAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 219
    const-string v0, "deleteConfirmation"

    iget-boolean v1, p0, Lcom/android/deskclock/AlarmClock;->mInDeleteConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 221
    return-void
.end method
