.class public Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;
.super Landroid/preference/Preference;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/widget/RadioButton;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Landroid/content/Context;

    .line 56
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setWidgetLayoutResource(I)V

    .line 57
    const-string v0, "2 constructor"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attrs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    sget-object v0, Lapr;->RadioGroupPreference:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Ljava/lang/String;

    .line 44
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->b:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->c:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    const-string v1, "mKey is null"

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Ljava/lang/String;)V

    .line 49
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "groupKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&entryValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 130
    if-nez v0, :cond_1

    .line 131
    const-string v0, "!!!!!!!!!!!!! Can NOT find any group preference"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Ljava/lang/String;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a()Ljava/util/List;

    move-result-object v3

    .line 135
    if-eqz v3, :cond_3

    move v1, v2

    .line 136
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 137
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 138
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 136
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 142
    :cond_3
    const-string v0, "!!!!!!!!!!!!! Can NOT find any group preference"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Ljava/lang/String;)V

    .line 91
    iput-boolean p1, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Z

    .line 92
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 95
    :cond_0
    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setKey(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->persistString(Ljava/lang/String;)Z

    .line 98
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setKey(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->notifyChanged()V

    .line 100
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a()V

    .line 102
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToActivity()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 167
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    if-eqz v1, :cond_0

    .line 172
    check-cast v0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;

    .line 173
    invoke-virtual {v0, p0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;)V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 68
    const/high16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 69
    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Landroid/widget/RadioButton;

    .line 70
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "onBindView radioButton"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Ljava/lang/String;)V

    .line 72
    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Z

    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 74
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 79
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 86
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setKey(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restorePersistedValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getPersistedString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a(Z)V

    .line 161
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/RadioGroupPreference;->setKey(Ljava/lang/String;)V

    .line 162
    return-void
.end method
