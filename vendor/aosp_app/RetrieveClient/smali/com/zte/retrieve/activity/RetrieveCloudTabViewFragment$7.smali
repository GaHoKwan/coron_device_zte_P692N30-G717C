.class Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$7;
.super Ljava/lang/Object;
.source "RetrieveCloudTabViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->activeButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogInput;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Lcom/zte/retrieve/utils/dialogcustom/DialogInput;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$7;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iput-object p2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$7;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogInput;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$7;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogInput;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogInput;->dismiss()V

    .line 175
    return-void
.end method
