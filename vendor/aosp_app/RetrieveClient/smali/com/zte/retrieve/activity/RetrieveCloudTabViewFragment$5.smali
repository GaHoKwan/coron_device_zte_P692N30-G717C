.class Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$5;
.super Ljava/lang/Object;
.source "RetrieveCloudTabViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->installAccountDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Landroid/content/Context;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$5;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iput-object p2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$5;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$5;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->startLoginAccount(Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$5;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->dismiss()V

    .line 110
    return-void
.end method
