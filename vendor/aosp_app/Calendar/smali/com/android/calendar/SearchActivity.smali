.class public Lcom/android/calendar/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field protected static final BUNDLE_KEY_RESTORE_SEARCH_QUERY:Ljava/lang/String; = "key_restore_search_query"

.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field private static final DEBUG:Z

.field private static final HANDLER_KEY:I

.field private static final TAG:Ljava/lang/String;

.field private static mIsMultipane:Z


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mCurrentEventId:J

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

.field private mHandler:Landroid/os/Handler;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mQuery:Ljava/lang/String;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowEventDetailsWithAgenda:Z

.field private mTimeChangesReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeChangesUpdater:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/calendar/SearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/SearchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    .line 86
    new-instance v0, Lcom/android/calendar/SearchActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/SearchActivity$1;-><init>(Lcom/android/calendar/SearchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    .line 99
    new-instance v0, Lcom/android/calendar/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/SearchActivity$2;-><init>(Lcom/android/calendar/SearchActivity;)V

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/SearchActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private deleteEvent(JJJ)V
    .locals 10
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    const/4 v7, -0x1

    move-wide v1, p3

    move-wide v3, p5

    move-wide v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 244
    sget-boolean v0, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 247
    .local v8, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v9

    .line 248
    .local v9, ft:Landroid/app/FragmentTransaction;
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v9, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 249
    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commit()I

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 251
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const v1, 0x7f100012

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 252
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    .line 254
    .end local v8           #fragmentManager:Landroid/app/FragmentManager;
    .end local v9           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 318
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, query:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/SearchActivity;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 322
    .end local v0           #query:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initFragments(JLjava/lang/String;)V
    .locals 6
    .parameter "timeMillis"
    .parameter "query"

    .prologue
    const v5, 0x7f1000ba

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 175
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 177
    .local v1, ft:Landroid/app/FragmentTransaction;
    new-instance v2, Lcom/android/calendar/agenda/AgendaFragment;

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v4}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .line 178
    .local v2, searchResultsFragment:Lcom/android/calendar/agenda/AgendaFragment;
    invoke-virtual {v1, v5, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 179
    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4, v5, v2}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 181
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 182
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 183
    .local v3, t:Landroid/text/format/Time;
    invoke-virtual {v3, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 184
    invoke-direct {p0, p3, v3}, Lcom/android/calendar/SearchActivity;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 185
    return-void
.end method

.method private search(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 5
    .parameter "searchQuery"
    .parameter "goToTime"

    .prologue
    const/4 v4, 0x1

    .line 221
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    invoke-static {p0}, Lcom/android/calendar/Utils;->getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 224
    .local v1, suggestions:Landroid/provider/SearchRecentSuggestions;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 228
    .local v0, searchEventInfo:Lcom/android/calendar/CalendarController$EventInfo;
    const-wide/16 v2, 0x100

    iput-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 229
    iput-object p1, v0, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    .line 230
    iput v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 231
    if-eqz p2, :cond_0

    .line 232
    iput-object p2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2, p0, v0}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 235
    iput-object p1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    .line 236
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 238
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 240
    :cond_1
    return-void
.end method

.method private showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 16
    .parameter "event"

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/SearchActivity;->mShowEventDetailsWithAgenda:Z

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    .line 190
    .local v13, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v13}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v14

    .line 192
    .local v14, ft:Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/CalendarController$EventInfo;->getResponse()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 195
    const v1, 0x7f100012

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v14, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 196
    invoke-virtual {v14}, Landroid/app/FragmentTransaction;->commit()I

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const v2, 0x7f100012

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 216
    .end local v13           #fragmentManager:Landroid/app/FragmentManager;
    .end local v14           #ft:Landroid/app/FragmentTransaction;
    :goto_0
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    .line 217
    return-void

    .line 199
    :cond_0
    new-instance v15, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v15, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 201
    .local v12, eventUri:Landroid/net/Uri;
    invoke-virtual {v15, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 202
    const-class v1, Lcom/android/calendar/EventInfoActivity;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 203
    const-string v3, "beginTime"

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    :goto_1
    invoke-virtual {v15, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 205
    const-string v3, "endTime"

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    :goto_2
    invoke-virtual {v15, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 207
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 211
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v1, :cond_3

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    :goto_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v1, :cond_4

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    :goto_4
    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/calendar/alerts/AlertUtils;->removeEventNotification(Landroid/content/Context;JJJ)V

    goto :goto_0

    .line 203
    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_1

    .line 205
    :cond_2
    const-wide/16 v1, -0x1

    goto :goto_2

    .line 211
    :cond_3
    const-wide/16 v4, -0x1

    goto :goto_3

    :cond_4
    const-wide/16 v6, -0x1

    goto :goto_4
.end method


# virtual methods
.method public eventsChanged()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x80

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 356
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 360
    const-wide/16 v0, 0x12

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 365
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-nez v0, :cond_1

    const-wide/16 v5, -0x1

    .line 366
    .local v5, endTime:J
    :goto_0
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 367
    invoke-direct {p0, p1}, Lcom/android/calendar/SearchActivity;->showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 371
    :cond_0
    :goto_1
    return-void

    .line 365
    .end local v5           #endTime:J
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    goto :goto_0

    .line 368
    .restart local v5       #endTime:J
    :cond_2
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 369
    iget-wide v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/SearchActivity;->deleteEvent(JJJ)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    .line 113
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mHandler:Landroid/os/Handler;

    .line 115
    const v4, 0x7f090007

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v4

    sput-boolean v4, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    .line 116
    const v4, 0x7f090003

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/calendar/SearchActivity;->mShowEventDetailsWithAgenda:Z

    .line 119
    const v4, 0x7f040035

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 121
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    .line 123
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 125
    sget-boolean v4, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    if-eqz v4, :cond_3

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 136
    :goto_0
    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4, v6, p0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 138
    new-instance v4, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v4, p0, p0, v6}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 141
    const-wide/16 v1, 0x0

    .line 142
    .local v1, millis:J
    if-eqz p1, :cond_0

    .line 144
    const-string v4, "key_restore_time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 149
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    .line 154
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    if-eqz p1, :cond_4

    const-string v4, "key_restore_search_query"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 158
    const-string v4, "key_restore_search_query"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, query:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v1, v2, v3}, Lcom/android/calendar/SearchActivity;->initFragments(JLjava/lang/String;)V

    .line 164
    .end local v3           #query:Ljava/lang/String;
    :cond_2
    return-void

    .line 129
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #millis:J
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v6, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_0

    .line 160
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #millis:J
    :cond_4
    const-string v4, "query"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #query:Ljava/lang/String;
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f0003

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 263
    const v3, 0x7f1000c6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 264
    .local v2, menuItem:Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanOrLater()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 266
    .local v0, icon:Landroid/graphics/drawable/LayerDrawable;
    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lcom/android/calendar/Utils;->setTodayIcon(Landroid/graphics/drawable/LayerDrawable;Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    .end local v0           #icon:Landroid/graphics/drawable/LayerDrawable;
    :goto_0
    const v3, 0x7f1000c9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 273
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 274
    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 275
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    .line 276
    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v3, p0}, Lcom/android/calendar/Utils;->setUpSearchView(Landroid/widget/SearchView;Landroid/app/Activity;)V

    .line 277
    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 278
    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    .line 280
    const/4 v3, 0x1

    return v3

    .line 269
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_0
    const v3, 0x7f020047

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->deregisterAllEventHandlers()V

    .line 170
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 393
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 399
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 401
    sget-object v0, Lcom/android/calendar/SearchActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMenuItemActionCollapse start target activity,finish SearchActivity."

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 314
    invoke-direct {p0, p1}, Lcom/android/calendar/SearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 315
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 15
    .parameter "item"

    .prologue
    .line 285
    const/4 v4, 0x0

    .line 286
    .local v4, t:Landroid/text/format/Time;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v14

    .line 287
    .local v14, itemId:I
    const v0, 0x7f1000c6

    if-ne v14, v0, :cond_0

    .line 288
    new-instance v4, Landroid/text/format/Time;

    .end local v4           #t:Landroid/text/format/Time;
    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 289
    .restart local v4       #t:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 290
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 291
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    .line 292
    :cond_0
    const v0, 0x7f1000c9

    if-ne v14, v0, :cond_1

    .line 293
    const/4 v0, 0x0

    goto :goto_0

    .line 294
    :cond_1
    const v0, 0x7f1000cd

    if-ne v14, v0, :cond_2

    .line 295
    iget-object v5, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v7, 0x40

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v6, p0

    invoke-virtual/range {v5 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 296
    const/4 v0, 0x1

    goto :goto_0

    .line 297
    :cond_2
    const v0, 0x102002c

    if-ne v14, v0, :cond_3

    .line 298
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 299
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 347
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 348
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->resetMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 349
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->clearTimeChangesReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 350
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 351
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 13
    .parameter "query"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 380
    iput-object p1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x100

    const-wide/16 v6, -0x1

    const-wide/16 v9, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    move-object v1, p0

    move-object v5, v4

    move-object v11, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 383
    return v8
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 333
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 335
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 339
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setTimeChangesReceiver(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesReceiver:Landroid/content/BroadcastReceiver;

    .line 340
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->eventsChanged()V

    .line 343
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 327
    const-string v0, "key_restore_time"

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 328
    const-string v0, "key_restore_search_query"

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method
