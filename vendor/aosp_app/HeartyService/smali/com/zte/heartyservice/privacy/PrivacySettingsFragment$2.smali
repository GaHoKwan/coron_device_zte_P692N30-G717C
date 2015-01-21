.class Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$2;
.super Ljava/lang/Object;
.source "PrivacySettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->showPatternFeedBackDialog()V
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
    .line 158
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$2;->this$0:Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$2;->this$0:Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->mChecked:[Z
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->access$000(Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacySetting;->setPatternVibrate(Z)V

    .line 164
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$2;->this$0:Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->mChecked:[Z
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->access$000(Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacySetting;->setPatternShowTrack(Z)V

    .line 165
    return-void
.end method
