.class public Lcom/zte/heartyservice/update/CTUpdateNotice;
.super Ljava/lang/Object;
.source "CTUpdateNotice.java"


# static fields
.field public static final CT_UPDATE_NOTICE_TAG:Ljava/lang/String; = "com.zte.heartyservice.ct_update_notice"

.field private static final LAST_CT_UPDATE_NOTICE_TIME:Ljava/lang/String; = "last_ct_update_notice_time"

.field private static final TAG:Ljava/lang/String; = "CTUpdateNotice"

.field private static final UPDATE_NOTICE_DELAY:J = 0x240c8400L

.field private static sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/update/CTUpdateNotice;->sReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMonitor()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    sget-object v1, Lcom/zte/heartyservice/update/CTUpdateNotice;->sReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/zte/heartyservice/update/CTUpdateNotice$1;

    invoke-direct {v1}, Lcom/zte/heartyservice/update/CTUpdateNotice$1;-><init>()V

    sput-object v1, Lcom/zte/heartyservice/update/CTUpdateNotice;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/update/CTUpdateNotice;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    :cond_0
    return-void
.end method
