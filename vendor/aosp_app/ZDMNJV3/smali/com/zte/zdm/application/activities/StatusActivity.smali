.class public Lcom/zte/zdm/application/activities/StatusActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/StatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/zdm/application/activities/StatusActivity;->a:Landroid/widget/ListView;

    return-void
.end method

.method public b()V
    .locals 7

    const/4 v6, 0x5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "status_title"

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/StatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "version"

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/StatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "status_message"

    const-string v3, "successed"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version_message"

    const-string v3, "txxx"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030020

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "status_title"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "status_message"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "date"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "version"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "version_message"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/zte/zdm/application/activities/StatusActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0xa0t 0x0t 0xdt 0x7ft
        0xa1t 0x0t 0xdt 0x7ft
        0xa2t 0x0t 0xdt 0x7ft
        0xa5t 0x0t 0xdt 0x7ft
        0xa6t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/StatusActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/StatusActivity;->a()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/StatusActivity;->b()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
