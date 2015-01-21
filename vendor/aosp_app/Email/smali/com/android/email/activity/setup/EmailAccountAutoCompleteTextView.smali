.class public Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "EmailAccountAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$1;,
        Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailAccountTokenizer;,
        Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailInputConnectionWrapper;,
        Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$MyWatcher;
    }
.end annotation


# instance fields
.field private mCommitWrapperState:Z

.field private mDeletingText:Z

.field private mIMEFullScreenMode:Z

.field mPopup:Landroid/widget/ListPopupWindow;

.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-boolean v0, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mIMEFullScreenMode:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mCommitWrapperState:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mDeletingText:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v0, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mIMEFullScreenMode:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mCommitWrapperState:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mDeletingText:Z

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 56
    new-instance v0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailAccountTokenizer;

    invoke-direct {v0}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailAccountTokenizer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 57
    new-instance v0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$MyWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$MyWatcher;-><init>(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$1;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-boolean v0, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mIMEFullScreenMode:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mCommitWrapperState:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mDeletingText:Z

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mDeletingText:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mIMEFullScreenMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mCommitWrapperState:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mCommitWrapperState:Z

    return p1
.end method

.method private replaceTextAndHighLight(Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "text"

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->clearComposingText()V

    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 67
    .local v3, end:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 68
    .local v2, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    .line 69
    .local v0, adapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v4

    .line 71
    .local v4, filter:Landroid/widget/Filter;
    const/4 v7, 0x0

    .line 72
    .local v7, start:I
    const/4 v5, 0x0

    .line 74
    .local v5, filteringString:Ljava/lang/String;
    instance-of v8, v4, Lcom/android/email/activity/setup/DropdownAddressFilter;

    if-eqz v8, :cond_1

    .line 75
    check-cast v4, Lcom/android/email/activity/setup/DropdownAddressFilter;

    .end local v4           #filter:Landroid/widget/Filter;
    invoke-virtual {v4}, Lcom/android/email/activity/setup/DropdownAccountsFilter;->getFilterString()Ljava/lang/String;

    move-result-object v5

    .line 76
    new-instance v8, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v8}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    invoke-virtual {v8, v2, v3}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 81
    :goto_0
    invoke-interface {v2, v7, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, currentToFilterString:Ljava/lang/String;
    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "replaceTextAndHighLight : filteringString : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " currentToFilterString : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " start : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " end : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {v5, v1}, Lcom/android/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 88
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 89
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 90
    .local v6, replaced:Landroid/text/Editable;
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-static {v6, v3, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 92
    .end local v6           #replaced:Landroid/text/Editable;
    :cond_0
    return-void

    .line 78
    .end local v1           #currentToFilterString:Ljava/lang/String;
    .restart local v4       #filter:Landroid/widget/Filter;
    :cond_1
    check-cast v4, Lcom/android/email/activity/setup/DropdownAccountsFilter;

    .end local v4           #filter:Landroid/widget/Filter;
    invoke-virtual {v4}, Lcom/android/email/activity/setup/DropdownAccountsFilter;->getFilterString()Ljava/lang/String;

    move-result-object v5

    .line 79
    new-instance v8, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailAccountTokenizer;

    invoke-direct {v8}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailAccountTokenizer;-><init>()V

    invoke-virtual {v8, v2, v3}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailAccountTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v7

    goto :goto_0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 165
    .local v0, target:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 166
    const/4 v1, 0x0

    .line 168
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailInputConnectionWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailInputConnectionWrapper;-><init>(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;Landroid/view/inputmethod/InputConnection;Z)V

    goto :goto_0
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onFilterComplete(I)V

    .line 108
    iget-boolean v0, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mDeletingText:Z

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->replacePartTextIfNeed()V

    .line 111
    :cond_0
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 120
    .local v0, end:I
    iget-object v3, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 122
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mCommitWrapperState:Z

    if-eqz v3, :cond_1

    .line 123
    :cond_0
    invoke-virtual {p0, p1, v2, v0, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;III)V

    .line 133
    .end local v0           #end:I
    .end local v2           #start:I
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 128
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 129
    .local v1, f:Landroid/widget/Filter;
    if-eqz v1, :cond_1

    .line 130
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public replacePartTextIfNeed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 142
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 143
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 144
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    .line 150
    .local v2, itemCount:I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mIMEFullScreenMode:Z

    if-nez v4, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    invoke-interface {v4, v6, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 152
    .local v1, currentText:Ljava/lang/CharSequence;
    invoke-virtual {v0, v6}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 153
    .local v3, replaceText:Ljava/lang/CharSequence;
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 157
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->replaceTextAndHighLight(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/widget/TextView;->clearComposingText()V

    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 101
    .local v0, spannable:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 102
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 138
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 139
    return-void
.end method
