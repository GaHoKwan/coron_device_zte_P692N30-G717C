.class Lcom/android/email/activity/MessageCompose$19;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->updateChangeAccountSpitter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 3733
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$19;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3735
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$19;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccountsSelectorAdapter:Lcom/android/email/activity/SwitchAccountSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/SwitchAccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3736
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$19;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccountDropdown:Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;->show()V

    .line 3740
    :goto_0
    return-void

    .line 3738
    :cond_0
    const-string v0, "MessageCompose"

    const-string v1, "mAccountsSelectorAdapter.getCount = 0"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
