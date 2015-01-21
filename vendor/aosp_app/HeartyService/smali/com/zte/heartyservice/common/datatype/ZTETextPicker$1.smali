.class Lcom/zte/heartyservice/common/datatype/ZTETextPicker$1;
.super Ljava/lang/Object;
.source "ZTETextPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/datatype/ZTETextPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$1;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 371
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$1;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    #getter for: Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->access$000(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$1;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$1;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    #getter for: Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->access$000(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e03b5

    if-ne v1, v2, :cond_1

    .line 376
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$1;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    const/4 v2, 0x1

    #calls: Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->changeCurrentByOne(Z)V
    invoke-static {v1, v2}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->access$100(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;Z)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$1;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    #calls: Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->changeCurrentByOne(Z)V
    invoke-static {v1, v3}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->access$100(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;Z)V

    goto :goto_0
.end method
