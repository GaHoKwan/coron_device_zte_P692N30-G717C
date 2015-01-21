.class Lcom/android/calendar/EventInfoFragment$QueryHandler;
.super Lcom/android/calendar/AsyncQueryService;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    .line 425
    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 426
    return-void
.end method


# virtual methods
.method protected onBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "results"

    .prologue
    .line 430
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/AsyncQueryService;->onBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    .line 433
    const/16 v4, 0x40

    if-ne p1, v4, :cond_1

    .line 434
    if-eqz p3, :cond_0

    array-length v4, p3

    if-nez v4, :cond_2

    .line 435
    :cond_0
    const-string v4, "EventInfoFragment"

    const-string v5, "Create exception event fail: no results returned"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_1
    :goto_0
    return-void

    .line 438
    :cond_2
    const/4 v4, 0x0

    aget-object v4, p3, v4

    iget-object v3, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 439
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_3

    .line 440
    const-string v4, "EventInfoFragment"

    const-string v5, "Create exception event fail: uri = null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    :cond_3
    const-string v4, "EventInfoFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create exception event success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :try_start_0
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 446
    .local v0, eventId:J
    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #calls: Lcom/android/calendar/EventInfoFragment;->saveRemindersForEvent(J)Z
    invoke-static {v4, v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$600(Lcom/android/calendar/EventInfoFragment;J)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    .end local v0           #eventId:J
    :catch_0
    move-exception v2

    .line 448
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v4, "EventInfoFragment"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 25
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 457
    .local v17, activity:Landroid/app/Activity;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    :cond_0
    if-eqz p3, :cond_1

    .line 459
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 583
    :cond_1
    :goto_0
    return-void

    .line 464
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 562
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move/from16 v0, p1

    #calls: Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V
    invoke-static {v2, v0}, Lcom/android/calendar/EventInfoFragment;->access$1600(Lcom/android/calendar/EventInfoFragment;I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$2500(Lcom/android/calendar/EventInfoFragment;)I

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$500(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 570
    const-wide/16 v2, 0x258

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mLoadingMsgStartTime:J
    invoke-static {v4}, Lcom/android/calendar/EventInfoFragment;->access$400(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v9

    sub-long/2addr v6, v9

    sub-long v23, v2, v6

    .line 572
    .local v23, timeDiff:J
    const-wide/16 v2, 0x0

    cmp-long v2, v23, v2

    if-lez v2, :cond_3

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-wide/from16 v0, v23

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 576
    .end local v23           #timeDiff:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mNoCrossFade:Z
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$2700(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 466
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    #setter for: Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$702(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #calls: Lcom/android/calendar/EventInfoFragment;->initEventCursor()Z
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$800(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 471
    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 474
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    #calls: Lcom/android/calendar/EventInfoFragment;->updateEvent(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #calls: Lcom/android/calendar/EventInfoFragment;->prepareReminders()V
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$900(Lcom/android/calendar/EventInfoFragment;)V

    .line 478
    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 479
    .local v5, uri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$700(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 481
    .local v8, args:[Ljava/lang/String;
    const/4 v3, 0x2

    const/4 v4, 0x0

    sget-object v6, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v7, "_id=?"

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 485
    .end local v5           #uri:Landroid/net/Uri;
    .end local v8           #args:[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    #setter for: Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$1002(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    #calls: Lcom/android/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$1100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #calls: Lcom/android/calendar/EventInfoFragment;->updateTitle()V
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1200(Lcom/android/calendar/EventInfoFragment;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1300(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 491
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mEventId:J
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$1400(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 494
    .restart local v8       #args:[Ljava/lang/String;
    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 495
    .restart local v5       #uri:Landroid/net/Uri;
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/calendar/EventInfoFragment;->access$1500()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "event_id=?"

    const-string v9, "attendeeName ASC, attendeeEmail ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .end local v5           #uri:Landroid/net/Uri;
    .end local v8           #args:[Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mSavedReminders:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1700(Lcom/android/calendar/EventInfoFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mSavedReminders:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$1700(Lcom/android/calendar/EventInfoFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/EventInfoFragment;->restoreReminders(Ljava/util/ArrayList;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v3, 0x0

    #setter for: Lcom/android/calendar/EventInfoFragment;->mSavedReminders:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$1702(Lcom/android/calendar/EventInfoFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/16 v3, 0x10

    #calls: Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$1600(Lcom/android/calendar/EventInfoFragment;I)V

    goto/16 :goto_1

    .line 498
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v3, 0x4

    #calls: Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$1600(Lcom/android/calendar/EventInfoFragment;I)V

    goto :goto_2

    .line 506
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1800(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 508
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mEventId:J
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$1400(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 509
    .restart local v8       #args:[Ljava/lang/String;
    sget-object v5, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 510
    .restart local v5       #uri:Landroid/net/Uri;
    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/calendar/EventInfoFragment;->access$1900()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "event_id=?"

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 513
    .end local v5           #uri:Landroid/net/Uri;
    .end local v8           #args:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/16 v3, 0x10

    #calls: Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$1600(Lcom/android/calendar/EventInfoFragment;I)V

    goto/16 :goto_1

    .line 519
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    #setter for: Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$2002(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    #calls: Lcom/android/calendar/EventInfoFragment;->initAttendeesCursor(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$2100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/EventInfoFragment;->updateResponse(Landroid/view/View;)V

    goto/16 :goto_1

    .line 524
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    #setter for: Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$2202(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/calendar/EventInfoFragment;->access$2200(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/EventInfoFragment;->initReminders(Landroid/view/View;Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 528
    :sswitch_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1000(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 532
    .local v19, displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$2300(Lcom/android/calendar/EventInfoFragment;)Lcom/android/calendar/EventInfoFragment$QueryHandler;

    move-result-object v9

    const/16 v10, 0x8

    const/4 v11, 0x0

    sget-object v12, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v14, "calendar_displayName=?"

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v19, v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 538
    .end local v19           #displayName:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10009a

    const/16 v6, 0x8

    #calls: Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V
    invoke-static {v2, v3, v4, v6}, Lcom/android/calendar/EventInfoFragment;->access$2400(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;II)V

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$2576(Lcom/android/calendar/EventInfoFragment;I)I

    goto/16 :goto_1

    .line 543
    :sswitch_5
    invoke-virtual/range {v17 .. v17}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 544
    .local v21, res:Landroid/content/res/Resources;
    new-instance v22, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 547
    .local v22, sb:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1000(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 548
    .local v18, calendarName:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1000(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 553
    .local v20, email:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static/range {v20 .. v20}, Lcom/android/calendar/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 555
    const-string v2, " ("

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 558
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10009a

    const/4 v6, 0x0

    #calls: Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V
    invoke-static {v2, v3, v4, v6}, Lcom/android/calendar/EventInfoFragment;->access$2400(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;II)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100036

    move-object/from16 v0, v22

    #calls: Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V
    invoke-static {v2, v3, v4, v0}, Lcom/android/calendar/EventInfoFragment;->access$2600(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 579
    .end local v18           #calendarName:Ljava/lang/String;
    .end local v20           #email:Ljava/lang/String;
    .end local v21           #res:Landroid/content/res/Resources;
    .end local v22           #sb:Landroid/text/SpannableStringBuilder;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$300(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/ScrollView;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$500(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 464
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_5
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method
