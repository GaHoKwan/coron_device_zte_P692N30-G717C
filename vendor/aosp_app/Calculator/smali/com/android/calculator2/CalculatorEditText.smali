.class public Lcom/android/calculator2/CalculatorEditText;
.super Landroid/widget/EditText;
.source "CalculatorEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorEditText$1;,
        Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;,
        Lcom/android/calculator2/CalculatorEditText$MenuHandler;
    }
.end annotation


# static fields
.field private static final COPY:I = 0x1

.field private static final CUT:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "Calculator2"

.field private static final PASTE:I = 0x2


# instance fields
.field private mMenuItemsStrings:[Ljava/lang/String;

.field private sOperators:[Ljava/lang/String;

.field private sReplacementTable:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;-><init>(Lcom/android/calculator2/CalculatorEditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 54
    const v0, 0x80001

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/android/calculator2/CalculatorEditText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorEditText;->copyContent()V

    return-void
.end method

.method private canPaste(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "paste"

    .prologue
    .line 218
    const/4 v0, 0x1

    .line 220
    .local v0, canPaste:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return v0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v2, "Calculator2"

    const-string v3, "Error turning string to integer. Ignoring paste."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 180
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 181
    .local v1, text:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 182
    .local v2, textLength:I
    invoke-virtual {p0, v5, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 185
    .local v0, clipboard:Landroid/content/ClipboardManager;
    const/4 v3, 0x0

    invoke-static {v3, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09002a

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 187
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 188
    return-void
.end method

.method private cutContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 192
    .local v0, text:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 193
    .local v1, textLength:I
    invoke-virtual {p0, v3, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 194
    const/4 v2, 0x0

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/calculator2/CalculatorEditText;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 195
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 196
    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 197
    return-void
.end method

.method private getPrimaryClip()Landroid/content/ClipData;
    .locals 3

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 202
    .local v0, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized initializeReplacementTable()V
    .locals 9

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/calculator2/CalculatorEditText;->sReplacementTable:Lcom/google/common/collect/ImmutableMap;

    if-nez v8, :cond_1

    .line 115
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 116
    .local v1, builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 117
    .local v7, res:Landroid/content/res/Resources;
    const v8, 0x7f050003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calculator2/CalculatorEditText;->sOperators:[Ljava/lang/String;

    .line 118
    const v8, 0x7f050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, descs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 120
    .local v6, pos:I
    iget-object v0, p0, Lcom/android/calculator2/CalculatorEditText;->sOperators:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v4, v0, v3

    .line 121
    .local v4, key:Ljava/lang/String;
    aget-object v8, v2, v6

    invoke-virtual {v1, v4, v8}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 122
    add-int/lit8 v6, v6, 0x1

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    .end local v4           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calculator2/CalculatorEditText;->sReplacementTable:Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #descs:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #pos:I
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_1
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private mathParse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "plainText"

    .prologue
    .line 100
    move-object v4, p1

    .line 101
    .local v4, parsedText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorEditText;->initializeReplacementTable()V

    .line 104
    iget-object v0, p0, Lcom/android/calculator2/CalculatorEditText;->sOperators:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 105
    .local v3, operator:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/calculator2/CalculatorEditText;->sReplacementTable:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    iget-object v5, p0, Lcom/android/calculator2/CalculatorEditText;->sReplacementTable:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #operator:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private pasteContent()V
    .locals 5

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorEditText;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 207
    .local v0, clip:Landroid/content/ClipData;
    if-eqz v0, :cond_1

    .line 208
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 210
    .local v2, paste:Ljava/lang/CharSequence;
    invoke-direct {p0, v2}, Lcom/android/calculator2/CalculatorEditText;->canPaste(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-interface {v3, v4, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 208
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1           #i:I
    .end local v2           #paste:Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 3
    .parameter "clip"

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 176
    .local v0, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 177
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    new-instance v0, Lcom/android/calculator2/CalculatorEditText$MenuHandler;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/android/calculator2/CalculatorEditText$MenuHandler;-><init>(Lcom/android/calculator2/CalculatorEditText;Lcom/android/calculator2/CalculatorEditText$1;)V

    .line 152
    .local v0, handler:Lcom/android/calculator2/CalculatorEditText$MenuHandler;
    iget-object v4, p0, Lcom/android/calculator2/CalculatorEditText;->mMenuItemsStrings:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 154
    .local v3, resources:Landroid/content/res/Resources;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/calculator2/CalculatorEditText;->mMenuItemsStrings:[Ljava/lang/String;

    .line 155
    iget-object v4, p0, Lcom/android/calculator2/CalculatorEditText;->mMenuItemsStrings:[Ljava/lang/String;

    const v5, 0x1040003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 156
    iget-object v4, p0, Lcom/android/calculator2/CalculatorEditText;->mMenuItemsStrings:[Ljava/lang/String;

    const v5, 0x1040001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 157
    iget-object v4, p0, Lcom/android/calculator2/CalculatorEditText;->mMenuItemsStrings:[Ljava/lang/String;

    const v5, 0x104000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 159
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/calculator2/CalculatorEditText;->mMenuItemsStrings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 160
    iget-object v4, p0, Lcom/android/calculator2/CalculatorEditText;->mMenuItemsStrings:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {p1, v6, v1, v1, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 163
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorEditText;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    .line 167
    .local v2, primaryClip:Landroid/content/ClipData;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/calculator2/CalculatorEditText;->canPaste(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 169
    :cond_3
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 171
    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 79
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calculator2/CalculatorEditText;->mathParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, mathText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 83
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 91
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorEditText;->mathParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 97
    return-void
.end method

.method public onTextContextMenuItem(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "title"

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, handled:Z
    iget-object v1, p0, Lcom/android/calculator2/CalculatorEditText;->mMenuItemsStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorEditText;->cutContent()V

    .line 138
    const/4 v0, 0x1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/calculator2/CalculatorEditText;->mMenuItemsStrings:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorEditText;->copyContent()V

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/android/calculator2/CalculatorEditText;->mMenuItemsStrings:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorEditText;->pasteContent()V

    .line 144
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 67
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    .line 73
    const/4 v0, 0x1

    return v0
.end method
