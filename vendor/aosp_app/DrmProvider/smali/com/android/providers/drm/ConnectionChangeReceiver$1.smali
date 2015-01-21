.class Lcom/android/providers/drm/ConnectionChangeReceiver$1;
.super Ljava/lang/Object;
.source "ConnectionChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/drm/ConnectionChangeReceiver;->launchSimpleThread(Landroid/content/Context;Lcom/mediatek/drm/OmaDrmClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/drm/ConnectionChangeReceiver;

.field final synthetic val$client:Lcom/mediatek/drm/OmaDrmClient;

.field final synthetic val$conManager:Landroid/net/ConnectivityManager;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/providers/drm/ConnectionChangeReceiver;Landroid/net/ConnectivityManager;ILcom/mediatek/drm/OmaDrmClient;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/providers/drm/ConnectionChangeReceiver$1;->this$0:Lcom/android/providers/drm/ConnectionChangeReceiver;

    iput-object p2, p0, Lcom/android/providers/drm/ConnectionChangeReceiver$1;->val$conManager:Landroid/net/ConnectivityManager;

    iput p3, p0, Lcom/android/providers/drm/ConnectionChangeReceiver$1;->val$type:I

    iput-object p4, p0, Lcom/android/providers/drm/ConnectionChangeReceiver$1;->val$client:Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 132
    const-string v2, "DRM/ConnectionChangeReceiver"

    const-string v3, "SNTP : the thread launched."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/android/providers/drm/ConnectionChangeReceiver$1;->this$0:Lcom/android/providers/drm/ConnectionChangeReceiver;

    iget-object v3, p0, Lcom/android/providers/drm/ConnectionChangeReceiver$1;->val$conManager:Landroid/net/ConnectivityManager;

    iget v4, p0, Lcom/android/providers/drm/ConnectionChangeReceiver$1;->val$type:I

    #calls: Lcom/android/providers/drm/ConnectionChangeReceiver;->checkRouteToHost(Landroid/net/ConnectivityManager;I)I
    invoke-static {v2, v3, v4}, Lcom/android/providers/drm/ConnectionChangeReceiver;->access$000(Lcom/android/providers/drm/ConnectionChangeReceiver;Landroid/net/ConnectivityManager;I)I

    move-result v1

    .line 134
    .local v1, result:I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 135
    invoke-static {}, Lcom/android/providers/drm/ConnectionChangeReceiver;->access$100()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/providers/drm/Ntp;->sync(Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, oft:I
    const-string v2, "DRM/ConnectionChangeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SNTP: synchronization result, utc time offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, p0, Lcom/android/providers/drm/ConnectionChangeReceiver$1;->val$client:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v2, v0}, Lcom/android/providers/drm/OmaDrmHelper;->updateClock(Lcom/mediatek/drm/OmaDrmClient;I)I

    move-result v1

    .line 139
    .end local v0           #oft:I
    :cond_0
    return-void
.end method
