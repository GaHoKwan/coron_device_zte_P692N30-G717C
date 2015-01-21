.class public Lcom/android/email/service/EmailExternalOmacpService;
.super Landroid/app/Service;
.source "EmailExternalOmacpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/EmailExternalOmacpService$EmailCapability;
    }
.end annotation


# static fields
.field private static final ACCOUNT_WHERE_HOSTAUTH:Ljava/lang/String; = "hostAuthKeyRecv=?"

.field private static final APPID_KEY:Ljava/lang/String; = "25"

.field private static final APPID_VALUE:Ljava/lang/String; = "25"

.field private static final CONNECT_FAIL:I = -0x1

.field private static final CONNECT_SUCCESS:I = 0x1

.field private static final HOSTAUTH_WHERE_CREDENTIALS:Ljava/lang/String; = "address like ? and login like ? and protocol not like \"smtp\""

.field private static final IMAP_APPID:Ljava/lang/String; = null

.field private static final IMAP_DEFAULT_PORT_NUM:Ljava/lang/String; = null

.field private static final IMAP_DEFAULT_SERVICE:Ljava/lang/String; = null

.field private static final IMAP_SERVER_TYPE:I = 0x3

.field private static final IMAP_SSL_SERVICE:Ljava/lang/String; = null

.field private static final POP_APPID:Ljava/lang/String; = null

.field private static final POP_DEFAULT_PORT_NUM:Ljava/lang/String; = null

.field private static final POP_DEFAULT_SERVICE:Ljava/lang/String; = null

.field private static final POP_SERVER_TYPE:I = 0x2

.field private static final POP_SSL_SERVICE:Ljava/lang/String; = null

.field private static final SMTP_APPID:Ljava/lang/String; = null

.field private static final SMTP_DEAULT_PORT_NUM:Ljava/lang/String; = null

.field private static final SMTP_DEFAULT_SERVICE:Ljava/lang/String; = null

.field private static final SMTP_SERVER_TYPE:I = 0x1

.field private static final SMTP_SSL_SERVICE:Ljava/lang/String; = null

.field private static final STR_SSL:Ljava/lang/String; = "ssl"

.field private static final STR_TLS:Ljava/lang/String; = "tls"

.field private static final SYNC_INTERVAL:I = 0xf

.field private static final TAG:Ljava/lang/String; = "OmacpAddAccountService"


# instance fields
.field private mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field private mFrom:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mProviderId:Ljava/lang/String;

