.class public Lcom/sohu/inputmethod/settings/ui/PixelPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private a:[Ljava/lang/CharSequence;

.field private b:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    sget-object v0, Lapr;->PixelPreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:[Ljava/lang/CharSequence;

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->b:[Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/PixelPreference;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/PixelPreference;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/PixelPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/ui/PixelPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->b:[Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 176
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->b:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->b:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 178
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    :goto_1
    return v0

    .line 177
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:Ljava/lang/String;

    .line 135
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->persistString(Ljava/lang/String;)Z

    .line 136
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 226
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->b:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->b:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a(Ljava/lang/String;)V

    .line 232
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 194
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->b:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:I

    .line 200
    new-instance v0, Lano;

    invoke-direct {v0, p0, v3}, Lano;-><init>(Lcom/sohu/inputmethod/settings/ui/PixelPreference;Lann;)V

    iget v1, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:I

    new-instance v2, Lann;

    invoke-direct {v2, p0}, Lann;-><init>(Lcom/sohu/inputmethod/settings/ui/PixelPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 259
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sohu/inputmethod/settings/ui/PixelPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_1
    check-cast p1, Lcom/sohu/inputmethod/settings/ui/PixelPreference$SavedState;

    .line 266
    invoke-virtual {p1}, Lcom/sohu/inputmethod/settings/ui/PixelPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 267
    iget-object v0, p1, Lcom/sohu/inputmethod/settings/ui/PixelPreference$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    :goto_0
    return-object v0

    .line 252
    :cond_0
    new-instance v1, Lcom/sohu/inputmethod/settings/ui/PixelPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/sohu/inputmethod/settings/ui/PixelPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 253
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sohu/inputmethod/settings/ui/PixelPreference$SavedState;->a:Ljava/lang/String;

    move-object v0, v1

    .line 254
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 241
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a(Ljava/lang/String;)V

    .line 242
    return-void

    .line 241
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method
