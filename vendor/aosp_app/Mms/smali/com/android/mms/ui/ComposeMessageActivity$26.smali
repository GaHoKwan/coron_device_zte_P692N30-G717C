.class Lcom/android/mms/ui/ComposeMessageActivity$26;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor(Landroid/os/Bundle;)V
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
    .line 3282
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3285
    if-nez p2, :cond_2

    move-object v1, p1

    .line 3286
    check-cast v1, Lcom/android/mms/ui/RecipientsEditor;

    .line 3288
    .local v1, editor:Lcom/android/mms/ui/RecipientsEditor;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v2, :cond_0

    .line 3290
    .local v2, isPortrait:Z
    :goto_0
    const/4 v3, 0x0

    .line 3291
    .local v3, updateLimit:I
    if-eqz v2, :cond_1

    .line 3292
    const/16 v3, 0xa

    .line 3297
    :goto_1
    invoke-virtual {v1, v4, v3}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInputWithLimit(ZI)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3298
    .local v0, contacts:Lcom/android/mms/data/ContactList;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v4, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5500(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 3311
    .end local v0           #contacts:Lcom/android/mms/data/ContactList;
    .end local v1           #editor:Lcom/android/mms/ui/RecipientsEditor;
    .end local v2           #isPortrait:Z
    .end local v3           #updateLimit:I
    :goto_2
    return-void

    .restart local v1       #editor:Lcom/android/mms/ui/RecipientsEditor;
    :cond_0
    move v2, v4

    .line 3288
    goto :goto_0

    .line 3294
    .restart local v2       #isPortrait:Z
    .restart local v3       #updateLimit:I
    :cond_1
    const/16 v3, 0x14

    goto :goto_1

    .line 3300
    .end local v1           #editor:Lcom/android/mms/ui/RecipientsEditor;
    .end local v2           #isPortrait:Z
    .end local v3           #updateLimit:I
    :cond_2
    const-string v5, "Mms/ipmsg/compose"

    const-string v6, "onFocusChange(): mRecipientsEditor get focus."

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3301
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showSharePanel(Z)V
    invoke-static {v5, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8500(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 3302
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showEmoticonPanel(Z)V
    invoke-static {v5, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8600(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 3303
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3304
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCurrentMaxHeight:I
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8800(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x41

    div-int/lit16 v5, v5, 0x320

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_2

    .line 3307
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCurrentMaxHeight:I
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8800(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x8c

    div-int/lit16 v5, v5, 0x320

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_2
.end method
