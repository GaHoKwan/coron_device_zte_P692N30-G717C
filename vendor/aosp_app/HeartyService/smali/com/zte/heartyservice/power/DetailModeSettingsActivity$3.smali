.class Lcom/zte/heartyservice/power/DetailModeSettingsActivity$3;
.super Ljava/lang/Object;
.source "DetailModeSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->InitialListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$3;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$3;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    #calls: Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateBaseNet()V
    invoke-static {v0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->access$200(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    .line 227
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$3;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->netData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 228
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$3;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->sync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 229
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$3;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    #calls: Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateNetData()V
    invoke-static {v0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->access$300(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    .line 230
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$3;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    #calls: Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateSync()V
    invoke-static {v0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->access$400(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    .line 235
    const/4 v0, 0x1

    return v0
.end method
