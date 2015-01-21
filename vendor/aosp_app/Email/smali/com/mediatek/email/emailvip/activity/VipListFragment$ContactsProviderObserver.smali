.class Lcom/mediatek/email/emailvip/activity/VipListFragment$ContactsProviderObserver;
.super Landroid/database/ContentObserver;
.source "VipListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/activity/VipListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsProviderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$ContactsProviderObserver;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    .line 379
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 380
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 384
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$ContactsProviderObserver;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListAdapter:Lcom/mediatek/email/emailvip/activity/VipListAdapter;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$000(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 385
    .local v0, vipItemsCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    :cond_0
    return-void

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$ContactsProviderObserver;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$400(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/emailvip/activity/ListPhotoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;->refreshCache()V

    .line 391
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 392
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$ContactsProviderObserver;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListAdapter:Lcom/mediatek/email/emailvip/activity/VipListAdapter;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$000(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->updateAvatar(Ljava/lang/String;)V

    goto :goto_0
.end method
