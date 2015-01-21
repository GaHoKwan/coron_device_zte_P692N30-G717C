.class public Lcom/mediatek/batterywarning/BatteryWarningActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BatteryWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final BATTERY_LOW_TEMPERATURE_TYPE:I = 0x5

.field private static final BATTERY_OVER_TEMPERATURE_TYPE:I = 0x1

.field private static final BATTERY_OVER_VOLTAGE_TYPE:I = 0x3

.field private static final CHARGER_OVER_VOLTAGE_TYPE:I = 0x0

.field private static final CURRENT_OVER_PROTECTION_TYPE:I = 0x2

.field private static final SAFETY_OVER_TIMEOUT_TYPE:I = 0x4

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "battery_warning_settings"

.field private static final TAG:Ljava/lang/String; = "BatteryWarningActivity"

.field private static final WARNING_SOUND_URI:Landroid/net/Uri;

.field private static final sWarningMsg:[I

.field static final sWarningTitle:[I


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 33
    const-string v0, "file:///system/media/audio/ui/VideoRecord.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->WARNING_SOUND_URI:Landroid/net/Uri;

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->sWarningTitle:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->sWarningMsg:[I

    return-void

    .line 47
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x5t 0x7ft
        0x2t 0x0t 0x5t 0x7ft
        0x3t 0x0t 0x5t 0x7ft
        0x4t 0x0t 0x5t 0x7ft
        0x5t 0x0t 0x5t 0x7ft
        0x6t 0x0t 0x5t 0x7ft
    .end array-data

    .line 54
    :array_1
    .array-data 0x4
        0x7t 0x0t 0x5t 0x7ft
        0x8t 0x0t 0x5t 0x7ft
        0x9t 0x0t 0x5t 0x7ft
        0xat 0x0t 0x5t 0x7ft
        0xbt 0x0t 0x5t 0x7ft
        0xct 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/mediatek/batterywarning/BatteryWarningActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/batterywarning/BatteryWarningActivity$1;-><init>(Lcom/mediatek/batterywarning/BatteryWarningActivity;)V

    iput-object v0, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/batterywarning/BatteryWarningActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I

    return v0
.end method

.method private createView(I)Landroid/view/View;
    .locals 6
    .parameter "messageResId"

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/high16 v4, 0x7f04

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 128
    .local v2, view:Landroid/view/View;
    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 129
    .local v1, mMessageView:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    .local v0, mImageView:Landroid/widget/ImageView;
    const/high16 v3, 0x7f02

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    return-object v2
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 175
    const-string v0, "battery_warning_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private playAlertSound(Landroid/net/Uri;)V
    .locals 2
    .parameter "defaultUri"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mRingtone:Landroid/media/Ringtone;

    .line 147
    iget-object v0, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 149
    iget-object v0, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 152
    :cond_0
    return-void
.end method

.method private showWarningDialog(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 99
    sget-object v0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->sWarningTitle:[I

    aget v0, v0, p1

    sget-object v1, Lcom/mediatek/batterywarning/BatteryWarningActivity;->sWarningMsg:[I

    aget v1, v1, p1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/batterywarning/BatteryWarningActivity;->warningMessageDialog(II)V

    .line 100
    sget-object v0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->WARNING_SOUND_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/mediatek/batterywarning/BatteryWarningActivity;->playAlertSound(Landroid/net/Uri;)V

    .line 101
    return-void
.end method

.method private stopRingtone()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 158
    :cond_0
    return-void
.end method

.method private warningMessageDialog(II)V
    .locals 2
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 117
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 118
    invoke-direct {p0, p2}, Lcom/mediatek/batterywarning/BatteryWarningActivity;->createView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 119
    const v1, 0x7f05000d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 120
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    const v1, 0x7f05000e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 122
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 124
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 161
    const-string v1, "BatteryWarningActivity"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/mediatek/batterywarning/BatteryWarningActivity;->stopRingtone()V

    .line 172
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/batterywarning/BatteryWarningActivity;->stopRingtone()V

    .line 167
    invoke-direct {p0}, Lcom/mediatek/batterywarning/BatteryWarningActivity;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/mediatek/batterywarning/BatteryWarningActivity;->sWarningTitle:[I

    iget v2, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    const-string v1, "BatteryWarningActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I

    .line 81
    const-string v1, "BatteryWarningActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate, mType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget v1, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 83
    iget v1, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I

    invoke-direct {p0, v1}, Lcom/mediatek/batterywarning/BatteryWarningActivity;->showWarningDialog(I)V

    .line 84
    iget-object v1, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 93
    iget v0, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    :cond_0
    return-void
.end method
