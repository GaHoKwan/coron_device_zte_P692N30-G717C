.class public Lcom/zte/engineer/SmsSecurityConfRead;
.super Landroid/preference/PreferenceActivity;
.source "SmsSecurityConfRead.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.SmsSecurityConfRead"


# instance fields
.field private AccessType:Ljava/lang/String;

.field private AntifakeSMS:Ljava/lang/String;

.field private BeyoundTimes:Ljava/lang/String;

.field private DefaultSendToNumber:Ljava/lang/String;

.field private IsFactorModal:Ljava/lang/String;

.field private IsSendedOK:Ljava/lang/String;

.field private SendToNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getIsSendedOK()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityConfRead;->IsSendedOK:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getBeyoundTimes()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityConfRead;->BeyoundTimes:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getAccessType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityConfRead;->AccessType:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getAntifakeSMS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityConfRead;->AntifakeSMS:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getIsFactorModal()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityConfRead;->IsFactorModal:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSendToNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityConfRead;->SendToNumber:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getDefaultSendToNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityConfRead;->DefaultSendToNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :goto_0
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 61
    const-string v1, "emode_info0"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityConfRead;->IsSendedOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    const-string v1, "emode_info1"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityConfRead;->BeyoundTimes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 63
    const-string v1, "emode_info2"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityConfRead;->AccessType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    const-string v1, "emode_info3"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityConfRead;->AntifakeSMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    const-string v1, "emode_info4"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityConfRead;->IsFactorModal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    const-string v1, "emode_info5"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityConfRead;->SendToNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    const-string v1, "emode_info6"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityConfRead;->DefaultSendToNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 56
    .local v0, e:Lcom/zte/engineer/EmodeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
