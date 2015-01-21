.class public Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;
.super Ljava/lang/Object;
.source "MessageItem.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PduLoadedMessageItemCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageItem;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 25
    .parameter "result"
    .parameter "exception"

    .prologue
    .line 717
    if-eqz p2, :cond_1

    .line 718
    invoke-static {}, Lcom/android/mms/ui/MessageItem;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "PduLoadedMessageItemCallback PDU couldn\'t be loaded: "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageItem;->access$100(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageItem;->access$100(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v20

    monitor-enter v20

    .line 725
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageItem;->access$100(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v19

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/mms/util/ItemLoadedFuture;->setIsDone(Z)V

    .line 726
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object/from16 v11, p1

    .line 729
    check-cast v11, Lcom/android/mms/util/PduLoaderManager$PduLoaded;

    .line 730
    .local v11, pduLoaded:Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    const-wide/16 v16, 0x0

    .line 731
    .local v16, timestamp:J
    const-wide/16 v6, 0x0

    .line 732
    .local v6, indDate:J
    const/16 v19, 0x82

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 734
    iget-object v10, v11, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v10, Lcom/google/android/mms/pdu/NotificationInd;

    .line 735
    .local v10, notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    #calls: Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    invoke-static/range {v19 .. v21}, Lcom/android/mms/ui/MessageItem;->access$200(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 739
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    mul-long v16, v19, v21

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 818
    .end local v10           #notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v19

    if-nez v19, :cond_4

    .line 820
    const/16 v19, 0x82

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v21, v0

    #calls: Lcom/android/mms/ui/MessageItem;->getTimestampStrId()I
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->access$400(Lcom/android/mms/ui/MessageItem;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 829
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsDrawTimeDivider:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 830
    const/16 v19, 0x82

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x3e8

    mul-long v21, v21, v6

    invoke-static/range {v20 .. v22}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getTimeDividerString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimeDividerString:Ljava/lang/String;

    .line 837
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/MessageItem;->mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageItem;->access$500(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/MessageItem;->mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageItem;->access$500(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/mms/ui/MessageItem$PduLoadedCallback;->onPduLoaded(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_0

    .line 726
    .end local v6           #indDate:J
    .end local v11           #pduLoaded:Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    .end local v16           #timestamp:J
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 742
    .restart local v6       #indDate:J
    .restart local v11       #pduLoaded:Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    .restart local v16       #timestamp:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v19

    if-nez v19, :cond_0

    .line 745
    iget-object v8, v11, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v8, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 746
    .local v8, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    iget-object v0, v11, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/mms/ui/MessageItem;->mHasDrmContent:Z
    invoke-static/range {v19 .. v20}, Lcom/android/mms/ui/MessageItem;->access$302(Lcom/android/mms/ui/MessageItem;Z)Z

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->checkDrmContent()Z

    move-result v20

    #setter for: Lcom/android/mms/ui/MessageItem;->mHasDrmContent:Z
    invoke-static/range {v19 .. v20}, Lcom/android/mms/ui/MessageItem;->access$302(Lcom/android/mms/ui/MessageItem;Z)Z

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v19, v0

    const/16 v20, 0x84

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 754
    if-nez v8, :cond_a

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    #calls: Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    invoke-static/range {v19 .. v21}, Lcom/android/mms/ui/MessageItem;->access$200(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 768
    .end local v8           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    if-nez v19, :cond_d

    const/4 v15, 0x0

    .line 769
    .local v15, slide:Lcom/android/mms/model/SlideModel;
    :goto_4
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 770
    invoke-virtual {v15}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v18

    .line 771
    .local v18, tm:Lcom/android/mms/model/TextModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    .line 775
    .end local v18           #tm:Lcom/android/mms/model/TextModel;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    if-nez v19, :cond_e

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 778
    .local v12, report:Ljava/lang/String;
    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0b023b

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 780
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 796
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 797
    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0b023b

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 799
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 811
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v4

    .line 812
    .local v4, attaches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    if-eqz v4, :cond_3

    .line 813
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/FileAttachmentModel;

    .line 814
    .local v3, attach:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move/from16 v20, v0

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    goto :goto_8

    .end local v3           #attach:Lcom/android/mms/model/FileAttachmentModel;
    .end local v4           #attaches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v12           #report:Ljava/lang/String;
    .end local v15           #slide:Lcom/android/mms/model/SlideModel;
    .restart local v8       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_a
    move-object v14, v8

    .line 757
    check-cast v14, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 758
    .local v14, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    #calls: Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    invoke-static/range {v19 .. v21}, Lcom/android/mms/ui/MessageItem;->access$200(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 759
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    mul-long v16, v19, v21

    .line 760
    goto/16 :goto_3

    .line 763
    .end local v14           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0b023b

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 765
    if-nez v8, :cond_c

    const-wide/16 v16, 0x0

    .end local v8           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_9
    goto/16 :goto_3

    .restart local v8       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_c
    check-cast v8, Lcom/google/android/mms/pdu/SendReq;

    .end local v8           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    mul-long v16, v19, v21

    goto :goto_9

    .line 768
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v15

    goto/16 :goto_4

    .line 775
    .restart local v15       #slide:Lcom/android/mms/model/SlideModel;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v19

    goto/16 :goto_5

    .line 784
    .restart local v12       #report:Ljava/lang/String;
    :cond_f
    :try_start_2
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 785
    .local v13, reportInt:I
    const/16 v19, 0x80

    move/from16 v0, v19

    if-ne v13, v0, :cond_10

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 790
    .end local v13           #reportInt:I
    :catch_0
    move-exception v9

    .line 791
    .local v9, nfe:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/mms/ui/MessageItem;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Value for delivery report was invalid."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_6

    .line 788
    .end local v9           #nfe:Ljava/lang/NumberFormatException;
    .restart local v13       #reportInt:I
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 803
    .end local v13           #reportInt:I
    :cond_11
    :try_start_4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 804
    .restart local v13       #reportInt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    const/16 v19, 0x80

    move/from16 v0, v19

    if-ne v13, v0, :cond_12

    const/16 v19, 0x1

    :goto_a
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_7

    .line 805
    .end local v13           #reportInt:I
    :catch_1
    move-exception v9

    .line 806
    .restart local v9       #nfe:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/mms/ui/MessageItem;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Value for read report was invalid."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_7

    .line 804
    .end local v9           #nfe:Ljava/lang/NumberFormatException;
    .restart local v13       #reportInt:I
    :cond_12
    const/16 v19, 0x0

    goto :goto_a

    .line 824
    .end local v12           #report:Ljava/lang/String;
    .end local v13           #reportInt:I
    .end local v15           #slide:Lcom/android/mms/model/SlideModel;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v21, v0

    #calls: Lcom/android/mms/ui/MessageItem;->getTimestampStrId()I
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->access$400(Lcom/android/mms/ui/MessageItem;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getShortTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_1

    .line 833
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getTimeDividerString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimeDividerString:Ljava/lang/String;

    goto/16 :goto_2
.end method
