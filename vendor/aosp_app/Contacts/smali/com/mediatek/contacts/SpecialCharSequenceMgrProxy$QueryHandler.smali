.class Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SpecialCharSequenceMgrProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "cr"

    .prologue
    .line 519
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 520
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 552
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    move-object/from16 v3, p2

    .line 553
    check-cast v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    .line 554
    .local v3, sc:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete sc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 555
    if-nez v3, :cond_1

    .line 556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete sc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 557
    if-eqz p3, :cond_0

    .line 558
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 563
    .local v9, context:Landroid/content/Context;
    invoke-virtual {v3}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->getTextField()Landroid/widget/EditText;

    move-result-object v14

    .line 565
    .local v14, text:Landroid/widget/EditText;
    const/4 v11, 0x0

    .line 566
    .local v11, name:Ljava/lang/String;
    const/4 v12, 0x0

    .line 568
    .local v12, number:Ljava/lang/String;
    if-eqz p3, :cond_4

    if-eqz v14, :cond_4

    .line 569
    const/4 v5, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 570
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 571
    invoke-static/range {p1 .. p1}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->fdnRequest(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fdnRequest for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 586
    :cond_3
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sc.mFoundForSlot["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mFoundForSlot:Landroid/util/SparseBooleanArray;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 591
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mSimNameForSlot:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mSimNumberForSlot:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 593
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 595
    iget-boolean v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mIsSingleQuery:Z

    if-eqz v5, :cond_7

    .line 596
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_5

    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 597
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 598
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 601
    :cond_5
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mFoundForSlot:Landroid/util/SparseBooleanArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 602
    invoke-virtual {p0, v9, v3, v11, v12}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;->showToast(Landroid/content/Context;Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 576
    :cond_6
    const-string v5, "index"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iget v6, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->contactNum:I

    if-ne v5, v6, :cond_2

    .line 577
    const-string v5, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 579
    const-string v5, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 582
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mFoundForSlot:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    move/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_1

    .line 605
    :cond_7
    invoke-static {}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->access$100()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 606
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_8

    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 608
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 609
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 612
    :cond_8
    new-instance v13, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler$1;

    invoke-direct {v13, p0, v3, v9}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler$1;-><init>(Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;Landroid/content/Context;)V

    .line 641
    .local v13, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    const v5, 0x7f0c001a

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v9, v5, v6, v13}, Lcom/mediatek/contacts/widget/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v10

    .line 644
    .local v10, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 645
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onquerycomplete: show the selector dialog = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    .end local v10           #dialog:Landroid/app/AlertDialog;
    .end local v13           #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_9
    invoke-virtual {v3}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->getQueryHandler()Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;

    move-result-object v1

    .line 648
    .local v1, handler:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;
    invoke-static {}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->access$100()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 649
    .local v2, nextQuerySlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 650
    .local v4, uri:Landroid/net/Uri;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "index"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onQueryComplete]next slot to query is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected showToast(Landroid/content/Context;Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "sc"
    .parameter "name"
    .parameter "number"

    .prologue
    const v5, 0x7f0c02a5

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 523
    #getter for: Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mTextField:Landroid/widget/EditText;
    invoke-static {p2}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->access$000(Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;)Landroid/widget/EditText;

    move-result-object v1

    .line 524
    .local v1, text:Landroid/widget/EditText;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .line 526
    .local v0, len:I
    :goto_0
    iget-object v3, p2, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->text:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 543
    :goto_1
    return-void

    .end local v0           #len:I
    :cond_0
    move v0, v2

    .line 524
    goto :goto_0

    .line 530
    .restart local v0       #len:I
    :cond_1
    if-le v0, v4, :cond_2

    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    const-string v3, "#"

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 536
    :cond_2
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 540
    const v3, 0x7f0c0128

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 541
    invoke-static {p1, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
