.class Lcom/android/email/activity/ActionBarController$7;
.super Ljava/lang/Object;
.source "ActionBarController.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ActionBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOldText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/ActionBarController;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ActionBarController;)V
    .locals 1
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController$7;->this$0:Lcom/android/email/activity/ActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController$7;->mOldText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .parameter "newText"

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$7;->this$0:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$7;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mActionBarSelectedTab:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/activity/ActionBarController;->access$300(Lcom/android/email/activity/ActionBarController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$7;->mOldText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$7;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mTabChanged:Z
    invoke-static {v0}, Lcom/android/email/activity/ActionBarController;->access$400(Lcom/android/email/activity/ActionBarController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$7;->this$0:Lcom/android/email/activity/ActionBarController;

    iget-object v0, v0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$7;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mActionBarSelectedTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/ActionBarController;->access$300(Lcom/android/email/activity/ActionBarController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/email/activity/ActionBarController$Callback;->onLocalSearchSubmit(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController$7;->mOldText:Ljava/lang/String;

    .line 1134
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .parameter "query"

    .prologue
    const/4 v3, 0x0

    .line 1141
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$7;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/email/activity/ActionBarController;->access$500(Lcom/android/email/activity/ActionBarController;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$7;->this$0:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v1}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1142
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$7;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/ActionBarController;->access$800(Lcom/android/email/activity/ActionBarController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1144
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$7;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/email/activity/ActionBarController;->access$500(Lcom/android/email/activity/ActionBarController;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1147
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$7;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/email/activity/ActionBarController;->access$500(Lcom/android/email/activity/ActionBarController;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 1150
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v3
.end method
