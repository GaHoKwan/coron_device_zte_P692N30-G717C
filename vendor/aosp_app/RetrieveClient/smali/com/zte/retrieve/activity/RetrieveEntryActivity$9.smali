.class Lcom/zte/retrieve/activity/RetrieveEntryActivity$9;
.super Ljava/lang/Object;
.source "RetrieveEntryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveEntryActivity;->showLocalOpenedDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveEntryActivity;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity$9;->this$0:Lcom/zte/retrieve/activity/RetrieveEntryActivity;

    iput-object p2, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity$9;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity$9;->this$0:Lcom/zte/retrieve/activity/RetrieveEntryActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->access$1(Lcom/zte/retrieve/activity/RetrieveEntryActivity;)Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->jumpToRetrieveMasterView()V

    .line 394
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity$9;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->dismiss()V

    .line 395
    return-void
.end method
