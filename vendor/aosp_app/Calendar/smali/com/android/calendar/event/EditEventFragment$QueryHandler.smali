.class Lcom/android/calendar/event/EditEventFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    .line 149
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 150
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->requestFocus()V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 38
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 155
    if-nez p3, :cond_0

    .line 329
    :goto_0
    return-void

    .line 161
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    .line 162
    .local v25, activity:Landroid/app/Activity;
    if-eqz v25, :cond_1

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 167
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 326
    :pswitch_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 172
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;
    invoke-static {v3}, Lcom/android/calendar/event/EditEventFragment;->access$100(Lcom/android/calendar/event/EditEventFragment;)Lcom/android/calendar/event/EditEventFragment$Done;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v4, 0x0

    #setter for: Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$202(Lcom/android/calendar/event/EditEventFragment;Z)Z

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;
    invoke-static {v3}, Lcom/android/calendar/event/EditEventFragment;->access$100(Lcom/android/calendar/event/EditEventFragment;)Lcom/android/calendar/event/EditEventFragment$Done;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_0

    .line 178
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    new-instance v4, Lcom/android/calendar/CalendarEventModel;

    invoke-direct {v4}, Lcom/android/calendar/CalendarEventModel;-><init>()V

    iput-object v4, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)V

    .line 181
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$300(Lcom/android/calendar/event/EditEventFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$300(Lcom/android/calendar/event/EditEventFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mBegin:J
    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$400(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mEnd:J
    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$500(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mBegin:J
    invoke-static {v3}, Lcom/android/calendar/event/EditEventFragment;->access$400(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v10, v3, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v3, v7, v10

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v4, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mBegin:J
    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$400(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mEnd:J
    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$500(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v0, v3, Lcom/android/calendar/CalendarEventModel;->mId:J

    move-wide/from16 v29, v0

    .line 195
    .local v29, eventId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v3, v3, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v3, :cond_5

    const-wide/16 v3, -0x1

    cmp-long v3, v29, v3

    if-eqz v3, :cond_5

    .line 196
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 197
    .local v6, attUri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    .line 200
    .local v9, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    sget-object v7, Lcom/android/calendar/event/EditEventHelper;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v8, "event_id=? AND attendeeEmail IS NOT NULL"

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v6           #attUri:Landroid/net/Uri;
    .end local v9           #whereArgs:[Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v3, v3, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eqz v3, :cond_6

    .line 210
    sget-object v13, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 211
    .local v13, rUri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v3

    .line 214
    .local v16, remArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v10, v3, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    const/4 v11, 0x4

    const/4 v12, 0x0

    sget-object v14, Lcom/android/calendar/event/EditEventHelper;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v15, "event_id=?"

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v13           #rUri:Landroid/net/Uri;
    .end local v16           #remArgs:[Ljava/lang/String;
    :goto_3
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v4, v4, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    .line 226
    .local v23, selArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v0, v3, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    const/16 v19, 0x0

    sget-object v20, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v21, Lcom/android/calendar/event/EditEventHelper;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v22, "_id=?"

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v4, 0x1

    #calls: Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$600(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_0

    .line 188
    .end local v23           #selArgs:[Ljava/lang/String;
    .end local v29           #eventId:J
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 205
    .restart local v29       #eventId:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v4, 0x2

    #calls: Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$600(Lcom/android/calendar/event/EditEventFragment;I)V

    goto :goto_2

    .line 219
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v4, 0x4

    #calls: Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$600(Lcom/android/calendar/event/EditEventFragment;I)V

    goto :goto_3

    .line 234
    .end local v29           #eventId:J
    :goto_4
    :pswitch_2
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 235
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 236
    .local v34, name:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 237
    .local v28, email:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 238
    .local v37, status:I
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 240
    .local v36, relationship:I
    const/4 v3, 0x2

    move/from16 v0, v36

    if-ne v0, v3, :cond_8

    .line 241
    if-eqz v28, :cond_7

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v28

    iput-object v0, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v28

    iput-object v0, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 250
    :cond_7
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 260
    :cond_8
    :goto_5
    if-eqz v28, :cond_a

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 263
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 265
    .local v27, attendeeId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move/from16 v0, v27

    iput v0, v3, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move/from16 v0, v37

    iput v0, v3, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move/from16 v0, v27

    iput v0, v3, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move/from16 v0, v37

    iput v0, v3, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 278
    .end local v27           #attendeeId:I
    .end local v28           #email:Ljava/lang/String;
    .end local v34           #name:Ljava/lang/String;
    .end local v36           #relationship:I
    .end local v37           #status:I
    :catchall_0
    move-exception v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v3

    .line 255
    .restart local v28       #email:Ljava/lang/String;
    .restart local v34       #name:Ljava/lang/String;
    .restart local v36       #relationship:I
    .restart local v37       #status:I
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v34

    iput-object v0, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v34

    iput-object v0, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    goto :goto_5

    .line 272
    :cond_a
    new-instance v26, Lcom/android/calendar/CalendarEventModel$Attendee;

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .local v26, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    move/from16 v0, v37

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/calendar/CalendarEventModel;->addAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/calendar/CalendarEventModel;->addAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 278
    .end local v26           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v28           #email:Ljava/lang/String;
    .end local v34           #name:Ljava/lang/String;
    .end local v36           #relationship:I
    .end local v37           #status:I
    :cond_b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v4, 0x2

    #calls: Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$600(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_0

    .line 286
    :goto_6
    :pswitch_3
    :try_start_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 287
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 288
    .local v33, minutes:I
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 289
    .local v32, method:I
    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v35

    .line 290
    .local v35, re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 298
    .end local v32           #method:I
    .end local v33           #minutes:I
    .end local v35           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :catchall_1
    move-exception v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v3

    .line 295
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 298
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v4, 0x4

    #calls: Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$600(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_0

    .line 306
    :pswitch_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/calendar/event/EditEventFragment;->access$300(Lcom/android/calendar/event/EditEventFragment;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    const-wide/16 v7, -0x1

    cmp-long v3, v3, v7

    if-nez v3, :cond_f

    .line 308
    :cond_d
    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v31

    .line 313
    .local v31, matrixCursor:Landroid/database/MatrixCursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v3, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v3}, Lcom/android/calendar/event/EditEventView;->setCalendarsCursor(Landroid/database/Cursor;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 320
    .end local v31           #matrixCursor:Landroid/database/MatrixCursor;
    :goto_8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/16 v4, 0x8

    #calls: Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$600(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_0

    .line 313
    .restart local v31       #matrixCursor:Landroid/database/MatrixCursor;
    :cond_e
    const/4 v3, 0x0

    goto :goto_7

    .line 316
    .end local v31           #matrixCursor:Landroid/database/MatrixCursor;
    :cond_f
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCalendarCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)Z

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCalendarCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    .line 320
    :catchall_2
    move-exception v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v3

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
