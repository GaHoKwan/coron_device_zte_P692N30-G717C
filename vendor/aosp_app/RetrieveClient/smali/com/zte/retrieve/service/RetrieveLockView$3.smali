.class Lcom/zte/retrieve/service/RetrieveLockView$3;
.super Ljava/lang/Object;
.source "RetrieveLockView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/service/RetrieveLockView;-><init>(Landroid/content/Context;Lcom/zte/retrieve/service/instruct/InstructionOperator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/RetrieveLockView;

.field private final synthetic val$btnOk:Landroid/widget/Button;

.field private final synthetic val$etFuncPassword:Landroid/widget/EditText;

.field private final synthetic val$tvError:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/RetrieveLockView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    iput-object p2, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->val$btnOk:Landroid/widget/Button;

    iput-object p3, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->val$tvError:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->val$etFuncPassword:Landroid/widget/EditText;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->val$tvError:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->val$etFuncPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->val$btnOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->val$btnOk:Landroid/widget/Button;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 123
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->val$btnOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/RetrieveLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 115
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->val$btnOk:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->val$btnOk:Landroid/widget/Button;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 111
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->val$btnOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$3;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/RetrieveLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 112
    return-void
.end method
