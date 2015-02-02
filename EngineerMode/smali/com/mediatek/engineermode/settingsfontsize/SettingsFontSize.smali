.class public Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;
.super Landroid/app/Activity;
.source "SettingsFontSize.java"


# static fields
.field private static final EXTRALARGE:Ljava/lang/String; = "settings_fontsize_extralarge"

.field private static final LARGE:Ljava/lang/String; = "settings_fontsize_large"

.field private static final SMALL:Ljava/lang/String; = "settings_fontsize_small"

.field private static final TAG:Ljava/lang/String; = "EM_SetFontSize"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mEditExtraLarge:Landroid/widget/EditText;

.field private mEditLarge:Landroid/widget/EditText;

.field private mEditSmall:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditSmall:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditLarge:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditExtraLarge:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/high16 v6, -0x4080

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v3, 0x7f030081

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 71
    const v3, 0x7f0b041b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditSmall:Landroid/widget/EditText;

    .line 72
    const v3, 0x7f0b041c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditLarge:Landroid/widget/EditText;

    .line 73
    const v3, 0x7f0b041d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditExtraLarge:Landroid/widget/EditText;

    .line 74
    const v3, 0x7f0b041e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mButton:Landroid/widget/Button;

    .line 76
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "settings_fontsize_small"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    .line 78
    .local v2, readSmall:F
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "settings_fontsize_large"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 80
    .local v1, readLarge:F
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "settings_fontsize_extralarge"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 83
    .local v0, readExtra:F
    cmpl-float v3, v2, v6

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditSmall:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    cmpl-float v3, v1, v6

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditLarge:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    cmpl-float v3, v0, v6

    if-eqz v3, :cond_2

    .line 90
    iget-object v3, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditExtraLarge:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_2
    iget-object v3, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditSmall:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditSmall:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 95
    iget-object v3, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mButton:Landroid/widget/Button;

    new-instance v4, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;

    invoke-direct {v4, p0}, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;-><init>(Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method
