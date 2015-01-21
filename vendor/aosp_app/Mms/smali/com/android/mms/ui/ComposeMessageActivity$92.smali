.class Lcom/android/mms/ui/ComposeMessageActivity$92;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initShareAndEmoticonRessource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 10505
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$92;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10508
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$92;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowKeyBoardFromShare:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10509
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$92;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showSharePanelOrEmoticonPanel(ZZZ)V

    .line 10514
    :goto_0
    return-void

    .line 10511
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$92;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->showSharePanelOrEmoticonPanel(ZZZ)V

    .line 10512
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$92;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method
