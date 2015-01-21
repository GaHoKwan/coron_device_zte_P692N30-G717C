.class public Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref;
.super Landroid/preference/CheckBoxPreference;
.source "PowerSavingCheckBoxPref.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Power Savings"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 32
    const-string v0, "Power Savings"

    const-string v1, "--PowerSavingCheckBoxPref  new attrs"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 38
    const-string v1, "Power Savings"

    const-string v2, "--PowerSavingCheckBoxPref  onBindView"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const v1, 0x7f0b00a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, poSavingItem:Landroid/view/View;
    new-instance v1, Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref$1;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref$1;-><init>(Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method
