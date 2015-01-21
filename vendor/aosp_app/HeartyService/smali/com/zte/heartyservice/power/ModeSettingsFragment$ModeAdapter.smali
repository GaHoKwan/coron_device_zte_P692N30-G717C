.class Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ModeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/ModeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeAdapter"
.end annotation


# static fields
.field private static final BASEMODE:I = 0x0

.field private static final CUSTOMMODE:I = 0x1

.field private static final tag:Ljava/lang/String; = "ModeAdapter"


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Lcom/zte/heartyservice/power/ModeSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;)V

    return-void
.end method

.method private getBaseView(Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .parameter "convertView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 737
    const-string v2, "ModeAdapter"

    const-string v3, "getBaseView Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, baseHolder:Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;
    const/4 v1, 0x0

    .line 740
    .local v1, result:Landroid/view/View;
    if-nez p1, :cond_0

    .line 741
    iget-object v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$900(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030018

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 742
    new-instance v0, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;

    .end local v0           #baseHolder:Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;
    iget-object v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-direct {v0, v2, v1}, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Landroid/view/View;)V

    .line 743
    .restart local v0       #baseHolder:Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 744
    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->checkArea:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->access$1100(Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioListener:Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;
    invoke-static {v3}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$1000(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    :goto_0
    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->access$1200(Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$800(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;

    iget-object v2, v2, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;->modeName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    invoke-static {v1, p2, v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 757
    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->radioButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->access$1300(Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setId(I)V

    .line 758
    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->checkArea:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->access$1100(Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;)Landroid/view/View;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 759
    const-string v2, "ModeAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBaseView position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; radioPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I
    invoke-static {v4}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$300(Lcom/zte/heartyservice/power/ModeSettingsFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I
    invoke-static {v2}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$300(Lcom/zte/heartyservice/power/ModeSettingsFragment;)I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 761
    const-string v2, "ModeAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBaseView set raido Selected Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->radioButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->access$1300(Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020267

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 769
    :goto_1
    return-object v1

    .line 749
    :cond_0
    move-object v1, p1

    .line 750
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #baseHolder:Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;
    check-cast v0, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;

    .restart local v0       #baseHolder:Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;
    goto/16 :goto_0

    .line 765
    :cond_1
    const-string v2, "ModeAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBaseView set raido UnSelected Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->radioButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;->access$1300(Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020266

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 690
    const-string v0, "ModeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$800(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$800(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$800(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 701
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 708
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 709
    const/4 v0, 0x1

    .line 711
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 724
    const-string v0, "ModeAdapter"

    const-string v1, "getView Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 731
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :pswitch_0
    invoke-direct {p0, p2, p1}, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;->getBaseView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x2

    return v0
.end method
