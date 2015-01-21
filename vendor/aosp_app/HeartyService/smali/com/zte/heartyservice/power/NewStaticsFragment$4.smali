.class Lcom/zte/heartyservice/power/NewStaticsFragment$4;
.super Ljava/lang/Object;
.source "NewStaticsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/power/NewStaticsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/NewStaticsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$4;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 445
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$4;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I
    invoke-static {v2}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$000(Lcom/zte/heartyservice/power/NewStaticsFragment;)I

    move-result v2

    if-nez v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$4;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;
    invoke-static {v2}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$800(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/power/BatterySipper;

    .line 447
    .local v1, sipper:Lcom/zte/heartyservice/power/BatterySipper;
    iget-object v2, v1, Lcom/zte/heartyservice/power/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    iget-object v4, v1, Lcom/zte/heartyservice/power/BatterySipper;->defaultPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 449
    .local v0, detailsIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$4;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 453
    .end local v0           #detailsIntent:Landroid/content/Intent;
    .end local v1           #sipper:Lcom/zte/heartyservice/power/BatterySipper;
    :cond_0
    return-void
.end method
