.class public Lcom/mediatek/phone/plugin/SimPreference;
.super Landroid/preference/Preference;
.source "SimPreference.java"


# instance fields
.field private mSimColor:I

.field private mSimIconNumber:Ljava/lang/String;

.field private mSimName:Ljava/lang/String;

.field private mSimNumber:Ljava/lang/String;

.field private mSimSlot:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/phone/plugin/SimPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private getSimStatusImge(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 165
    :pswitch_0
    const/4 v0, -0x1

    .line 168
    :goto_0
    return v0

    .line 144
    :pswitch_1
    const v0, 0x202011d

    .line 145
    goto :goto_0

    .line 147
    :pswitch_2
    const v0, 0x202010a

    .line 148
    goto :goto_0

    .line 150
    :pswitch_3
    const v0, 0x2020103

    .line 151
    goto :goto_0

    .line 153
    :pswitch_4
    const v0, 0x2020124

    .line 154
    goto :goto_0

    .line 156
    :pswitch_5
    const v0, 0x2020122

    .line 157
    goto :goto_0

    .line 159
    :pswitch_6
    const v0, 0x20200fa

    .line 160
    goto :goto_0

    .line 162
    :pswitch_7
    const v0, 0x2020123

    .line 163
    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 11
    .parameter "contentView"

    .prologue
    const/16 v10, 0x8

    .line 73
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 75
    const v8, 0x7f0b00b1

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 77
    .local v2, imageStatus:Landroid/widget/ImageView;
    :try_start_0
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 78
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 79
    iget v8, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimSlot:I

    invoke-interface {v1, v8}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/mediatek/phone/plugin/SimPreference;->getSimStatusImge(I)I

    move-result v4

    .line 80
    .local v4, res:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_5

    .line 81
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #res:I
    :cond_0
    :goto_0
    const v8, 0x7f0b00b0

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 92
    .local v7, viewSim:Landroid/widget/RelativeLayout;
    if-eqz v7, :cond_1

    .line 93
    iget v8, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimColor:I

    if-ltz v8, :cond_6

    iget v8, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimColor:I

    const/4 v9, 0x3

    if-gt v8, v9, :cond_6

    .line 94
    sget-object v8, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    iget v9, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimColor:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    :cond_1
    :goto_1
    const v8, 0x7f0b00b5

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 101
    .local v6, simNumber:Landroid/widget/TextView;
    if-eqz v6, :cond_2

    .line 102
    iget-object v8, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimNumber:Ljava/lang/String;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimNumber:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 103
    iget-object v8, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimNumber:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_2
    :goto_2
    const v8, 0x7f0b00b4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 110
    .local v3, operatorName:Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 111
    iget-object v8, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_3
    const v8, 0x7f0b00b2

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 115
    .local v5, simIconNumber:Landroid/widget/TextView;
    if-eqz v5, :cond_4

    .line 116
    iget-object v8, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimIconNumber:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_4
    return-void

    .line 83
    .end local v3           #operatorName:Landroid/widget/TextView;
    .end local v5           #simIconNumber:Landroid/widget/TextView;
    .end local v6           #simNumber:Landroid/widget/TextView;
    .end local v7           #viewSim:Landroid/widget/RelativeLayout;
    .restart local v1       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v4       #res:I
    :cond_5
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #res:I
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 96
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v7       #viewSim:Landroid/widget/RelativeLayout;
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 105
    .restart local v6       #simNumber:Landroid/widget/TextView;
    :cond_7
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setSimColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 121
    iput p1, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimColor:I

    .line 122
    return-void
.end method

.method public setSimIconNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimIconNumber:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setSimName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setSimNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimNumber:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setSimSlot(I)V
    .locals 0
    .parameter "slot"

    .prologue
    .line 125
    iput p1, p0, Lcom/mediatek/phone/plugin/SimPreference;->mSimSlot:I

    .line 126
    return-void
.end method
