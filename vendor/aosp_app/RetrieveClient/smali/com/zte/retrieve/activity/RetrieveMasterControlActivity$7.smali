.class Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$7;
.super Ljava/lang/Object;
.source "RetrieveMasterControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->showUpdatePromptDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$7;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    iput-object p2, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$7;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$7;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$0(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->updateNow()V

    .line 510
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$7;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dismiss()V

    .line 511
    return-void
.end method
