.class Lcom/zte/engineer/ProduceInfoListView$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProduceInfoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/ProduceInfoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/zte/engineer/ProduceInfoListView;


# direct methods
.method public constructor <init>(Lcom/zte/engineer/ProduceInfoListView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/zte/engineer/ProduceInfoListView$MyAdapter;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 458
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/ProduceInfoListView$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 459
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/zte/engineer/ProduceInfoListView$MyAdapter;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    #getter for: Lcom/zte/engineer/ProduceInfoListView;->stringsIDs:[I
    invoke-static {v0}, Lcom/zte/engineer/ProduceInfoListView;->access$100(Lcom/zte/engineer/ProduceInfoListView;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 479
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 486
    if-nez p2, :cond_0

    .line 488
    iget-object v0, p0, Lcom/zte/engineer/ProduceInfoListView$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 490
    :cond_0
    const v0, 0x7f08004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView$MyAdapter;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    #getter for: Lcom/zte/engineer/ProduceInfoListView;->r:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/zte/engineer/ProduceInfoListView;->access$300(Lcom/zte/engineer/ProduceInfoListView;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/ProduceInfoListView$MyAdapter;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    #getter for: Lcom/zte/engineer/ProduceInfoListView;->stringsIDs:[I
    invoke-static {v2}, Lcom/zte/engineer/ProduceInfoListView;->access$100(Lcom/zte/engineer/ProduceInfoListView;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    const v0, 0x7f08004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView$MyAdapter;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    #getter for: Lcom/zte/engineer/ProduceInfoListView;->infos:[Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/engineer/ProduceInfoListView;->access$400(Lcom/zte/engineer/ProduceInfoListView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    return-object p2
.end method
