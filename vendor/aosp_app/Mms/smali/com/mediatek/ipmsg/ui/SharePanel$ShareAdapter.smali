.class Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;
.super Landroid/widget/BaseAdapter;
.source "SharePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ipmsg/ui/SharePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareAdapter"
.end annotation


# instance fields
.field private mIconArray:[I

.field private mStringArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/ipmsg/ui/SharePanel;


# direct methods
.method public constructor <init>(Lcom/mediatek/ipmsg/ui/SharePanel;[Ljava/lang/String;[I)V
    .locals 0
    .parameter
    .parameter "stringArray"
    .parameter "iconArray"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 352
    iput-object p2, p0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;->mStringArray:[Ljava/lang/String;

    .line 353
    iput-object p3, p0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;->mIconArray:[I

    .line 354
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, count:I
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mOrientation:I
    invoke-static {v1}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$1000(Lcom/mediatek/ipmsg/ui/SharePanel;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 360
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mColumnArray:[I
    invoke-static {v1}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$1100(Lcom/mediatek/ipmsg/ui/SharePanel;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-int/lit8 v0, v1, 0x2

    .line 364
    :goto_0
    return v0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mColumnArray:[I
    invoke-static {v1}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$1100(Lcom/mediatek/ipmsg/ui/SharePanel;)[I

    move-result-object v1

    aget v0, v1, v2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 374
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 379
    if-nez p2, :cond_2

    .line 380
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$400(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$400(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040062

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 385
    :goto_0
    invoke-virtual {p2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 390
    :goto_1
    const v2, 0x7f0f016e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 391
    .local v1, text:Landroid/widget/TextView;
    const v2, 0x7f0f016d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 392
    .local v0, img:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;->mStringArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;->mStringArray:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;->mIconArray:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    :cond_0
    return-object p2

    .line 383
    .end local v0           #img:Landroid/widget/ImageView;
    .end local v1           #text:Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$400(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040063

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/view/View;

    .restart local p2
    goto :goto_1
.end method
