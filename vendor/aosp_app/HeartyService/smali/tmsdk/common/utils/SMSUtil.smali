.class public abstract Ltmsdk/common/utils/SMSUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/utils/SMSUtil$c;,
        Ltmsdk/common/utils/SMSUtil$b;,
        Ltmsdk/common/utils/SMSUtil$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"
    .parameter "body"

    .prologue
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    .local v1, smsUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "address"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v2, "sms_body"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public static sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "SmsPort"
    .parameter "SmsBody"
    .parameter "context"

    .prologue
    .line 30
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    .local v1, smsManager:Ltmsdk/common/utils/SMSUtil$a;
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    .line 33
    new-instance v1, Ltmsdk/common/utils/SMSUtil$c;

    .end local v1           #smsManager:Ltmsdk/common/utils/SMSUtil$a;
    invoke-direct {v1}, Ltmsdk/common/utils/SMSUtil$c;-><init>()V

    .line 38
    .restart local v1       #smsManager:Ltmsdk/common/utils/SMSUtil$a;
    :goto_1
    :try_start_0
    invoke-interface {v1, p0, p1}, Ltmsdk/common/utils/SMSUtil$a;->t(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {p2, p0, p1}, Ltmsdk/common/utils/SMSUtil;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 42
    :catch_1
    move-exception v2

    goto :goto_0

    .line 35
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ltmsdk/common/utils/SMSUtil$b;

    .end local v1           #smsManager:Ltmsdk/common/utils/SMSUtil$a;
    invoke-direct {v1}, Ltmsdk/common/utils/SMSUtil$b;-><init>()V

    .restart local v1       #smsManager:Ltmsdk/common/utils/SMSUtil$a;
    goto :goto_1
.end method
