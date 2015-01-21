.class public Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field a:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TabHost;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/Map;

.field private k:Landroid/widget/ListView;

.field private l:Lzte/com/cn/driverMode/ui/cr;

.field private m:Landroid/widget/ListView;

.field private n:Lzte/com/cn/driverMode/ui/ct;

.field private o:Ljava/util/Map;

.field private p:Ljava/util/Map;

.field private q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

.field private r:Ljava/lang/String;

.field private s:Lzte/com/cn/driverMode/service/DMApplication;

.field private t:Z

.field private u:Landroid/content/ServiceConnection;

.field private v:Lzte/com/cn/driverMode/service/ae;

.field private w:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j:Ljava/util/Map;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l:Lzte/com/cn/driverMode/ui/cr;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->t:Z

    new-instance v0, Lzte/com/cn/driverMode/ui/co;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/co;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->u:Landroid/content/ServiceConnection;

    new-instance v0, Lzte/com/cn/driverMode/ui/cp;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cp;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->v:Lzte/com/cn/driverMode/service/ae;

    new-instance v0, Lzte/com/cn/driverMode/ui/cq;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cq;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->w:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/service/DMApplication;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->s:Lzte/com/cn/driverMode/service/DMApplication;

    return-object v0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/DMDownloadPoiService;
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lzte/com/cn/driverMode/ui/cs;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p3, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v0, p3, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iput-object p2, p3, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v3, p3, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v3, p3, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v1, p3, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v1, p3, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v1, p3, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v1, p3, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v2, p3, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v2, p3, Lzte/com/cn/driverMode/ui/cs;->l:Z

    return-void
.end method

