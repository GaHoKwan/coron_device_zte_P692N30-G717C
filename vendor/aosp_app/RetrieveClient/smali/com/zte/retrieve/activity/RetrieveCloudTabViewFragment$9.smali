.class Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$9;
.super Ljava/lang/Object;
.source "RetrieveCloudTabViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->showLoginDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$9;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iput-object p2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$9;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$9;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->dismiss()V

    .line 420
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$9;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$2(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->startLoginAccount()V

    .line 421
    return-void
.end method
