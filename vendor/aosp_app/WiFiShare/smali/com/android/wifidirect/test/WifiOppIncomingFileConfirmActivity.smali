.class public Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiOppIncomingFileConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final D:Z = true

.field private static final DISMISS_TIMEOUT_DIALOG:I = 0x0

.field private static final DISMISS_TIMEOUT_DIALOG_VALUE:I = 0x7d0

.field private static final PREFERENCE_USER_TIMEOUT:Ljava/lang/String; = "user_timeout"

.field private static final TAG:Ljava/lang/String; = "WifiIncomingFileConfirmActivity"

.field private static final V:Z = true


# instance fields
.field private mContentView:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

.field private mUpdateValues:Landroid/content/ContentValues;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 82
    new-instance v0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity$1;-><init>(Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity$2;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity$2;-><init>(Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->onTimeout()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 7

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 130
    .local v1, view:Landroid/view/View;
    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    .line 132
    const v2, 0x7f080022

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v5, v5, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mSendDeviceName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v5, v5, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-wide v5, v5, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mTotalBytes:J

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-object v1
.end method

.method private onTimeout()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 204
    iput-boolean v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 205
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    const v1, 0x7f080026

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mSendDeviceName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080025

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 213
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 141
    const-string v0, "WifiIncomingFileConfirmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    packed-switch p2, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeout:Z

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    .line 147
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    const-string v1, "confirm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    :pswitch_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    .line 158
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    const-string v1, "confirm"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    .line 98
    new-instance v2, Lcom/android/wifidirect/test/WifiOppTransferInfo;

    invoke-direct {v2}, Lcom/android/wifidirect/test/WifiOppTransferInfo;-><init>()V

    iput-object v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    .line 99
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/wifidirect/test/WifiOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/wifidirect/test/WifiOppTransferInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    .line 100
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    if-nez v2, :cond_0

    .line 101
    const-string v2, "WifiIncomingFileConfirmActivity"

    const-string v3, "Error: Can not get data from db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->finish()V

    .line 125
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 108
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x1080027

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 109
    const v2, 0x7f080021

    invoke-virtual {p0, v2}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 110
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 111
    const v2, 0x7f080024

    invoke-virtual {p0, v2}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 112
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    const v2, 0x7f080023

    invoke-virtual {p0, v2}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 114
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->setupAlert()V

    .line 116
    const-string v2, "WifiIncomingFileConfirmActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-boolean v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeout:Z

    if-eqz v2, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->onTimeout()V

    .line 121
    :cond_1
    const-string v2, "WifiIncomingFileConfirmActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiIncomingFileConfirmActivity: Got uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 183
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 168
    const-string v2, "WifiIncomingFileConfirmActivity"

    const-string v3, "onKeyDown() called; Key: back key"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    .line 170
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    const-string v3, "visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    const v2, 0x7f08005c

    invoke-virtual {p0, v2}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 174
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->finish()V

    .line 177
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 189
    const-string v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 190
    const-string v0, "WifiIncomingFileConfirmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState() mTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeout:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->onTimeout()V

    .line 194
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    const-string v0, "WifiIncomingFileConfirmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState() mTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v0, "user_timeout"

    iget-boolean v1, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    return-void
.end method
