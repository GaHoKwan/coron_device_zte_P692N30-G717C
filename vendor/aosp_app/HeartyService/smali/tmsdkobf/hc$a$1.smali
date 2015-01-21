.class Ltmsdkobf/hc$a$1;
.super Ltmsdkobf/hf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hc$a;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oU:Ltmsdkobf/hc$a;


# direct methods
.method constructor <init>(Ltmsdkobf/hc$a;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Ltmsdkobf/hc$a$1;->oU:Ltmsdkobf/hc$a;

    invoke-direct {p0}, Ltmsdkobf/hf;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ltmsdk/common/module/aresengine/SmsEntity;Landroid/content/BroadcastReceiver;)V
    .locals 5
    .parameter "sms"
    .parameter "receiver"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 253
    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Ltmsdkobf/hc$a$1;->oU:Ltmsdkobf/hc$a;

    invoke-static {v0}, Ltmsdkobf/hc$a;->a(Ltmsdkobf/hc$a;)Ltmsdkobf/hc$c;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {v0, p1, v1}, Ltmsdkobf/hc$c;->c(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Ltmsdkobf/hc$a$1;->oU:Ltmsdkobf/hc$a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Ltmsdkobf/hc$a;->notifyDataReached(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    .line 259
    :cond_0
    return-void
.end method
