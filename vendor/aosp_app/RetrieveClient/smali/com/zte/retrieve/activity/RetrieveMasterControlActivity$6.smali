.class Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$6;
.super Ljava/lang/Object;
.source "RetrieveMasterControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->showUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$6;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    iput-object p2, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$6;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$6;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->dismiss()V

    .line 485
    return-void
.end method
