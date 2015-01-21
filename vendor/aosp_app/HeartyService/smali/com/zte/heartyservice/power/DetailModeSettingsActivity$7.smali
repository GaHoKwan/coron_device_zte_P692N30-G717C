.class Lcom/zte/heartyservice/power/DetailModeSettingsActivity$7;
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
    .line 259
    iput-object p1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$7;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$7;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    #calls: Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateFeedBack()V
    invoke-static {v0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->access$700(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    .line 263
    const/4 v0, 0x1

    return v0
.end method
