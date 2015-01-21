.class Lzte/com/cn/cloudnotepad/ui/MyMapActivity$3;
.super Ljava/lang/Object;
.source "MyMapActivity.java"

# interfaces
.implements Lcom/baidu/mapapi/MKGeneralListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->initMapView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$3;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetNetworkState(I)V
    .locals 3
    .parameter "iError"

    .prologue
    .line 94
    const-string v0, "MyMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetNetworkState iError="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$3;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    const v1, 0x7f090057

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    return-void
.end method

.method public onGetPermissionState(I)V
    .locals 3
    .parameter "iError"

    .prologue
    .line 87
    const-string v0, "MyMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetPermissionState iError="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$3;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    const v1, 0x7f090058

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    return-void
.end method