.method private a(Ljava/lang/String;Lzte/com/cn/driverMode/ui/cs;)V
    .locals 7

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    if-nez v0, :cond_1

    new-instance v0, Lzte/com/cn/driverMode/ui/ct;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/ct;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v2

    :goto_0
    if-lez v1, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "DMPoiDownloadActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "btnDownload--onClick---indexCurProvince="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",indexCmpProvince="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v3, v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "btnDownload--onClick---insertPosition="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_4
    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "btnDownload---mDownloadedProvinceList="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "btnDownload---indexDownloaded="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_2
    if-lt v1, v2, :cond_6

    const-string v3, "DMPoiDownloadActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "btnDownload---statusMapDownloaded.get("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ").status="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/ct;->notifyDataSetChanged()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 14

    const v13, 0x7f08034f

    const/16 v12, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "showAllPoiDataList---provinceList.size()="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lzte/com/cn/driverMode/ui/cr;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cr;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l:Lzte/com/cn/driverMode/ui/cr;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l:Lzte/com/cn/driverMode/ui/cr;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->w:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "showAllPoiDataList---mProvinceScroll="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelected(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_10

    new-instance v6, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v6, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v0, v6, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iput-object v1, v6, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "DMPoiDownloadActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "showPoiDownloadList---exist!provice="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    const v7, 0x7f08034b

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v2, v6, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v12, v6, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v12, v6, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v2, v6, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v2, v6, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v2, v6, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v2, v6, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v3, v6, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v7, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    if-nez v1, :cond_3

    new-instance v1, Lzte/com/cn/driverMode/ui/ct;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ct;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    :cond_3
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    iget-object v7, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_4
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/ui/ct;->notifyDataSetChanged()V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->j(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "DMPoiDownloadActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setDownloadingItemInitStatus---downloading!provice="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h(Ljava/lang/String;)J

    move-result-wide v7

    const-string v1, "DMPoiDownloadActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "setDownloadingItemInitStatus---percent="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->l(Ljava/lang/String;)I

    move-result v1

    const-string v9, "DMPoiDownloadActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "setDownloadingItemInitStatus---downloadStatus="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x4

    if-ne v1, v9, :cond_a

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    const v7, 0x7f08034d

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v12, v6, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v2, v6, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v12, v6, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v2, v6, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v2, v6, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v3, v6, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v2, v6, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v3, v6, Lzte/com/cn/driverMode/ui/cs;->l:Z

    :goto_2
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    :cond_6
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    if-nez v0, :cond_8

    new-instance v0, Lzte/com/cn/driverMode/ui/ct;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/ct;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    :cond_8
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_9
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/ct;->notifyDataSetChanged()V

    goto/16 :goto_1

    :cond_a
    const/4 v9, 0x5

    if-ne v1, v9, :cond_b

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    const v7, 0x7f08034e

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    :goto_3
    iput v12, v6, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v12, v6, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v2, v6, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v2, v6, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v2, v6, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v2, v6, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v3, v6, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v3, v6, Lzte/com/cn/driverMode/ui/cs;->l:Z

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    move v1, v3

    :goto_4
    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "%"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    goto :goto_3

    :cond_d
    move v1, v2

    goto :goto_4

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "0%"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    goto :goto_3

    :cond_f
    const-string v1, "DMPoiDownloadActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setUnDownloadItemInitStatus---undownload!provice="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    const v1, 0x7f080351

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v2, v6, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v12, v6, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v12, v6, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v2, v6, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v3, v6, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v2, v6, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v2, v6, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v2, v6, Lzte/com/cn/driverMode/ui/cs;->l:Z

    goto/16 :goto_1

    :cond_10
    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "showAllPoiDataList---isShowNotice="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a:Z

    if-eqz v0, :cond_11

    iput-boolean v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->startActivity(Landroid/content/Intent;)V

    :cond_11
    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showAllPoiDataList---mNewPoiDetected="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->t:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    const-string v1, "tab2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->s:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->a(Lzte/com/cn/driverMode/service/DMApplication;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/ce;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/service/DMDownloadPoiService;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    return-object v0
.end method

.method private b()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CONFIRM_TYPE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TITLE"

    const v2, 0x7f080358

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TEXT"

    const v2, 0x7f080359

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BTN_TEXT_LEFT"

    const v2, 0x7f0800f8

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic c(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/service/ae;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->v:Lzte/com/cn/driverMode/service/ae;

    return-object v0
.end method

.method private c()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/ce;->j(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-wide/high16 v5, 0x4090

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getProvinceTotalSizeString---totalSize="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/math/BigDecimal;

    long-to-double v0, v0

    div-double/2addr v0, v5

    div-double/2addr v0, v5

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {v2, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMPoiDownloadActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProvinceTotalSizeString---province="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static synthetic d(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i(Ljava/lang/String;)V

    return-void
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->j(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CONFIRM_TYPE"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TITLE"

    const v2, 0x7f080357

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TEXT"

    const v2, 0x7f080360

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PROVINCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private g(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private h(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic h(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a()Z

    move-result v0

    return v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CONFIRM_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TITLE"

    const v2, 0x7f080357

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TEXT"

    const v2, 0x7f08035e

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BTN_TEXT_LEFT"

    const v2, 0x7f080361

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BTN_TEXT_MID"

    const v2, 0x7f080362

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BTN_TEXT_RIGHT"

    const v2, 0x7f080363

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PROVINCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic i(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b()V

    return-void
.end method

.method static synthetic i(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V
    .locals 8

    const v7, 0x7f08034b

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-string v0, "DMPoiDownloadActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateUpdateItemViewOfAll---index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "DMPoiDownloadActivity"

    const-string v3, "updateUpdateItemViewOfAll---curView is visible!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00a5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b00a7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02003d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    new-instance v0, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object p1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v4, v0, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v4, v0, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput v4, v0, Lzte/com/cn/driverMode/ui/cs;->h:I

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v5, v0, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iput-boolean v5, v0, Lzte/com/cn/driverMode/ui/cs;->m:Z

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/ct;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method static synthetic j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    return-object v0
.end method

.method private j(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CONFIRM_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TITLE"

    const v2, 0x7f080357

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TEXT"

    const v2, 0x7f08035f

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BTN_TEXT_LEFT"

    const v2, 0x7f080361

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BTN_TEXT_RIGHT"

    const v2, 0x7f080363

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PROVINCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V
    .locals 10

    const v9, 0x7f08034b

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v4, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, "DMPoiDownloadActivity"

    const-string v1, "updateUpdateItemViewOfDownloaded---curView is visible!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00a4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00a5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00a6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b00a9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0b00aa

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f0b00a8

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v5, 0x7f0b00b0

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateUpdateItemViewOfDownloaded---index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object p1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v8, v0, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v8, v0, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->h:I

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v7, v0, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iput-boolean v7, v0, Lzte/com/cn/driverMode/ui/cs;->m:Z

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l:Lzte/com/cn/driverMode/ui/cr;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/cr;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method static synthetic k(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/ui/cr;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l:Lzte/com/cn/driverMode/ui/cr;

    return-object v0
.end method

.method private k(Ljava/lang/String;)V
    .locals 8

    const v7, 0x7f08034d

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-string v0, "DMPoiDownloadActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadPoiGramarWithMobileData---position="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v0, 0x7f0b00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b00a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00a7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02003d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    new-instance v2, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v2, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object p1, v2, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v0, v2, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v6, v2, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v4, v2, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v6, v2, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v4, v2, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v4, v2, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v5, v2, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v4, v2, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v5, v2, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    if-nez v0, :cond_2

    new-instance v0, Lzte/com/cn/driverMode/ui/ct;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/ct;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_4
    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "downloadPoiGramarWithMobileData---mDownloadedProvinceList="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-string v0, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downloadPoiGramarWithMobileData---indexDownloaded="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/ct;->notifyDataSetChanged()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    const-string v1, "tab2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V
    .locals 8

    const v7, 0x7f08034c

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-string v0, "DMPoiDownloadActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateResetItemForReDownloadViewOfAll---index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "DMPoiDownloadActivity"

    const-string v3, "updateResetItemForReDownloadViewOfAll---curView is visible!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00a5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance v0, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object p1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v5, v0, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v4, v0, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v5, v0, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v4, v0, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput v5, v0, Lzte/com/cn/driverMode/ui/cs;->h:I

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->m:Z

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/ct;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v2

    :goto_0
    if-lez v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "DMPoiDownloadActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "downloadPoiGramarWithMobileData--onClick---indexCurProvince="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",indexCmpProvince="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v3, v0, :cond_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downloadPoiGramarWithMobileData--onClick---insertPosition="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic l(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V
    .locals 8

    const v7, 0x7f08034c

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "DMPoiDownloadActivity"

    const-string v3, "updateResetItemForReDownloadViewOfDownloaded---curView is visible!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00a5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const-string v0, "DMPoiDownloadActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateResetItemForReDownloadViewOfDownloaded---index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object p1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v5, v0, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v4, v0, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v5, v0, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v4, v0, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput v5, v0, Lzte/com/cn/driverMode/ui/cs;->h:I

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->m:Z

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l:Lzte/com/cn/driverMode/ui/cr;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/cr;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method static synthetic l(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->i(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private m(Ljava/lang/String;)V
    .locals 6

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteSelectItem---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/ct;->notifyDataSetChanged()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l:Lzte/com/cn/driverMode/ui/cr;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/cr;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic m(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic o(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->k(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic p(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic q(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V
    .locals 1

    const/16 v0, 0x2001

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->finishActivity(I)V

    return-void
.end method

.method static synthetic r(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic s(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic t(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V
    .locals 3

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateItemViewsWhenSdcardStateChanded---tabHost.getCurrentTabTag()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tab2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic u(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V
    .locals 3

    const-string v0, "DMPoiDownloadActivity"

    const-string v1, "showSdcardMountedDialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CONFIRM_TYPE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TITLE"

    const v2, 0x7f08035c

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TEXT"

    const v2, 0x7f08035d

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BTN_TEXT_LEFT"

    const v2, 0x7f0800f8

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic v(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V
    .locals 3

    const-string v0, "DMPoiDownloadActivity"

    const-string v1, "showSdcardUnmountedDialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CONFIRM_TYPE"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TITLE"

    const v2, 0x7f08035a

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TEXT"

    const v2, 0x7f08035b

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BTN_TEXT_LEFT"

    const v2, 0x7f0800f8

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic w(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/ui/ct;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 8

    const v7, 0x7f08034d

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "btnDownload--onClick---position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMPoiDownloadActivity"

    const-string v1, "btnDownload--onClick---network is not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    const v1, 0x7f080354

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DMPoiDownloadActivity"

    const-string v2, "btnDownload--onClick---mobile data is available!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    const v0, 0x7f0b00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0b00a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00a7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02003d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    new-instance v0, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v4, v0, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v4, v0, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v5, v0, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v5, v0, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Ljava/lang/String;Lzte/com/cn/driverMode/ui/cs;)V

    goto/16 :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 7

    const v6, 0x7f08034b

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-string v0, "DMPoiDownloadActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateAllUIWhenComplete---index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",getFirstVisiblePosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const v0, 0x7f0b00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0b00a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b00a7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02003d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    new-instance v0, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object p1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v4, v0, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v5, v0, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v5, v0, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v4, v0, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/cs;->k:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lzte/com/cn/driverMode/ui/cs;->l:Z

    const-string v2, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveCompleteItemViewStatusOfAll---index="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",downloadStatusFlag.status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/ct;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method protected final a(Ljava/lang/String;J)V
    .locals 9

    const v8, 0x7f080350

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "updateAllUIWhenProgress---index="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",listView.getFirstVisiblePosition()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const v0, 0x7f0b00a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b00a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b00a7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f02003d

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    new-instance v0, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object p1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v7, v0, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v5, v0, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v7, v0, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v5, v0, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v5, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v5, v0, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/ct;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "DMPoiDownloadActivity"

    const-string v1, "updateAllUIWhenProgress---curView is null......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-string v0, "DMPoiDownloadActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateAllUIWhenError---index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v0, 0x7f0b00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b00a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00a7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateAllUIWhenError---isDownloading="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v2, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    if-nez p3, :cond_2

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const v3, 0x7f02003d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, p1, p2, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Ljava/lang/String;Ljava/lang/String;Lzte/com/cn/driverMode/ui/cs;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n:Lzte/com/cn/driverMode/ui/ct;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/ct;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 9

    const v8, 0x7f08034b

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const v0, 0x7f0b00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0b00a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b00a9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0b00aa

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v4, 0x7f0b00a8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateDownloadedUIWhenComplete---index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object p1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v5, v0, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v5, v0, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v5, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v5, v0, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v5, v0, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v7, v0, Lzte/com/cn/driverMode/ui/cs;->l:Z

    const-string v1, "DMPoiDownloadActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "saveCompleteItemViewStatusOfDownloaded---index="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",downloadStatusFlag.status="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l:Lzte/com/cn/driverMode/ui/cr;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/cr;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method protected final b(Ljava/lang/String;J)V
    .locals 12

    const v11, 0x7f080350

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateProgressItemViewOfDownloaded---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",percent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateProgressItemViewOfDownloaded---index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",downloadedProvinceListView.getFirstVisiblePosition()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v4, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    const v0, 0x7f0b00a4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b00a6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b00a9

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f0b00aa

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v5, 0x7f0b00a8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "DMPoiDownloadActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateProgressItemViewOfDownloaded---statusTextView.getText().toString()="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_1
    new-instance v0, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object p1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v10, v0, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v8, v0, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v10, v0, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v8, v0, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v8, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v9, v0, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v8, v0, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v9, v0, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l:Lzte/com/cn/driverMode/ui/cr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l:Lzte/com/cn/driverMode/ui/cr;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/cr;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "DMPoiDownloadActivity"

    const-string v1, "updateDownloadedUIWhenProgress---curView is null......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateDownloadedUIWhenError---index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v3, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v0, 0x7f0b00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b00a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00a9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0b00aa

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v4, 0x7f0b00a8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const-string v4, "DMPoiDownloadActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateDownloadedUIWhenError---isDownloading="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v4, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    if-nez p3, :cond_2

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-direct {p0, p1, p2, v4}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Ljava/lang/String;Ljava/lang/String;Lzte/com/cn/driverMode/ui/cs;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l:Lzte/com/cn/driverMode/ui/cr;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/cr;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object p1, v1, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    const v3, 0x7f080351

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v4, v1, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v5, v1, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v5, v1, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v4, v1, Lzte/com/cn/driverMode/ui/cs;->g:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v4, v1, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v4, v1, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v4, v1, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const v9, 0x7f08034d

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult---requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v7, :cond_0

    const/16 v0, 0xa

    if-ne p2, v0, :cond_3

    const-string v0, "PROVINCE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "continueDownloadPoiGramarWithMobileData---index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v4, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    const v0, 0x7f0b00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b00a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b00a9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0b00aa

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v5, 0x7f0b00a8

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_2
    new-instance v0, Lzte/com/cn/driverMode/ui/cs;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v3, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v8, v0, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v8, v0, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v7, v0, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v7, v0, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l:Lzte/com/cn/driverMode/ui/cr;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/cr;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    const-string v0, "PROVINCE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f0b00af

    const v7, 0x7f0b00ae

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->s:Lzte/com/cn/driverMode/service/DMApplication;

    const v0, 0x7f0b00ad

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    const-string v3, "tab1"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    const v4, 0x7f080352

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    const-string v3, "tab2"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    const v4, 0x7f080353

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {v3, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b:Landroid/content/Context;

    invoke-static {v6}, Lzte/com/cn/driverMode/service/ce;->h(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v5, 0x1020016

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v5, 0x41b0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v7}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k:Landroid/widget/ListView;

    invoke-virtual {p0, v8}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m:Landroid/widget/ListView;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p:Ljava/util/Map;

    const v0, 0x7f0b00ab

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/cn;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/cn;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PROVINCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r:Ljava/lang/String;

    const-string v1, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCreate ...mProvinceScroll="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Show_Dialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a:Z

    const-string v1, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCreate ...isShowNotice="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "new_poi_detected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->t:Z

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate ...mNewPoiDetected="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->u:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v0, "DMPoiDownloadActivity"

    const-string v1, "doDownloadPoiGrammar ...bindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzte/com/cn/driverMode/ui/DMNoticeDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "STATE"

    const-string v2, "WaitView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2001

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->q:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a()V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->u:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method
