.class Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$8;
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
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$8;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    iput-object p2, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$8;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$8;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dismiss()V

    .line 519
    return-void
.end method
