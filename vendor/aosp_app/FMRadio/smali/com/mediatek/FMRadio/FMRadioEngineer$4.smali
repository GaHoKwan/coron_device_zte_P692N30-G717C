.class Lcom/mediatek/FMRadio/FMRadioEngineer$4;
.super Ljava/lang/Object;
.source "FMRadioEngineer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioEngineer;->initViewAndAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 650
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v2, v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 651
    .local v1, inputType:I
    if-nez v1, :cond_0

    .line 653
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v2, v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 656
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 657
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v2, v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 660
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
