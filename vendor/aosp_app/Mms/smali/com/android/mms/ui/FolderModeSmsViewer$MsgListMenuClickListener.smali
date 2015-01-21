.class final Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderModeSmsViewer;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;Lcom/android/mms/ui/FolderModeSmsViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 645
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "arg0"

    .prologue
    .line 650
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 724
    const/4 v9, 0x0

    :goto_0
    return v9

    .line 652
    :sswitch_0
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    const/4 v10, 0x1

    #calls: Lcom/android/mms/ui/FolderModeSmsViewer;->lockMessage(Z)V
    invoke-static {v9, v10}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$500(Lcom/android/mms/ui/FolderModeSmsViewer;Z)V

    .line 653
    const/4 v9, 0x1

    goto :goto_0

    .line 655
    :sswitch_1
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    const/4 v10, 0x0

    #calls: Lcom/android/mms/ui/FolderModeSmsViewer;->lockMessage(Z)V
    invoke-static {v9, v10}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$500(Lcom/android/mms/ui/FolderModeSmsViewer;Z)V

    .line 656
    const/4 v9, 0x1

    goto :goto_0

    .line 658
    :sswitch_2
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    new-instance v10, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;

    iget-object v11, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    iget-object v12, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->msgid:J
    invoke-static {v12}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$700(Lcom/android/mms/ui/FolderModeSmsViewer;)J

    move-result-wide v12

    invoke-direct {v10, v11, v12, v13}, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;J)V

    #setter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgThread:Ljava/lang/Thread;
    invoke-static {v9, v10}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$602(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 659
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgThread:Ljava/lang/Thread;
    invoke-static {v9}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$600(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 660
    const/4 v9, 0x1

    goto :goto_0

    .line 662
    :sswitch_3
    const/4 v6, -0x1

    .line 664
    .local v6, simId:I
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I
    invoke-static {v10}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$800(Lcom/android/mms/ui/FolderModeSmsViewer;)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v9, v10, v11}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v7

    .line 665
    .local v7, slot:I
    const-string v9, "Mms/FolderModeSmsViewer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "slot is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",simId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I
    invoke-static {v11}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$800(Lcom/android/mms/ui/FolderModeSmsViewer;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    if-ltz v7, :cond_0

    .line 667
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I
    invoke-static {v9}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$800(Lcom/android/mms/ui/FolderModeSmsViewer;)I

    move-result v6

    .line 672
    :cond_0
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mNumber:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$900(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Lcom/android/mms/ui/MessageUtils;->replyMessage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 673
    const/4 v9, 0x1

    goto :goto_0

    .line 675
    .end local v6           #simId:I
    .end local v7           #slot:I
    :sswitch_4
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #calls: Lcom/android/mms/ui/FolderModeSmsViewer;->resendMsg()V
    invoke-static {v9}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1000(Lcom/android/mms/ui/FolderModeSmsViewer;)V

    .line 676
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 679
    :sswitch_5
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    iget-object v10, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1100(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/net/Uri;

    move-result-object v10

    #calls: Lcom/android/mms/ui/FolderModeSmsViewer;->confirmToDeleteMessage(Landroid/net/Uri;)V
    invoke-static {v9, v10}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1200(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/net/Uri;)V

    .line 680
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 682
    :sswitch_6
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    iget-object v10, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1300(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/mms/ui/FolderModeSmsViewer;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1400(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/lang/String;)V

    .line 683
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 685
    :sswitch_7
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #calls: Lcom/android/mms/ui/FolderModeSmsViewer;->getMessageDetails()Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1500(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/lang/String;

    move-result-object v5

    .line 686
    .local v5, messageDetails:Ljava/lang/String;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0b02c1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 692
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 694
    .end local v5           #messageDetails:Ljava/lang/String;
    :sswitch_8
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mURLs:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1600(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 695
    iget-object v10, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mURLs:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1600(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v10, v11, v9}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_1
    :goto_1
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 696
    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mURLs:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1600(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 697
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mURLs:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1600(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v4, v9, [Ljava/lang/CharSequence;

    .line 698
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mURLs:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1600(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 699
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mURLs:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1600(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    aput-object v9, v4, v3

    .line 698
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 701
    :cond_3
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0b0026

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0200a0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener$1;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener$1;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;)V

    invoke-virtual {v9, v4, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 713
    .end local v3           #i:I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :sswitch_9
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 714
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 715
    .local v2, factory:Landroid/view/LayoutInflater;
    const v9, 0x7f040007

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 716
    .local v8, textEntryView:Landroid/view/View;
    const v9, 0x7f0f0015

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 717
    .local v0, contentSelector:Landroid/widget/EditText;
    iget-object v9, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1300(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    const v9, 0x7f0b00af

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0b0295

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 722
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 650
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_4
        0x11 -> :sswitch_7
        0x12 -> :sswitch_5
        0x18 -> :sswitch_6
        0x1c -> :sswitch_0
        0x1d -> :sswitch_1
        0x1f -> :sswitch_2
        0x22 -> :sswitch_9
        0x23 -> :sswitch_8
    .end sparse-switch
.end method
