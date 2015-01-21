.class public Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;
.super Landroid/app/Activity;
.source "WfdVdoCapability.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final RADIO_RESOLUTION_1080P:I = 0x2

.field private static final RADIO_RESOLUTION_720P_1:I = 0x0

.field private static final RADIO_RESOLUTION_720P_2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EM/WFD_VDO_CAP"


# instance fields
.field private mBtDone:Landroid/widget/Button;

.field private mCb1080pSettingMenu:Landroid/widget/CheckBox;

.field private mCb720pSettingMenu:Landroid/widget/CheckBox;

.field private final mCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private final mRdClickListener:Landroid/view/View$OnClickListener;

.field private mRdResoulution:[Landroid/widget/RadioButton;

.field private mResolutionInfo:I

.field private mRg1080pDefinition:Landroid/widget/RadioGroup;

.field private mRg720pDefinition:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mBtDone:Landroid/widget/Button;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    .line 65
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    .line 66
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    .line 68
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;

    .line 69
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mResolutionInfo:I

    .line 80
    new-instance v0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$1;-><init>(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 102
    new-instance v0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;-><init>(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private onClickBtnDone()V
    .locals 4

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, state:I
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 322
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_max_resolution"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    const-string v1, "EM/WFD_VDO_CAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last solution = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    const/4 v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0b0494

    if-ne v1, v2, :cond_2

    .line 303
    const/4 v0, 0x3

    goto :goto_0

    .line 305
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 309
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 310
    const/4 v0, 0x2

    goto :goto_0

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0b0499

    if-ne v1, v2, :cond_5

    .line 313
    const/4 v0, 0x5

    goto :goto_0

    .line 314
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0b049a

    if-ne v1, v2, :cond_6

    .line 315
    const/4 v0, 0x6

    goto :goto_0

    .line 317
    :cond_6
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private setInitState(I)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    if-nez p1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 223
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    if-ne p1, v3, :cond_3

    .line 229
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 231
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 235
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 236
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 242
    .end local v0           #i:I
    :cond_3
    if-ne p1, v5, :cond_4

    .line 243
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    aget-object v1, v1, v5

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 245
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 251
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 252
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 256
    .end local v0           #i:I
    :cond_4
    if-eq p1, v6, :cond_5

    const/4 v1, 0x4

    if-ne p1, v1, :cond_7

    .line 257
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 259
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 263
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 264
    if-ne p1, v6, :cond_6

    .line 265
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0494

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 270
    :goto_3
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 267
    :cond_6
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0495

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_3

    .line 272
    :cond_7
    const/4 v1, 0x5

    if-eq p1, v1, :cond_8

    const/4 v1, 0x6

    if-eq p1, v1, :cond_8

    const/4 v1, 0x7

    if-ne p1, v1, :cond_b

    .line 273
    :cond_8
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    aget-object v1, v1, v5

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 275
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 281
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 282
    const/4 v1, 0x5

    if-ne p1, v1, :cond_9

    .line 283
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0499

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 284
    :cond_9
    const/4 v1, 0x6

    if-ne p1, v1, :cond_a

    .line 285
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    const v2, 0x7f0b049a

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 287
    :cond_a
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    const v2, 0x7f0b049b

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 290
    :cond_b
    const-string v1, "EM/WFD_VDO_CAP"

    const-string v2, "Wrong input resolution info"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 213
    const-string v0, "EM/WFD_VDO_CAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mBtDone:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->onClickBtnDone()V

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 218
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v1, 0x7f03009b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 156
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    const v1, 0x7f0b0490

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    aput-object v1, v2, v4

    .line 157
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    const/4 v3, 0x1

    const v1, 0x7f0b0491

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    aput-object v1, v2, v3

    .line 158
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    const/4 v3, 0x2

    const v1, 0x7f0b0496

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    aput-object v1, v2, v3

    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    const v1, 0x7f0b0492

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;

    .line 164
    const v1, 0x7f0b0493

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    .line 166
    const v1, 0x7f0b0497

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;

    .line 167
    const v1, 0x7f0b0498

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    .line 169
    const v1, 0x7f0b0483

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mBtDone:Landroid/widget/Button;

    .line 170
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mBtDone:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_max_resolution"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mResolutionInfo:I

    .line 174
    iget v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mResolutionInfo:I

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->setInitState(I)V

    .line 176
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 177
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 179
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;

    new-instance v2, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$3;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$3;-><init>(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;

    new-instance v2, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$4;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$4;-><init>(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 330
    return-void
.end method
