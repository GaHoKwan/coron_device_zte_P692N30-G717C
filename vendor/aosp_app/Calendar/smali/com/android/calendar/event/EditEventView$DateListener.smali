.class Lcom/android/calendar/event/EditEventView$DateListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateListener"
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView$DateListener;->mView:Landroid/view/View;

    .line 366
    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 21
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 370
    const-string v17, "EditEventView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onDateSet: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/event/EditEventView;->access$100(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v15

    .line 373
    .local v15, startTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/event/EditEventView;->access$200(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v7

    .line 380
    .local v7, endTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 382
    iget v0, v7, Landroid/text/format/Time;->year:I

    move/from16 v17, v0

    iget v0, v15, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .line 383
    .local v16, yearDuration:I
    iget v0, v7, Landroid/text/format/Time;->month:I

    move/from16 v17, v0

    iget v0, v15, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 384
    .local v9, monthDuration:I
    iget v0, v7, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    sub-int v8, v17, v18

    .line 386
    .local v8, monthDayDuration:I
    move/from16 v0, p2

    iput v0, v15, Landroid/text/format/Time;->year:I

    .line 387
    move/from16 v0, p3

    iput v0, v15, Landroid/text/format/Time;->month:I

    .line 388
    move/from16 v0, p4

    iput v0, v15, Landroid/text/format/Time;->monthDay:I

    .line 389
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v13

    .line 392
    .local v13, startMillis:J
    add-int v17, p2, v16

    move/from16 v0, v17

    iput v0, v7, Landroid/text/format/Time;->year:I

    .line 393
    add-int v17, p3, v9

    move/from16 v0, v17

    iput v0, v7, Landroid/text/format/Time;->month:I

    .line 394
    add-int v17, p4, v8

    move/from16 v0, v17

    iput v0, v7, Landroid/text/format/Time;->monthDay:I

    .line 395
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 398
    .local v5, endMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v17, v0

    #calls: Lcom/android/calendar/event/EditEventView;->populateRepeats()V
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/event/EditEventView;->access$500(Lcom/android/calendar/event/EditEventView;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/calendar/event/EditEventView;->populateTimezone(J)V
    invoke-static {v0, v13, v14}, Lcom/android/calendar/event/EditEventView;->access$300(Lcom/android/calendar/event/EditEventView;J)V

    .line 433
    .end local v8           #monthDayDuration:I
    .end local v9           #monthDuration:I
    .end local v16           #yearDuration:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    #calls: Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v0, v1, v13, v14}, Lcom/android/calendar/event/EditEventView;->access$600(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    #calls: Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v0, v1, v5, v6}, Lcom/android/calendar/event/EditEventView;->access$600(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    #calls: Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v0, v1, v5, v6}, Lcom/android/calendar/event/EditEventView;->access$700(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v17, v0

    #calls: Lcom/android/calendar/event/EditEventView;->updateHomeTime()V
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/event/EditEventView;->access$800(Lcom/android/calendar/event/EditEventView;)V

    .line 438
    return-void

    .line 405
    .end local v5           #endMillis:J
    .end local v13           #startMillis:J
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v17

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v19

    sub-long v10, v17, v19

    .line 406
    .local v10, originalDuration:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/calendar/event/EditEventView;->findMinReapeatMode(J)I
    invoke-static {v0, v10, v11}, Lcom/android/calendar/event/EditEventView;->access$400(Lcom/android/calendar/event/EditEventView;J)I

    move-result v12

    .line 409
    .local v12, originalMinRepeatMode:I
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    .line 410
    .restart local v13       #startMillis:J
    move/from16 v0, p2

    iput v0, v7, Landroid/text/format/Time;->year:I

    .line 411
    move/from16 v0, p3

    iput v0, v7, Landroid/text/format/Time;->month:I

    .line 412
    move/from16 v0, p4

    iput v0, v7, Landroid/text/format/Time;->monthDay:I

    .line 413
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 417
    .restart local v5       #endMillis:J
    invoke-virtual {v7, v15}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 418
    invoke-virtual {v7, v15}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 419
    move-wide v5, v13

    .line 424
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v17

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v19

    sub-long v2, v17, v19

    .line 425
    .local v2, currentDuration:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/calendar/event/EditEventView;->findMinReapeatMode(J)I
    invoke-static {v0, v2, v3}, Lcom/android/calendar/event/EditEventView;->access$400(Lcom/android/calendar/event/EditEventView;J)I

    move-result v4

    .line 426
    .local v4, currentMinRepeatMode:I
    if-eq v12, v4, :cond_0

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v17, v0

    #calls: Lcom/android/calendar/event/EditEventView;->populateRepeats()V
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/event/EditEventView;->access$500(Lcom/android/calendar/event/EditEventView;)V

    goto/16 :goto_0
.end method
