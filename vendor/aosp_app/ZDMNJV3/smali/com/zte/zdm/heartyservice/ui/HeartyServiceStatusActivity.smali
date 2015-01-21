.class public Lcom/zte/zdm/heartyservice/ui/HeartyServiceStatusActivity;
.super Landroid/app/ListActivity;


# static fields
.field private static final a:Ljava/lang/String; = "HeartyService"

.field private static final b:Ljava/lang/String; = "attribute"

.field private static final c:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceStatusActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x333334

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "attribute"

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/zte/zdm/heartyservice/core/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "attribute"

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/heartyservice/core/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceStatusActivity->onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 7

    const/4 v6, 0x2

    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceStatusActivity->onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceStatusActivity;->b()Ljava/util/List;

    move-result-object v2

    const v3, 0x7f030013

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "attribute"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "message"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceStatusActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceStatusActivity;->a()V

    return-void

    :array_0
    .array-data 0x4
        0x66t 0x0t 0xdt 0x7ft
        0x20t 0x0t 0xdt 0x7ft
    .end array-data
.end method
