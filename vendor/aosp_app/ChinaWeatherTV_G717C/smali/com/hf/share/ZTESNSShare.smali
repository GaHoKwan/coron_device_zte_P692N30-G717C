.class public Lcom/hf/share/ZTESNSShare;
.super Lcom/hf/share/Share;
.source "ZTESNSShare.java"


# static fields
.field private static final SNS_SHARE_CLASS:Ljava/lang/String; = "com.zte.snsshare.SnsUpdateStatusActivity"

.field public static final SNS_SHARE_PACKAGE:Ljava/lang/String; = "com.zte.snsshare"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/hf/share/Share;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public hasSNSSharePackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 56
    const/4 v1, 0x0

    .line 58
    .local v1, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/hf/share/ZTESNSShare;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.zte.snsshare"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return v2

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0

    .line 63
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public imageShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "content"
    .parameter "path"

    .prologue
    .line 42
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 43
    .local v2, intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 46
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    .end local v1           #file:Ljava/io/File;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    const-string v4, "com.zte.snsshare"

    const-string v5, "com.zte.snsshare.SnsUpdateStatusActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v4, p0, Lcom/hf/share/ZTESNSShare;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/hf/share/ZTESNSShare;->mContext:Landroid/content/Context;

    const v5, 0x7f080037

    invoke-static {v4, v5}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public messageShare(Ljava/lang/String;)V
    .locals 4
    .parameter "content"

    .prologue
    .line 30
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 31
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.zte.snsshare"

    const-string v3, "com.zte.snsshare.SnsUpdateStatusActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    iget-object v2, p0, Lcom/hf/share/ZTESNSShare;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/hf/share/ZTESNSShare;->mContext:Landroid/content/Context;

    const v3, 0x7f080037

    invoke-static {v2, v3}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
