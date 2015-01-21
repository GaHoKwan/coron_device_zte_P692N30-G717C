.class Lcom/zte/heartyservice/setting/HeartyServiceSettings$6;
.super Ljava/lang/Object;
.source "HeartyServiceSettings.java"

# interfaces
.implements Lcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 944
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$6;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeChoose(I)V
    .locals 2
    .parameter "choose"

    .prologue
    .line 948
    invoke-static {}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$300()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_net_traffic_adjust_day"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 952
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$6;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-virtual {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 954
    return-void
.end method
