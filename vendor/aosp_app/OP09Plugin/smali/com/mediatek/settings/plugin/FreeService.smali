.class public Lcom/mediatek/settings/plugin/FreeService;
.super Landroid/app/IntentService;
.source "FreeService.java"


# static fields
.field public static final EXTRA_SLOT_ID:Ljava/lang/String; = "com.android.phone.extra.slot"

.field private static final FREE_SERVICE_URI:Ljava/lang/String; = "tel:+8618918910000"

.field public static final NO_SIM_ERROR:I = 0x0

.field public static final ONE_CDMA:I = 0x1

.field public static final ONE_GSM:I = 0x2

.field public static final SIM_INFO:Ljava/lang/String; = "SIM_INFO"

.field private static final TAG:Ljava/lang/String; = "FreeService"

.field public static final TWO_SIM:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "FreeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v0, "FreeService"

    const-string v1, "FreeService Constructor is called."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    const-string v2, "FreeService"

    const-string v3, "onHandleIntent method is called."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    const-string v3, "tel:+8618918910000"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    const-string v2, "SIM_INFO"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, simStatus:I
    if-eq v1, v5, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 77
    :cond_0
    const-string v2, "com.android.phone.extra.slot"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 86
    const-string v2, "FreeService"

    const-string v3, "Dialing Successfully!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 78
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 80
    const-string v2, "com.android.phone.extra.slot"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 82
    :cond_2
    const-string v2, "FreeService"

    const-string v3, "ERROR! No sim detected!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
