.class public Lcom/mediatek/settings/plugin/RoamingNotify;
.super Ljava/lang/Object;
.source "RoamingNotify.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BEIJING_MODE:I = 0x0

.field private static final LOCAL_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RoamingNotify"

.field private static sInstance:Lcom/mediatek/settings/plugin/RoamingNotify;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTime:I

.field private mNM:Landroid/app/NotificationManager;

.field private mRadioBtn1:Landroid/widget/RadioButton;

.field private mRadioBtn2:Landroid/widget/RadioButton;

.field private mSelectTimeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mNM:Landroid/app/NotificationManager;

    .line 31
    iput-object v0, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn1:Landroid/widget/RadioButton;

    .line 32
    iput-object v0, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn2:Landroid/widget/RadioButton;

    .line 34
    iput v1, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mCurrentTime:I

    .line 35
    iput v1, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mSelectTimeMode:I

    .line 40
    iput-object p1, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/plugin/RoamingNotify;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/plugin/RoamingNotify;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mCurrentTime:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/settings/plugin/RoamingNotify;
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    sget-object v0, Lcom/mediatek/settings/plugin/RoamingNotify;->sInstance:Lcom/mediatek/settings/plugin/RoamingNotify;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/mediatek/settings/plugin/RoamingNotify;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/RoamingNotify;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/settings/plugin/RoamingNotify;->sInstance:Lcom/mediatek/settings/plugin/RoamingNotify;

    .line 47
    :cond_0
    sget-object v0, Lcom/mediatek/settings/plugin/RoamingNotify;->sInstance:Lcom/mediatek/settings/plugin/RoamingNotify;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 118
    move-object v1, p1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 119
    .local v0, checked:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 121
    :pswitch_1
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn2:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 124
    iput v2, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mCurrentTime:I

    goto :goto_0

    .line 129
    :pswitch_2
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn1:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 132
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mCurrentTime:I

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00be
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public showTimeZoneChooseDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 80
    iget-object v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 81
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03002f

    invoke-virtual {v0, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, view:Landroid/view/View;
    const v4, 0x7f0b00be

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn1:Landroid/widget/RadioButton;

    .line 83
    const v4, 0x7f0b00c0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn2:Landroid/widget/RadioButton;

    .line 84
    iget-object v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ct_time_display_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mCurrentTime:I

    .line 89
    const-string v4, "RoamingNotify"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get ct init time display mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mCurrentTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mCurrentTime:I

    if-nez v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 92
    iget-object v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 97
    :cond_0
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/settings/plugin/RoamingNotify$1;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/plugin/RoamingNotify$1;-><init>(Lcom/mediatek/settings/plugin/RoamingNotify;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 111
    .local v1, timeZoneDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 112
    .local v3, win:Landroid/view/Window;
    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 113
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 114
    return-void

    .line 93
    .end local v1           #timeZoneDialog:Landroid/app/AlertDialog;
    .end local v3           #win:Landroid/view/Window;
    :cond_1
    iget v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mCurrentTime:I

    if-ne v4, v8, :cond_0

    .line 94
    iget-object v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 95
    iget-object v4, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mRadioBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public showTimeZoneRecommendInNotificationBar()V
    .locals 10

    .prologue
    const v9, 0x7f0200c5

    const/4 v8, 0x0

    .line 54
    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;

    const v6, 0x7f090013

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, notificationTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;

    const v6, 0x7f090015

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, notificationSummary:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mNM:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    .line 57
    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mNM:Landroid/app/NotificationManager;

    .line 59
    :cond_0
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v9, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 61
    .local v2, notification:Landroid/app/Notification;
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, contentIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, backIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.mediatek.op09.plugin"

    const-string v7, "com.mediatek.settings.plugin.TimeZoneActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 66
    const/high16 v5, 0x2000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 69
    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 73
    :goto_0
    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v4, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 74
    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mNM:Landroid/app/NotificationManager;

    if-eqz v5, :cond_1

    .line 75
    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingNotify;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v5, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 77
    :cond_1
    return-void

    .line 71
    :cond_2
    const-string v5, "RoamingNotify"

    const-string v6, "Could not find OP09 plugin.TimeZoneActivity."

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
