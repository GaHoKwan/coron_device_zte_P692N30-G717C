.class public Lcom/zte/engineer/SmsSecurityMetaRead;
.super Landroid/preference/PreferenceActivity;
.source "SmsSecurityMetaRead.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.SmsSecurityMetaRead"


# instance fields
.field private MetaOp:Ljava/lang/String;

.field private SmsUsed:Ljava/lang/String;

.field private mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/SmsSecurityMetaRead;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {}, Lcom/zte/engineer/EmodeSvrManager;->getInstance()Lcom/zte/engineer/EmodeSvrManager;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/engineer/SmsSecurityMetaRead;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    .line 43
    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityMetaRead;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityMetaRead;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Lcom/zte/engineer/EmodeSvrManager;->getDownloadFlagState(I)I

    move-result v0

    .line 46
    .local v0, op:I
    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityMetaRead;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    const/16 v3, 0x804

    invoke-virtual {v2, v3}, Lcom/zte/engineer/EmodeSvrManager;->getDownloadFlagState(I)I

    move-result v1

    .line 48
    .local v1, used:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/engineer/SmsSecurityMetaRead;->MetaOp:Ljava/lang/String;

    .line 49
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/engineer/SmsSecurityMetaRead;->SmsUsed:Ljava/lang/String;

    .line 53
    .end local v0           #op:I
    .end local v1           #used:I
    :cond_0
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 55
    const-string v2, "meta_info0"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/engineer/SmsSecurityMetaRead;->MetaOp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    const-string v2, "meta_info1"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/engineer/SmsSecurityMetaRead;->SmsUsed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
