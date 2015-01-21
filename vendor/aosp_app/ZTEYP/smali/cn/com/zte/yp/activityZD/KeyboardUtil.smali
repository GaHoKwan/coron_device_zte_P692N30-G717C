.class public Lcn/com/zte/yp/activityZD/KeyboardUtil;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"


# instance fields
.field private ed:Landroid/widget/EditText;

.field public isnun:Z

.field public isupper:Z

.field private k1:Landroid/inputmethodservice/Keyboard;

.field private keyboardView:Landroid/inputmethodservice/KeyboardView;

.field private listener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 3
    .parameter "act"
    .parameter "ctx"
    .parameter "edit"

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->isnun:Z

    .line 21
    iput-boolean v2, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->isupper:Z

    .line 35
    new-instance v0, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;

    invoke-direct {v0, p0}, Lcn/com/zte/yp/activityZD/KeyboardUtil$1;-><init>(Lcn/com/zte/yp/activityZD/KeyboardUtil;)V

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->listener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 26
    iput-object p3, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->ed:Landroid/widget/EditText;

    .line 27
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x7f040001

    invoke-direct {v0, p2, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->k1:Landroid/inputmethodservice/Keyboard;

    .line 28
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 29
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->k1:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 30
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    .line 31
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 32
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->listener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcn/com/zte/yp/activityZD/KeyboardUtil;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->ed:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/zte/yp/activityZD/KeyboardUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->changeKey()V

    return-void
.end method

.method static synthetic access$200(Lcn/com/zte/yp/activityZD/KeyboardUtil;)Landroid/inputmethodservice/Keyboard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->k1:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/zte/yp/activityZD/KeyboardUtil;)Landroid/inputmethodservice/KeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method private changeKey()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->k1:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, keylist:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    iget-boolean v3, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->isupper:Z

    if-eqz v3, :cond_1

    .line 104
    iput-boolean v5, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->isupper:Z

    .line 105
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    .line 106
    .local v1, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->isword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 108
    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    add-int/lit8 v4, v4, 0x20

    aput v4, v3, v5

    goto :goto_0

    .line 112
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->isupper:Z

    .line 113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    .line 114
    .restart local v1       #key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->isword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 116
    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    add-int/lit8 v4, v4, -0x20

    aput v4, v3, v5

    goto :goto_1

    .line 120
    .end local v1           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_3
    return-void
.end method

.method private isword(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 137
    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    .line 138
    .local v0, wordstr:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 139
    const/4 v1, 0x1

    .line 141
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    .line 131
    .local v0, visibility:I
    if-nez v0, :cond_0

    .line 132
    iget-object v1, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 134
    :cond_0
    return-void
.end method

.method public showKeyboard()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    .line 124
    .local v0, visibility:I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 125
    :cond_0
    iget-object v1, p0, Lcn/com/zte/yp/activityZD/KeyboardUtil;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 127
    :cond_1
    return-void
.end method
