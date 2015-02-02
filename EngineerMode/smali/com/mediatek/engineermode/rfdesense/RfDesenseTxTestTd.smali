.class public Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;
.super Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;
.source "RfDesenseTxTestTd.java"


# static fields
.field public static final KEY_AFC:Ljava/lang/String; = "AFC_3G"

.field public static final KEY_BAND:Ljava/lang/String; = "Band_3G"

.field public static final KEY_CHANNEL:Ljava/lang/String; = "Channel_3G"

.field public static final KEY_MODULATION:Ljava/lang/String; = "Bodulation_3G"

.field public static final KEY_PATTERN:Ljava/lang/String; = "Pattern_3G"

.field public static final KEY_POWER:Ljava/lang/String; = "Power_3G"

.field public static final KEY_STATE:Ljava/lang/String; = "Started_3G"

.field public static final KEY_TSC:Ljava/lang/String; = "TSC_3G"

.field private static final TAG:Ljava/lang/String; = "TxTestTd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x1090008

    const/4 v7, 0x0

    const/16 v5, 0x8

    .line 94
    invoke-super {p0, p1}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v4, 0x7f0b03b4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const v4, 0x7f0b03b7

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 98
    const v4, 0x7f0b03b9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mAfc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    iget-object v4, v4, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->editor:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mTsc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    iget-object v4, v4, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->editor:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPattern:Landroid/widget/Spinner;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 103
    const v4, 0x7f0b03ae

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 104
    .local v1, channelLabel:Landroid/widget/TextView;
    const v4, 0x7f08054f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 106
    new-instance v2, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;-><init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;)V

    .line 152
    .local v2, listener:Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonPause:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-static {}, Lcom/mediatek/engineermode/ModemCategory;->getModemType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 158
    const v4, 0x7f060073

    invoke-static {p0, v4, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 164
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :goto_0
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 165
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 167
    const-string v4, "tx_test"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 169
    .local v3, pref:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    const-string v5, "Band_3G"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 170
    iget v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mCurrentBand:I

    iget-object v5, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;->updateLimits()V

    .line 172
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    iput v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mCurrentBand:I

    .line 174
    :cond_0
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const-string v5, "Channel_3G"

    iget-object v6, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    iget-object v6, v6, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->defaultValue:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->setText(Ljava/lang/String;)V

    .line 175
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const-string v5, "Power_3G"

    iget-object v6, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    iget-object v6, v6, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->defaultValue:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->setText(Ljava/lang/String;)V

    .line 176
    const-string v4, "Started_3G"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    .line 177
    return-void

    .line 161
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :cond_1
    const v4, 0x7f060076

    invoke-static {p0, v4, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 79
    const-string v1, "tx_test"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, pref:Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    if-eq v1, v2, :cond_0

    .line 81
    const-string v1, "Band_3G"

    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v1, "Channel_3G"

    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v1, "Power_3G"

    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v1, "Started_3G"

    iget v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void

    .line 86
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method protected updateLimits()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    .line 181
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 184
    .local v6, band:I
    invoke-static {}, Lcom/mediatek/engineermode/ModemCategory;->getModemType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, limits:[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    aget-object v3, v7, v3

    const/4 v4, 0x3

    aget-object v4, v7, v4

    const/4 v5, 0x4

    aget-object v5, v7, v5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const/4 v1, 0x5

    aget-object v1, v7, v1

    const/4 v2, 0x6

    aget-object v2, v7, v2

    const/4 v3, 0x7

    aget-object v3, v7, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void

    .line 187
    .end local v7           #limits:[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .restart local v7       #limits:[Ljava/lang/String;
    goto :goto_0
.end method
