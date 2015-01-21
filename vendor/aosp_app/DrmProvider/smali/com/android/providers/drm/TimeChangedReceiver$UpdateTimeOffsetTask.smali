.class Lcom/android/providers/drm/TimeChangedReceiver$UpdateTimeOffsetTask;
.super Landroid/os/AsyncTask;
.source "TimeChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/drm/TimeChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTimeOffsetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/drm/TimeChangedReceiver;


# direct methods
.method private constructor <init>(Lcom/android/providers/drm/TimeChangedReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/providers/drm/TimeChangedReceiver$UpdateTimeOffsetTask;->this$0:Lcom/android/providers/drm/TimeChangedReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/drm/TimeChangedReceiver;Lcom/android/providers/drm/TimeChangedReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/providers/drm/TimeChangedReceiver$UpdateTimeOffsetTask;-><init>(Lcom/android/providers/drm/TimeChangedReceiver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    .line 45
    const-string v2, "DRM/TimeChangedReceiver"

    const-string v3, "UpdateTimeOffsetTask : start to update time offset."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 47
    .local v1, context:Landroid/content/Context;
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, v1}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, client:Lcom/mediatek/drm/OmaDrmClient;
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->updateOffset(Lcom/mediatek/drm/OmaDrmClient;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/drm/TimeChangedReceiver$UpdateTimeOffsetTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 53
    const-string v0, "DRM/TimeChangedReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateTimeOffsetTask : update time offset finished in UpdateTimeOffsetTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/drm/TimeChangedReceiver$UpdateTimeOffsetTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
