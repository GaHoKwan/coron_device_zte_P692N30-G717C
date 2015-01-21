.class public Lcom/zte/zdm/c/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "menu_fota_function"

.field public static final b:Ljava/lang/String; = "menu_fota_checkupdate"

.field public static final c:Ljava/lang/String; = "menu_fota_setting"

.field public static final d:Ljava/lang/String; = "menu_fota_feedback"

.field public static final e:Ljava/lang/String; = "menu_fota_history"

.field public static final f:Ljava/lang/String; = "menu_fota_restore"

.field public static final g:Ljava/lang/String; = "download_network"

.field public static final h:Ljava/lang/String; = "download_confirm"

.field public static final i:Ljava/lang/String; = "download_refuse"

.field public static final j:Ljava/lang/String; = "download_ignore"

.field public static final k:Ljava/lang/String; = "update_confirm"

.field public static final l:Ljava/lang/String; = "update_delay"

.field public static final m:Ljava/lang/String; = "update_delay_num"

.field public static final n:Ljava/lang/String; = "update_ignore"

.field public static final o:Ljava/lang/String; = "startDownloadTime"

.field public static final p:Ljava/lang/String; = "startUpdateTime"

.field public static final q:Ljava/lang/String; = "time_interval"

.field public static final r:Ljava/lang/String; = "fota_update_time"

.field public static final s:Ljava/lang/String; = "fota_update_date_time"

.field public static t:I = 0x0

.field public static u:Ljava/lang/String; = null

.field public static final v:Ljava/lang/String; = "feedback_status"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/zte/zdm/c/b;->t:I

    const-string v0, "email"

    sput-object v0, Lcom/zte/zdm/c/b;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
