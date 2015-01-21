.class Lcom/zte/heartyservice/interceptad/AdvertisementActivity$3;
.super Ljava/lang/Object;
.source "AdvertisementActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 104
    iput-object p1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$3;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$3;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mAdapter:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$400(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->getItem(I)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v0

    .line 108
    .local v0, app:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$3;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    const-class v3, Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "ad_detail"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$3;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method
