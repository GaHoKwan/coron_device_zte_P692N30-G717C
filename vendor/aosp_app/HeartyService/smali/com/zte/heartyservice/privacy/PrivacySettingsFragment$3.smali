.class Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$3;
.super Ljava/lang/Object;
.source "PrivacySettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 149
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$3;->this$0:Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$3;->this$0:Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->mChecked:[Z
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->access$000(Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 153
    return-void
.end method
