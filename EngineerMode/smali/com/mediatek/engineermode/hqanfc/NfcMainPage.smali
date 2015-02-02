.class public Lcom/mediatek/engineermode/hqanfc/NfcMainPage;
.super Landroid/preference/PreferenceActivity;
.source "NfcMainPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/hqanfc/NfcMainPage$ConnectServerTask;
    }
.end annotation


# static fields
.field private static final DIALOG_WARN:I = 0x1

.field private static final KILL_LIB_COMMAND:Ljava/lang/String; = "kill -9 nfcstackp"

.field private static final START_LIB_COMMAND:Ljava/lang/String; = "./system/xbin/nfcstackp"

.field public static final TAG:Ljava/lang/String; = "EM/HQA/NFC"


# instance fields
.field private mShowDialog:Z

.field private mTask:Lcom/mediatek/engineermode/hqanfc/NfcMainPage$ConnectServerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcMainPage;->mShowDialog:Z

    .line 125
    return-void
.end method

.method private closeNFCServiceAtStart()V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 93
    .local v0, adp:Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "EM/HQA/NFC"

    const-string v2, "[NfcMainPage]Nfc service set off."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v1, "EM/HQA/NFC"

    const-string v2, "[NfcMainPage]Nfc service set off Fail."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    const-string v1, "EM/HQA/NFC"

    const-string v2, "[NfcMainPage]Nfc service is off"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private executeXbinFile(Ljava/lang/String;I)V
    .locals 4
    .parameter "command"
    .parameter "sleepTime"

    .prologue
    .line 105
    new-instance v1, Lcom/mediatek/engineermode/hqanfc/NfcMainPage$2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/engineermode/hqanfc/NfcMainPage$2;-><init>(Lcom/mediatek/engineermode/hqanfc/NfcMainPage;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 119
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "EM/HQA/NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NfcMainPage]executeXbinFile InterruptedException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 31
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f040004

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 35
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 36
    .local v0, adp:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 38
    iput-boolean v2, p0, Lcom/mediatek/engineermode/hqanfc/NfcMainPage;->mShowDialog:Z

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v1, "./system/xbin/nfcstackp"

    const/16 v2, 0x1f4

    invoke-direct {p0, v1, v2}, Lcom/mediatek/engineermode/hqanfc/NfcMainPage;->executeXbinFile(Ljava/lang/String;I)V

    .line 46
    new-instance v1, Lcom/mediatek/engineermode/hqanfc/NfcMainPage$ConnectServerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/engineermode/hqanfc/NfcMainPage$ConnectServerTask;-><init>(Lcom/mediatek/engineermode/hqanfc/NfcMainPage;Lcom/mediatek/engineermode/hqanfc/NfcMainPage$1;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/hqanfc/NfcMainPage;->mTask:Lcom/mediatek/engineermode/hqanfc/NfcMainPage$ConnectServerTask;

    .line 47
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/NfcMainPage;->mTask:Lcom/mediatek/engineermode/hqanfc/NfcMainPage$ConnectServerTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v0, 0x0

    .line 70
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 85
    const-string v2, "EM/HQA/NFC"

    const-string v3, "error dialog ID"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-object v1

    .line 72
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0804e1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 75
    const v2, 0x7f0804e2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 76
    const v2, 0x104000a

    new-instance v3, Lcom/mediatek/engineermode/hqanfc/NfcMainPage$1;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/hqanfc/NfcMainPage$1;-><init>(Lcom/mediatek/engineermode/hqanfc/NfcMainPage;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 83
    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 51
    const-string v0, "EM/HQA/NFC"

    const-string v1, "[NfcMainPage]Nfc main page onDestroy()."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcMainPage;->mShowDialog:Z

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->getInstance()Lcom/mediatek/engineermode/hqanfc/NfcClient;

    move-result-object v0

    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sendCommand(ILcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;)I

    .line 54
    invoke-static {}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->getInstance()Lcom/mediatek/engineermode/hqanfc/NfcClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->closeConnection()Z

    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcMainPage;->mTask:Lcom/mediatek/engineermode/hqanfc/NfcMainPage$ConnectServerTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 63
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 64
    return-void
.end method
