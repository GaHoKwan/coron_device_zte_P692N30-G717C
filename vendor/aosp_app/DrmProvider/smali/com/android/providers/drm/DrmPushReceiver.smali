.class public Lcom/android/providers/drm/DrmPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DrmPushReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DRM/DrmPushReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, contextRef:Landroid/content/Context;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, rightMimeType:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/mediatek/drm/OmaDrmUtils;->isDrmRightsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    const-string v5, "data"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 52
    .local v2, rightData:[B
    if-nez v2, :cond_0

    .line 53
    const-string v5, "DRM/DrmPushReceiver"

    const-string v6, "onReceive : The rights data is invalid."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v2           #rightData:[B
    .end local v4           #rightMimeType:Ljava/lang/String;
    :goto_0
    return-void

    .line 56
    .restart local v2       #rightData:[B
    .restart local v4       #rightMimeType:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 63
    .local v3, rightDataStream:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v5, Lcom/android/providers/drm/DrmPushReceiver$1;

    invoke-direct {v5, p0, v2, v0, v4}, Lcom/android/providers/drm/DrmPushReceiver$1;-><init>(Lcom/android/providers/drm/DrmPushReceiver;[BLandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    const-string v5, "DRM/DrmPushReceiver"

    const-string v6, "Install drm rights successfully."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Landroid/drm/mobile1/DrmException;
    const-string v5, "DRM/DrmPushReceiver"

    const-string v6, "Install drm rights failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    .end local v1           #e:Landroid/drm/mobile1/DrmException;
    :catch_1
    move-exception v1

    .line 120
    .local v1, e:Ljava/io/IOException;
    const-string v5, "DRM/DrmPushReceiver"

    const-string v6, "IOException occurs when install drm rights."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #rightData:[B
    .end local v3           #rightDataStream:Ljava/io/ByteArrayInputStream;
    :cond_1
    const-string v5, "DRM/DrmPushReceiver"

    const-string v6, "This is not drm rights push mimetype."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v4           #rightMimeType:Ljava/lang/String;
    :cond_2
    const-string v5, "DRM/DrmPushReceiver"

    const-string v6, "This is not wap push received action."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
