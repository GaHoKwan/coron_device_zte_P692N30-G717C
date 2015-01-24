.class public Lcn/edu/ncwu/www/preferences/MChecKboxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "MChecKboxPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private resloverKey:Ljava/lang/String;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/edu/ncwu/www/preferences/MChecKboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object p1, p0, Lcn/edu/ncwu/www/preferences/MChecKboxPreference;->mContext:Landroid/content/Context;

    .line 29
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcn/edu/ncwu/www/preferences/MChecKboxPreference;->setLayoutResource(I)V

    .line 31
    sget-object v1, Lcn/edu/ncwu/www/R$styleable;->MCheckBoxPreference:[I

    .line 30
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/edu/ncwu/www/preferences/MChecKboxPreference;->resloverKey:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcn/edu/ncwu/www/preferences/MChecKboxPreference;->resolver:Landroid/content/ContentResolver;

    .line 37
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcn/edu/ncwu/www/preferences/MChecKboxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcn/edu/ncwu/www/preferences/MChecKboxPreference;->resolver:Landroid/content/ContentResolver;

    .line 43
    iget-object v1, p0, Lcn/edu/ncwu/www/preferences/MChecKboxPreference;->resloverKey:Ljava/lang/String;

    const/4 v2, 0x0

    .line 42
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 48
    :goto_0
    const-string v0, "clik"

    const-string v1, "text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 51
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcn/edu/ncwu/www/preferences/MChecKboxPreference;->resolver:Landroid/content/ContentResolver;

    .line 46
    iget-object v1, p0, Lcn/edu/ncwu/www/preferences/MChecKboxPreference;->resloverKey:Ljava/lang/String;

    const/4 v2, 0x1

    .line 45
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
