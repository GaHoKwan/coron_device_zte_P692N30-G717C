.class Lcom/mediatek/email/emailvip/activity/VipListFragment$1;
.super Ljava/lang/Object;
.source "VipListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/activity/VipListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$1;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 150
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 141
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$1;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListAdapter:Lcom/mediatek/email/emailvip/activity/VipListAdapter;
    invoke-static {v0}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$000(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->pauseAvatarLoading(Z)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$1;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListAdapter:Lcom/mediatek/email/emailvip/activity/VipListAdapter;
    invoke-static {v0}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$000(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->pauseAvatarLoading(Z)V

    goto :goto_0
.end method
