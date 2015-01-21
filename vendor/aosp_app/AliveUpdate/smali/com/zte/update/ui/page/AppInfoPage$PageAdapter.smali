.class Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppInfoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/ui/page/AppInfoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/update/ui/page/AppInfoPage;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/page/AppInfoPage;Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;->this$0:Lcom/zte/update/ui/page/AppInfoPage;

    .line 188
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 189
    iput-object p4, p0, Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;->mList:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mlist ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method constructor <init>(Lcom/zte/update/ui/page/AppInfoPage;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const v0, 0x7f060001

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;-><init>(Lcom/zte/update/ui/page/AppInfoPage;Landroid/content/Context;ILjava/util/List;)V

    .line 196
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 200
    iget-object v3, p0, Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 201
    .local v2, key:Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView key ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v3, p0, Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;->this$0:Lcom/zte/update/ui/page/AppInfoPage;

    iget-object v3, v3, Lcom/zte/update/ui/page/AppInfoPage;->itemMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/update/ui/page/AppInfoItem;

    .line 203
    .local v0, item:Lcom/zte/update/ui/page/AppInfoItem;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 209
    .end local v0           #item:Lcom/zte/update/ui/page/AppInfoItem;
    .local v1, item:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 207
    .end local v1           #item:Ljava/lang/Object;
    .restart local v0       #item:Lcom/zte/update/ui/page/AppInfoItem;
    :cond_0
    new-instance v0, Lcom/zte/update/ui/page/AppInfoItem;

    .end local v0           #item:Lcom/zte/update/ui/page/AppInfoItem;
    invoke-virtual {p0}, Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/zte/update/ui/page/AppInfoItem;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 208
    .restart local v0       #item:Lcom/zte/update/ui/page/AppInfoItem;
    iget-object v3, p0, Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;->this$0:Lcom/zte/update/ui/page/AppInfoPage;

    iget-object v3, v3, Lcom/zte/update/ui/page/AppInfoPage;->itemMap:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 209
    .restart local v1       #item:Ljava/lang/Object;
    goto :goto_0
.end method
