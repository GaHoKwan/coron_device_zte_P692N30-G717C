.class Lcom/mediatek/connectivity/CdsUtilityActivity$1;
.super Ljava/lang/Object;
.source "CdsUtilityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsUtilityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsUtilityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .line 161
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    add-int/lit16 p3, p3, 0x1001

    .line 163
    const/16 v0, 0x1002

    if-ne p3, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$000(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, "ping -c 5 www.google.com"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #setter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdOption:I
    invoke-static {v0, p3}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$102(Lcom/mediatek/connectivity/CdsUtilityActivity;I)I

    .line 175
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$000(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 176
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$000(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$000(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 177
    return-void

    .line 165
    :cond_0
    const/16 v0, 0x1003

    if-ne p3, v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$000(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, "ping6 -c 5 www.google.com"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_1
    const/16 v0, 0x1005

    if-ne p3, v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$000(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    :cond_2
    const/16 v0, 0x1001

    if-ne p3, v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$000(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$000(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, "www.google.com"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
