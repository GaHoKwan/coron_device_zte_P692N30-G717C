.class Lcom/android/mms/ui/SmsTemplateEditActivity$2;
.super Ljava/lang/Object;
.source "SmsTemplateEditActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsTemplateEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsTemplateEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$2;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$2;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 150
    .local v0, inputM:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$2;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$2;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$2;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$2;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$2;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    #getter for: Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTextIds:Ljava/util/List;
    invoke-static {v1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$200(Lcom/android/mms/ui/SmsTemplateEditActivity;)Ljava/util/List;

    move-result-object v1

    long-to-int v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    #setter for: Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickTextId:Ljava/lang/Integer;
    invoke-static {v2, v1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$102(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 154
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$2;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$2;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    #getter for: Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTexts:Ljava/util/List;
    invoke-static {v1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$400(Lcom/android/mms/ui/SmsTemplateEditActivity;)Ljava/util/List;

    move-result-object v1

    long-to-int v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickText:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$302(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$2;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->showEditDialog()V
    invoke-static {v1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$500(Lcom/android/mms/ui/SmsTemplateEditActivity;)V

    .line 156
    return-void
.end method
