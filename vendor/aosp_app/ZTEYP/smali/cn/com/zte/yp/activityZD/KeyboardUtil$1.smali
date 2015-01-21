.class Lcn/com/zte/yp/activityZD/KeyboardUtil$1;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/yp/activityZD/KeyboardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;


# direct methods
.method constructor <init>(Lcn/com/zte/yp/activityZD/KeyboardUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 4
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 59
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    #getter for: Lcn/com/zte/yp/activityZD/KeyboardUtil;->ed:Landroid/widget/EditText;
    invoke-static {v2}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->access$000(Lcn/com/zte/yp/activityZD/KeyboardUtil;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 60
    .local v0, editable:Landroid/text/Editable;
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    #getter for: Lcn/com/zte/yp/activityZD/KeyboardUtil;->ed:Landroid/widget/EditText;
    invoke-static {v2}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->access$000(Lcn/com/zte/yp/activityZD/KeyboardUtil;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 61
    .local v1, start:I
    const/4 v2, -0x3

    if-ne p1, v2, :cond_1

    .line 62
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    invoke-virtual {v2}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->hideKeyboard()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v2, -0x5

    if-ne p1, v2, :cond_2

    .line 64
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 65
    if-lez v1, :cond_0

    .line 66
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 69
    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 70
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    #calls: Lcn/com/zte/yp/activityZD/KeyboardUtil;->changeKey()V
    invoke-static {v2}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->access$100(Lcn/com/zte/yp/activityZD/KeyboardUtil;)V

    .line 71
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    #getter for: Lcn/com/zte/yp/activityZD/KeyboardUtil;->keyboardView:Landroid/inputmethodservice/KeyboardView;
    invoke-static {v2}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->access$300(Lcn/com/zte/yp/activityZD/KeyboardUtil;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v2

    iget-object v3, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    #getter for: Lcn/com/zte/yp/activityZD/KeyboardUtil;->k1:Landroid/inputmethodservice/Keyboard;
    invoke-static {v3}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->access$200(Lcn/com/zte/yp/activityZD/KeyboardUtil;)Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 73
    :cond_3
    const/4 v2, -0x2

    if-ne p1, v2, :cond_4

    .line 74
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    iget-boolean v2, v2, Lcn/com/zte/yp/activityZD/KeyboardUtil;->isnun:Z

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcn/com/zte/yp/activityZD/KeyboardUtil;->isnun:Z

    .line 76
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    #getter for: Lcn/com/zte/yp/activityZD/KeyboardUtil;->keyboardView:Landroid/inputmethodservice/KeyboardView;
    invoke-static {v2}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->access$300(Lcn/com/zte/yp/activityZD/KeyboardUtil;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v2

    iget-object v3, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    #getter for: Lcn/com/zte/yp/activityZD/KeyboardUtil;->k1:Landroid/inputmethodservice/Keyboard;
    invoke-static {v3}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->access$200(Lcn/com/zte/yp/activityZD/KeyboardUtil;)Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 82
    :cond_4
    const v2, 0xe04b

    if-ne p1, v2, :cond_5

    .line 84
    if-lez v1, :cond_0

    .line 85
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    #getter for: Lcn/com/zte/yp/activityZD/KeyboardUtil;->ed:Landroid/widget/EditText;
    invoke-static {v2}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->access$000(Lcn/com/zte/yp/activityZD/KeyboardUtil;)Landroid/widget/EditText;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 87
    :cond_5
    const v2, 0xe04d

    if-ne p1, v2, :cond_6

    .line 89
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    #getter for: Lcn/com/zte/yp/activityZD/KeyboardUtil;->ed:Landroid/widget/EditText;
    invoke-static {v2}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->access$000(Lcn/com/zte/yp/activityZD/KeyboardUtil;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;->this$0:Lcn/com/zte/yp/activityZD/KeyboardUtil;

    #getter for: Lcn/com/zte/yp/activityZD/KeyboardUtil;->ed:Landroid/widget/EditText;
    invoke-static {v2}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->access$000(Lcn/com/zte/yp/activityZD/KeyboardUtil;)Landroid/widget/EditText;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 93
    :cond_6
    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0
.end method

.method public onPress(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 55
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 52
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 49
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
