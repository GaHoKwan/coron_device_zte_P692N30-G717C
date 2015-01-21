.class Lcom/android/calendar/DayView$ContextMenuHandler;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 4611
    iput-object p1, p0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4611
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView$ContextMenuHandler;-><init>(Lcom/android/calendar/DayView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 35
    .parameter "item"

    .prologue
    .line 4613
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4676
    :pswitch_0
    const/4 v2, 0x0

    .line 4679
    :goto_0
    return v2

    .line 4615
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$500(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v6, v3, Lcom/android/calendar/Event;->id:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v8, v3, Lcom/android/calendar/Event;->startMillis:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v10, v3, Lcom/android/calendar/Event;->endMillis:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 4679
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 4623
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$500(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v6, v3, Lcom/android/calendar/Event;->id:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v8, v3, Lcom/android/calendar/Event;->startMillis:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v10, v3, Lcom/android/calendar/Event;->endMillis:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_1

    .line 4631
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$500(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v3}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x2

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_1

    .line 4636
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$500(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v3}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_1

    .line 4641
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v2}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v33

    .line 4642
    .local v33, startMillis:J
    const-wide/32 v2, 0x36ee80

    add-long v30, v33, v2

    .line 4646
    .local v30, endMillis:J
    const-wide/16 v14, 0x0

    .line 4647
    .local v14, extraLong_Allday:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    iget-boolean v2, v2, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_1

    .line 4648
    const-wide/16 v14, 0x10

    .line 4650
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$500(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v3}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-wide/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v17}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    goto/16 :goto_1

    .line 4657
    .end local v14           #extraLong_Allday:J
    .end local v30           #endMillis:J
    .end local v33           #startMillis:J
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v32

    .line 4659
    .local v32, selectedEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    .line 4660
    .local v22, begin:J
    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    .line 4661
    .local v24, end:J
    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    .line 4662
    .local v20, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$500(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v16

    const-wide/16 v18, 0x10

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, -0x1

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_1

    .line 4669
    .end local v20           #id:J
    .end local v22           #begin:J
    .end local v24           #end:J
    .end local v32           #selectedEvent:Lcom/android/calendar/Event;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/calendar/Event;->id:J

    invoke-static {v2, v3, v4}, Lcom/mediatek/calendar/MTKUtils;->sendShareEvent(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 4613
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
