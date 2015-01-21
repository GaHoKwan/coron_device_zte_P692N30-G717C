.class public Lcom/zte/heartyservice/power/BrightnessPreference;
.super Landroid/preference/DialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;
    }
.end annotation


# static fields
.field public static final MAXIMUM_BACKLIGHT:I = 0xff

.field public static final MINIMUM_BACKLIGHT:I = 0x14

.field private static final tag:Ljava/lang/String; = "BrightnessPreference"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field public mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;

.field private mMessageText:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field public mProgressPercentText:Landroid/widget/TextView;

.field public mSeekBar:Landroid/widget/SeekBar;

.field private mUnitsText:I

.field public mValue:I

.field private mZeroText:I

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-object p1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mContext:Landroid/content/Context;

    .line 76
    const-string v0, "zeroText"

    const v1, 0x7f0a0156

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mZeroText:I

    .line 77
    const-string v0, "unitsText"

    const v1, 0x7f0a0157

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mUnitsText:I

    .line 78
    const-string v0, "dialogMessage"

    const v1, 0x7f0a0158

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mMessageText:I

    .line 81
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 83
    const-string v0, "brightness_preference"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->sp:Landroid/content/SharedPreferences;

    .line 84
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->editor:Landroid/content/SharedPreferences$Editor;

    .line 86
    return-void
.end method

.method private InitialSeekBar()V
    .locals 4

    .prologue
    .line 234
    const-string v0, "BrightnessPreference"

    const-string v1, "initialSeekBar Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->sp:Landroid/content/SharedPreferences;

    const-string v2, "brightness_preference_brightness"

    const/16 v3, 0xff

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 236
    invoke-direct {p0}, Lcom/zte/heartyservice/power/BrightnessPreference;->setProgressPercent()V

    .line 237
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->sp:Landroid/content/SharedPreferences;

    const-string v2, "brightness_preference_automatic"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 238
    return-void
.end method

.method private UpdateBrightnessSummary(IZ)V
    .locals 5
    .parameter "brightness"
    .parameter "automatic"

    .prologue
    .line 268
    if-eqz p2, :cond_0

    .line 269
    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/BrightnessPreference;->setSummary(I)V

    .line 276
    :goto_0
    return-void

    .line 271
    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    const v0, 0x7f0a0172

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/BrightnessPreference;->setSummary(I)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0171

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    mul-int/lit8 v4, p1, 0x64

    div-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/BrightnessPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private restoreOldBrightness()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 199
    :try_start_0
    iget v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mOldAutomatic:I

    if-ne v1, v2, :cond_0

    .line 201
    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 204
    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mListener:Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;->setBrightness(I)I

    .line 215
    :goto_0
    const-string v1, "restoreOldBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOldBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_1
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mListener:Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;

    iget v2, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mOldBrightness:I

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;->setBrightness(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setMode(Z)V
    .locals 4
    .parameter "automatic"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 156
    const-string v0, "BrightnessPreference"

    const-string v1, "setMode Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mProgressPercentText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mProgressPercentText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setProgressPercent()V
    .locals 5

    .prologue
    .line 222
    iget-object v2, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mProgressPercentText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    .line 224
    .local v0, max:I
    if-lez v0, :cond_0

    .line 225
    iget-object v2, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 226
    .local v1, progress:I
    if-ltz v1, :cond_0

    if-gt v1, v0, :cond_0

    .line 227
    iget-object v2, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mProgressPercentText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v1, 0x64

    div-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .end local v0           #max:I
    .end local v1           #progress:I
    :cond_0
    return-void
.end method


# virtual methods
.method public getBrightnessValue()I
    .locals 4

    .prologue
    .line 243
    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->sp:Landroid/content/SharedPreferences;

    const-string v2, "brightness_preference_brightness"

    const/16 v3, 0xff

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, brightness:I
    return v0
.end method

.method public isAutomaticChecked()Z
    .locals 4

    .prologue
    .line 254
    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->sp:Landroid/content/SharedPreferences;

    const-string v2, "brightness_preference_automatic"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 255
    .local v0, checked:Z
    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 127
    const-string v1, "BrightnessPreference"

    const-string v2, "onBindDialongView Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const v1, 0x7f0e0070

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 129
    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xeb

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 130
    const v1, 0x7f0e006f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mProgressPercentText:Landroid/widget/TextView;

    .line 134
    const v1, 0x7f0e006e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 135
    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 137
    invoke-direct {p0}, Lcom/zte/heartyservice/power/BrightnessPreference;->InitialSeekBar()V

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mOldBrightness:I

    .line 141
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mOldAutomatic:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "BrightnessPreferences"

    const-string v2, "onBindDialogView SettingNotFoundException set---mOldBrightness MAX_VALUE\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v1, 0xff

    iput v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mOldBrightness:I

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 284
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 285
    .local v0, summary:Landroid/widget/TextView;
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 286
    .local v1, title:Landroid/widget/TextView;
    const/high16 v2, 0x4190

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 287
    const/high16 v2, 0x4160

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 288
    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 289
    invoke-virtual {v1, v5, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 291
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "arg0"
    .parameter "checked"

    .prologue
    .line 90
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckBox onCheckedChanged Enter: boolean params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/power/BrightnessPreference;->setMode(Z)V

    .line 92
    if-nez p2, :cond_0

    .line 93
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mListener:Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;->onCheckBoxClicked(Z)V

    .line 94
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mListener:Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;

    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;->setBrightness(I)I

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mListener:Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;->onCheckBoxClicked(Z)V

    .line 100
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mListener:Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;->setBrightness(I)I

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 176
    const-string v0, "BrightnessPreference"

    const-string v1, "positive result"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "brightness_preference_brightness"

    iget-object v2, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "brightness_preference_automatic"

    iget-object v2, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/power/BrightnessPreference;->UpdateBrightnessSummary(IZ)V

    .line 180
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mListener:Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;

    invoke-interface {v0}, Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;->onPositiveClosed()V

    .line 187
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/power/BrightnessPreference;->restoreOldBrightness()V

    .line 191
    return-void

    .line 183
    :cond_0
    const-string v0, "BrightnessPreference"

    const-string v1, "negative result"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mListener:Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;

    invoke-interface {v0}, Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;->onNegativeClosed()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 107
    const-string v0, "BrightnessPreference"

    const-string v1, "BrightnessPreference Enter: seekbar onProgress change"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mListener:Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;

    invoke-interface {v0, p2}, Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;->onProgressChanged(I)I

    .line 110
    invoke-direct {p0}, Lcom/zte/heartyservice/power/BrightnessPreference;->setProgressPercent()V

    .line 111
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 115
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 119
    return-void
.end method

.method public setAutomaticChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "brightness_preference_automatic"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    return-void
.end method

.method public setBrightnessValue(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "brightness_preference_brightness"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    return-void
.end method

.method setOnBrightnessChangedListener(Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/zte/heartyservice/power/BrightnessPreference;->mListener:Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;

    .line 64
    return-void
.end method
