.class public Lcom/android/mms/ui/AdvancedEditorPreference;
.super Landroid/preference/Preference;
.source "AdvancedEditorPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;
    }
.end annotation


# static fields
.field private static final Device_Type:Ljava/lang/String; = "pref_key_device_type"

.field private static final SHOW_NUMBER_LENGTH:I = 0x4

.field private static final SMS_SAVE_LOCATION:Ljava/lang/String; = "pref_key_sms_save_location"

.field private static final TAG:Ljava/lang/String; = "AdvancedEditorPreference"

.field private static sSim3G:Landroid/widget/TextView;

.field private static sSimColor:Landroid/widget/ImageView;

.field private static sSimName:Landroid/widget/TextView;

.field private static sSimNumber:Landroid/widget/TextView;

.field private static sSimNumberShort:Landroid/widget/TextView;

.field private static sSimStatus:Landroid/widget/ImageView;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentId:I

.field private mPreferenceName:Ljava/lang/String;

.field private mSimInfo:Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

.field private mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/AdvancedEditorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/AdvancedEditorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput v2, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    .line 83
    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IStringReplacement;

    iput-object v1, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    .line 90
    return-void
.end method

.method private getSaveLocation(I)Ljava/lang/String;
    .locals 7
    .parameter "slotid"

    .prologue
    .line 181
    iget-object v4, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 183
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_device_type"

    const-string v5, "Phone"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, type:Ljava/lang/String;
    const-string v2, ""

    .line 185
    .local v2, stored:Ljava/lang/String;
    const-string v4, "Device"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pref_key_sms_save_location"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Phone"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    :goto_0
    const-string v0, ""

    .line 191
    .local v0, res:Ljava/lang/CharSequence;
    const-string v4, "Device"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 192
    const v4, 0x7f06000c

    const v5, 0x7f06000d

    invoke-direct {p0, v2, v4, v5}, Lcom/android/mms/ui/AdvancedEditorPreference;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 199
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 188
    .end local v0           #res:Ljava/lang/CharSequence;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pref_key_sms_save_location"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Device"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 195
    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_1
    const v4, 0x7f06000e

    const v5, 0x7f06000f

    invoke-direct {p0, v2, v4, v5}, Lcom/android/mms/ui/AdvancedEditorPreference;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method private getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "enumName"
    .parameter "choiceNameResId"
    .parameter "choiceValueResId"

    .prologue
    .line 205
    const/4 v3, 0x0

    .line 206
    .local v3, visualNames:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IStringReplacement;->getSaveLocationString()[Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, location:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    iget v4, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    move-object v3, v2

    .line 213
    :goto_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 216
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v4, v3

    array-length v5, v0

    if-eq v4, v5, :cond_1

    .line 217
    const-string v4, ""

    .line 225
    :goto_1
    return-object v4

    .line 210
    .end local v0           #enumNames:[Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 220
    .restart local v0       #enumNames:[Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 221
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    aget-object v4, v3, v1

    goto :goto_1

    .line 220
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 225
    :cond_3
    const-string v4, ""

    goto :goto_1
.end method


# virtual methods
.method public getSlotId()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    return v0
.end method

.method public init(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "name"

    .prologue
    .line 101
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    iput-object v0, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    .line 102
    iput-object p1, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mContext:Landroid/content/Context;

    .line 103
    iput p2, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    .line 104
    iput-object p3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mPreferenceName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method protected notifyChanged()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 246
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    .line 131
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 132
    const v2, 0x7f0f000c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimName:Landroid/widget/TextView;

    .line 133
    const v2, 0x7f0f000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumber:Landroid/widget/TextView;

    .line 134
    const v2, 0x7f0f000b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumberShort:Landroid/widget/TextView;

    .line 135
    const v2, 0x7f0f0009

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimStatus:Landroid/widget/ImageView;

    .line 136
    const v2, 0x7f0f0008

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimColor:Landroid/widget/ImageView;

    .line 137
    const v2, 0x7f0f000a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSim3G:Landroid/widget/TextView;

    .line 138
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    iget v4, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-interface {v3, v4}, Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;->getSimName(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mPreferenceName:Ljava/lang/String;

    const-string v3, "pref_key_sms_save_location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    iget v2, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-direct {p0, v2}, Lcom/android/mms/ui/AdvancedEditorPreference;->getSaveLocation(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-direct {p0, v2}, Lcom/android/mms/ui/AdvancedEditorPreference;->getSaveLocation(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    :cond_0
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    iget v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-interface {v2, v3}, Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;->getSimNumber(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, numShow:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    iget v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-interface {v2, v3}, Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;->getNumberFormat(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 155
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_6

    .line 156
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumberShort:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    iget v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-interface {v2, v3}, Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;->getSimStatus(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getSimStatusResource(I)I

    move-result v1

    .line 172
    .local v1, simStatusResourceId:I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    .line 173
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimStatus:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :cond_1
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimColor:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    iget v4, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-interface {v3, v4}, Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;->getSimColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 176
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSim3G:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 177
    return-void

    .line 143
    .end local v0           #numShow:Ljava/lang/String;
    .end local v1           #simStatusResourceId:I
    :cond_2
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumber:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-direct {p0, v3}, Lcom/android/mms/ui/AdvancedEditorPreference;->getSaveLocation(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    iget v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-interface {v2, v3}, Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;->getSimNumber(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    iget v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-interface {v2, v3}, Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;->getSimNumber(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 147
    :cond_4
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_5
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumber:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    iget v4, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-interface {v3, v4}, Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;->getSimNumber(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 158
    .restart local v0       #numShow:Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumberShort:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 160
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    iget v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mCurrentId:I

    invoke-interface {v2, v3}, Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;->getNumberFormat(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 161
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_8

    .line 162
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumberShort:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 164
    :cond_8
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumberShort:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 167
    :cond_9
    sget-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumberShort:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 116
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, layout:Landroid/view/View;
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimName:Landroid/widget/TextView;

    .line 120
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumber:Landroid/widget/TextView;

    .line 121
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimNumberShort:Landroid/widget/TextView;

    .line 122
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimStatus:Landroid/widget/ImageView;

    .line 123
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSimColor:Landroid/widget/ImageView;

    .line 124
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/mms/ui/AdvancedEditorPreference;->sSim3G:Landroid/widget/TextView;

    .line 125
    return-object v0
.end method

.method public setNotifyChange(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 108
    check-cast p1, Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    .end local p1
    iput-object p1, p0, Lcom/android/mms/ui/AdvancedEditorPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;

    .line 109
    invoke-virtual {p0}, Lcom/android/mms/ui/AdvancedEditorPreference;->notifyChanged()V

    .line 110
    return-void
.end method
