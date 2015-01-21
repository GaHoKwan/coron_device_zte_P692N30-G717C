.class Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "AssociationSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/detail/AssociationSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberInfoAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/detail/AssociationSimActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 375
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 376
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;
    invoke-static {v0}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$200(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;
    invoke-static {v0}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$200(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 387
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 392
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;
    invoke-static {v1}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$200(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->getTypeName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;
    invoke-static {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$200(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->getContent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->setListViewChildText(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 395
    return-object p2
.end method
