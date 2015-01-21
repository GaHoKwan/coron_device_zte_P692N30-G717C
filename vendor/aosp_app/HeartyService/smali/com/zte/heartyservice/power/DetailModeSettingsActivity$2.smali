.class Lcom/zte/heartyservice/power/DetailModeSettingsActivity$2;
.super Ljava/lang/Object;
.source "DetailModeSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 215
    iput-object p1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$2;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$2;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeNameValue:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$2;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateModeName()V

    .line 220
    const/4 v0, 0x1

    return v0
.end method
