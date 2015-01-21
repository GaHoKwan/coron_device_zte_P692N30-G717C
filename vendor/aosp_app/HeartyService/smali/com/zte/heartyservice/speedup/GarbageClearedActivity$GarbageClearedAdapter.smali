.class public Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "GarbageClearedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/GarbageClearedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GarbageClearedAdapter"
.end annotation


# instance fields
.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/speedup/GarbageListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/speedup/GarbageListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 632
    .local p2, listItems:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/speedup/GarbageListItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 633
    iput-object p2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->listItems:Ljava/util/List;

    .line 634
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/speedup/GarbageListItem;

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 643
    mul-int/lit16 v0, p1, 0x2710

    add-int/2addr v0, p2

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 649
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/speedup/GarbageChildItem;

    .line 650
    .local v0, child:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    const/4 v6, 0x0

    .line 652
    .local v6, speedItemLayout:Landroid/widget/RelativeLayout;
    if-nez p4, :cond_0

    .line 653
    new-instance v6, Landroid/widget/RelativeLayout;

    .end local v6           #speedItemLayout:Landroid/widget/RelativeLayout;
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    invoke-direct {v6, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 654
    .restart local v6       #speedItemLayout:Landroid/widget/RelativeLayout;
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    const v9, 0x7f03010f

    invoke-virtual {v8, v6, v9}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->layoutInit(Landroid/widget/RelativeLayout;I)V

    .line 659
    :goto_0
    const v8, 0x7f0e0033

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 660
    .local v1, icon:Landroid/widget/ImageView;
    const v8, 0x7f0e0034

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 662
    .local v5, name:Landroid/widget/TextView;
    const v8, 0x7f0e0106

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 665
    .local v7, subhead:Landroid/widget/TextView;
    const v8, 0x7f0e00d0

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 666
    .local v2, itemState:Landroid/widget/ImageView;
    move v4, p1

    .line 667
    .local v4, localGroupPosition:I
    move v3, p2

    .line 668
    .local v3, localChildPosition:I
    new-instance v8, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;

    invoke-direct {v8, p0, v4, v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;II)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 883
    iget-object v8, v0, Lcom/zte/heartyservice/speedup/GarbageChildItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 884
    iget-object v8, v0, Lcom/zte/heartyservice/speedup/GarbageChildItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v8, v0, Lcom/zte/heartyservice/speedup/GarbageChildItem;->subhead:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 886
    iget-object v8, v0, Lcom/zte/heartyservice/speedup/GarbageChildItem;->subhead:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    :goto_1
    return-object v6

    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v2           #itemState:Landroid/widget/ImageView;
    .end local v3           #localChildPosition:I
    .end local v4           #localGroupPosition:I
    .end local v5           #name:Landroid/widget/TextView;
    .end local v7           #subhead:Landroid/widget/TextView;
    :cond_0
    move-object v6, p4

    .line 656
    check-cast v6, Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 889
    .restart local v1       #icon:Landroid/widget/ImageView;
    .restart local v2       #itemState:Landroid/widget/ImageView;
    .restart local v3       #localChildPosition:I
    .restart local v4       #localGroupPosition:I
    .restart local v5       #name:Landroid/widget/TextView;
    .restart local v7       #subhead:Landroid/widget/TextView;
    :cond_1
    iget-object v8, v0, Lcom/zte/heartyservice/speedup/GarbageChildItem;->size:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/speedup/GarbageListItem;

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 914
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 920
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/speedup/GarbageListItem;

    .line 921
    .local v1, item:Lcom/zte/heartyservice/speedup/GarbageListItem;
    const/4 v3, 0x0

    .line 923
    .local v3, speedItemLayout:Landroid/widget/RelativeLayout;
    if-nez p3, :cond_0

    .line 924
    new-instance v3, Landroid/widget/RelativeLayout;

    .end local v3           #speedItemLayout:Landroid/widget/RelativeLayout;
    iget-object v5, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    invoke-direct {v3, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 925
    .restart local v3       #speedItemLayout:Landroid/widget/RelativeLayout;
    iget-object v5, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    const v6, 0x7f030058

    invoke-virtual {v5, v3, v6}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->layoutInit(Landroid/widget/RelativeLayout;I)V

    .line 930
    :goto_0
    const v5, 0x7f0e0004

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 931
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f0e003d

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 932
    .local v2, name:Landroid/widget/TextView;
    const v5, 0x7f0e0106

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 934
    .local v4, subhead:Landroid/widget/TextView;
    const/4 v5, 0x1

    if-ne v5, p2, :cond_1

    .line 935
    const v5, 0x7f02015d

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 940
    :goto_1
    iget-object v5, v1, Lcom/zte/heartyservice/speedup/GarbageListItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    iget-object v5, v1, Lcom/zte/heartyservice/speedup/GarbageListItem;->subhead:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    return-object v3

    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v2           #name:Landroid/widget/TextView;
    .end local v4           #subhead:Landroid/widget/TextView;
    :cond_0
    move-object v3, p3

    .line 927
    check-cast v3, Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 937
    .restart local v0       #icon:Landroid/widget/ImageView;
    .restart local v2       #name:Landroid/widget/TextView;
    .restart local v4       #subhead:Landroid/widget/TextView;
    :cond_1
    const v5, 0x7f02015c

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 948
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 953
    const/4 v0, 0x1

    return v0
.end method

.method public removeViewInList(II)V
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 957
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/speedup/GarbageListItem;

    .line 958
    .local v0, item:Lcom/zte/heartyservice/speedup/GarbageListItem;
    iget-object v1, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 959
    iget-object v1, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 962
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->notifyDataSetChanged()V

    .line 963
    return-void
.end method
