.class public Lcom/android/calendar/ChipsAddressTextView;
.super Lcom/android/ex/chips/RecipientEditTextView;
.source "ChipsAddressTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 4

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 26
    .local v1, s:Landroid/text/Editable;
    if-eqz v1, :cond_1

    .line 27
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 28
    .local v0, end:I
    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x2

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x2

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 33
    .end local v0           #end:I
    :goto_0
    return v2

    :cond_1
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v2

    goto :goto_0
.end method
