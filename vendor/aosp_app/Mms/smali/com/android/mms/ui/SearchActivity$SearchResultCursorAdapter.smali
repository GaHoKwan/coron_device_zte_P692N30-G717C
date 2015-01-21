.class Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    .line 605
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 606
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 32
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 610
    const-string v2, "thread_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 611
    .local v26, threadIdPos:I
    const-string v2, "address"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 612
    .local v14, addressPos:I
    const-string v2, "body"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 613
    .local v17, bodyPos:I
    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 615
    .local v24, rowidPos:I
    const-string v2, "index_text"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 617
    .local v29, typeIndex:I
    const-string v2, "charset"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 619
    .local v18, charsetPos:I
    const-string v2, "m_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 625
    .local v21, m_typePos:I
    const-string v2, "msg_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 626
    const-string v2, "msg_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 630
    .local v23, msgTypePos:I
    :goto_0
    const-string v2, "msg_box"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 631
    const-string v2, "msg_box"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 636
    .local v22, msgBoxPos:I
    :goto_1
    const v2, 0x7f0f007b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/TextView;

    .line 637
    .local v27, title:Landroid/widget/TextView;
    const v2, 0x7f0f0164

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    move-object/from16 v25, v2

    check-cast v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    .line 640
    .local v25, snippet:Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 641
    .local v12, addrCharset:I
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 642
    .local v13, address:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 643
    new-instance v30, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v30

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 644
    .local v30, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v13

    .line 646
    .end local v30           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    if-eqz v13, :cond_5

    const/4 v2, 0x0

    invoke-static {v13, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v19

    .line 648
    .local v19, contact:Lcom/android/mms/data/Contact;
    :goto_2
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v28

    .line 650
    .local v28, titleString:Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 655
    .local v15, body:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 656
    if-eqz v15, :cond_1

    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 657
    :cond_1
    const v2, 0x7f0b023a

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 668
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mIsAdvancedQuery:Z
    invoke-static {v2}, Lcom/android/mms/ui/SearchActivity;->access$400(Lcom/android/mms/ui/SearchActivity;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 669
    const-string v2, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v15, v2}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 680
    .local v5, threadId:J
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 681
    .local v9, rowid:J
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 682
    .local v8, msgType:I
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 684
    .local v11, msgBox:I
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 686
    .local v7, threadType:I
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 688
    .local v4, m_type:I
    const-string v2, "Mms/SearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "onQueryComplete msgType = "

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v31, "rowid ="

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    new-instance v2, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;-><init>(Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;IJIIJI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    return-void

    .line 628
    .end local v4           #m_type:I
    .end local v5           #threadId:J
    .end local v7           #threadType:I
    .end local v8           #msgType:I
    .end local v9           #rowid:J
    .end local v11           #msgBox:I
    .end local v12           #addrCharset:I
    .end local v13           #address:Ljava/lang/String;
    .end local v15           #body:Ljava/lang/String;
    .end local v19           #contact:Lcom/android/mms/data/Contact;
    .end local v22           #msgBoxPos:I
    .end local v23           #msgTypePos:I
    .end local v25           #snippet:Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    .end local v27           #title:Landroid/widget/TextView;
    .end local v28           #titleString:Ljava/lang/String;
    :cond_3
    const/16 v23, 0x0

    .restart local v23       #msgTypePos:I
    goto/16 :goto_0

    .line 633
    :cond_4
    const/16 v22, 0x0

    .restart local v22       #msgBoxPos:I
    goto/16 :goto_1

    .line 646
    .restart local v12       #addrCharset:I
    .restart local v13       #address:Ljava/lang/String;
    .restart local v25       #snippet:Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    .restart local v27       #title:Landroid/widget/TextView;
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 648
    .restart local v19       #contact:Lcom/android/mms/data/Contact;
    :cond_6
    const-string v28, ""

    goto/16 :goto_3

    .line 660
    .restart local v15       #body:Ljava/lang/String;
    .restart local v28       #titleString:Ljava/lang/String;
    :cond_7
    :try_start_0
    new-instance v16, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v15, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v15           #body:Ljava/lang/String;
    .local v16, body:Ljava/lang/String;
    move-object/from16 v15, v16

    .line 664
    .end local v16           #body:Ljava/lang/String;
    .restart local v15       #body:Ljava/lang/String;
    goto/16 :goto_4

    .line 661
    :catch_0
    move-exception v20

    .line 662
    .local v20, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "Mms/SearchActivity"

    const-string v3, "onQueryComplete UnsupportedEncodingException"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 671
    .end local v20           #e:Ljava/io/UnsupportedEncodingException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/SearchActivity;->access$500(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v15, v2}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 798
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 799
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04005c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 800
    .local v1, v:Landroid/view/View;
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 4

    .prologue
    .line 810
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 811
    const-string v0, "Mms/SearchActivity"

    const-string v1, "onContentChanged"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/SearchActivity;->access$1000(Lcom/android/mms/ui/SearchActivity;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mRunStartQuery:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/mms/ui/SearchActivity;->access$900(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 816
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/SearchActivity;->access$1000(Lcom/android/mms/ui/SearchActivity;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mRunStartQuery:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/mms/ui/SearchActivity;->access$900(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
