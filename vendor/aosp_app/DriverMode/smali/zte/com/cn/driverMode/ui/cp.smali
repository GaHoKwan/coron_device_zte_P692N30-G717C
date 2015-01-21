.class final Lzte/com/cn/driverMode/ui/cp;
.super Ljava/lang/Object;

# interfaces
.implements Lzte/com/cn/driverMode/service/ae;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadComplete---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/TabHost;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 3

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadProgress---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadProgress---percent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/TabHost;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-virtual {v0, p1, p2, p3}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-virtual {v0, p1, p2, p3}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadError---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isDownloading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/TabHost;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-virtual {v0, p1, p2, p3}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-virtual {v0, p1, p2, p3}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0, p2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSdcardStateChanged---state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->t(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->u(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->t(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->v(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->w(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/ui/ct;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->w(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/ui/ct;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/ct;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;J)V
    .locals 3

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadFoundUpdate---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->s(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->s(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/TabHost;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;J)V
    .locals 3

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResetItemForReDownload---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->s(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->s(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/TabHost;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cp;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
