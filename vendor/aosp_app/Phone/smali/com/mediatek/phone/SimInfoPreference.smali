.class public Lcom/mediatek/phone/SimInfoPreference;
.super Landroid/preference/Preference;
.source "SimInfoPreference.java"


# static fields
.field private static final DISPLAY_FIRST_FOUR:I = 0x1

.field private static final DISPLAY_LAST_FOUR:I = 0x2

.field private static final DISPLAY_NONE:I = 0x0

.field private static final SHOW_3G_ICON:Z = false

.field private static final TAG:Ljava/lang/String; = "SimInfoPreference"


# instance fields
.field private mChecked:Z

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;

.field private mNeedCheckbox:Z

.field private mNumDisplayFormat:I

.field private mSimNum:Ljava/lang/String;

.field protected final mSlotIndex:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZ)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "number"
    .parameter "SimSlot"
    .parameter "status"
    .parameter "color"
    .parameter "DisplayNumberFormat"
    .parameter "key"
    .parameter "needCheckBox"

    .prologue
    const/4 v1, 0x1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-boolean v1, p0, Lcom/mediatek/phone/SimInfoPreference;->mChecked:Z

    .line 27
    iput-boolean v1, p0, Lcom/mediatek/phone/SimInfoPreference;->mNeedCheckbox:Z

    .line 39
    iput-object p2, p0, Lcom/mediatek/phone/SimInfoPreference;->mName:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    .line 41
    iput p4, p0, Lcom/mediatek/phone/SimInfoPreference;->mSlotIndex:I

    .line 42
    iput p5, p0, Lcom/mediatek/phone/SimInfoPreference;->mStatus:I

    .line 43
    iput p6, p0, Lcom/mediatek/phone/SimInfoPreference;->mColor:I

    .line 44
    iput p7, p0, Lcom/mediatek/phone/SimInfoPreference;->mNumDisplayFormat:I

    .line 45
    iput-boolean p10, p0, Lcom/mediatek/phone/SimInfoPreference;->mNeedCheckbox:Z

    .line 46
    iput-object p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 49
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 51
    invoke-direct {p0}, Lcom/mediatek/phone/SimInfoPreference;->displayNameAndNumber()V

    .line 53
    return-void
.end method

.method private displayNameAndNumber()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/phone/SimInfoPreference;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mediatek/phone/SimInfoPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    const-string v0, "SimInfoPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimNum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    const-string v0, "SimInfoPreference"

    const-string v1, "mSimNum is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method getCheck()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/mediatek/phone/SimInfoPreference;->mChecked:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v12, 0x4

    const/16 v11, 0x8

    .line 81
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 82
    .local v6, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/mediatek/phone/SimInfoPreference;->displayNameAndNumber()V

    .line 84
    const v8, 0x7f0a00c0

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 86
    .local v1, imageStatus:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 87
    iget v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mStatus:I

    invoke-static {v8}, Lcom/mediatek/phone/Utils;->getStatusResource(I)I

    move-result v2

    .line 89
    .local v2, res:I
    const/4 v8, -0x1

    if-ne v2, v8, :cond_5

    .line 90
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    .end local v2           #res:I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v8}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    .line 97
    .local v3, simId:I
    const-string v8, "SimInfoPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSlotIndex is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/phone/SimInfoPreference;->mSlotIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v8, "SimInfoPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "simId is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const v8, 0x7f0a00d2

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 108
    .local v4, text3G:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 109
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_1
    const v8, 0x7f0a00bf

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 114
    .local v7, viewSim:Landroid/widget/RelativeLayout;
    if-eqz v7, :cond_2

    .line 115
    iget v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mColor:I

    if-ltz v8, :cond_6

    iget v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mColor:I

    const/4 v9, 0x3

    if-gt v8, v9, :cond_6

    .line 116
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/phone/SimInfoPreference;->mColor:I

    invoke-virtual {v8, v9}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimBackgroundDarkResByColorId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    :cond_2
    :goto_1
    const v8, 0x7f0a00d3

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 124
    .local v0, ckRadioOn:Landroid/widget/CheckBox;
    const-string v8, "SimInfoPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ckRadioOn.setChecked "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/phone/SimInfoPreference;->mChecked:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz v0, :cond_3

    .line 126
    iget-boolean v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mNeedCheckbox:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 127
    iget-boolean v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mChecked:Z

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 133
    :cond_3
    :goto_2
    const v8, 0x7f0a00c1

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 134
    .local v5, textNum:Landroid/widget/TextView;
    if-eqz v5, :cond_4

    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 136
    iget v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mNumDisplayFormat:I

    packed-switch v8, :pswitch_data_0

    .line 163
    :cond_4
    :goto_3
    return-object v6

    .line 92
    .end local v0           #ckRadioOn:Landroid/widget/CheckBox;
    .end local v3           #simId:I
    .end local v4           #text3G:Landroid/widget/TextView;
    .end local v5           #textNum:Landroid/widget/TextView;
    .end local v7           #viewSim:Landroid/widget/RelativeLayout;
    .restart local v2       #res:I
    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 119
    .end local v2           #res:I
    .restart local v3       #simId:I
    .restart local v4       #text3G:Landroid/widget/TextView;
    .restart local v7       #viewSim:Landroid/widget/RelativeLayout;
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 129
    .restart local v0       #ckRadioOn:Landroid/widget/CheckBox;
    :cond_7
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 138
    .restart local v5       #textNum:Landroid/widget/TextView;
    :pswitch_0
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 144
    :pswitch_1
    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v12, :cond_8

    .line 145
    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 147
    :cond_8
    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 153
    :pswitch_2
    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v12, :cond_9

    .line 154
    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 156
    :cond_9
    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setCheck(Z)V
    .locals 0
    .parameter "bCheck"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mChecked:Z

    .line 168
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 169
    return-void
.end method

.method setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 188
    iput p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mColor:I

    .line 189
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 190
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mName:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 185
    return-void
.end method

.method setNumDisplayFormat(I)V
    .locals 0
    .parameter "format"

    .prologue
    .line 193
    iput p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mNumDisplayFormat:I

    .line 194
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 195
    return-void
.end method

.method setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 200
    return-void
.end method

.method setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 177
    iput p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mStatus:I

    .line 178
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 179
    return-void
.end method

.method public updateInfo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "name"
    .parameter "number"
    .parameter "color"
    .parameter "DisplayNumberFormat"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    .line 59
    iput p3, p0, Lcom/mediatek/phone/SimInfoPreference;->mColor:I

    .line 60
    iput p4, p0, Lcom/mediatek/phone/SimInfoPreference;->mNumDisplayFormat:I

    .line 61
    invoke-direct {p0}, Lcom/mediatek/phone/SimInfoPreference;->displayNameAndNumber()V

    .line 62
    return-void
.end method
