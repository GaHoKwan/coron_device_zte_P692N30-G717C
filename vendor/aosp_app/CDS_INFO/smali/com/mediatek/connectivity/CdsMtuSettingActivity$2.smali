.class Lcom/mediatek/connectivity/CdsMtuSettingActivity$2;
.super Ljava/lang/Thread;
.source "CdsMtuSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsMtuSettingActivity;->executeShellCmd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsMtuSettingActivity;

.field final synthetic val$cmdStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsMtuSettingActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity$2;->this$0:Lcom/mediatek/connectivity/CdsMtuSettingActivity;

    iput-object p2, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity$2;->val$cmdStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity$2;->this$0:Lcom/mediatek/connectivity/CdsMtuSettingActivity;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity$2;->val$cmdStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/connectivity/CdsShellExe;->execCommand(Ljava/lang/String;)I

    .line 230
    monitor-exit v2

    .line 234
    :goto_0
    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
