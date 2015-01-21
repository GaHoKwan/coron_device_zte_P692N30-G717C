.class Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$1;
.super Ljava/lang/Object;
.source "PrivacySettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 109
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->checkBackupNotice()V

    .line 110
    return-void
.end method
