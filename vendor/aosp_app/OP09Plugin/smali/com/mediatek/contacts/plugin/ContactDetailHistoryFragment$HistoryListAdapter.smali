.class Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;-><init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)V

    return-void
.end method

.method private getCalllogHistoryItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 577
    iget-object v9, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$300(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;

    .line 578
    .local v2, callItem:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;
    iget-object v9, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v9}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$400(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f03000c

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 579
    .local v6, result:Landroid/view/View;
    const v9, 0x7f0b0031

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 580
    .local v4, phoneIcon:Landroid/widget/ImageView;
    const v9, 0x7f0b0035

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 581
    .local v1, callDate:Landroid/widget/TextView;
    const v9, 0x7f0b0034

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 582
    .local v5, phoneNumber:Landroid/widget/TextView;
    const v9, 0x7f0b0037

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 583
    .local v3, duration:Landroid/widget/TextView;
    const v9, 0x7f0b0036

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 585
    .local v7, simIcon:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getCallLogPhoneIcon()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 603
    :goto_0
    :pswitch_0
    invoke-virtual {v2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getCallLogPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    invoke-virtual {v2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getCallDuration()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    invoke-virtual {v2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getCallLogDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v9

    invoke-virtual {v2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getCallLogSimIcon()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v8

    .line 608
    .local v8, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v8, :cond_0

    .line 625
    :goto_1
    return-object v6

    .line 587
    .end local v8           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :pswitch_1
    const v9, 0x7f020071

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 590
    :pswitch_2
    const v9, 0x7f020073

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 593
    :pswitch_3
    const v9, 0x7f020072

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 596
    :pswitch_4
    const v9, 0x7f020074

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 611
    .restart local v8       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    iget v0, v8, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundLightRes:I

    .line 612
    .local v0, backgroudRes:I
    iget-object v9, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$500(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 613
    iget-object v9, v8, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    new-instance v9, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter$2;

    invoke-direct {v9, p0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter$2;-><init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getEmptyHistoryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 501
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$300(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;

    .line 502
    .local v0, emptyItem:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$400(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 503
    .local v2, result:Landroid/view/View;
    const v3, 0x7f0b0038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 505
    .local v1, emptyText:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getEmptyText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    return-object v2
.end method

.method private getMmsHistoryItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 521
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$300(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;

    .line 522
    .local v1, mmsItem:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$400(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000e

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 523
    .local v4, result:Landroid/view/View;
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$500(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02006f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 526
    const v5, 0x7f0b0039

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 527
    .local v2, receiveFrom:Landroid/widget/TextView;
    const v5, 0x7f0b003b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 528
    .local v3, receivedTime:Landroid/widget/TextView;
    const v5, 0x7f0b003a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 530
    .local v0, mmsContent:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getMmsSentReceive()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 531
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$500(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09010a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getMmsPhoneNumber()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$500(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090109

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getMmsDate()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPhoneNumbers:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$600(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 547
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getMmsMMSsms()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 551
    invoke-virtual {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getMmsContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    :cond_2
    :goto_1
    new-instance v5, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter$1;

    invoke-direct {v5, p0, v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter$1;-><init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    return-object v4

    .line 537
    :cond_3
    invoke-virtual {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getMmsSentReceive()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 538
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$500(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09010c

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getMmsPhoneNumber()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$500(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09010b

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getMmsDate()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 552
    :cond_4
    invoke-virtual {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getMmsMMSsms()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 553
    const-string v5, "ContactDetailHistoryFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact_detail_history_ismms= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$500(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090110

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$500(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090110

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private getMmsHistoryListSeperatorView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 511
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$300(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;

    .line 512
    .local v1, mmsItem:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$400(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 513
    .local v2, result:Landroid/view/View;
    const v3, 0x7f0b003d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 514
    .local v0, appNameView:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    return-object v2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$300(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$300(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$300(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 478
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$300(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;

    invoke-virtual {v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getFromApp()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 494
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->getCalllogHistoryItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    .line 487
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->getMmsHistoryItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 489
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->getMmsHistoryListSeperatorView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 491
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->getEmptyHistoryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x4

    return v0
.end method
