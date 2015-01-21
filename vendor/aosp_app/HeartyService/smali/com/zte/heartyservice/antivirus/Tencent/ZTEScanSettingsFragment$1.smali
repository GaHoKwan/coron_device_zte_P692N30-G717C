.class Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment$1;
.super Ljava/lang/Object;
.source "ZTEScanSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->checkAutoUpdate()V

    .line 37
    return-void
.end method
