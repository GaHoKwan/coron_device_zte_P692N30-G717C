.class Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AttendeesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/AttendeesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/AttendeesView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/AttendeesView;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    .line 414
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 415
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "queryIndex"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 419
    if-eqz p3, :cond_0

    if-nez p2, :cond_2

    .line 424
    :cond_0
    if-eqz p3, :cond_1

    .line 425
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 483
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v3, p2

    .line 431
    check-cast v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    .line 433
    .local v3, item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    :try_start_0
    iget v7, v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mUpdateCounts:I

    if-ge v7, p1, :cond_3

    .line 434
    iput p1, v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mUpdateCounts:I

    .line 435
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 436
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 437
    .local v0, contactId:J
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 440
    .local v2, contactUri:Landroid/net/Uri;
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mContactLookupUri:Landroid/net/Uri;

    .line 444
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 446
    .local v5, photoId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_4

    .line 448
    iget-object v7, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    #getter for: Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/calendar/event/AttendeesView;->access$000(Lcom/android/calendar/event/AttendeesView;)Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler$1;

    invoke-direct {v8, p0, v3}, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler$1;-><init>(Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)V

    invoke-static {v7, v3, v8, v2}, Lcom/android/calendar/ContactsAsyncHelper;->retrieveContactPhotoAsync(Landroid/content/Context;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;Ljava/lang/Runnable;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    .end local v0           #contactId:J
    .end local v2           #contactUri:Landroid/net/Uri;
    .end local v4           #lookupKey:Ljava/lang/String;
    .end local v5           #photoId:J
    :cond_3
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 461
    .restart local v0       #contactId:J
    .restart local v2       #contactUri:Landroid/net/Uri;
    .restart local v4       #lookupKey:Ljava/lang/String;
    .restart local v5       #photoId:J
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/calendar/event/AttendeesView;->mRecycledPhotos:Ljava/util/HashMap;

    .line 462
    iget-object v7, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    #calls: Lcom/android/calendar/event/AttendeesView;->updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    invoke-static {v7, v3}, Lcom/android/calendar/event/AttendeesView;->access$100(Lcom/android/calendar/event/AttendeesView;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 481
    .end local v0           #contactId:J
    .end local v2           #contactUri:Landroid/net/Uri;
    .end local v4           #lookupKey:Ljava/lang/String;
    .end local v5           #photoId:J
    :catchall_0
    move-exception v7

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v7

    .line 467
    :cond_5
    const/4 v7, 0x0

    :try_start_2
    iput-object v7, v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mContactLookupUri:Landroid/net/Uri;

    .line 468
    iget-object v7, v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/calendar/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 469
    iget-object v7, v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 470
    iget-object v7, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    #calls: Lcom/android/calendar/event/AttendeesView;->updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    invoke-static {v7, v3}, Lcom/android/calendar/event/AttendeesView;->access$100(Lcom/android/calendar/event/AttendeesView;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    goto :goto_1

    .line 472
    :cond_6
    iget-object v7, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    iget-object v7, v7, Lcom/android/calendar/event/AttendeesView;->mRecycledPhotos:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    #getter for: Lcom/android/calendar/event/AttendeesView;->mDefaultBadge:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/calendar/event/AttendeesView;->access$200(Lcom/android/calendar/event/AttendeesView;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eq v7, v8, :cond_3

    .line 473
    iget-object v7, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/calendar/event/AttendeesView;->mRecycledPhotos:Ljava/util/HashMap;

    .line 474
    iget-object v7, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    #getter for: Lcom/android/calendar/event/AttendeesView;->mDefaultBadge:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/calendar/event/AttendeesView;->access$200(Lcom/android/calendar/event/AttendeesView;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 475
    iget-object v7, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    #calls: Lcom/android/calendar/event/AttendeesView;->updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    invoke-static {v7, v3}, Lcom/android/calendar/event/AttendeesView;->access$100(Lcom/android/calendar/event/AttendeesView;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
