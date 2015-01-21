.class Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;
.super Ljava/lang/Object;
.source "AdvertisementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/interceptad/AdvertisementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 79
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->allow_all:Z
    invoke-static {v2}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$200(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 80
    sget-boolean v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->showNewInterceptAdView:Z

    if-ne v2, v4, :cond_1

    .line 81
    invoke-static {v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setInterceptadOpen(Z)Z

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    #setter for: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->allow_all:Z
    invoke-static {v2, v5}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$202(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;Z)Z

    .line 88
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$300(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0a04e4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mAdapter:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$400(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->notifyDataSetChanged()V

    .line 101
    return-void

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mList:Ljava/util/List;
    invoke-static {v2}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$000(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    .line 84
    .local v0, appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->setBlock(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 90
    .end local v0           #appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    sget-boolean v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->showNewInterceptAdView:Z

    if-ne v2, v4, :cond_4

    .line 91
    invoke-static {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setInterceptadOpen(Z)Z

    .line 97
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    #setter for: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->allow_all:Z
    invoke-static {v2, v4}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$202(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;Z)Z

    .line 98
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$300(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0a04e5

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 93
    :cond_4
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mList:Ljava/util/List;
    invoke-static {v2}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$000(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    .line 94
    .restart local v0       #appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->setBlock(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_2
.end method
