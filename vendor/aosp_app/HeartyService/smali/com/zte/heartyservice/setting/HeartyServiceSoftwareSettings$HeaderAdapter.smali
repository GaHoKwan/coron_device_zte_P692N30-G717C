.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HeartyServiceSoftwareSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# static fields
.field static final BG_TYPE_CATEGORY:I = 0x3

.field static final BG_TYPE_ERROR:I = -0x1

.field static final BG_TYPE_HEAD:I = 0x0

.field static final BG_TYPE_HEAD_TAIL:I = 0x4

.field static final BG_TYPE_MIDDLE:I = 0x2

.field static final BG_TYPE_TAIL:I = 0x1


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 672
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 673
    return-void
.end method

.method private getBgType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x2

    .line 784
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 785
    :cond_0
    const/4 v0, -0x1

    .line 796
    :cond_1
    :goto_0
    return v0

    .line 786
    :cond_2
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 787
    const/4 v0, 0x3

    goto :goto_0

    .line 788
    :cond_3
    if-eqz p1, :cond_4

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 789
    :cond_4
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_5

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 790
    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    .line 792
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 793
    :cond_7
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_8

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 794
    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setBackground(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "position"

    .prologue
    .line 801
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getBgType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 821
    :goto_0
    :pswitch_0
    return-void

    .line 805
    :pswitch_1
    const v0, 0x7f020293

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 808
    :pswitch_2
    const v0, 0x7f02028c

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 811
    :pswitch_3
    const v0, 0x7f020289

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 814
    :pswitch_4
    const v0, 0x7f020286

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 801
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 769
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 770
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    invoke-static {v1, v0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$700(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x7f0300f7

    const v7, 0x1010208

    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 678
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 679
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    invoke-static {v5, v0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$700(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 681
    .local v1, headerType:I
    const/4 v4, 0x0

    .line 683
    .local v4, view:Landroid/view/View;
    if-nez p2, :cond_4

    .line 684
    new-instance v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;

    invoke-direct {v2, p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;)V

    .line 685
    .local v2, holder:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;
    packed-switch v1, :pswitch_data_0

    .line 699
    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 705
    :goto_1
    if-eqz v1, :cond_0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    :cond_0
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    if-eqz v5, :cond_2

    :cond_1
    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    if-eqz v5, :cond_3

    .line 707
    :cond_2
    new-instance v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;

    .end local v2           #holder:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;
    invoke-direct {v2, p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;)V

    .line 708
    .restart local v2       #holder:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;
    packed-switch v1, :pswitch_data_1

    .line 722
    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 725
    :cond_3
    invoke-direct {p0, v4, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->setBackground(Landroid/view/View;I)V

    .line 727
    const/4 v3, 0x0

    .line 729
    .local v3, summary:Ljava/lang/CharSequence;
    packed-switch v1, :pswitch_data_2

    .line 764
    :goto_3
    return-object v4

    .line 687
    .end local v3           #summary:Ljava/lang/CharSequence;
    :pswitch_0
    new-instance v4, Landroid/widget/TextView;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v4       #view:Landroid/view/View;
    move-object v5, v4

    .line 689
    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 693
    :pswitch_1
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 694
    const v5, 0x7f0e0148

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 695
    const v5, 0x7f0e0359

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 696
    const v5, 0x7f0e032a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    goto :goto_0

    .line 701
    .end local v2           #holder:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;
    :cond_4
    move-object v4, p2

    .line 702
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;

    .restart local v2       #holder:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;
    goto :goto_1

    .line 710
    :pswitch_2
    new-instance v4, Landroid/widget/TextView;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v4       #view:Landroid/view/View;
    move-object v5, v4

    .line 712
    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_2

    .line 716
    :pswitch_3
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 717
    const v5, 0x7f0e0148

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 718
    const v5, 0x7f0e0359

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 719
    const v5, 0x7f0e032a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    goto :goto_2

    .line 731
    .restart local v3       #summary:Ljava/lang/CharSequence;
    :pswitch_4
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 735
    :pswitch_5
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v5, v9}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 736
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    iget-object v6, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    iget-wide v7, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v7, v7

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->setSwitch(Lcom/zte/heartyservice/common/datatype/P3Switch;I)V
    invoke-static {v5, v6, v7}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$900(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Lcom/zte/heartyservice/common/datatype/P3Switch;I)V

    .line 737
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getSummary(Landroid/preference/PreferenceActivity$Header;)Ljava/lang/CharSequence;
    invoke-static {v5, v0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$1000(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/preference/PreferenceActivity$Header;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 740
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 741
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 744
    :cond_5
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 749
    :pswitch_6
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v5, v10}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 750
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getSummary(Landroid/preference/PreferenceActivity$Header;)Ljava/lang/CharSequence;
    invoke-static {v5, v0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$1000(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/preference/PreferenceActivity$Header;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 753
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 754
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 755
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 757
    :cond_6
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 685
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 708
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 729
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 780
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
