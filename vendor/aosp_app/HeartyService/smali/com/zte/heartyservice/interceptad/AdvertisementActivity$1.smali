.class Lcom/zte/heartyservice/interceptad/AdvertisementActivity$1;
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
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 69
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mList:Ljava/util/List;
    invoke-static {v2}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$000(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    .line 70
    .local v0, appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    iget-object v3, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->uninstallPkg(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$100(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0           #appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    :cond_0
    return-void
.end method