.field private mRtAddr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8f

    const/16 v2, 0x6e

    const/16 v1, 0x19

    .line 82
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/EmailExternalOmacpService;->SMTP_APPID:Ljava/lang/String;

    .line 83
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/EmailExternalOmacpService;->SMTP_DEAULT_PORT_NUM:Ljava/lang/String;

    .line 85
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/EmailExternalOmacpService;->SMTP_DEFAULT_SERVICE:Ljava/lang/String;

    .line 87
    const/16 v0, 0x1d1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/EmailExternalOmacpService;->SMTP_SSL_SERVICE:Ljava/lang/String;

    .line 89
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/EmailExternalOmacpService;->POP_DEFAULT_PORT_NUM:Ljava/lang/String;

    .line 91
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/EmailExternalOmacpService;->IMAP_DEFAULT_PORT_NUM:Ljava/lang/String;

    .line 93
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/EmailExternalOmacpService;->POP_DEFAULT_SERVICE:Ljava/lang/String;

    .line 95
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/EmailExternalOmacpService;->IMAP_DEFAULT_SERVICE:Ljava/lang/String;

    .line 97
    const/16 v0, 0x3e3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/EmailExternalOmacpService;->POP_SSL_SERVICE:Ljava/lang/String;

    .line 99
    const/16 v0, 0x3e1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/EmailExternalOmacpService;->IMAP_SSL_SERVICE:Ljava/lang/String;

    .line 101
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/EmailExternalOmacpService;->POP_APPID:Ljava/lang/String;

    .line 102
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/EmailExternalOmacpService;->IMAP_APPID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 119
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/EmailExternalOmacpService;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 123
    new-instance v0, Lcom/android/email/service/EmailExternalOmacpService$1;

    invoke-direct {v0, p0}, Lcom/android/email/service/EmailExternalOmacpService$1;-><init>(Lcom/android/email/service/EmailExternalOmacpService;)V

    iput-object v0, p0, Lcom/android/email/service/EmailExternalOmacpService;->mHandler:Landroid/os/Handler;

    .line 563
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/EmailExternalOmacpService;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/email/service/EmailExternalOmacpService;->addAccount(Lcom/android/emailcommon/provider/Account;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/service/EmailExternalOmacpService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/email/service/EmailExternalOmacpService;->sendResultToOmacp(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/service/EmailExternalOmacpService;ILcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/EmailExternalOmacpService;->sendMessage(ILcom/android/emailcommon/provider/Account;)V

    return-void
.end method

.method private addAccount(Lcom/android/emailcommon/provider/Account;)V
    .locals 8
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 502
    const-string v0, "OmacpAddAccountService"

    const-string v1, "add Account is beginning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v0

    and-int/lit8 v6, v0, -0x2

    .line 504
    .local v6, newFlags:I
    or-int/lit8 v6, v6, 0x1

    .line 505
    invoke-virtual {p1, v6}, Lcom/android/emailcommon/provider/Account;->setFlags(I)V

    .line 506
    iget-object v0, p0, Lcom/android/email/service/EmailExternalOmacpService;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/Account;->setEmailAddress(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/android/email/service/EmailExternalOmacpService;->mRtAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/email/service/EmailExternalOmacpService;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 509
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/Account;->setSyncInterval(I)V

    .line 510
    invoke-virtual {p1, v2}, Lcom/android/emailcommon/provider/Account;->setDefaultAccount(Z)V

    .line 511
    iget v0, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 512
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const-string v0, "OmacpAddAccountService"

    const-string v1, "update Account send & receive information"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 515
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 518
    :cond_0
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_2

    move-object v7, v5

    .line 519
    .local v7, protocal:Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_1

    .line 520
    invoke-static {p1, v7}, Lcom/android/email/service/EmailExternalOmacpService;->setFlagsForProtocol(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)V

    .line 522
    :cond_1
    const-string v0, "OmacpAddAccountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add Account with flag : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-static {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 525
    const-string v0, "OmacpAddAccountService"

    const-string v1, "AccountSettingsUtils.commitSettings save email Account "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    .line 527
    invoke-static/range {v0 .. v5}, Lcom/android/email/service/MailService;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLandroid/accounts/AccountManagerCallback;)V

    .line 528
    const-string v0, "OmacpAddAccountService"

    const-string v1, "MailService.setupAccountManagerAccount save system Account "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 530
    return-void

    .line 518
    .end local v7           #protocal:Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v7, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    goto :goto_0
.end method

.method static buildCapabilityResultToOmacp(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 542
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.omacp.capability.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appId"

    const-string v2, "25"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    const-string v1, "email"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    const-string v1, "email_provider_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 546
    const-string v1, "email_outbound_addr"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 547
    const-string v1, "email_outbound_port_number"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 548
    const-string v1, "email_outbound_secure"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 549
    const-string v1, "email_outbound_auth_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 550
    const-string v1, "email_outbound_user_name"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 551
    const-string v1, "email_outbound_password"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    const-string v1, "email_from"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 553
    const-string v1, "email_rt_addr"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 554
    const-string v1, "email_inbound_addr"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 555
    const-string v1, "email_inbound_port_number"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 556
    const-string v1, "email_inbound_secure"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    const-string v1, "email_inbound_user_name"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 558
    const-string v1, "email_inbound_password"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 559
    const-string v1, "EmailExternalReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return OMACP capability result intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 561
    return-void
.end method

.method private checkEmailServerConnect(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 453
    new-instance v0, Lcom/android/email/service/EmailExternalOmacpService$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/email/service/EmailExternalOmacpService$2;-><init>(Lcom/android/email/service/EmailExternalOmacpService;Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V

    .line 482
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 483
    return-void
.end method

.method private getScheme(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "service"
    .parameter "serverType"

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, scheme:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p2, :cond_5

    .line 348
    sget-object v1, Lcom/android/email/service/EmailExternalOmacpService;->SMTP_DEFAULT_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    const-string v0, "smtp"

    .line 376
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    const-string v1, "STARTTLS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tls"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 351
    :cond_2
    const-string v0, "smtp+tls+"

    goto :goto_0

    .line 352
    :cond_3
    sget-object v1, Lcom/android/email/service/EmailExternalOmacpService;->SMTP_SSL_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ssl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    :cond_4
    const-string v0, "smtp+ssl+"

    goto :goto_0

    .line 356
    :cond_5
    const/4 v1, 0x2

    if-ne v1, p2, :cond_a

    .line 357
    sget-object v1, Lcom/android/email/service/EmailExternalOmacpService;->POP_DEFAULT_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 358
    const-string v0, "pop3"

    goto :goto_0

    .line 359
    :cond_6
    const-string v1, "STARTTLS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "tls"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 360
    :cond_7
    const-string v0, "pop3+tls+"

    goto :goto_0

    .line 361
    :cond_8
    sget-object v1, Lcom/android/email/service/EmailExternalOmacpService;->POP_SSL_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "ssl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    :cond_9
    const-string v0, "pop3+ssl+"

    goto :goto_0

    .line 365
    :cond_a
    const/4 v1, 0x3

    if-ne v1, p2, :cond_0

    .line 366
    sget-object v1, Lcom/android/email/service/EmailExternalOmacpService;->IMAP_DEFAULT_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 367
    const-string v0, "imap"

    goto :goto_0

    .line 368
    :cond_b
    const-string v1, "STARTTLS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "tls"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 369
    :cond_c
    const-string v0, "imap+tls+"

    goto :goto_0

    .line 370
    :cond_d
    sget-object v1, Lcom/android/email/service/EmailExternalOmacpService;->IMAP_SSL_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "ssl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    :cond_e
    const-string v0, "imap+ssl+"

    goto/16 :goto_0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 396
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInvalidEmailAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "email"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/android/email/service/EmailExternalOmacpService;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/service/EmailExternalOmacpService;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parserOmacpRequest(Landroid/content/Intent;)Lcom/android/emailcommon/provider/Account;
    .locals 41
    .parameter "intent"

    .prologue
    .line 164
    const-string v6, "OmacpAddAccountService"

    const-string v7, "parser Omacp Request is begin"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v6, "email_setting_intent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v32

    .line 166
    .local v32, omacpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz v32, :cond_0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    :cond_0
    const-string v6, "OmacpAddAccountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OMACP email_setting_intent is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/16 v21, 0x0

    .line 335
    :cond_1
    :goto_0
    return-object v21

    .line 170
    :cond_2
    new-instance v21, Lcom/android/emailcommon/provider/Account;

    invoke-direct/range {v21 .. v21}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 171
    .local v21, account:Lcom/android/emailcommon/provider/Account;
    const/4 v5, 0x0

    .line 172
    .local v5, addr:Ljava/lang/String;
    const/16 v33, 0x0

    .line 173
    .local v33, portNbr:Ljava/lang/String;
    const/16 v37, 0x0

    .line 174
    .local v37, service:Ljava/lang/String;
    const/4 v3, 0x0

    .line 175
    .local v3, scheme:Ljava/lang/String;
    const/16 v23, 0x0

    .line 176
    .local v23, appAddr:Ljava/util/ArrayList;
    const/16 v24, 0x0

    .line 177
    .local v24, appAuth:Ljava/util/ArrayList;
    const/4 v12, 0x0

    .line 178
    .local v12, uri:Ljava/net/URI;
    const/4 v2, 0x0

    .line 179
    .local v2, smtpUri:Ljava/net/URI;
    const/16 v25, 0x0

    .line 180
    .local v25, appId:Ljava/lang/String;
    const/16 v27, 0x0

    .line 182
    .local v27, authType:Ljava/lang/String;
    :try_start_0
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    move-object/from16 v38, v2

    .end local v2           #smtpUri:Ljava/net/URI;
    .local v38, smtpUri:Ljava/net/URI;
    move-object/from16 v40, v12

    .end local v12           #uri:Ljava/net/URI;
    .local v40, uri:Ljava/net/URI;
    :goto_1
    :try_start_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/Intent;

    .line 183
    .local v29, emailIntent:Landroid/content/Intent;
    const-string v6, "APPID"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 184
    const-string v6, "APPADDR"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 185
    if-eqz v23, :cond_4

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 186
    const/16 v30, 0x0

    .local v30, i:I
    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v30

    if-ge v0, v6, :cond_5

    .line 187
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 188
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    .line 189
    .local v22, addrMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "ADDR"

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 190
    const-string v6, "PORTNBR"

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object/from16 v33, v0

    .line 191
    const-string v6, "SERVICE"

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object/from16 v37, v0

    .line 186
    .end local v22           #addrMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 195
    .end local v30           #i:I
    :cond_4
    const-string v6, "ADDR"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/email/service/EmailExternalOmacpService;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 198
    const-string v6, "OmacpAddAccountService"

    const-string v7, "addr is empty"

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 201
    :cond_6
    const-string v6, "APPAUTH"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 202
    const/4 v11, 0x0

    .line 203
    .local v11, aAuthName:Ljava/lang/String;
    const/16 v20, 0x0

    .line 204
    .local v20, aAuthSecret:Ljava/lang/String;
    if-eqz v24, :cond_8

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 205
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_3
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v30

    if-ge v0, v6, :cond_8

    .line 206
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/Map;

    if-eqz v6, :cond_7

    .line 207
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map;

    .line 208
    .local v26, authMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "AAUTHTYPE"

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object/from16 v27, v0

    .line 209
    const-string v6, "AAUTHNAME"

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #aAuthName:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 210
    .restart local v11       #aAuthName:Ljava/lang/String;
    const-string v6, "AAUTHSECRET"

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #aAuthSecret:Ljava/lang/String;
    check-cast v20, Ljava/lang/String;

    .line 205
    .end local v26           #authMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20       #aAuthSecret:Ljava/lang/String;
    :cond_7
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 214
    .end local v30           #i:I
    :cond_8
    sget-object v6, Lcom/android/email/service/EmailExternalOmacpService;->SMTP_APPID:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 215
    const-string v6, "PROVIDER-ID"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mProviderId:Ljava/lang/String;

    .line 216
    const-string v6, "FROM"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mFrom:Ljava/lang/String;

    .line 217
    const-string v6, "RT-ADDR"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mRtAddr:Ljava/lang/String;

    .line 219
    const-string v6, "OmacpAddAccountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OMACP] smtp param: PROVIDER-ID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/service/EmailExternalOmacpService;->mProviderId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";ADDR="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";FROM="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/service/EmailExternalOmacpService;->mFrom:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";RT-ADDR="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/service/EmailExternalOmacpService;->mRtAddr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";PORT="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";SERVICE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";AAUTHTYPE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";AAUTHNAME="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";AAUTHSECRET="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mFrom:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/email/service/EmailExternalOmacpService;->isInvalidEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 224
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 228
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mFrom:Ljava/lang/String;

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 229
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mFrom:Ljava/lang/String;

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, ">"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mFrom:Ljava/lang/String;

    .line 231
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mRtAddr:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 232
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mRtAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/email/service/EmailExternalOmacpService;->isInvalidEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 233
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 235
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mRtAddr:Ljava/lang/String;

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 236
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mRtAddr:Ljava/lang/String;

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mRtAddr:Ljava/lang/String;

    .line 244
    :cond_c
    :goto_4
    const/4 v4, 0x0

    .line 248
    .local v4, userInfo:Ljava/lang/String;
    const-string v6, "LOGIN"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 249
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/email/service/EmailExternalOmacpService;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/email/service/EmailExternalOmacpService;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 250
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 241
    .end local v4           #userInfo:Ljava/lang/String;
    :cond_e
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/email/service/EmailExternalOmacpService;->mRtAddr:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 318
    .end local v11           #aAuthName:Ljava/lang/String;
    .end local v20           #aAuthSecret:Ljava/lang/String;
    .end local v29           #emailIntent:Landroid/content/Intent;
    :catch_0
    move-exception v28

    move-object/from16 v2, v38

    .end local v38           #smtpUri:Ljava/net/URI;
    .restart local v2       #smtpUri:Ljava/net/URI;
    move-object/from16 v12, v40

    .line 319
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v40           #uri:Ljava/net/URI;
    .restart local v12       #uri:Ljava/net/URI;
    .local v28, e:Ljava/lang/Exception;
    :goto_5
    const-string v6, "OmacpAddAccountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-static {v6, v7, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 252
    .end local v2           #smtpUri:Ljava/net/URI;
    .end local v12           #uri:Ljava/net/URI;
    .end local v28           #e:Ljava/lang/Exception;
    .restart local v4       #userInfo:Ljava/lang/String;
    .restart local v11       #aAuthName:Ljava/lang/String;
    .restart local v20       #aAuthSecret:Ljava/lang/String;
    .restart local v29       #emailIntent:Landroid/content/Intent;
    .restart local v31       #i$:Ljava/util/Iterator;
    .restart local v38       #smtpUri:Ljava/net/URI;
    .restart local v40       #uri:Ljava/net/URI;
    :cond_f
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    :cond_10
    if-nez v33, :cond_11

    sget-object v33, Lcom/android/email/service/EmailExternalOmacpService;->SMTP_DEAULT_PORT_NUM:Ljava/lang/String;

    .line 255
    :cond_11
    if-nez v37, :cond_12

    sget-object v37, Lcom/android/email/service/EmailExternalOmacpService;->SMTP_DEFAULT_SERVICE:Ljava/lang/String;

    .line 256
    :cond_12
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v6}, Lcom/android/email/service/EmailExternalOmacpService;->getScheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 257
    if-nez v3, :cond_13

    .line 258
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 260
    :cond_13
    new-instance v2, Ljava/net/URI;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 262
    .end local v38           #smtpUri:Ljava/net/URI;
    .restart local v2       #smtpUri:Ljava/net/URI;
    :try_start_3
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v35

    .line 263
    .local v35, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v12, v40

    .end local v4           #userInfo:Ljava/lang/String;
    .end local v35           #sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v40           #uri:Ljava/net/URI;
    .restart local v12       #uri:Ljava/net/URI;
    :goto_6
    move-object/from16 v38, v2

    .end local v2           #smtpUri:Ljava/net/URI;
    .restart local v38       #smtpUri:Ljava/net/URI;
    move-object/from16 v40, v12

    .line 317
    .end local v12           #uri:Ljava/net/URI;
    .restart local v40       #uri:Ljava/net/URI;
    goto/16 :goto_1

    .line 264
    :cond_14
    :try_start_4
    sget-object v6, Lcom/android/email/service/EmailExternalOmacpService;->POP_APPID:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 265
    const-string v6, "OmacpAddAccountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OMACP] pop param: ADDR="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";PORT="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";SERVICE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";AAUTHNAME="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";AAUTHSECRET="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/email/service/EmailExternalOmacpService;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/email/service/EmailExternalOmacpService;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 268
    :cond_15
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 270
    :cond_16
    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    move-object v10, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/email/service/EmailExternalOmacpService;->findDuplicateAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;

    move-result-object v39

    .line 271
    .local v39, tempAccount:Lcom/android/emailcommon/provider/Account;
    if-eqz v39, :cond_17

    .line 274
    move-object/from16 v0, v39

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v21

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 275
    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v21

    .line 277
    :cond_17
    if-nez v33, :cond_18

    sget-object v33, Lcom/android/email/service/EmailExternalOmacpService;->POP_DEFAULT_PORT_NUM:Ljava/lang/String;

    .line 278
    :cond_18
    if-nez v37, :cond_19

    sget-object v37, Lcom/android/email/service/EmailExternalOmacpService;->POP_DEFAULT_SERVICE:Ljava/lang/String;

    .line 279
    :cond_19
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v6}, Lcom/android/email/service/EmailExternalOmacpService;->getScheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 280
    if-nez v3, :cond_1a

    .line 281
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 283
    :cond_1a
    new-instance v12, Ljava/net/URI;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    move-object v15, v5

    invoke-direct/range {v12 .. v19}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 285
    .end local v40           #uri:Ljava/net/URI;
    .restart local v12       #uri:Ljava/net/URI;
    :try_start_5
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v34

    .line 286
    .local v34, recAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v12}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-static {v0, v6}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v2, v38

    .line 288
    .end local v38           #smtpUri:Ljava/net/URI;
    .restart local v2       #smtpUri:Ljava/net/URI;
    goto/16 :goto_6

    .end local v2           #smtpUri:Ljava/net/URI;
    .end local v12           #uri:Ljava/net/URI;
    .end local v34           #recAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v39           #tempAccount:Lcom/android/emailcommon/provider/Account;
    .restart local v38       #smtpUri:Ljava/net/URI;
    .restart local v40       #uri:Ljava/net/URI;
    :cond_1b
    :try_start_6
    sget-object v6, Lcom/android/email/service/EmailExternalOmacpService;->IMAP_APPID:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 289
    const-string v6, "OmacpAddAccountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OMACP] imap param: ADDR="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";PORT="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";SERVICE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";AAUTHNAME="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";AAUTHSECRET="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/email/service/EmailExternalOmacpService;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/email/service/EmailExternalOmacpService;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 293
    :cond_1c
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 295
    :cond_1d
    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    move-object v10, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/email/service/EmailExternalOmacpService;->findDuplicateAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;

    move-result-object v39

    .line 296
    .restart local v39       #tempAccount:Lcom/android/emailcommon/provider/Account;
    if-eqz v39, :cond_1e

    .line 299
    move-object/from16 v0, v39

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v21

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 300
    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v21

    .line 302
    :cond_1e
    if-nez v33, :cond_1f

    sget-object v33, Lcom/android/email/service/EmailExternalOmacpService;->IMAP_DEFAULT_PORT_NUM:Ljava/lang/String;

    .line 303
    :cond_1f
    if-nez v37, :cond_20

    sget-object v37, Lcom/android/email/service/EmailExternalOmacpService;->IMAP_DEFAULT_SERVICE:Ljava/lang/String;

    .line 304
    :cond_20
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v6}, Lcom/android/email/service/EmailExternalOmacpService;->getScheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 305
    if-nez v3, :cond_21

    .line 306
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 308
    :cond_21
    new-instance v12, Ljava/net/URI;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    move-object v15, v5

    invoke-direct/range {v12 .. v19}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 310
    .end local v40           #uri:Ljava/net/URI;
    .restart local v12       #uri:Ljava/net/URI;
    const/4 v6, 0x2

    :try_start_7
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/emailcommon/provider/Account;->setDeletePolicy(I)V

    .line 311
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v34

    .line 312
    .restart local v34       #recAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v12}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-static {v0, v6}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-object/from16 v2, v38

    .line 314
    .end local v38           #smtpUri:Ljava/net/URI;
    .restart local v2       #smtpUri:Ljava/net/URI;
    goto/16 :goto_6

    .line 315
    .end local v2           #smtpUri:Ljava/net/URI;
    .end local v12           #uri:Ljava/net/URI;
    .end local v34           #recAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v39           #tempAccount:Lcom/android/emailcommon/provider/Account;
    .restart local v38       #smtpUri:Ljava/net/URI;
    .restart local v40       #uri:Ljava/net/URI;
    :cond_22
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 325
    .end local v11           #aAuthName:Ljava/lang/String;
    .end local v20           #aAuthSecret:Ljava/lang/String;
    .end local v29           #emailIntent:Landroid/content/Intent;
    :cond_23
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 326
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v36

    .line 327
    .local v36, sendHostAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual/range {v38 .. v38}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-static {v0, v6}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 330
    .end local v36           #sendHostAuth:Lcom/android/emailcommon/provider/HostAuth;
    :catch_1
    move-exception v28

    .line 331
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v6, "OmacpAddAccountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-static {v6, v7, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 318
    .end local v28           #e:Ljava/lang/Exception;
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v38           #smtpUri:Ljava/net/URI;
    .end local v40           #uri:Ljava/net/URI;
    .restart local v2       #smtpUri:Ljava/net/URI;
    .restart local v12       #uri:Ljava/net/URI;
    :catch_2
    move-exception v28

    goto/16 :goto_5

    .end local v12           #uri:Ljava/net/URI;
    .restart local v4       #userInfo:Ljava/lang/String;
    .restart local v11       #aAuthName:Ljava/lang/String;
    .restart local v20       #aAuthSecret:Ljava/lang/String;
    .restart local v29       #emailIntent:Landroid/content/Intent;
    .restart local v31       #i$:Ljava/util/Iterator;
    .restart local v40       #uri:Ljava/net/URI;
    :catch_3
    move-exception v28

    move-object/from16 v12, v40

    .end local v40           #uri:Ljava/net/URI;
    .restart local v12       #uri:Ljava/net/URI;
    goto/16 :goto_5

    .end local v2           #smtpUri:Ljava/net/URI;
    .end local v4           #userInfo:Ljava/lang/String;
    .restart local v38       #smtpUri:Ljava/net/URI;
    .restart local v39       #tempAccount:Lcom/android/emailcommon/provider/Account;
    :catch_4
    move-exception v28

    move-object/from16 v2, v38

    .end local v38           #smtpUri:Ljava/net/URI;
    .restart local v2       #smtpUri:Ljava/net/URI;
    goto/16 :goto_5
.end method

.method private sendMessage(ILcom/android/emailcommon/provider/Account;)V
    .locals 2
    .parameter "isConnect"
    .parameter "account"

    .prologue
    .line 486
    const/4 v1, -0x1

    if-ne v1, p1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/email/service/EmailExternalOmacpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/email/service/EmailExternalOmacpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 490
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 491
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Lcom/android/email/service/EmailExternalOmacpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendResultToOmacp(Z)V
    .locals 3
    .parameter "isSucceed"

    .prologue
    .line 533
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 534
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.omacp.settings.result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v1, "appId"

    const-string v2, "25"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 538
    return-void
.end method

.method static setFlagsForProtocol(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "protocol"

    .prologue
    .line 603
    const-string v0, "imap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/provider/Account;->setDeletePolicy(I)V

    .line 607
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 609
    :cond_0
    return-void
.end method


# virtual methods
.method public findDuplicateAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;
    .locals 14
    .parameter "context"
    .parameter "allowAccountId"
    .parameter "hostName"
    .parameter "userLogin"

    .prologue
    .line 411
    const/4 v6, 0x0

    .line 412
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 413
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "address like ? and login like ? and protocol not like \"smtp\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 418
    .local v9, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 423
    .local v11, hostAuthId:J
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "hostAuthKeyRecv=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 428
    .local v10, c2:Landroid/database/Cursor;
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 430
    .local v7, accountId:J
    cmp-long v1, v7, p2

    if-eqz v1, :cond_0

    .line 431
    invoke-static {p1, v7, v8}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    goto :goto_1

    .line 435
    .end local v7           #accountId:J
    :cond_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 439
    .end local v10           #c2:Landroid/database/Cursor;
    .end local v11           #hostAuthId:J
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 435
    .restart local v10       #c2:Landroid/database/Cursor;
    .restart local v11       #hostAuthId:J
    :catchall_1
    move-exception v1

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 439
    .end local v10           #c2:Landroid/database/Cursor;
    .end local v11           #hostAuthId:J
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 442
    return-object v6
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 143
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 144
    .local v1, omacpIntent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0, v1}, Lcom/android/email/service/EmailExternalOmacpService;->parserOmacpRequest(Landroid/content/Intent;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 146
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    const-string v2, "OmacpAddAccountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0, p0, v0}, Lcom/android/email/service/EmailExternalOmacpService;->checkEmailServerConnect(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 153
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_0
    :goto_0
    const/4 v2, 0x2

    return v2

    .line 150
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/email/service/EmailExternalOmacpService;->sendResultToOmacp(Z)V

    goto :goto_0
.end method

.method public testParseOmacpIntent(Landroid/content/Intent;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .parameter "intent"

    .prologue
    .line 613
    invoke-direct {p0, p1}, Lcom/android/email/service/EmailExternalOmacpService;->parserOmacpRequest(Landroid/content/Intent;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    return-object v0
.end method
