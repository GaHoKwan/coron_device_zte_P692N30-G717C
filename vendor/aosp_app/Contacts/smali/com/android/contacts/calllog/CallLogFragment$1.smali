.class Lcom/android/contacts/calllog/CallLogFragment$1;
.super Landroid/os/Handler;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 327
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 328
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 331
    :pswitch_0
    const/4 v5, 0x0

    .line 333
    .local v5, list:Landroid/widget/ListView;
    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v6}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 337
    :goto_1
    const/4 v4, 0x0

    .line 338
    .local v4, itemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    if-eqz v5, :cond_1

    .line 339
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #itemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    check-cast v4, Lcom/mediatek/contacts/calllog/CallLogListItemView;

    .line 341
    .restart local v4       #itemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    :cond_1
    sget-boolean v6, Lcom/android/contacts/calllog/CallLogFragment;->ISTABLET_LAND:Z

    if-eqz v6, :cond_2

    .line 342
    if-eqz v4, :cond_0

    .line 343
    invoke-virtual {v4}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/calllog/IntentProvider;

    .line 345
    .local v3, intentProvider:Lcom/android/contacts/calllog/IntentProvider;
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 346
    .local v0, context:Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 347
    invoke-virtual {v3, v0}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 348
    .local v2, in:Landroid/content/Intent;
    const-string v6, "follow_sim_management"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    sget-boolean v6, Lcom/android/contacts/calllog/CallLogFragment;->ISTABLET_LAND:Z

    if-eqz v6, :cond_0

    .line 350
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;
    invoke-static {v6}, Lcom/android/contacts/calllog/CallLogFragment;->access$300(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mOldItemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    invoke-static {v7}, Lcom/android/contacts/calllog/CallLogFragment;->access$200(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/mediatek/contacts/calllog/CallLogListItemView;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->itemSetSelect(Lcom/mediatek/contacts/calllog/CallLogListItemView;Lcom/mediatek/contacts/calllog/CallLogListItemView;)V

    .line 351
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;
    invoke-static {v6}, Lcom/android/contacts/calllog/CallLogFragment;->access$300(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    move-result-object v6

    invoke-virtual {v4}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getTagId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->setSelectedPosition(I)V

    .line 352
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #setter for: Lcom/android/contacts/calllog/CallLogFragment;->mOldItemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    invoke-static {v6, v4}, Lcom/android/contacts/calllog/CallLogFragment;->access$202(Lcom/android/contacts/calllog/CallLogFragment;Lcom/mediatek/contacts/calllog/CallLogListItemView;)Lcom/mediatek/contacts/calllog/CallLogListItemView;

    .line 353
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    iget-object v7, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->getCallLogEntryUris(Landroid/content/Intent;)[Landroid/net/Uri;
    invoke-static {v7, v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;Landroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v7

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->updateData([Landroid/net/Uri;)V
    invoke-static {v6, v7}, Lcom/android/contacts/calllog/CallLogFragment;->access$500(Lcom/android/contacts/calllog/CallLogFragment;[Landroid/net/Uri;)V

    goto :goto_0

    .line 334
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #in:Landroid/content/Intent;
    .end local v3           #intentProvider:Lcom/android/contacts/calllog/IntentProvider;
    .end local v4           #itemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    :catch_0
    move-exception v1

    .line 335
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 358
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #itemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    :cond_2
    if-eqz v4, :cond_0

    .line 359
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;
    invoke-static {v6}, Lcom/android/contacts/calllog/CallLogFragment;->access$300(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    move-result-object v6

    invoke-virtual {v4}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getTagId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->setSelectedPosition(I)V

    .line 360
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #setter for: Lcom/android/contacts/calllog/CallLogFragment;->mOldItemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    invoke-static {v6, v4}, Lcom/android/contacts/calllog/CallLogFragment;->access$202(Lcom/android/contacts/calllog/CallLogFragment;Lcom/mediatek/contacts/calllog/CallLogListItemView;)Lcom/mediatek/contacts/calllog/CallLogListItemView;

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
