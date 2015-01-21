.class public Lcom/android/mms/ui/AdvancedCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "AdvancedCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;
    }
.end annotation


# static fields
.field private static final SHOW_NUMBER_LENGTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AdvancedCheckBoxPreference"

.field private static sSim3G:Landroid/widget/TextView;

.field private static sSimColor:Landroid/widget/ImageView;

.field private static sSimName:Landroid/widget/TextView;

.field private static sSimNumber:Landroid/widget/TextView;

.field private static sSimNumberShort:Landroid/widget/TextView;

.field private static sSimStatus:Landroid/widget/ImageView;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentId:I

.field private mSimInfo:Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/AdvancedCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/AdvancedCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput v2, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mCurrentId:I

    .line 73
    sget-object v1, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 87
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    iput-object v0, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    .line 88
    iput-object p1, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mContext:Landroid/content/Context;

    .line 89
    iput p2, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mCurrentId:I

    .line 90
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    .line 112
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 113
    const v2, 0x7f0f000c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimName:Landroid/widget/TextView;

    .line 114
    const v2, 0x7f0f000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimNumber:Landroid/widget/TextView;

    .line 115
    const v2, 0x7f0f000b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimNumberShort:Landroid/widget/TextView;

    .line 116
    const v2, 0x7f0f0009

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimStatus:Landroid/widget/ImageView;

    .line 117
    const v2, 0x7f0f0008

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimColor:Landroid/widget/ImageView;

    .line 118
    const v2, 0x7f0f000a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSim3G:Landroid/widget/TextView;

    .line 120
    sget-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    iget v4, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mCurrentId:I

    invoke-interface {v3, v4}, Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;->getSimName(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    iget v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mCurrentId:I

    invoke-interface {v2, v3}, Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;->getSimNumber(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    iget v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mCurrentId:I

    invoke-interface {v2, v3}, Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;->getSimNumber(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    :cond_0
    sget-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    iget v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mCurrentId:I

    invoke-interface {v2, v3}, Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;->getSimNumber(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, numShow:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    iget v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mCurrentId:I

    invoke-interface {v2, v3}, Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;->getNumberFormat(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 129
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 130
    sget-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimNumberShort:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    iget v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mCurrentId:I

    invoke-interface {v2, v3}, Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;->getSimStatus(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getSimStatusResource(I)I

    move-result v1

    .line 146
    .local v1, simStatusResourceId:I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    .line 147
    sget-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimStatus:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    :cond_1
    sget-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimColor:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    iget v4, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mCurrentId:I

    invoke-interface {v3, v4}, Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;->getSimColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 150
    sget-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSim3G:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 151
    return-void

    .line 124
    .end local v0           #numShow:Ljava/lang/String;
    .end local v1           #simStatusResourceId:I
    :cond_2
    sget-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimNumber:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    iget v4, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mCurrentId:I

    invoke-interface {v3, v4}, Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;->getSimNumber(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    .restart local v0       #numShow:Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimNumberShort:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    iget v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mCurrentId:I

    invoke-interface {v2, v3}, Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;->getNumberFormat(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 135
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_5

    .line 136
    sget-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimNumberShort:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 138
    :cond_5
    sget-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimNumberShort:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 141
    :cond_6
    sget-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimNumberShort:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 96
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, layout:Landroid/view/View;
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimName:Landroid/widget/TextView;

    .line 100
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimNumber:Landroid/widget/TextView;

    .line 101
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimNumberShort:Landroid/widget/TextView;

    .line 102
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimStatus:Landroid/widget/ImageView;

    .line 103
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSimColor:Landroid/widget/ImageView;

    .line 104
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->sSim3G:Landroid/widget/TextView;

    .line 106
    return-object v0
.end method

.method public setNotifyChange(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 154
    check-cast p1, Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    .end local p1
    iput-object p1, p0, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->mSimInfo:Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;

    .line 155
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 156
    return-void
.end method
