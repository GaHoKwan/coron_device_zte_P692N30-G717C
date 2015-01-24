.class public Lcn/edu/ncwu/www/preferences/ButtonPreferences;
.super Landroid/preference/Preference;
.source "ButtonPreferences.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconPreferenceScreen"


# instance fields
.field a:Landroid/content/res/TypedArray;

.field private action:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field clickListener:Landroid/view/View$OnClickListener;

.field private connection:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field linearLayout:Landroid/widget/LinearLayout;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private qqQun:Ljava/lang/String;

.field private toastText:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/edu/ncwu/www/preferences/ButtonPreferences;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->clickListener:Landroid/view/View$OnClickListener;

    .line 26
    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->action:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->uri:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->category:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->connection:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->a:Landroid/content/res/TypedArray;

    .line 43
    iput-object p1, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->context:Landroid/content/Context;

    .line 44
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->setLayoutResource(I)V

    .line 46
    sget-object v0, Lcn/edu/ncwu/www/R$styleable;->IconPreferenceScreen:[I

    .line 45
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->a:Landroid/content/res/TypedArray;

    .line 47
    iget-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 48
    iget-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->a:Landroid/content/res/TypedArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->action:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->a:Landroid/content/res/TypedArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->uri:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->a:Landroid/content/res/TypedArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->connection:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->a:Landroid/content/res/TypedArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->category:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->a:Landroid/content/res/TypedArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->toastText:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->a:Landroid/content/res/TypedArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->qqQun:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const-string v1, "IconPreferenceScreen"

    const-string v2, "[onBindView](0)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const v1, 0x7f090001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->linearLayout:Landroid/widget/LinearLayout;

    .line 62
    const v1, 0x7f090002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 64
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    const-string v1, "IconPreferenceScreen"

    const-string v2, "[onBindView](1)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    const-string v1, "IconPreferenceScreen"

    const-string v2, "[onBindView](2)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public onClick()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 75
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 76
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->uri:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->action:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->category:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->action:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->category:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 83
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "qq"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v2, qqintent:Landroid/content/Intent;
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->uri:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->action:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->category:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 104
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    :cond_1
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->toastText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->context:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 111
    .local v0, cm:Landroid/content/ClipboardManager;
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->qqQun:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->context:Landroid/content/Context;

    iget-object v4, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->toastText:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 116
    .end local v0           #cm:Landroid/content/ClipboardManager;
    .end local v2           #qqintent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 84
    :cond_3
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->connection:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->action:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->action:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->connection:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->toastText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    iget-object v3, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->context:Landroid/content/Context;

    iget-object v4, p0, Lcn/edu/ncwu/www/preferences/ButtonPreferences;->toastText:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
