.class Lcom/hf/share/ShareManager$2;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/share/ShareManager;->showAnniversaryShareDialog(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/share/ShareManager;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$list:Ljava/util/List;

.field private final synthetic val$shareDialog:Lcom/hf/UI/HFDialog;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/hf/share/ShareManager;Lcom/hf/UI/HFDialog;Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/share/ShareManager$2;->this$0:Lcom/hf/share/ShareManager;

    iput-object p2, p0, Lcom/hf/share/ShareManager$2;->val$shareDialog:Lcom/hf/UI/HFDialog;

    iput-object p3, p0, Lcom/hf/share/ShareManager$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/hf/share/ShareManager$2;->val$list:Ljava/util/List;

    iput-object p5, p0, Lcom/hf/share/ShareManager$2;->val$view:Landroid/view/View;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "which"
    .parameter "arg3"
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
    .line 298
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/hf/share/ShareManager$2;->val$shareDialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->cancel()V

    .line 299
    iget-object v1, p0, Lcom/hf/share/ShareManager$2;->this$0:Lcom/hf/share/ShareManager;

    iget-object v2, p0, Lcom/hf/share/ShareManager$2;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/hf/share/ShareManager$2;->val$list:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/share/Share;

    iget-object v3, p0, Lcom/hf/share/ShareManager$2;->val$view:Landroid/view/View;

    #calls: Lcom/hf/share/ShareManager;->shareAnniversary(Landroid/content/Context;Lcom/hf/share/Share;Landroid/view/View;)V
    invoke-static {v1, v2, v0, v3}, Lcom/hf/share/ShareManager;->access$1(Lcom/hf/share/ShareManager;Landroid/content/Context;Lcom/hf/share/Share;Landroid/view/View;)V

    .line 300
    return-void
.end method
