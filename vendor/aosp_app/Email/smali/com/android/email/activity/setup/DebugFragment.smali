.class public Lcom/android/email/activity/setup/DebugFragment;
.super Landroid/app/Fragment;
.source "DebugFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mEnableDebugLoggingView:Landroid/widget/CheckBox;

.field private mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

.field private mEnableExchangeLoggingView:Landroid/widget/CheckBox;

.field private mEnableFragmentLoggingView:Landroid/widget/CheckBox;

.field private mEnableLifecycleLoggingView:Landroid/widget/CheckBox;

.field private mEnablePerformanceLoggingView:Landroid/widget/CheckBox;

.field private mEnableRefreshLoggingView:Landroid/widget/CheckBox;

.field private mEnableServiceProxyLoggingView:Landroid/widget/CheckBox;

.field private mEnableStrictModeView:Landroid/widget/CheckBox;

.field private mEnableVerboseLoggingView:Landroid/widget/CheckBox;

.field private mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

.field private mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

.field private mPreferences:Lcom/android/email/Preferences;

.field private mVersionView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private clearWebViewCache()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, webview:Landroid/webkit/WebView;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 218
    const-string v1, "Email"

    const-string v2, "Cleard WebView cache."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 222
    return-void

    .line 220
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    throw v1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->updateLoggingFlags(Landroid/content/Context;)V

    .line 203
    return-void

    .line 150
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableDebugLogging(Z)V

    .line 151
    sput-boolean p2, Lcom/android/email/Email;->DEBUG:Z

    .line 152
    sput-boolean p2, Lcom/android/email/Email;->DEBUG_EXCHANGE:Z

    .line 153
    sput-boolean p2, Lcom/android/emailcommon/Logging;->DEBUG:Z

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableVerboseLogging(Z)V

    .line 157
    sput-boolean p2, Lcom/android/emailcommon/Logging;->LOGD:Z

    goto :goto_0

    .line 160
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnablePerformanceLogging(Z)V

    .line 161
    sput-boolean p2, Lcom/android/emailcommon/Logging;->LOG_PERFORMANCE:Z

    goto :goto_0

    .line 164
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableLifecycleLogging(Z)V

    .line 165
    sput-boolean p2, Lcom/android/emailcommon/Logging;->LOG_LIFECYCLE:Z

    goto :goto_0

    .line 168
    :pswitch_5
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableFragmentLogging(Z)V

    .line 169
    invoke-static {p2}, Landroid/app/FragmentManager;->enableDebugLogging(Z)V

    .line 170
    sput-boolean p2, Lcom/android/emailcommon/Logging;->LOG_FRAGMENT:Z

    goto :goto_0

    .line 173
    :pswitch_6
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableRefreshLogging(Z)V

    .line 174
    sput-boolean p2, Lcom/android/emailcommon/Logging;->LOG_REFRESH:Z

    goto :goto_0

    .line 177
    :pswitch_7
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableServiceProxyLogging(Z)V

    .line 178
    sput-boolean p2, Lcom/android/emailcommon/Logging;->LOG_SERVICEPROXY:Z

    goto :goto_0

    .line 181
    :pswitch_8
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableExchangeLogging(Z)V

    .line 182
    sput-boolean p2, Lcom/android/email/Email;->DEBUG_EXCHANGE_VERBOSE:Z

    goto :goto_0

    .line 185
    :pswitch_9
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableExchangeFileLogging(Z)V

    .line 186
    sput-boolean p2, Lcom/android/email/Email;->DEBUG_EXCHANGE_FILE:Z

    goto :goto_0

    .line 189
    :pswitch_a
    sput-boolean p2, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    .line 190
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setInhibitGraphicsAcceleration(Z)V

    goto :goto_0

    .line 193
    :pswitch_b
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setForceOneMinuteRefresh(Z)V

    .line 194
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    goto :goto_0

    .line 197
    :pswitch_c
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableStrictMode(Z)V

    .line 198
    invoke-static {p2}, Lcom/android/email/Email;->enableStrictMode(Z)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x7f0f0088
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 209
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/DebugFragment;->clearWebViewCache()V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x7f0f0091
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 63
    const-string v3, "AccountSetupBasicsFragment onCreateView"

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 65
    const v3, 0x7f04002e

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 68
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    .line 70
    const v3, 0x7f0f0087

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mVersionView:Landroid/widget/TextView;

    .line 71
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mVersionView:Landroid/widget/TextView;

    const v4, 0x7f0800b5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/high16 v6, 0x7f08

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v3, 0x7f0f0088

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    .line 75
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 77
    const v3, 0x7f0f008f

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    .line 78
    const v3, 0x7f0f0090

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    .line 81
    const v3, 0x7f0f0089

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableVerboseLoggingView:Landroid/widget/CheckBox;

    .line 82
    const v3, 0x7f0f008a

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnablePerformanceLoggingView:Landroid/widget/CheckBox;

    .line 83
    const v3, 0x7f0f008b

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableLifecycleLoggingView:Landroid/widget/CheckBox;

    .line 84
    const v3, 0x7f0f008c

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableFragmentLoggingView:Landroid/widget/CheckBox;

    .line 85
    const v3, 0x7f0f008e

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableServiceProxyLoggingView:Landroid/widget/CheckBox;

    .line 86
    const v3, 0x7f0f008d

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableRefreshLoggingView:Landroid/widget/CheckBox;

    .line 90
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableVerboseLoggingView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableVerboseLogging()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 91
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnablePerformanceLoggingView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnablePerformanceLogging()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 92
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableLifecycleLoggingView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableLifecycleLogging()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 93
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableFragmentLoggingView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableFragmentLogging()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 94
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableServiceProxyLoggingView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableServiceProxyLogging()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 95
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableRefreshLoggingView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableRefreshLogging()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 96
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableVerboseLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnablePerformanceLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableLifecycleLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableFragmentLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableServiceProxyLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableRefreshLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    invoke-static {v0}, Lcom/android/email/service/EmailServiceUtils;->isExchangeAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 116
    .local v1, exchangeAvailable:Z
    if-eqz v1, :cond_0

    .line 117
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->DEBUG_EXCHANGE_VERBOSE:Z

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 118
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->DEBUG_EXCHANGE_FILE:Z

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 119
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    :goto_0
    const v3, 0x7f0f0091

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v3, 0x7f0f0092

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    .line 130
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 131
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    const v3, 0x7f0f0093

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

    .line 135
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getForceOneMinuteRefresh()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 136
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 138
    const v3, 0x7f0f0094

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    .line 140
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 141
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    return-object v2

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
