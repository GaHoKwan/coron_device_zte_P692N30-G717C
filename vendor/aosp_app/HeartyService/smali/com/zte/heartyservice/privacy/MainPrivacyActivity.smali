.class public Lcom/zte/heartyservice/privacy/MainPrivacyActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "MainPrivacyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/MainPrivacyActivity$1;,
        Lcom/zte/heartyservice/privacy/MainPrivacyActivity$ScanSdFilesReceiver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private appLockView:Landroid/view/View;

.field private callRecordTxtView:Landroid/view/View;

.field private contactTxtView:Landroid/view/View;

.field private mCalllogNoticeView:Landroid/widget/TextView;

.field private mSmsNoticeView:Landroid/widget/TextView;

.field private otherFilesView:Landroid/view/View;

.field private passwordProtectView:Landroid/view/View;

.field private photoVideoView:Landroid/view/View;

.field private scanReceiver:Lcom/zte/heartyservice/privacy/MainPrivacyActivity$ScanSdFilesReceiver;

.field private smsTxtView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 34
    const-string v0, "MainPrivacyActivity"

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->scanReceiver:Lcom/zte/heartyservice/privacy/MainPrivacyActivity$ScanSdFilesReceiver;

    .line 68
    return-void
.end method

.method private eventInit()V
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->photoVideoView:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->photoVideoView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f0e0170

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->otherFilesView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->otherFilesView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f0e0173

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->passwordProtectView:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->passwordProtectView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->appLockView:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->appLockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->appLockView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_0
    const v0, 0x7f0e0168

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->smsTxtView:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->smsTxtView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0e016a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->contactTxtView:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->contactTxtView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0e016b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->callRecordTxtView:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->callRecordTxtView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f0e0169

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->mSmsNoticeView:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0e016c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->mCalllogNoticeView:Landroid/widget/TextView;

    .line 112
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 85
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 86
    .local v0, actionBar:Landroid/app/ActionBar;
    const v1, 0x7f0a02fb

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 89
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 91
    return-void
.end method

.method private initScan()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/zte/heartyservice/privacy/MainPrivacyActivity$ScanSdFilesReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity$ScanSdFilesReceiver;-><init>(Lcom/zte/heartyservice/privacy/MainPrivacyActivity;Lcom/zte/heartyservice/privacy/MainPrivacyActivity$1;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->scanReceiver:Lcom/zte/heartyservice/privacy/MainPrivacyActivity$ScanSdFilesReceiver;

    .line 58
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->scanReceiver:Lcom/zte/heartyservice/privacy/MainPrivacyActivity$ScanSdFilesReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 171
    .local v1, viewId:I
    const/4 v0, 0x0

    .line 172
    .local v0, intent:Landroid/content/Intent;
    packed-switch v1, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StringUtils;->isObjNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    :cond_1
    return-void

    .line 175
    :pswitch_1
    const-string v2, "MainPrivacyActivity"

    const-string v3, "photo_video"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->checkCanStartActivity()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 177
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "com.zte.heartyservice.intent.action.startActivity.PRIVACY_CAMERA_VIDEO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 182
    :pswitch_2
    const-string v2, "MainPrivacyActivity"

    const-string v3, "other_files"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->checkCanStartActivity()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 184
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "com.zte.heartyservice.intent.action.startActivity.PRIVACY_OTHER_FILES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 189
    :pswitch_3
    const-string v2, "MainPrivacyActivity"

    const-string v3, "password_protector"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 194
    :pswitch_4
    const-string v2, "MainPrivacyActivity"

    const-string v3, "app_lock"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/privacy/AppLockActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 199
    :pswitch_5
    const-string v2, "MainPrivacyActivity"

    const-string v3, "sms"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "intent.action.startActivity.PRIVACY_CONTACTS_SMS_CALLLOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "select_tab"

    sget-object v3, Lcom/zte/heartyservice/privacy/ContactType;->FROM_SMS:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v3}, Lcom/zte/heartyservice/privacy/ContactType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 205
    :pswitch_6
    const-string v2, "MainPrivacyActivity"

    const-string v3, "contact"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "intent.action.startActivity.PRIVACY_CONTACTS_SMS_CALLLOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "select_tab"

    sget-object v3, Lcom/zte/heartyservice/privacy/ContactType;->FROM_PHONE_SIM:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v3}, Lcom/zte/heartyservice/privacy/ContactType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 211
    :pswitch_7
    const-string v2, "MainPrivacyActivity"

    const-string v3, "call_record"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "intent.action.startActivity.PRIVACY_CONTACTS_SMS_CALLLOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "select_tab"

    sget-object v3, Lcom/zte/heartyservice/privacy/ContactType;->FROM_CALLLOG:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v3}, Lcom/zte/heartyservice/privacy/ContactType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0168
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f0a02fb

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->eventInit()V

    .line 44
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->initScan()V

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 117
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->scanReceiver:Lcom/zte/heartyservice/privacy/MainPrivacyActivity$ScanSdFilesReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onDestroy()V

    .line 66
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 132
    const-string v2, "MainPrivacyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item.getItemId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 134
    .local v1, itemId:I
    packed-switch v1, :pswitch_data_0

    .line 164
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 159
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zte/heartyservice/privacy/PrivacySetting;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v0, i:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 161
    const/4 v2, 0x1

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x7f0e0405
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 225
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onResume()V

    .line 226
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->invalidateOptionsMenu()V

    .line 228
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    .line 229
    .local v0, helper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getMsgNumInPrivacy()I

    move-result v1

    .line 230
    .local v1, num:I
    if-lez v1, :cond_0

    .line 231
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->mSmsNoticeView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->mSmsNoticeView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    :goto_0
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getCallLogNumInPrivacy()I

    move-result v1

    .line 238
    if-lez v1, :cond_1

    .line 239
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->mCalllogNoticeView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->mCalllogNoticeView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :goto_1
    return-void

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->mSmsNoticeView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;->mCalllogNoticeView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
