.class Lcom/android/calendar/event/EditEventView$TimeListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->mView:Landroid/view/View;

    .line 255
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 19
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;
    invoke-static {v15}, Lcom/android/calendar/event/EditEventView;->access$100(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v14

    .line 261
    .local v14, startTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;
    invoke-static {v15}, Lcom/android/calendar/event/EditEventView;->access$200(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v6

    .line 268
    .local v6, endTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 270
    iget v15, v6, Landroid/text/format/Time;->hour:I

    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 271
    .local v7, hourDuration:I
    iget v15, v6, Landroid/text/format/Time;->minute:I

    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v16, v0

    sub-int v8, v15, v16

    .line 273
    .local v8, minuteDuration:I
    move/from16 v0, p2

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 274
    move/from16 v0, p3

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 275
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v12

    .line 278
    .local v12, startMillis:J
    add-int v15, p2, v7

    iput v15, v6, Landroid/text/format/Time;->hour:I

    .line 279
    add-int v15, p3, v8

    iput v15, v6, Landroid/text/format/Time;->minute:I

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->populateTimezone(J)V
    invoke-static {v15, v12, v13}, Lcom/android/calendar/event/EditEventView;->access$300(Lcom/android/calendar/event/EditEventView;J)V

    .line 311
    .end local v7           #hourDuration:I
    .end local v8           #minuteDuration:I
    :cond_0
    :goto_0
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 313
    .local v4, endMillis:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #calls: Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v15, v0, v4, v5}, Lcom/android/calendar/event/EditEventView;->access$600(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 314
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #calls: Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v15, v0, v12, v13}, Lcom/android/calendar/event/EditEventView;->access$700(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #calls: Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v15, v0, v4, v5}, Lcom/android/calendar/event/EditEventView;->access$700(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 316
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->updateHomeTime()V
    invoke-static {v15}, Lcom/android/calendar/event/EditEventView;->access$800(Lcom/android/calendar/event/EditEventView;)V

    .line 317
    return-void

    .line 286
    .end local v4           #endMillis:J
    .end local v12           #startMillis:J
    :cond_1
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v17

    sub-long v9, v15, v17

    .line 287
    .local v9, originalDuration:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->findMinReapeatMode(J)I
    invoke-static {v15, v9, v10}, Lcom/android/calendar/event/EditEventView;->access$400(Lcom/android/calendar/event/EditEventView;J)I

    move-result v11

    .line 290
    .local v11, originalMinRepeatMode:I
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 291
    .restart local v12       #startMillis:J
    move/from16 v0, p2

    iput v0, v6, Landroid/text/format/Time;->hour:I

    .line 292
    move/from16 v0, p3

    iput v0, v6, Landroid/text/format/Time;->minute:I

    .line 296
    invoke-virtual {v6, v14}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 297
    iget v15, v14, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v6, Landroid/text/format/Time;->monthDay:I

    .line 302
    :cond_2
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v17

    sub-long v1, v15, v17

    .line 303
    .local v1, currentDuration:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->findMinReapeatMode(J)I
    invoke-static {v15, v1, v2}, Lcom/android/calendar/event/EditEventView;->access$400(Lcom/android/calendar/event/EditEventView;J)I

    move-result v3

    .line 304
    .local v3, currentMinRepeatMode:I
    if-eq v11, v3, :cond_0

    .line 305
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->populateRepeats()V
    invoke-static {v15}, Lcom/android/calendar/event/EditEventView;->access$500(Lcom/android/calendar/event/EditEventView;)V

    goto/16 :goto_0
.end method
